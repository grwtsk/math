"""Fresh trust-zero replay and native census of every Git-visible GRWTSK module.

Run: python3 -B scripts/check_math_trust.py
Fixtures only, without invoking Lean: python3 -B scripts/check_math_trust.py --self-test
Native audit controls, after BUSY clears: python3 -B scripts/check_math_trust.py --lean-self-test
Receipts and objects stay below .local/math-trust; public evidence is never rewritten.
"""
import signal
import argparse
import contextlib
import fcntl
import hashlib
import io
import json
import os
from pathlib import Path
import re
import runpy
import stat
import subprocess
import sys
import tempfile
import time
import unittest
from unittest import mock
import uuid

ROOT = Path(__file__).resolve().parents[1]
AUDIT = "checks/MathTrustAudit.lean"
CHECKER = "scripts/check_math_trust.py"
LAYOUT_CHECKER = "scripts/check_math_layout.py"
EXTRAS = [AUDIT, CHECKER, "lean-toolchain", "lakefile.toml", "lake-manifest.json"]
FULL_EXTRAS = EXTRAS + [LAYOUT_CHECKER]
LEAN_VERSION = "4.33.0"
LEAN_COMMIT = "d8b18978322de05a8f3dba51ef03cf5461676c17"
MATHLIB_REV = "db584cd6d46c92f209a44c0f1c829460d327499d"
ALLOWED_AXIOMS = {"propext", "Classical.choice", "Quot.sound"}
RUNTIME_NAME = "GRWTSK.Algebra.orderedProduct._unsafe_rec"
RUNTIME_OWNER = "GRWTSK.Algebra.OrderedProduct"
RUNTIME_SOURCE = "GRWTSK/Algebra/OrderedProduct.lean"
RUNTIME_SOURCE_SHA256 = "97997c1246d32731c34a6decf10d3cb4a90d0c28281e174ab28fd4abe4c6574d"


def output(argv, root=ROOT):
    return subprocess.check_output(argv, cwd=root, text=True).strip()


def directory_descriptor(path, create=False):
    """Open every absolute directory component without following symlinks."""
    descriptor = os.open("/", os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
    try:
        for component in path.absolute().parts[1:]:
            if create:
                try:
                    os.mkdir(component, mode=0o700, dir_fd=descriptor)
                except FileExistsError:
                    pass
            child = os.open(component, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW,
                            dir_fd=descriptor)
            os.close(descriptor)
            descriptor = child
        return descriptor
    except OSError as error:
        os.close(descriptor)
        raise RuntimeError("missing, symlink, or inaccessible output directory: " + str(path)) from error


def make_directory(path, exclusive=False):
    parent = directory_descriptor(path.parent, create=True)
    try:
        try:
            os.mkdir(path.name, mode=0o700, dir_fd=parent)
        except FileExistsError:
            if exclusive:
                raise RuntimeError("refusing existing run directory: " + str(path))
        descriptor = os.open(path.name, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW, dir_fd=parent)
        os.close(descriptor)
    except OSError as error:
        raise RuntimeError("symlink or inaccessible output directory: " + str(path)) from error
    finally:
        os.close(parent)


def write_bytes(path, content, exclusive=False, readonly=False):
    parent = directory_descriptor(path.parent, create=True)
    descriptor = None
    try:
        descriptor = os.open(path.name, os.O_WRONLY | os.O_CREAT | os.O_NOFOLLOW |
                             (os.O_EXCL if exclusive else os.O_TRUNC), 0o600, dir_fd=parent)
        if not stat.S_ISREG(os.fstat(descriptor).st_mode):
            raise RuntimeError("refusing non-regular output: " + str(path))
        with os.fdopen(descriptor, "wb", closefd=False) as stream:
            stream.write(content)
            stream.flush()
        if readonly:
            os.fchmod(descriptor, 0o444)
    except OSError as error:
        raise RuntimeError("symlink, existing, or inaccessible output: " + str(path)) from error
    finally:
        if descriptor is not None:
            os.close(descriptor)
        os.close(parent)


def digest(path):
    return hashlib.sha256(read_source(path.parent, path.name)).hexdigest()


def read_source(root, relative):
    """Read through no-follow directory descriptors and reject an unstable read."""
    relative_path = Path(relative)
    if relative_path.is_absolute() or ".." in relative_path.parts:
        raise RuntimeError("invalid source path: " + relative)
    absolute = root.absolute() / relative_path
    descriptors = []
    flags = os.O_RDONLY | os.O_NOFOLLOW | getattr(os, "O_NONBLOCK", 0)
    try:
        directory = os.open("/", flags | os.O_DIRECTORY)
        descriptors.append(directory)
        for component in absolute.parts[1:-1]:
            directory = os.open(component, flags | os.O_DIRECTORY, dir_fd=directory)
            descriptors.append(directory)
        source = os.open(absolute.name, flags, dir_fd=directory)
        descriptors.append(source)
        before = os.fstat(source)
        if not stat.S_ISREG(before.st_mode):
            raise RuntimeError("not a regular replay input: " + relative)
        chunks = []
        while True:
            chunk = os.read(source, 1024 * 1024)
            if not chunk:
                break
            chunks.append(chunk)
        after = os.fstat(source)
        identity = lambda value: (value.st_dev, value.st_ino, value.st_size,
                                  value.st_mtime_ns, value.st_ctime_ns)
        if identity(before) != identity(after):
            raise RuntimeError("input changed while being read: " + relative)
        return b"".join(chunks)
    except OSError as error:
        raise RuntimeError("missing, symlink, or inaccessible replay input: " + relative) from error
    finally:
        for descriptor in reversed(descriptors):
            os.close(descriptor)


def regular_source(root, relative):
    read_source(root, relative)
    return root / relative


def source_path_present(root, relative):
    """Keep broken links/nonregular paths visible, without traversing links."""
    parts = Path(relative).parts
    if not parts or Path(relative).is_absolute() or ".." in parts:
        raise RuntimeError("invalid source inventory path: " + relative)
    directory = directory_descriptor(root)
    try:
        for index, component in enumerate(parts):
            try:
                information = os.stat(component, dir_fd=directory, follow_symlinks=False)
            except FileNotFoundError:
                return False
            except OSError:
                return True  # A later no-follow source read must reject it.
            if index == len(parts) - 1:
                return True
            if not stat.S_ISDIR(information.st_mode):
                return True  # Includes a broken/symlinked parent, not a deletion.
            try:
                child = os.open(component, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW,
                                dir_fd=directory)
            except OSError:
                return True
            os.close(directory)
            directory = child
    finally:
        os.close(directory)


def git_source_inventory(root):
    """Working-tree inputs and explicit deleted regular tracked library paths."""
    names = subprocess.check_output(
        ["git", "ls-files", "-z", "--cached", "--others", "--exclude-standard",
         "--", "GRWTSK.lean", "GRWTSK"], cwd=root).decode("utf-8", "surrogateescape").split("\0")
    index = subprocess.check_output(
        ["git", "ls-files", "-z", "--cached", "--stage", "--", "GRWTSK.lean", "GRWTSK"],
        cwd=root).decode("utf-8", "surrogateescape").split("\0")
    tracked_modes = {}
    for record in index:
        if not record:
            continue
        metadata, separator, name = record.partition("\t")
        fields = metadata.split()
        if not separator or len(fields) != 3:
            raise RuntimeError("malformed Git source index record")
        tracked_modes.setdefault(name, set()).add(fields[0])
    sources, deleted = [], []
    for name in sorted({name for name in names if name.endswith(".lean")}):
        regular_tracked = bool(tracked_modes.get(name)) and tracked_modes[name] <= {"100644", "100755"}
        if regular_tracked and not source_path_present(root, name):
            deleted.append(name)
        else:
            sources.append(name)
    return {"sources": sources, "deleted_library_paths": deleted}


def git_sources(root):
    return git_source_inventory(root)["sources"]


def without_comments(text):
    """Keep line positions while removing nested Lean comments and strings."""
    cleaned, i, depth, quoted = [], 0, 0, False
    while i < len(text):
        pair = text[i:i + 2]
        if depth:
            if pair == "/-":
                depth += 1
                cleaned.append("  ")
                i += 2
            elif pair == "-/":
                depth -= 1
                cleaned.append("  ")
                i += 2
            else:
                cleaned.append("\n" if text[i] == "\n" else " ")
                i += 1
        elif quoted:
            if text[i] == "\\" and i + 1 < len(text):
                cleaned.append("  ")
                i += 2
            elif text[i] == '"':
                quoted = False
                cleaned.append(" ")
                i += 1
            else:
                cleaned.append("\n" if text[i] == "\n" else " ")
                i += 1
        elif pair == "/-":
            depth = 1
            cleaned.append("  ")
            i += 2
        elif pair == "--":
            end = text.find("\n", i)
            end = len(text) if end < 0 else end
            cleaned.append(" " * (end - i))
            i = end
        elif text[i] == '"':
            quoted = True
            cleaned.append(" ")
            i += 1
        else:
            cleaned.append(text[i])
            i += 1
    if depth or quoted:
        raise RuntimeError("unterminated Lean comment or string")
    return "".join(cleaned)


def project_imports(text):
    imports = []
    for match in re.finditer(r"^\s*(?:public\s+)?import\s+([^\n]+)",
                             without_comments(text), re.MULTILINE):
        for name in match[1].split():
            if name == "GRWTSK" or name.startswith("GRWTSK."):
                imports.append(name)
    return imports


def project_modules(root, sources):
    modules = {}
    for relative in sources:
        regular_source(root, relative)
        module = relative[:-5].replace("/", ".")
        if not all(re.fullmatch(r"[^\W\d][\w']*", part) for part in module.split(".")):
            raise RuntimeError("unsupported Lean module path: " + relative)
        if module in modules:
            raise RuntimeError("duplicate module: " + module)
        modules[module] = relative
    if "GRWTSK" not in modules:
        raise RuntimeError("missing GRWTSK root module")
    completed, active, order = set(), set(), []

    def visit(module):
        if module in active:
            raise RuntimeError("cyclic project import: " + module)
        if module in completed:
            return
        if module not in modules:
            raise RuntimeError("missing Git-visible project import: " + module)
        active.add(module)
        for dependency in project_imports(read_source(root, modules[module]).decode()):
            visit(dependency)
        active.remove(module)
        completed.add(module)
        order.append(module)

    for module in sorted(modules):
        visit(module)
    return modules, order


def source_snapshot(root, sources, head, extras=EXTRAS, destination=None, deleted_sources=None):
    hashes = {}
    for relative in sorted(set(sources) | set(extras)):
        content = read_source(root, relative)
        hashes[relative] = hashlib.sha256(content).hexdigest()
        if destination is not None:
            target = destination / relative
            write_bytes(target, content, exclusive=True, readonly=True)
    return {"head": head, "sources": sorted(sources), "sha256": hashes,
            "deleted_library_paths": sorted(deleted_sources or [])}


def verify_frozen(root, snapshot):
    for relative, expected in snapshot["sha256"].items():
        if hashlib.sha256(read_source(root, relative)).hexdigest() != expected:
            raise RuntimeError("frozen compiler input changed: " + relative)


def verify_snapshot(root, snapshot, sources=None, head=None, deleted_sources=None):
    if sources is None:
        inventory = git_source_inventory(root)
        sources = inventory["sources"]
        if deleted_sources is None:
            deleted_sources = inventory["deleted_library_paths"]
    else:
        sources = sorted(sources)
    head = output(["git", "rev-parse", "HEAD"], root) if head is None else head
    if head != snapshot["head"]:
        raise RuntimeError("HEAD changed during replay")
    if sources != snapshot["sources"]:
        raise RuntimeError("Git-visible project source set changed during replay")
    if deleted_sources is not None and sorted(deleted_sources) != snapshot.get("deleted_library_paths", []):
        raise RuntimeError("deleted tracked library source set changed during replay")
    for relative, expected in snapshot["sha256"].items():
        if hashlib.sha256(read_source(root, relative)).hexdigest() != expected:
            raise RuntimeError("input changed during replay: " + relative)


def require_math_layout(root, run=None, state=None):
    """Default CLI is fatal on layout violations; no report-only bypass."""
    before = hashlib.sha256(read_source(root, LAYOUT_CHECKER)).hexdigest()
    argv = [sys.executable, "-B", str(root / LAYOUT_CHECKER)]
    process = subprocess.run(argv, cwd=root, text=True, capture_output=True, timeout=60)
    diagnostic = process.stdout + process.stderr
    after = hashlib.sha256(read_source(root, LAYOUT_CHECKER)).hexdigest()
    entry = {"argv": argv, "exit_code": process.returncode,
             "checker_sha256_before": before, "checker_sha256_after": after,
             "output_sha256": hashlib.sha256(diagnostic.encode()).hexdigest(),
             "outcome": "passed" if process.returncode == 0 and before == after else "failed"}
    if run is not None:
        write_bytes(run / "math-layout.log", diagnostic.encode(), exclusive=True)
        entry["retained_log"] = str(run / "math-layout.log")
    if state is not None:
        state["math_layout_gate"] = entry
    if before != after:
        raise RuntimeError("mathematical layout checker changed during gate")
    if process.returncode != 0:
        raise RuntimeError("mathematical layout gate failed before native replay")
    return entry


def dependency_search_path(raw, root, lean):
    allowed = [(root / ".lake/packages").resolve(),
               (Path(lean).parent.parent / "lib/lean").resolve()]
    kept, removed = [], []
    for entry in raw.split(os.pathsep):
        if not entry:
            continue
        path = Path(entry)
        resolved = (root / path).resolve() if not path.is_absolute() else path.resolve()
        is_dependency = False
        for base in allowed:
            try:
                resolved.relative_to(base)
                is_dependency = True
            except ValueError:
                pass
        (kept if is_dependency else removed).append(str(resolved))
    return list(dict.fromkeys(kept)), removed


def competing_jobs(root):
    """Respect project replay jobs and known historical V19 Python drivers."""
    rows = output(["ps", "-axo", "pid=,args="], root).splitlines()
    jobs = []
    for row in rows:
        parts = row.strip().split(None, 1)
        if len(parts) != 2 or int(parts[0]) == os.getpid():
            continue
        pid, argv = int(parts[0]), parts[1]
        executable = Path(argv.split(None, 1)[0]).name.casefold()
        python_executable = re.fullmatch(r"python(?:\d+(?:\.\d+)*)?", executable) is not None
        historical_driver = python_executable and re.search(
            r"(?:^|[/\s])(?:run_source_merged_main_quality_verifier_v19|"
            r"diagnose_v19_archived_runtime_positive_replay_v1)\.py(?:$|\s)", argv) is not None
        candidate = executable in {"lean", "lake"} or (
            python_executable and (historical_driver or re.search(
                r"(?:^|[/\s])(?:check_[^ /\s]+|verify_[^ /\s]+|[^ /\s]*verifier[^ /\s]*)"
                r"\.py(?:$|\s)", argv)))
        if not candidate:
            continue
        # Historical drivers remain busy between native children, from a foreign cwd.
        belongs = str(root) in argv or historical_driver
        if not belongs:
            try:
                cwd = subprocess.check_output(
                    ["lsof", "-a", "-p", str(pid), "-d", "cwd", "-Fn"],
                    text=True, stderr=subprocess.DEVNULL, timeout=5)
                belongs = any(line == "n" + str(root) for line in cwd.splitlines())
            except (OSError, subprocess.SubprocessError):
                pass
        if belongs:
            jobs.append({"pid": pid, "argv": argv})
    return jobs


def write_json(path, value):
    parent = directory_descriptor(path.parent)
    temporary = path.name + "." + uuid.uuid4().hex + ".tmp"
    try:
        try:
            existing = os.stat(path.name, dir_fd=parent, follow_symlinks=False)
        except FileNotFoundError:
            existing = None
        if existing is not None and not stat.S_ISREG(existing.st_mode):
            raise RuntimeError("refusing linked or non-regular receipt: " + str(path))
        descriptor = os.open(temporary, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW,
                             0o600, dir_fd=parent)
        with os.fdopen(descriptor, "w") as stream:
            stream.write(json.dumps(value, indent=2) + "\n")
        os.replace(temporary, path.name, src_dir_fd=parent, dst_dir_fd=parent)
    finally:
        os.close(parent)


def census_records(text, expected_modules):
    """Validate native census completeness separately from its trust verdict."""
    declarations = [json.loads(s) for s in re.findall(r"MATH_TRUST_DECL::(\{[^\n]+\})", text)]
    modules = [json.loads(s) for s in re.findall(r"MATH_TRUST_MODULE::(\{[^\n]+\})", text)]
    counts = re.findall(r"MATH_TRUST_COUNT::(\d+)", text)
    module_counts = re.findall(r"MATH_TRUST_MODULE_COUNT::(\d+)", text)
    if counts != [str(len(declarations))] or not declarations:
        raise RuntimeError("incomplete native declaration census")
    if module_counts != [str(len(modules))] or len({m["module"] for m in modules}) != len(modules):
        raise RuntimeError("incomplete native module census")
    if {m["module"] for m in modules} != set(expected_modules):
        raise RuntimeError("native module census differs from Git-visible source set")
    if len({d["name"] for d in declarations}) != len(declarations):
        raise RuntimeError("duplicate native declaration record")
    owner_set = {module["module"] for module in modules}
    if any(declaration.get("module") not in owner_set for declaration in declarations):
        raise RuntimeError("native declaration owner is absent from module census")
    if any(type(module.get("declarations")) is not int or module["declarations"] < 0
           for module in modules):
        raise RuntimeError("native module declaration count must be a nonnegative integer")
    if sum(module["declarations"] for module in modules) != len(declarations):
        raise RuntimeError("native module declaration totals do not match declaration census")
    for module in modules:
        if sum(d["module"] == module["module"] for d in declarations) != module["declarations"]:
            raise RuntimeError("native module declaration count mismatch: " + module["module"])
    return declarations, modules


def parse_census(text, expected_modules, source_hashes=None):
    source_hashes = {} if source_hashes is None else source_hashes
    declarations, modules = census_records(text, expected_modules)
    for declaration in declarations:
        known = (declaration["name"] == RUNTIME_NAME and declaration["module"] == RUNTIME_OWNER
                 and declaration["kind"] == "definition" and declaration["unsafe"]
                 and not declaration["partial"]
                 and source_hashes.get(RUNTIME_SOURCE) == RUNTIME_SOURCE_SHA256
                 and declaration.get("runtime_helper_owner_source_sha256") == RUNTIME_SOURCE_SHA256)
        if declaration["known_generated_runtime_helper"] != known:
            raise RuntimeError("invalid generated runtime helper classification")
        if (declaration["unsafe"] and not known) or declaration["partial"] or declaration["kind"] == "axiom":
            raise RuntimeError("unsafe, partial, or axiom declaration: " + declaration["name"])
        if not set(declaration["axioms"]) <= ALLOWED_AXIOMS:
            raise RuntimeError("unapproved transitive axiom: " + declaration["name"])
        if declaration["kind"] == "theorem" and declaration["direct_value_reference_to_runtime_helper"]:
            raise RuntimeError("theorem references unsafe runtime helper: " + declaration["name"])
    return declarations, modules


def dependency_object_identities(audit_output, paths, lean):
    """Fingerprint search-path-resolved dependency object families after audit."""
    owners = sorted(set(re.findall(r"MATH_TRUST_DEPENDENCY_MODULE::([^\s]+)", audit_output)))
    search = list(dict.fromkeys(paths + [str(Path(lean).parent.parent / "lib/lean")]))
    identities = {}
    for owner in owners:
        relative = Path(owner.replace(".", "/") + ".olean")
        candidates = [Path(base) / relative for base in search]
        found = next((path for path in candidates if path.is_file()), None)
        if found is None:
            raise RuntimeError("cannot resolve imported dependency object: " + owner)
        family = [found] + [Path(str(found) + suffix) for suffix in (".private", ".server")
                            if Path(str(found) + suffix).is_file()]
        identities[owner] = [{"path": str(path), "sha256": digest(path),
                              "bytes": path.stat().st_size} for path in family]
    return identities


LEAN_SELF_TEST_CASES = {
    "positive": {
        "module": "GRWTSK.Fixture.Positive",
        "source": "namespace GRWTSK.Fixture\ndef fixtureValue : Nat := 1\n"
                  "theorem fixtureValue_eq_one : fixtureValue = 1 := rfl\n"
                  "private theorem privateTruth : True := True.intro\n"
                  "def patternedValue : Nat → Nat\n  | 0 => 0\n  | n + 1 => n\n"
                  "theorem patternedValue_zero : patternedValue 0 = 0 := patternedValue.eq_1\n"
                  "theorem patternedValue_succ (n : Nat) : patternedValue (Nat.succ n) = n :=\n"
                  "  patternedValue.eq_2 n\nend GRWTSK.Fixture\n",
    },
    "sorry": {
        "module": "GRWTSK.Fixture.Sorry",
        "source": "namespace GRWTSK.Fixture\ntheorem sorryFalse : False := by sorry\nend GRWTSK.Fixture\n",
    },
    "custom-axiom": {
        "module": "GRWTSK.Fixture.CustomAxiom",
        "source": "namespace GRWTSK.Fixture\naxiom fabricatedFalse : False\n"
                  "theorem consumesFabricatedFalse : False := fabricatedFalse\nend GRWTSK.Fixture\n",
    },
    "unsafe": {
        "module": "GRWTSK.Fixture.Unsafe",
        "source": "namespace GRWTSK.Fixture\nunsafe def uncheckedNatural : Nat := 0\nend GRWTSK.Fixture\n",
    },
}


def error_messages(text):
    """Read both plain errors and Lean coded diagnostics such as error(lean.invalidField)."""
    return re.findall(r"^.*?\berror(?:\([^()\r\n]+\))?:[ \t]*([^\r\n]*)", text, re.MULTILINE)


def validate_native_fixture_output(case, stage, text, returncode, module):
    """Fail controls only for the intended reason, after complete native census."""
    errors = error_messages(text)
    if case == "sorry" and stage == "strict-source":
        intended = "declaration uses `sorry`"
        if returncode <= 0 or not errors or not all(message.startswith(intended) for message in errors):
            raise RuntimeError("strict sorry source did not fail only for its intended sorry warning")
        return {"expected": "strict sorry rejection", "matched_errors": errors}
    if stage in {"source", "warning-disabled-source"}:
        if returncode != 0 or errors:
            raise RuntimeError(case + " fixture source did not compile successfully")
        return {"expected": "source compilation", "matched_errors": []}
    declarations, modules = census_records(text, [module])
    if case == "positive":
        if returncode != 0 or errors:
            raise RuntimeError("positive fixture native audit did not compile successfully")
        parse_census(text, [module])
        names = {declaration["name"] for declaration in declarations}
        if not {"GRWTSK.Fixture.fixtureValue", "GRWTSK.Fixture.fixtureValue_eq_one",
                "GRWTSK.Fixture.patternedValue_zero", "GRWTSK.Fixture.patternedValue_succ"} <= names:
            raise RuntimeError("positive native census omitted fixture declarations")
        if not any(name.startswith("_private." + module + ".") and
                   name.endswith(".privateTruth") for name in names):
            raise RuntimeError("positive native census omitted private fixture declaration")
        if not {"GRWTSK.Fixture.patternedValue.eq_1", "GRWTSK.Fixture.patternedValue.eq_2"} <= names:
            raise RuntimeError("positive native census omitted compiler-generated equations")
        if not any(d["name"] == "GRWTSK.Fixture.patternedValue.match_1" and
                   d["module"] == module and d["kind"] == "definition" for d in declarations):
            raise RuntimeError("positive native census omitted compiler-generated matcher")
        if any(d.get("runtime_helper_owner_source_sha256") != RUNTIME_SOURCE_SHA256
               for d in declarations):
            raise RuntimeError("positive native audit did not receive configured source hash")
        return {"expected": "positive complete native census", "declarations": declarations,
                "modules": modules, "matched_errors": []}
    expected = {
        "sorry": "unapproved axiom sorryAx in GRWTSK.Fixture.sorryFalse",
        "custom-axiom": "new axiom: GRWTSK.Fixture.fabricatedFalse",
        "unsafe": "unsafe declaration: GRWTSK.Fixture.uncheckedNatural",
    }[case]
    if returncode <= 0 or not errors or not all(message.startswith("project trust audit failed:")
                                               for message in errors) or expected not in text:
        raise RuntimeError(case + " native control failed for an unintended reason")
    if case == "sorry":
        observed = any(d["name"] == "GRWTSK.Fixture.sorryFalse" and "sorryAx" in d["axioms"]
                       for d in declarations)
    elif case == "custom-axiom":
        observed = any(d["name"] == "GRWTSK.Fixture.fabricatedFalse" and d["kind"] == "axiom"
                       for d in declarations)
        observed = observed and any(d["name"] == "GRWTSK.Fixture.consumesFabricatedFalse" and
                                  "GRWTSK.Fixture.fabricatedFalse" in d["axioms"] for d in declarations)
        if "unapproved axiom GRWTSK.Fixture.fabricatedFalse" not in text:
            raise RuntimeError("custom axiom control did not exercise the transitive axiom gate")
    else:
        observed = any(d["name"] == "GRWTSK.Fixture.uncheckedNatural" and d["unsafe"]
                       and not d["known_generated_runtime_helper"] for d in declarations)
    if not observed:
        raise RuntimeError(case + " negative census does not contain the intended hostile declaration")
    return {"expected": expected, "declarations": declarations, "modules": modules,
            "matched_errors": errors}


def run_lean_self_test(run, state, results):
    """Called only after replay() owns the lock and its BUSY guard clears."""
    frozen = run / "source"
    make_directory(frozen, exclusive=True)
    snapshot = source_snapshot(ROOT, [], output(["git", "rev-parse", "HEAD"]), destination=frozen)
    state.update({"status": "NATIVE_FIXTURES_FROZEN", "snapshot": snapshot,
                  "scope": "Small generated fixture modules and the frozen native audit; no project theorem verdict",
                  "mathlib_imported": False, "rh_proved": False})
    write_json(run / "source-freeze.json", snapshot)
    write_json(run / "progress.json", state)
    if read_source(frozen, "lean-toolchain").decode().strip() != "leanprover/lean4:v" + LEAN_VERSION:
        raise RuntimeError("unexpected lean-toolchain pin")
    pins = {p["name"]: p["rev"] for p in json.loads(read_source(frozen, "lake-manifest.json"))["packages"]}
    if pins.get("mathlib") != MATHLIB_REV:
        raise RuntimeError("unexpected mathlib pin")
    lean = str(Path(output(["elan", "which", "lean"])).resolve())
    version = output([lean, "--version"])
    if LEAN_VERSION not in version or LEAN_COMMIT not in version:
        raise RuntimeError("unexpected Lean compiler identity: " + version)
    binary_hash = digest(Path(lean))
    standard_library = Path(lean).parent.parent / "lib/lean"
    state.update({"lean_version": version, "lean_binary_sha256": binary_hash,
                  "dependency_revisions_from_lock": pins,
                  "standard_library_search_path": str(standard_library)})
    audit_body = read_source(frozen, AUDIT).decode()
    audit_body = "\n".join(line for line in audit_body.splitlines() if not line.startswith("import "))
    fixture_inputs, cases = {}, {}
    for name, specification in LEAN_SELF_TEST_CASES.items():
        source_root = run / "lean-fixtures" / name / "source"
        build = run / "lean-fixtures" / name / "build"
        make_directory(source_root, exclusive=True)
        make_directory(build, exclusive=True)
        source = source_root / (specification["module"].replace(".", "/") + ".lean")
        write_bytes(source, specification["source"].encode(), exclusive=True, readonly=True)
        wrapper = source_root / "FixtureAudit.lean"
        fixture_audit_body = audit_body
        if name == "positive":
            fixture_audit_body = audit_body.replace('\n#audit_math_trust ""',
                '\n#audit_math_trust "' + RUNTIME_SOURCE_SHA256 + '"')
        write_bytes(wrapper, ("import " + specification["module"] + "\nimport Lean\n" + fixture_audit_body + "\n").encode(),
                    exclusive=True, readonly=True)
        for path in (source, wrapper):
            fixture_inputs[str(path.relative_to(run))] = digest(path)
        cases[name] = {"module": specification["module"], "source": source, "wrapper": wrapper,
                       "source_root": source_root, "build": build}
    state["fixture_input_sha256"] = fixture_inputs
    write_json(run / "fixture-freeze.json", fixture_inputs)

    def stable():
        verify_snapshot(ROOT, snapshot, sources=[])
        verify_frozen(frozen, snapshot)
        if digest(Path(lean)) != binary_hash:
            raise RuntimeError("compiler changed during native self-test")
        for relative, expected in fixture_inputs.items():
            if hashlib.sha256(read_source(run, relative)).hexdigest() != expected:
                raise RuntimeError("frozen native fixture changed: " + relative)

    def invoke(name, stage, source, destination=None, warning_as_error=True):
        stable()
        case = cases[name]
        argv = [lean, "--trust=0", "--memory=4096", "--threads=1",
                "-DwarningAsError=" + str(warning_as_error).lower()]
        if destination is not None:
            make_directory(destination.parent)
            if destination.exists() or destination.is_symlink():
                raise RuntimeError("refusing existing native fixture object: " + str(destination))
            argv += ["-o", str(destination)]
        argv.append(str(source))
        env = dict(os.environ, LEAN_PATH=os.pathsep.join([str(case["build"]), str(standard_library)]))
        env.pop("LEAN_SRC_PATH", None)
        env.pop("LEAN_SYSROOT", None)
        label = name + "-" + stage
        state.update({"status": "RUNNING_NATIVE_SELF_TEST", "active": label, "results": results})
        write_json(run / "progress.json", state)
        started = time.monotonic()
        entry = {"name": label, "case": name, "stage": stage,
                 "source_sha256": digest(source), "argv": argv,
                 "warning_as_error": warning_as_error, "outcome": "pending"}
        results.append(entry)
        try:
            try:
                process = subprocess.run(argv, cwd=case["source_root"], env=env, capture_output=True,
                                         text=True, timeout=120)
                diagnostic = process.stdout + process.stderr
                entry["exit_code"] = process.returncode
            except subprocess.TimeoutExpired as error:
                captured = lambda value: value.decode(errors="replace") if isinstance(value, bytes) else (value or "")
                diagnostic = captured(error.stdout) + captured(error.stderr) + "\n" + str(error)
                entry.update({"exit_code": None, "outcome": "timed-out"})
            log = run / (label + ".log")
            write_bytes(log, diagnostic.encode(), exclusive=True)
            entry.update({"seconds": time.monotonic() - started, "diagnostic_log": str(log),
                          "output_sha256": hashlib.sha256(diagnostic.encode()).hexdigest()})
            stable()
            if entry["outcome"] == "timed-out":
                raise RuntimeError("native fixture timed out: " + label)
            entry["validation"] = validate_native_fixture_output(name, stage, diagnostic,
                                                                 entry["exit_code"], case["module"])
            if destination is not None:
                entry["compiled_object_sha256"] = digest(destination)
            entry["outcome"] = "passed"
            write_json(run / "progress.json", state)
            print(label, "PASS", flush=True)
        except Exception as error:
            if entry["outcome"] != "timed-out":
                entry["outcome"] = "failed"
            entry["error"] = str(error)
            write_json(run / "progress.json", state)
            raise

    for name, case in cases.items():
        relative = Path(case["module"].replace(".", "/") + ".olean")
        if name == "sorry":
            invoke(name, "strict-source", case["source"])
            # Deliberately retain a warning-disabled object only to verify the
            # independent sorryAx gate on imported declarations.
            invoke(name, "warning-disabled-source", case["source"], case["build"] / relative,
                   warning_as_error=False)
        else:
            invoke(name, "source", case["source"], case["build"] / relative)
        invoke(name, "audit", case["wrapper"])
    stable()
    state.update({"status": "LEAN_AUDIT_SELF_TEST_PASSED", "active": None, "results": results,
                  "fixture_cases": list(cases), "command_count": len(results)})
    write_json(run / "receipt.json", state)
    write_json(run / "progress.json", state)
    print(json.dumps({"status": state["status"], "commands": len(results),
                      "receipt": str(run / "receipt.json")}))
    return 0


def replay(lean_self_test=False):
    base = ROOT / ".local/math-trust"
    try:
        ignored = subprocess.run(["git", "check-ignore", "-q", "--", ".local/math-trust/"], cwd=ROOT)
        if ignored.returncode != 0:
            raise RuntimeError("trust output must be Git-ignored: .local/math-trust/")
        make_directory(base)
        run = base / (time.strftime("%Y%m%dT%H%M%SZ", time.gmtime()) + "-" + uuid.uuid4().hex[:10])
        make_directory(run, exclusive=True)
    except RuntimeError as error:
        print(json.dumps({"status": "FAILED", "error": str(error)}))
        return 1
    results, snapshot = [], None
    state = {"status": "INITIALIZING", "run_directory": str(run),
             "mode": "lean-self-test" if lean_self_test else "all-project-replay",
             "source_qualified_runtime_profile": {"classification": "source-qualified compiler-shaped implementations", "project_profile": list(CURATED_PROJECT_RUNTIME_PROFILES),
                 "axiom_gate": "unchanged; standard axioms only", "mathematical_admission": False,
                 "dependency_impact": "all non-helper TYPE+VALUE references to every qualified helper rejected"}}
    write_json(run / "progress.json", state)
    lock = None
    try:
        parent = directory_descriptor(base)
        try:
            lock_fd = os.open("replay.lock", os.O_RDWR | os.O_CREAT | os.O_NOFOLLOW, 0o600, dir_fd=parent)
            if not stat.S_ISREG(os.fstat(lock_fd).st_mode):
                os.close(lock_fd)
                raise RuntimeError("refusing non-regular trust replay lock")
            lock = os.fdopen(lock_fd, "a+")
        finally:
            os.close(parent)
        try:
            fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError:
            raise RuntimeError("BUSY: another math trust replay holds the project lock")
        jobs = competing_jobs(ROOT)
        if jobs:
            state["competing_jobs"] = jobs
            raise RuntimeError("BUSY: existing project Lean or verification job")
        if lean_self_test:
            return run_lean_self_test(run, state, results)
        inventory = git_source_inventory(ROOT)
        sources = inventory["sources"]
        state["deleted_library_paths"] = inventory["deleted_library_paths"]
        state["source_inventory_scope"] = (
            "Existing Git-visible working-tree library Lean inputs; missing tracked regular library files "
            "are recorded separately. Existing broken symlinks/nonregular paths remain fatal replay inputs.")
        require_math_layout(ROOT, run, state)
        if git_source_inventory(ROOT) != inventory:
            raise RuntimeError("project source membership or tracked deletions changed during layout gate")
        frozen = run / "source"
        make_directory(frozen, exclusive=True)
        snapshot = source_snapshot(ROOT, sources, output(["git", "rev-parse", "HEAD"]),
                                   extras=FULL_EXTRAS, destination=frozen,
                                   deleted_sources=inventory["deleted_library_paths"])
        if snapshot["sha256"][LAYOUT_CHECKER] != state["math_layout_gate"]["checker_sha256_after"]:
            raise RuntimeError("mathematical layout checker changed before source freeze")
        state.update({"status": "SOURCE_FROZEN", "snapshot": snapshot, "source_count": len(sources)})
        write_json(run / "source-freeze.json", snapshot)
        write_json(run / "progress.json", state)
        modules, order = project_modules(frozen, sources)
        owner_source_hash = json.dumps({"scope": "project", "sources": runtime_owner_hash_payload(snapshot["sha256"])}, sort_keys=True)
        state["source_qualified_runtime_profile"]["observed_owner_source_payload"] = json.loads(owner_source_hash)
        state["module_order"] = order
        write_json(run / "progress.json", state)
        verify_snapshot(ROOT, snapshot)
        verify_frozen(frozen, snapshot)
        if read_source(frozen, "lean-toolchain").decode().strip() != "leanprover/lean4:v" + LEAN_VERSION:
            raise RuntimeError("unexpected lean-toolchain pin")
        pins = {p["name"]: p["rev"] for p in json.loads(read_source(frozen, "lake-manifest.json"))["packages"]}
        revisions = re.findall(r'^\s*rev\s*=\s*"([^"]+)"\s*$',
                               read_source(frozen, "lakefile.toml").decode(), re.MULTILINE)
        if pins.get("mathlib") != MATHLIB_REV or revisions != [MATHLIB_REV]:
            raise RuntimeError("unexpected mathlib pin")
        dependency_states = {}
        for name, revision in pins.items():
            package = ROOT / ".lake/packages" / name
            if output(["git", "rev-parse", "HEAD"], package) != revision:
                raise RuntimeError("dependency checkout revision drift: " + name)
            dirty = output(["git", "status", "--porcelain=v1", "--untracked-files=no"], package)
            dependency_states[name] = {"head": revision, "tracked_dirty_state": dirty}
            state["dependency_checkout_states"] = dependency_states
            if dirty:
                raise RuntimeError("dirty tracked dependency sources: " + name)
        lean = str(Path(output(["elan", "which", "lean"])).resolve())
        version = output([lean, "--version"])
        if LEAN_VERSION not in version or LEAN_COMMIT not in version:
            raise RuntimeError("unexpected Lean compiler identity: " + version)
        binary_hash = digest(Path(lean))
        paths, removed = dependency_search_path(output(["lake", "env", "printenv", "LEAN_PATH"]), ROOT, lean)
        if not paths:
            raise RuntimeError("missing pinned dependency search path")
        build = run / "build"
        make_directory(build, exclusive=True)
        env = dict(os.environ, LEAN_PATH=os.pathsep.join([str(build)] + paths))
        env.pop("LEAN_SRC_PATH", None)
        wrapper = frozen / "AllProjectAudit.lean"
        body = read_source(frozen, AUDIT).decode()
        body = "\n".join(line for line in body.splitlines() if not line.startswith("import "))
        body = body.replace('\n#audit_math_trust ""', '\n#audit_math_trust ' + json.dumps(owner_source_hash))
        write_bytes(wrapper, ("\n".join("import " + name for name in order) + "\nimport Lean\n" + body + "\n").encode(),
                    exclusive=True, readonly=True)
        wrapper_hash = digest(wrapper)
        state.update({"lean_version": version, "lean_binary_sha256": binary_hash,
                      "dependency_revisions": pins, "removed_search_paths": removed,
                      "dependency_search_path": paths, "wrapper_sha256": wrapper_hash})
        state["dependency_provenance_scope"] = (
            "Dependency checkout HEADs match the lock and tracked sources are clean; existing dependency objects are kernel-checked. "
            "No dependency source replay or independent certification that cached object bytes derive from those Git sources. "
            "Search-path-resolved imported dependency object families are fingerprinted after the successful audit; "
            "those fingerprints do not establish object-to-source provenance or bind earlier import times.")

        def stable():
            verify_snapshot(ROOT, snapshot)
            verify_frozen(frozen, snapshot)
            if digest(Path(lean)) != binary_hash or digest(wrapper) != wrapper_hash:
                raise RuntimeError("compiler or generated audit changed during replay")
            for name, revision in pins.items():
                if output(["git", "rev-parse", "HEAD"], ROOT / ".lake/packages" / name) != revision:
                    raise RuntimeError("dependency revision changed during replay: " + name)
                if output(["git", "status", "--porcelain=v1", "--untracked-files=no"], ROOT / ".lake/packages" / name):
                    raise RuntimeError("tracked dependency sources changed during replay: " + name)

        def compile_source(label, source, destination=None):
            stable()
            argv = [lean, "--trust=0", "--memory=16384", "--threads=1", "-DwarningAsError=true"]
            if destination is not None:
                make_directory(destination.parent)
                if destination.exists() or destination.is_symlink():
                    raise RuntimeError("refusing existing compiled output: " + str(destination))
                argv += ["-o", str(destination)]
            argv.append(str(source))
            state.update({"status": "RUNNING", "active": label, "results": results})
            write_json(run / "progress.json", state)
            started = time.monotonic()
            try:
                process = subprocess.run(argv, cwd=frozen, env=env, text=True, capture_output=True, timeout=600)
                text = process.stdout + process.stderr
                entry = {"name": label, "exit_code": process.returncode,
                         "outcome": "passed" if process.returncode == 0 else "failed"}
            except subprocess.TimeoutExpired as error:
                def captured(value):
                    return value.decode(errors="replace") if isinstance(value, bytes) else (value or "")
                text = captured(error.stdout) + captured(error.stderr) + "\n" + str(error)
                entry = {"name": label, "exit_code": None, "outcome": "timed-out"}
            write_bytes(run / (label.replace(".", "-") + ".log"), text.encode(), exclusive=True)
            entry.update({"seconds": time.monotonic() - started,
                          "output_sha256": hashlib.sha256(text.encode()).hexdigest()})
            results.append(entry)
            write_json(run / "progress.json", state)
            stable()
            if destination is not None and entry["outcome"] == "passed":
                digest(destination)
            print(label, entry["outcome"].upper(), flush=True)
            if entry["outcome"] != "passed":
                raise RuntimeError(label + " did not pass; retained log in " + str(run))
            return text

        for module in order:
            relative = modules[module]
            compile_source(module, frozen / relative, build / Path(relative).with_suffix(".olean"))
        audit_output = compile_source("AllProjectAudit", wrapper)
        declarations, audited_modules = parse_census(audit_output, modules, snapshot["sha256"])
        state["dependency_object_identities"] = dependency_object_identities(audit_output, paths, lean)
        stable()
        state.update({"status": "ALL_PROJECT_SOURCE_AND_AXIOM_CHECKS_PASSED", "active": None,
                      "declaration_count": len(declarations), "declarations": declarations,
                      "modules": audited_modules, "results": results,
                      "runtime_helper_consumers": [d["name"] for d in declarations
                          if d["direct_value_reference_to_runtime_helper"]],
                      "scope": "Every existing Git-visible working-tree project source freshly elaborated from immutable run copies at trust zero after the mathematical layout gate; deleted tracked regular library paths explicitly recorded and membership/deletion drift rejected; dependency checkout HEADs checked and cached dependency objects kernel-checked; all owned declarations and transitive axioms audited",
                      "rh_proved": False})
        write_json(run / "receipt.json", state)
        write_json(run / "progress.json", state)
        print(json.dumps({"status": state["status"], "sources": len(sources),
                          "declarations": len(declarations), "receipt": str(run / "receipt.json")}))
        return 0
    except Exception as error:
        state.update({"status": "BUSY" if str(error).startswith("BUSY:") else "FAILED",
                      "error": str(error), "results": results})
        write_json(run / "failure.json", state)
        write_json(run / "progress.json", state)
        print(json.dumps({"status": state["status"], "error": str(error),
                          "failure": str(run / "failure.json")}))
        return 2 if state["status"] == "BUSY" else 1
    finally:
        if lock is not None:
            lock.close()


class ReplayFixtures(unittest.TestCase):
    def setUp(self):
        (ROOT / ".local").mkdir(exist_ok=True)
        self.directory = tempfile.TemporaryDirectory(prefix="math-trust-fixture-", dir=ROOT / ".local")
        self.root = Path(self.directory.name)
        (self.root / "GRWTSK").mkdir()
        (self.root / "GRWTSK.lean").write_text("import GRWTSK.A\n")
        (self.root / "GRWTSK/A.lean").write_text("def a : Nat := 0\n")
        (self.root / "GRWTSK/Unimported.lean").write_text("import GRWTSK.A\n")
        self.sources = ["GRWTSK.lean", "GRWTSK/A.lean", "GRWTSK/Unimported.lean"]

    def tearDown(self):
        self.directory.cleanup()

    def inventory_mock(self, names, tracked_regular, tracked_links=()):
        def observe(argv, **kwargs):
            if argv[:3] != ["git", "ls-files", "-z"]:
                raise AssertionError("unexpected inventory command: " + str(argv))
            if "--stage" in argv:
                rows = ["100644 " + "0" * 40 + " 0\t" + name for name in tracked_regular]
                rows += ["120000 " + "0" * 40 + " 0\t" + name for name in tracked_links]
                return ("\0".join(rows) + "\0").encode()
            self.assertIn("--exclude-standard", argv)
            return ("\0".join(names) + "\0").encode()
        return observe

    def test_working_tree_inventory_records_deleted_tracked_and_includes_new_untracked(self):
        deleted = "GRWTSK/Analysis/Old.lean"
        new = "GRWTSK/Analysis/New.lean"
        (self.root / "GRWTSK/Analysis").mkdir()
        (self.root / new).write_text("def newlyVisible : Nat := 1\n")
        names = self.sources + [deleted, new]
        with mock.patch(__name__ + ".subprocess.check_output",
                        side_effect=self.inventory_mock(names, self.sources + [deleted])):
            inventory = git_source_inventory(self.root)
            self.assertEqual(git_sources(self.root), sorted(self.sources + [new]))
        self.assertEqual(inventory["deleted_library_paths"], [deleted])
        snapshot = source_snapshot(self.root, inventory["sources"], "fixture-head", extras=[],
                                   deleted_sources=inventory["deleted_library_paths"])
        self.assertEqual(snapshot["deleted_library_paths"], [deleted])
        self.assertNotIn(deleted, snapshot["sha256"])
        self.assertIn(new, snapshot["sha256"])

    def test_inventory_keeps_broken_links_directories_and_broken_parent_paths_fatal(self):
        broken = "GRWTSK/Broken.lean"
        folder = "GRWTSK/Folder.lean"
        missing_link = "GRWTSK/DeletedLink.lean"
        (self.root / broken).symlink_to("missing-target.lean")
        (self.root / folder).mkdir()
        (self.root / "GRWTSK/Linked").symlink_to("missing-directory", target_is_directory=True)
        parent_child = "GRWTSK/Linked/Child.lean"
        names = self.sources + [broken, folder, missing_link, parent_child]
        with mock.patch(__name__ + ".subprocess.check_output",
                        side_effect=self.inventory_mock(names, self.sources + [folder, parent_child],
                                                        [broken, missing_link])):
            inventory = git_source_inventory(self.root)
        self.assertEqual(inventory["sources"], sorted(names))
        self.assertEqual(inventory["deleted_library_paths"], [])
        for name in [broken, folder, missing_link, parent_child]:
            with self.subTest(name=name), self.assertRaises(RuntimeError):
                regular_source(self.root, name)

    def test_deleted_path_reappearance_and_deleted_set_drift_are_rejected(self):
        deleted = "GRWTSK/Deleted.lean"
        names = self.sources + [deleted]
        with mock.patch(__name__ + ".subprocess.check_output",
                        side_effect=self.inventory_mock(names, names)), \
                mock.patch(__name__ + ".output", return_value="fixture-head"):
            inventory = git_source_inventory(self.root)
            snapshot = source_snapshot(self.root, inventory["sources"], "fixture-head", extras=[],
                                       deleted_sources=inventory["deleted_library_paths"])
            verify_snapshot(self.root, snapshot)
            (self.root / deleted).write_text("def restored : Nat := 0\n")
            with self.assertRaisesRegex(RuntimeError, "source set changed"):
                verify_snapshot(self.root, snapshot)
        with self.assertRaisesRegex(RuntimeError, "deleted tracked library source set changed"):
            verify_snapshot(self.root, snapshot, self.sources, "fixture-head", deleted_sources=[])

    def test_layout_gate_rejects_legacy_paths_before_full_replay_native_commands(self):
        layout = runpy.run_path(str(ROOT / LAYOUT_CHECKER))
        old = "GRWTSK/RiemannHypothesis/CCC/Legacy.lean"
        (self.root / old).parent.mkdir(parents=True)
        (self.root / old).write_text("def oldLayout : Nat := 1\n")
        report = layout["check_paths"](self.root, [old])
        self.assertEqual(report["status"], "FAIL")
        self.assertTrue(any(row["code"] == "forbidden-layout-name" for row in report["findings"]))
        checker = self.root / LAYOUT_CHECKER
        checker.parent.mkdir(parents=True)
        checker.write_bytes(read_source(ROOT, LAYOUT_CHECKER))
        commands = []

        def rejected(argv, **kwargs):
            commands.append(argv)
            if argv == ["git", "check-ignore", "-q", "--", ".local/math-trust/"]:
                return subprocess.CompletedProcess(argv, 0)
            self.assertEqual(argv, [sys.executable, "-B", str(checker)])
            return subprocess.CompletedProcess(argv, 1, json.dumps(report), "")

        inventory = {"sources": self.sources + [old], "deleted_library_paths": ["GRWTSK/OldMoved.lean"]}
        with mock.patch(__name__ + ".ROOT", self.root), \
                mock.patch(__name__ + ".git_source_inventory", return_value=inventory), \
                mock.patch(__name__ + ".competing_jobs", return_value=[]), \
                mock.patch(__name__ + ".subprocess.run", side_effect=rejected), \
                mock.patch(__name__ + ".output", side_effect=AssertionError("native command reached")), \
                mock.patch(__name__ + ".project_modules", side_effect=AssertionError("source graph reached")), \
                contextlib.redirect_stdout(io.StringIO()):
            self.assertEqual(replay(), 1)
        failure = json.loads(next((self.root / ".local/math-trust").glob("*/failure.json")).read_text())
        self.assertIn("layout gate failed", failure["error"])
        self.assertEqual(failure["deleted_library_paths"], inventory["deleted_library_paths"])
        self.assertEqual(failure["math_layout_gate"]["exit_code"], 1)
        self.assertEqual(len(commands), 2)
        self.assertEqual(failure["results"], [])

    def test_source_gate_runs_fatal_default_layout_check_before_manifest_or_lean(self):
        script = ROOT / "scripts/check.py"
        with mock.patch.object(subprocess, "run", side_effect=subprocess.CalledProcessError(1, ["layout"])) as launch, \
                mock.patch.object(subprocess, "check_output", side_effect=AssertionError("Lean reached")) as lean, \
                mock.patch.object(Path, "read_text", side_effect=AssertionError("source manifest reached")), \
                self.assertRaises(subprocess.CalledProcessError):
            runpy.run_path(str(script))
        lean.assert_not_called()
        launch.assert_called_once_with([sys.executable, "-B", str(ROOT / LAYOUT_CHECKER)],
                                       cwd=ROOT, check=True)

    def test_unimported_module_replayed_after_dependency(self):
        modules, order = project_modules(self.root, self.sources)
        self.assertEqual(set(order), set(modules))
        self.assertLess(order.index("GRWTSK.A"), order.index("GRWTSK.Unimported"))

    def test_nested_comments_and_strings_do_not_invent_imports(self):
        text = '/- import GRWTSK.Bad /- nested -/ -/\npublic import GRWTSK.A -- import GRWTSK.Bad\n' + 'def x := "import GRWTSK.Bad"\n'
        self.assertEqual(project_imports(text), ["GRWTSK.A"])

    def test_missing_import_and_cycle_rejected(self):
        (self.root / "GRWTSK/A.lean").write_text("import GRWTSK.Missing\n")
        with self.assertRaisesRegex(RuntimeError, "missing Git-visible"):
            project_modules(self.root, self.sources)
        (self.root / "GRWTSK/A.lean").write_text("import GRWTSK\n")
        with self.assertRaisesRegex(RuntimeError, "cyclic"):
            project_modules(self.root, self.sources)

    def test_source_hash_head_and_source_set_drift_rejected(self):
        snapshot = source_snapshot(self.root, self.sources, "original-head", extras=[])
        verify_snapshot(self.root, snapshot, self.sources, "original-head")
        with self.assertRaisesRegex(RuntimeError, "HEAD changed"):
            verify_snapshot(self.root, snapshot, self.sources, "changed-head")
        with self.assertRaisesRegex(RuntimeError, "source set changed"):
            verify_snapshot(self.root, snapshot, self.sources + ["GRWTSK/New.lean"], "original-head")
        (self.root / "GRWTSK/A.lean").write_text("def a : Nat := 1\n")
        with self.assertRaisesRegex(RuntimeError, "input changed"):
            verify_snapshot(self.root, snapshot, self.sources, "original-head")

    def test_live_file_edits_cannot_change_frozen_compiler_inputs(self):
        frozen = self.root / "frozen"
        frozen.mkdir()
        snapshot = source_snapshot(self.root, self.sources, "original-head", extras=[], destination=frozen)
        original = read_source(frozen, "GRWTSK/A.lean")
        (self.root / "GRWTSK/A.lean").write_text("axiom changed_live_file : False\n")
        self.assertEqual(read_source(frozen, "GRWTSK/A.lean"), original)
        verify_frozen(frozen, snapshot)
        with self.assertRaisesRegex(RuntimeError, "input changed"):
            verify_snapshot(self.root, snapshot, self.sources, "original-head")
        copied = frozen / "GRWTSK/A.lean"
        copied.chmod(0o600)
        copied.write_text("changed frozen file\n")
        with self.assertRaisesRegex(RuntimeError, "frozen compiler input changed"):
            verify_frozen(frozen, snapshot)

    def test_symlink_source_and_symlink_directory_rejected(self):
        (self.root / "GRWTSK/A.lean").unlink()
        (self.root / "GRWTSK/A.lean").symlink_to(self.root / "GRWTSK.lean")
        with self.assertRaisesRegex(RuntimeError, "symlink"):
            project_modules(self.root, self.sources)
        (self.root / "Linked").symlink_to(self.root / "GRWTSK", target_is_directory=True)
        with self.assertRaisesRegex(RuntimeError, "symlink"):
            regular_source(self.root, "Linked/Unimported.lean")

    def test_stale_project_objects_and_foreign_cache_removed(self):
        dependency = self.root / ".lake/packages/mathlib/.lake/build/lib/lean"
        stale = self.root / ".lake/build/lib/lean"
        foreign = self.root / ".local/old/build"
        kept, removed = dependency_search_path(os.pathsep.join(map(str, [dependency, stale, foreign])),
                                                self.root, "/fixture/toolchain/bin/lean")
        self.assertEqual(kept, [str(dependency)])
        self.assertEqual(set(removed), {str(stale), str(foreign)})

    def test_historical_driver_without_children_remains_busy(self):
        diagnostic = "diagnose_v19_archived_runtime_positive_replay_v1.py"
        verifier = "run_source_merged_main_quality_verifier_v19.py"
        rows = [
            "910001 /usr/bin/python3 /foreign/" + diagnostic,
            "910002 /usr/bin/python3.12 /foreign/" + verifier,
            "910003 /bin/echo /foreign/" + diagnostic,
            "910004 /usr/bin/python3 /foreign/unrelated.py",
            "910005 /usr/bin/python3 /foreign/check_unrelated.py",
            "910006 /foreign/lean /foreign/Other.lean",
            "910007 /foreign/lake build",
            "910008 /usr/bin/python3 /foreign/" + diagnostic + ".bak",
            "910009 /bin/notpython /foreign/" + diagnostic,
        ]

        def cwd_response(argv, **kwargs):
            return "n" + (str(self.root) if argv[3] == "910007" else "/foreign") + "\n"

        with mock.patch(__name__ + ".output", return_value=rows[0]), \
                mock.patch(__name__ + ".subprocess.check_output") as cwd:
            self.assertEqual(competing_jobs(self.root), [{"pid": 910001, "argv": rows[0].split(None, 1)[1]}])
        cwd.assert_not_called()
        with mock.patch(__name__ + ".output", return_value="\n".join(rows)), \
                mock.patch(__name__ + ".subprocess.check_output", side_effect=cwd_response) as cwd:
            jobs = competing_jobs(self.root)
        self.assertEqual([job["pid"] for job in jobs], [910001, 910002, 910007])
        self.assertEqual([call.args[0][3] for call in cwd.call_args_list], ["910005", "910006", "910007"])

    def test_project_verify_drivers_without_children_remain_busy(self):
        rows = [
            "920001 /usr/bin/python3 scripts/verify_ccc_control_soundness.py",
            "920002 /usr/bin/python3.12 " + str(self.root) + "/.local/verify_root_coexistence.py",
            "920003 /usr/bin/python3 /foreign/verify_unrelated.py",
            "920004 /bin/echo " + str(self.root) + "/verify_ccc_control_soundness.py",
            "920005 /usr/bin/python3 " + str(self.root) + "/verify_ccc_control_soundness.py.bak",
            "920006 /usr/bin/python3 " + str(self.root) + "/check_proof.py",
        ]

        def cwd_response(argv, **kwargs):
            return "n" + (str(self.root) if argv[3] == "920001" else "/foreign") + "\n"

        with mock.patch(__name__ + ".output", return_value="\n".join(rows)), \
                mock.patch(__name__ + ".subprocess.check_output", side_effect=cwd_response) as cwd:
            jobs = competing_jobs(self.root)
        self.assertEqual([job["pid"] for job in jobs], [920001, 920002, 920006])
        self.assertEqual([call.args[0][3] for call in cwd.call_args_list], ["920001", "920003"])

    def test_existing_symlink_output_locations_are_rejected(self):
        outside = self.root / "outside"
        outside.mkdir()
        linked = self.root / "linked-output"
        linked.symlink_to(outside, target_is_directory=True)
        with self.assertRaisesRegex(RuntimeError, "symlink"):
            make_directory(linked / "runs")
        with self.assertRaisesRegex(RuntimeError, "symlink"):
            write_bytes(linked / "log.txt", b"unexpected")
        self.assertEqual(list(outside.iterdir()), [])
        regular = self.root / "regular-output"
        regular.mkdir()
        (regular / "receipt.json").symlink_to(outside / "receipt.json")
        with self.assertRaisesRegex(RuntimeError, "refusing linked"):
            write_json(regular / "receipt.json", {"unexpected": True})
        self.assertFalse((outside / "receipt.json").exists())

    def test_census_custom_axiom_and_missing_module_rejected(self):
        declaration = {"module": "GRWTSK", "name": "GRWTSK.example", "kind": "theorem",
                       "unsafe": False, "partial": False, "known_generated_runtime_helper": False,
                       "direct_value_reference_to_runtime_helper": False, "axioms": ["sorryAx"]}

        def census(decl):
            return ('MATH_TRUST_MODULE::' + json.dumps({"module": "GRWTSK", "declarations": 1}) +
                    '\nMATH_TRUST_DECL::' + json.dumps(decl) +
                    '\nMATH_TRUST_COUNT::1\nMATH_TRUST_MODULE_COUNT::1\n')

        with self.assertRaisesRegex(RuntimeError, "unapproved transitive axiom"):
            parse_census(census(declaration), ["GRWTSK"])
        declaration["axioms"] = ["propext"]
        parse_census(census(declaration), ["GRWTSK"])
        with self.assertRaisesRegex(RuntimeError, "source set"):
            parse_census(census(declaration), ["GRWTSK", "GRWTSK.Unimported"])
        declaration["unsafe"] = True
        with self.assertRaisesRegex(RuntimeError, "unsafe, partial"):
            parse_census(census(declaration), ["GRWTSK"])

    def test_census_owner_totals_and_integer_counts_preserve_empty_umbrellas(self):
        declaration = {"module": "GRWTSK.Live", "name": "GRWTSK.live", "kind": "theorem",
                       "unsafe": False, "partial": False, "known_generated_runtime_helper": False,
                       "direct_value_reference_to_runtime_helper": False, "axioms": ["propext"]}

        def census(modules, rows):
            return ("\n".join("MATH_TRUST_MODULE::" + json.dumps(module) for module in modules) + "\n" +
                    "\n".join("MATH_TRUST_DECL::" + json.dumps(row) for row in rows) + "\n" +
                    "MATH_TRUST_COUNT::" + str(len(rows)) + "\nMATH_TRUST_MODULE_COUNT::" + str(len(modules)) + "\n")

        valid_modules = [{"module": "GRWTSK", "declarations": 0}, {"module": "GRWTSK.Live", "declarations": 1}]
        rows, modules = parse_census(census(valid_modules, [declaration]), ["GRWTSK", "GRWTSK.Live"])
        self.assertEqual(len(rows), 1)
        self.assertEqual(modules[0]["declarations"], 0)
        for invalid_count in (True, False, -1, 1.0, "1", None):
            with self.subTest(invalid_count=invalid_count):
                invalid_modules = [{"module": "GRWTSK.Live", "declarations": invalid_count}]
                with self.assertRaisesRegex(RuntimeError, "nonnegative integer"):
                    census_records(census(invalid_modules, [declaration]), ["GRWTSK.Live"])
        unlisted = dict(declaration, module="GRWTSK.Unlisted")
        with self.assertRaisesRegex(RuntimeError, "owner is absent"):
            parse_census(census([{"module": "GRWTSK", "declarations": 0}], [unlisted]), ["GRWTSK"])
        with self.assertRaisesRegex(RuntimeError, "totals do not match"):
            census_records(census([{"module": "GRWTSK.Live", "declarations": 2}], [declaration]), ["GRWTSK.Live"])
        with self.assertRaisesRegex(RuntimeError, "duplicate native declaration"):
            census_records(census([{"module": "GRWTSK.Live", "declarations": 2}],
                                  [declaration, declaration]), ["GRWTSK.Live"])

    def test_generated_runtime_exception_requires_exact_unchanged_owner_source(self):
        declaration = {"module": RUNTIME_OWNER, "name": RUNTIME_NAME, "kind": "definition",
                       "type": "Nat", "unsafe": True, "partial": False,
                       "known_generated_runtime_helper": True,
                       "runtime_helper_owner_source_sha256": RUNTIME_SOURCE_SHA256,
                       "direct_value_reference_to_runtime_helper": False, "axioms": []}
        text = ('MATH_TRUST_MODULE::' + json.dumps({"module": RUNTIME_OWNER, "declarations": 1}) +
                '\nMATH_TRUST_DECL::' + json.dumps(declaration) +
                '\nMATH_TRUST_COUNT::1\nMATH_TRUST_MODULE_COUNT::1\n')
        with self.assertRaisesRegex(RuntimeError, "invalid generated runtime"):
            parse_census(text, [RUNTIME_OWNER], {RUNTIME_SOURCE: "changed-owner-source"})
        with self.assertRaisesRegex(RuntimeError, "invalid generated runtime"):
            parse_census(text, [RUNTIME_OWNER])
        # This synthetic row is only admissible with the independently frozen
        # accepted complete source identity and the same pinned compiler.
        parse_census(text, [RUNTIME_OWNER], {RUNTIME_SOURCE: RUNTIME_SOURCE_SHA256})
        declaration["axioms"] = ["sorryAx"]
        text = text.replace('"axioms": []', '"axioms": ["sorryAx"]')
        with self.assertRaisesRegex(RuntimeError, "unapproved transitive axiom"):
            parse_census(text, [RUNTIME_OWNER], {RUNTIME_SOURCE: RUNTIME_SOURCE_SHA256})

    def native_mock_repository(self):
        for relative in (AUDIT, CHECKER):
            target = self.root / relative
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(read_source(ROOT, relative))
        (self.root / "lean-toolchain").write_text("leanprover/lean4:v" + LEAN_VERSION + "\n")
        (self.root / "lakefile.toml").write_text('rev = "' + MATHLIB_REV + '"\n')
        (self.root / "lake-manifest.json").write_text(json.dumps({"packages": [{"name": "mathlib", "rev": MATHLIB_REV}]}))
        binary = self.root / "toolchain/bin/lean"
        binary.parent.mkdir(parents=True)
        binary.write_bytes(b"mock-only Lean binary; never executed")
        run = self.root / "mock-native-run"
        run.mkdir()

        def fixture_output(argv, root=ROOT):
            if argv == ["git", "rev-parse", "HEAD"]:
                return "fixture-head"
            if argv == ["elan", "which", "lean"]:
                return str(binary)
            if argv == [str(binary), "--version"]:
                return "Lean (version " + LEAN_VERSION + ", commit " + LEAN_COMMIT + ")"
            raise AssertionError("unexpected external command in mocked native fixtures: " + str(argv))

        return run, fixture_output

    def native_mock_process(self, argv, **kwargs):
        source = Path(argv[-1])
        case = source.parts[source.parts.index("lean-fixtures") + 1]
        if source.name != "FixtureAudit.lean":
            if case == "sorry" and "-DwarningAsError=true" in argv:
                return subprocess.CompletedProcess(argv, 1, str(source) + ":2:1: error: declaration uses `sorry`\n", "")
            if "-o" in argv:
                write_bytes(Path(argv[argv.index("-o") + 1]), b"mock fixture object", exclusive=True)
            warning = str(source) + ":2:1: warning: declaration uses `sorry`\n" if case == "sorry" else ""
            return subprocess.CompletedProcess(argv, 0, warning, "")
        module = LEAN_SELF_TEST_CASES[case]["module"]

        def row(name, kind="theorem", axioms=None, unsafe=False):
            return {"module": module, "name": name, "kind": kind, "type": "mock-only fixture type",
                    "unsafe": unsafe, "partial": False, "known_generated_runtime_helper": False,
                    "direct_value_reference_to_runtime_helper": False,
                    "runtime_helper_owner_source_sha256": RUNTIME_SOURCE_SHA256 if case == "positive" else "",
                    "axioms": [] if axioms is None else axioms}

        if case == "positive":
            rows = [row("GRWTSK.Fixture.fixtureValue", "definition"),
                    row("GRWTSK.Fixture.fixtureValue_eq_one"),
                    row("_private.GRWTSK.Fixture.Positive.0.GRWTSK.Fixture.privateTruth"),
                    row("GRWTSK.Fixture.patternedValue", "definition"),
                    row("GRWTSK.Fixture.patternedValue.eq_1"), row("GRWTSK.Fixture.patternedValue.eq_2"),
                    row("GRWTSK.Fixture.patternedValue.match_1", "definition"),
                    row("GRWTSK.Fixture.patternedValue_zero"), row("GRWTSK.Fixture.patternedValue_succ")]
            reason, code = "", 0
        elif case == "sorry":
            rows = [row("GRWTSK.Fixture.sorryFalse", axioms=["sorryAx"])]
            reason, code = "unapproved axiom sorryAx in GRWTSK.Fixture.sorryFalse", 1
        elif case == "custom-axiom":
            rows = [row("GRWTSK.Fixture.fabricatedFalse", "axiom", ["GRWTSK.Fixture.fabricatedFalse"]),
                    row("GRWTSK.Fixture.consumesFabricatedFalse", axioms=["GRWTSK.Fixture.fabricatedFalse"])]
            reason, code = ("new axiom: GRWTSK.Fixture.fabricatedFalse; "
                            "unapproved axiom GRWTSK.Fixture.fabricatedFalse in GRWTSK.Fixture.consumesFabricatedFalse"), 1
        else:
            rows = [row("GRWTSK.Fixture.uncheckedNatural", "definition", unsafe=True)]
            reason, code = "unsafe declaration: GRWTSK.Fixture.uncheckedNatural", 1
        diagnostic = "MATH_TRUST_MODULE::" + json.dumps({"module": module, "declarations": len(rows)}) + "\n"
        diagnostic += "\n".join("MATH_TRUST_DECL::" + json.dumps(record) for record in rows) + "\n"
        diagnostic += "MATH_TRUST_COUNT::" + str(len(rows)) + "\nMATH_TRUST_MODULE_COUNT::1\n"
        if reason:
            diagnostic += str(source) + ":1:1: error: project trust audit failed: [" + reason + "]\n"
        return subprocess.CompletedProcess(argv, code, diagnostic, "")

    def test_positive_native_fixture_requires_generated_private_and_configured_source_hash_coverage(self):
        source = self.root / "lean-fixtures/positive/source/FixtureAudit.lean"
        process = self.native_mock_process([str(source)])
        module = LEAN_SELF_TEST_CASES["positive"]["module"]
        validate_native_fixture_output("positive", "audit", process.stdout, 0, module)
        mutations = [
            ("GRWTSK.Fixture.patternedValue.eq_1", "GRWTSK.Fixture.otherEquation", "compiler-generated equations"),
            ("GRWTSK.Fixture.patternedValue.match_1", "GRWTSK.Fixture.otherMatcher", "compiler-generated matcher"),
            ("_private." + module + ".0.", "PublicPrivateAlias.", "private fixture declaration"),
            (RUNTIME_SOURCE_SHA256, "missing-source-hash", "configured source hash"),
        ]
        for old, new, reason in mutations:
            with self.subTest(reason=reason), self.assertRaisesRegex(RuntimeError, reason):
                validate_native_fixture_output("positive", "audit", process.stdout.replace(old, new), 0, module)

    def test_mocked_native_orchestration_freezes_and_checks_all_controls(self):
        run, fixture_output = self.native_mock_repository()
        state, results = {}, []
        with mock.patch(__name__ + ".ROOT", self.root), mock.patch(__name__ + ".output", side_effect=fixture_output), \
                mock.patch(__name__ + ".subprocess.run", side_effect=self.native_mock_process) as native, \
                contextlib.redirect_stdout(io.StringIO()):
            self.assertEqual(run_lean_self_test(run, state, results), 0)
        receipt = json.loads((run / "receipt.json").read_text())
        self.assertEqual(receipt["status"], "LEAN_AUDIT_SELF_TEST_PASSED")
        self.assertEqual(len(results), 9)
        self.assertEqual(native.call_count, 9)
        self.assertTrue(all(result["outcome"] == "passed" for result in results))
        self.assertTrue(all(Path(result["diagnostic_log"]).is_file() for result in results))
        self.assertEqual(sum(not result["warning_as_error"] for result in results), 1)
        self.assertFalse(receipt["mathlib_imported"])
        for relative, expected in receipt["fixture_input_sha256"].items():
            self.assertEqual(digest(run / relative), expected)
            self.assertEqual((run / relative).stat().st_mode & 0o222, 0)
        for call in native.call_args_list:
            self.assertIn("--trust=0", call.args[0])
            self.assertNotIn(str(ROOT / ".lake/build"), call.kwargs["env"]["LEAN_PATH"])

    def test_mocked_native_unrelated_failure_is_not_a_successful_control(self):
        run, fixture_output = self.native_mock_repository()

        def unrelated_failure(argv, **kwargs):
            if "unsafe" in Path(argv[-1]).parts and Path(argv[-1]).name == "FixtureAudit.lean":
                return subprocess.CompletedProcess(argv, 1, "error: object file 'Lean.olean' does not exist\n", "")
            return self.native_mock_process(argv, **kwargs)

        state, results = {}, []
        with mock.patch(__name__ + ".ROOT", self.root), mock.patch(__name__ + ".output", side_effect=fixture_output), \
                mock.patch(__name__ + ".subprocess.run", side_effect=unrelated_failure), \
                contextlib.redirect_stdout(io.StringIO()):
            with self.assertRaisesRegex(RuntimeError, "incomplete native declaration census"):
                run_lean_self_test(run, state, results)
        self.assertFalse((run / "receipt.json").exists())
        self.assertEqual(results[-1]["outcome"], "failed")
        self.assertIn("does not exist", Path(results[-1]["diagnostic_log"]).read_text())
        self.assertEqual(json.loads((run / "progress.json").read_text())["results"][-1]["outcome"], "failed")

    def test_complete_negative_census_with_coded_infrastructure_error_is_rejected(self):
        coded_error = "FixtureAudit.lean:23:40: error(lean.invalidField): Invalid field `getString`\n"
        for case in ("sorry", "custom-axiom", "unsafe"):
            with self.subTest(case=case):
                source = self.root / "lean-fixtures" / case / "source/FixtureAudit.lean"
                process = self.native_mock_process([str(source)])
                module = LEAN_SELF_TEST_CASES[case]["module"]
                # This is a complete intended rejection before adding the
                # unexpected compiler diagnostic that a plain-error parser misses.
                validate_native_fixture_output(case, "audit", process.stdout, process.returncode, module)
                with self.assertRaisesRegex(RuntimeError, "unintended reason"):
                    validate_native_fixture_output(case, "audit", process.stdout + coded_error,
                                                   process.returncode, module)

    def test_coded_errors_reject_positive_source_and_strict_sorry_controls(self):
        coded_error = "Fixture.lean:23:40: error(lean.invalidField): Invalid field `getString`\n"
        source = self.root / "lean-fixtures/positive/source/FixtureAudit.lean"
        process = self.native_mock_process([str(source)])
        module = LEAN_SELF_TEST_CASES["positive"]["module"]
        with self.assertRaisesRegex(RuntimeError, "positive fixture native audit did not compile"):
            validate_native_fixture_output("positive", "audit", process.stdout + coded_error, 0, module)
        for stage in ("source", "warning-disabled-source"):
            with self.subTest(stage=stage):
                with self.assertRaisesRegex(RuntimeError, "source did not compile"):
                    validate_native_fixture_output("positive", stage, coded_error, 0, module)
        sorry_error = "Fixture.lean:2:1: error: declaration uses `sorry`\n"
        with self.assertRaisesRegex(RuntimeError, "only for its intended"):
            validate_native_fixture_output("sorry", "strict-source", sorry_error + coded_error, 1,
                                           LEAN_SELF_TEST_CASES["sorry"]["module"])

    def test_strict_sorry_mixed_with_other_errors_does_not_pass(self):
        diagnostic = "Fixture.lean:1:1: error: declaration uses `sorry`\nFixture.lean:1:1: error: unknown module\n"
        with self.assertRaisesRegex(RuntimeError, "only for its intended"):
            validate_native_fixture_output("sorry", "strict-source", diagnostic, 1, "GRWTSK.Fixture.Sorry")

    def test_native_self_test_busy_guard_preserves_receipt_without_native_invocation(self):
        jobs = [{"pid": 12345, "argv": "run_source_merged_main_quality_verifier_v19.py"}]
        with mock.patch(__name__ + ".ROOT", self.root), \
                mock.patch(__name__ + ".subprocess.run", return_value=subprocess.CompletedProcess([], 0)) as external, \
                mock.patch(__name__ + ".competing_jobs", return_value=jobs), \
                mock.patch(__name__ + ".run_lean_self_test") as native, contextlib.redirect_stdout(io.StringIO()):
            self.assertEqual(replay(lean_self_test=True), 2)
        native.assert_not_called()
        self.assertEqual(external.call_count, 1)
        self.assertEqual(external.call_args.args[0][:2], ["git", "check-ignore"])
        failures = list((self.root / ".local/math-trust").glob("*/failure.json"))
        self.assertEqual(len(failures), 1)
        failure = json.loads(failures[0].read_text())
        self.assertEqual(failure["status"], "BUSY")
        self.assertEqual(failure["mode"], "lean-self-test")
        self.assertEqual(failure["competing_jobs"], jobs)



CURATED_PROJECT_RUNTIME_PROFILES = [{'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.Algebra.OrderedProduct', 'name': 'GRWTSK.Algebra.orderedProduct._unsafe_rec', 'parent': 'GRWTSK.Algebra.orderedProduct', 'source_path': 'GRWTSK/Algebra/OrderedProduct.lean', 'source_sha256': '97997c1246d32731c34a6decf10d3cb4a90d0c28281e174ab28fd4abe4c6574d'}, {'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy', 'name': 'GRWTSK.Analysis.Waveform.Scheduling.count._unsafe_rec', 'parent': 'GRWTSK.Analysis.Waveform.Scheduling.count', 'source_path': 'GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean', 'source_sha256': '851cb36b5b9db3a4e2695e4c4164dbca4af83dcc913caebd41160fd4db8f882f'}, {'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy', 'name': 'GRWTSK.Analysis.Waveform.Scheduling.clock._unsafe_rec', 'parent': 'GRWTSK.Analysis.Waveform.Scheduling.clock', 'source_path': 'GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean', 'source_sha256': '851cb36b5b9db3a4e2695e4c4164dbca4af83dcc913caebd41160fd4db8f882f'}, {'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy', 'name': 'GRWTSK.Analysis.Waveform.Scheduling.debt._unsafe_rec', 'parent': 'GRWTSK.Analysis.Waveform.Scheduling.debt', 'source_path': 'GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean', 'source_sha256': '851cb36b5b9db3a4e2695e4c4164dbca4af83dcc913caebd41160fd4db8f882f'}, {'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators', 'name': 'GRWTSK.RiemannHypothesis.BranchSequenceRealization.denominator._unsafe_rec', 'parent': 'GRWTSK.RiemannHypothesis.BranchSequenceRealization.denominator', 'source_path': 'GRWTSK/NumberTheory/ContinuedFractions/ScheduledDenominators.lean', 'source_sha256': '3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03'}, {'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators', 'name': 'GRWTSK.RiemannHypothesis.BranchSequenceRealization.spikeDenominator._unsafe_rec', 'parent': 'GRWTSK.RiemannHypothesis.BranchSequenceRealization.spikeDenominator', 'source_path': 'GRWTSK/NumberTheory/ContinuedFractions/ScheduledDenominators.lean', 'source_sha256': '3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03'}, {'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators', 'name': 'GRWTSK.RiemannHypothesis.BranchSequenceRealization.numerator._unsafe_rec', 'parent': 'GRWTSK.RiemannHypothesis.BranchSequenceRealization.numerator', 'source_path': 'GRWTSK/NumberTheory/ContinuedFractions/ScheduledDenominators.lean', 'source_sha256': '3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03'}, {'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators', 'name': 'GRWTSK.RiemannHypothesis.BranchSequenceRealization.batchClock._unsafe_rec', 'parent': 'GRWTSK.RiemannHypothesis.BranchSequenceRealization.batchClock', 'source_path': 'GRWTSK/NumberTheory/ContinuedFractions/ScheduledDenominators.lean', 'source_sha256': '3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03'}, {'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.Order.Closure.FiniteDependencyClosure', 'name': 'GRWTSK.ProofHorizon.CorkscrewChamberCap.affectedClosure._unsafe_rec', 'parent': 'GRWTSK.ProofHorizon.CorkscrewChamberCap.affectedClosure', 'source_path': 'GRWTSK/Order/Closure/FiniteDependencyClosure.lean', 'source_sha256': 'e78778c5b623abadfc23a668517cb4b1652ef6365962263b8440f8a156af5dec'}, {'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.Logic.Inference.FiniteRuleSystems', 'name': 'GRWTSK.ProofHorizon.CorkscrewChamberCap.routeClosureFrom._unsafe_rec', 'parent': 'GRWTSK.ProofHorizon.CorkscrewChamberCap.routeClosureFrom', 'source_path': 'GRWTSK/Logic/Inference/FiniteRuleSystems.lean', 'source_sha256': '6bbe978cc4ba18d4bfefbadab3a7b256cdec7dffb6b7de9da18a688d9c4fa986'}, {'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples', 'name': 'GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.totalRoundCost._unsafe_rec', 'parent': 'GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.totalRoundCost', 'source_path': 'GRWTSK/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean', 'source_sha256': '155e4fd202fb590cbdbdf4cb26100c17e72452418be0497ba37b301f662b3e42'}, {'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples', 'name': 'GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.sessionRun._unsafe_rec', 'parent': 'GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.sessionRun', 'source_path': 'GRWTSK/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean', 'source_sha256': '155e4fd202fb590cbdbdf4cb26100c17e72452418be0497ba37b301f662b3e42'}, {'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.LinearAlgebra.CocycleProduct', 'name': 'GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct._unsafe_rec', 'parent': 'GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct', 'source_path': 'GRWTSK/LinearAlgebra/CocycleProduct.lean', 'source_sha256': '64ebbd43849bfffee9f92d74f271c55a1ffcba28c1b7debcf491a901ddfff67b'}, {'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.Logic.FiniteSequences.PrefixCoverage', 'name': 'GRWTSK.Analysis.Waveform.workClock._unsafe_rec', 'parent': 'GRWTSK.Analysis.Waveform.workClock', 'source_path': 'GRWTSK/Logic/FiniteSequences/PrefixCoverage.lean', 'source_sha256': '77ed7277b4519ff8fb955e215664ac6d0c22a78e95e38e9ee16d18e6b226a5b3'}, {'authorization': 'Curated exact failed169 frozen source/census member; compiler-shaped, not authenticated compiler provenance.', 'module': 'GRWTSK.NumberTheory.ContinuedFractions.FrequencyRealization', 'name': 'GRWTSK.RiemannHypothesis.BranchFrequencyExistence.finiteTail._unsafe_rec', 'parent': 'GRWTSK.RiemannHypothesis.BranchFrequencyExistence.finiteTail', 'source_path': 'GRWTSK/NumberTheory/ContinuedFractions/FrequencyRealization.lean', 'source_sha256': 'fe53414320a78931bf2add8a168544df853ce7bd10b82b2cf257082ceb77e4be'}]
CURATED_FIXTURE_RUNTIME_PROFILES = [{'authorization': 'Explicit frozen native fixture member only; not project profile.', 'module': 'GRWTSK.Fixture.RuntimeStructural', 'name': 'GRWTSK.Fixture.RuntimeStructural.depth._unsafe_rec', 'parent': 'GRWTSK.Fixture.RuntimeStructural.depth', 'source_path': 'GRWTSK/Fixture/RuntimeStructural.lean', 'source_sha256': '0be8353e896218d8c79446f0bdd1a1978c365c2e54d8ca22a60450df28c14afe'}, {'authorization': 'Explicit frozen native fixture member only; not project profile.', 'module': 'GRWTSK.Fixture.RuntimeWellFounded', 'name': 'GRWTSK.Fixture.RuntimeWellFounded.depth._unsafe_rec', 'parent': 'GRWTSK.Fixture.RuntimeWellFounded.depth', 'source_path': 'GRWTSK/Fixture/RuntimeWellFounded.lean', 'source_sha256': '61427aa9348975d7932d9d8114288b41f122bfa863f06954731874c35d710f78'}, {'authorization': 'Explicit frozen native fixture member only; not project profile.', 'module': 'GRWTSK.Fixture.OpaqueParent', 'name': 'GRWTSK.Fixture.OpaqueParent.base._unsafe_rec', 'parent': 'GRWTSK.Fixture.OpaqueParent.base', 'source_path': 'GRWTSK/Fixture/OpaqueParent.lean', 'source_sha256': 'b80924c9bebed2ec3ab30eee89657d5bf53c944735088cc2594e653d4afc8bcf'}, {'authorization': 'Explicit frozen native fixture member only; not project profile.', 'module': 'GRWTSK.Fixture.MissingParent', 'name': 'GRWTSK.Fixture.MissingParent.base._unsafe_rec', 'parent': 'GRWTSK.Fixture.MissingParent.base', 'source_path': 'GRWTSK/Fixture/MissingParent.lean', 'source_sha256': '20e94fc3e08f9aceb6d565710ed1a605d82f9e518abd88f9c085b7cc2d0e86f2'}, {'authorization': 'Explicit frozen native fixture member only; not project profile.', 'module': 'GRWTSK.Fixture.UnsafeParent', 'name': 'GRWTSK.Fixture.UnsafeParent.base._unsafe_rec', 'parent': 'GRWTSK.Fixture.UnsafeParent.base', 'source_path': 'GRWTSK/Fixture/UnsafeParent.lean', 'source_sha256': 'df2f07c889b050fdc0697e17a2e85f5081154676453d4dc8082f6160ad5f6e66'}, {'authorization': 'Explicit frozen native fixture member only; not project profile.', 'module': 'GRWTSK.Fixture.PartialParent', 'name': 'GRWTSK.Fixture.PartialParent.base._unsafe_rec', 'parent': 'GRWTSK.Fixture.PartialParent.base', 'source_path': 'GRWTSK/Fixture/PartialParent.lean', 'source_sha256': 'd6d0e6d2df7224aa465a482bee0dd9fbed125680baaff36c4c4601d083a5f0fd'}, {'authorization': 'Explicit frozen native fixture member only; not project profile.', 'module': 'GRWTSK.Fixture.TypeMismatch', 'name': 'GRWTSK.Fixture.TypeMismatch.base._unsafe_rec', 'parent': 'GRWTSK.Fixture.TypeMismatch.base', 'source_path': 'GRWTSK/Fixture/TypeMismatch.lean', 'source_sha256': 'e873192efa8d3fd6d11777e790286aa1da14124353bb708c0ef83ce254c547d1'}, {'authorization': 'Explicit frozen native fixture member only; not project profile.', 'module': 'GRWTSK.Fixture.LevelMismatch', 'name': 'GRWTSK.Fixture.LevelMismatch.base._unsafe_rec', 'parent': 'GRWTSK.Fixture.LevelMismatch.base', 'source_path': 'GRWTSK/Fixture/LevelMismatch.lean', 'source_sha256': 'ba4f09b6016aab99d0ff331a09b283b46807decf5e0e28939ff62245e6219163'}, {'authorization': 'Explicit frozen native fixture member only; not project profile.', 'module': 'GRWTSK.Fixture.TypeReference', 'name': 'GRWTSK.Fixture.TypeReference.base._unsafe_rec', 'parent': 'GRWTSK.Fixture.TypeReference.base', 'source_path': 'GRWTSK/Fixture/TypeReference.lean', 'source_sha256': '63278cd4a8843550a156f3632e6fef29f4c56ed3ecfe89944425e45e1915ba13'}, {'authorization': 'Explicit frozen native fixture member only; not project profile.', 'module': 'GRWTSK.Fixture.ValueReference', 'name': 'GRWTSK.Fixture.ValueReference.base._unsafe_rec', 'parent': 'GRWTSK.Fixture.ValueReference.base', 'source_path': 'GRWTSK/Fixture/ValueReference.lean', 'source_sha256': 'a9eebc3dd1eb6b741bb7339302e973ad207cdcc3ce798464079e79d723cbd9d6'}, {'authorization': 'Exact hostile native fixture only; foreign parent must reject.', 'module': 'GRWTSK.Fixture.ForeignHelper', 'name': 'GRWTSK.Fixture.ForeignParent.base._unsafe_rec', 'parent': 'GRWTSK.Fixture.ForeignParent.base', 'source_path': 'GRWTSK/Fixture/ForeignHelper.lean', 'source_sha256': '09c4a4be9134610061ac5118c29eeb82856a0de2abc3ac3dfb440683208545d6'}]
EXPANDED_NATIVE_CASES = {'custom-axiom': {'kind': 'custom-axiom', 'module': 'GRWTSK.Fixture.CustomAxiom', 'source': 'namespace GRWTSK.Fixture\naxiom fabricatedFalse : False\ntheorem consumesFabricatedFalse : False := fabricatedFalse\nend GRWTSK.Fixture\n', 'source_path': 'GRWTSK/Fixture/CustomAxiom.lean', 'source_sha256': 'df1daa7b42e34a2a8a9203af5011f9d819d0e1d3aa657345cb88fe32b8fef825'}, 'foreign-owner': {'additional_sources': {'GRWTSK/Fixture/ForeignParent.lean': 'namespace GRWTSK.Fixture.ForeignParent\ndef base (n : Nat) : Nat := n\nend GRWTSK.Fixture.ForeignParent\n'}, 'expected_modules': ['GRWTSK.Fixture.ForeignParent', 'GRWTSK.Fixture.ForeignHelper'], 'kind': 'foreign-owner', 'module': 'GRWTSK.Fixture.ForeignHelper', 'source': 'import Lean\nimport GRWTSK.Fixture.ForeignParent\nopen Lean Elab Command\nrun_cmd liftCoreM do\n  addDecl (.defnDecl { name := `GRWTSK.Fixture.ForeignParent.base._unsafe_rec, levelParams := [], type := mkForall `n .default (mkConst ``Nat) (mkConst ``Nat), value := mkLambda `n .default (mkConst ``Nat) (mkBVar 0), hints := .opaque, safety := .partial })\n', 'source_path': 'GRWTSK/Fixture/ForeignHelper.lean', 'source_sha256': '09c4a4be9134610061ac5118c29eeb82856a0de2abc3ac3dfb440683208545d6'}, 'forged-unprofiled': {'curated_negative_profile': False, 'kind': 'forged-unprofiled', 'module': 'GRWTSK.Fixture.ForgedUnprofiled', 'parent': 'base', 'source': 'import Lean\nopen Lean Elab Command\nnamespace GRWTSK.Fixture.ForgedUnprofiled\ndef base (n : Nat) : Nat := n\nrun_cmd liftCoreM do\n  addDecl (.defnDecl { name := `GRWTSK.Fixture.ForgedUnprofiled.base._unsafe_rec, levelParams := [], type := mkForall `n .default (mkConst ``Nat) (mkConst ``Nat), value := mkLambda `n .default (mkConst ``Nat) (mkBVar 0), hints := .opaque, safety := .partial })\nrun_cmd liftCoreM <| Meta.markAsRecursive `GRWTSK.Fixture.ForgedUnprofiled.base\nend GRWTSK.Fixture.ForgedUnprofiled\n', 'source_path': 'GRWTSK/Fixture/ForgedUnprofiled.lean', 'source_sha256': '9aa698c9336b67a10b71f7cf351618a90f4622ea1ea22bc85698e0185add86a3'}, 'level-mismatch': {'curated_negative_profile': True, 'kind': 'level-mismatch', 'module': 'GRWTSK.Fixture.LevelMismatch', 'parent': 'base', 'source': 'import Lean\nopen Lean Elab Command\nnamespace GRWTSK.Fixture.LevelMismatch\ndef base (n : Nat) : Nat := n\nrun_cmd liftCoreM do\n  addDecl (.defnDecl { name := `GRWTSK.Fixture.LevelMismatch.base._unsafe_rec, levelParams := [`u], type := mkForall `n .default (mkConst ``Nat) (mkConst ``Nat), value := mkLambda `n .default (mkConst ``Nat) (mkBVar 0), hints := .opaque, safety := .partial })\nend GRWTSK.Fixture.LevelMismatch\n', 'source_path': 'GRWTSK/Fixture/LevelMismatch.lean', 'source_sha256': 'ba4f09b6016aab99d0ff331a09b283b46807decf5e0e28939ff62245e6219163'}, 'missing-parent': {'curated_negative_profile': True, 'kind': 'missing-parent', 'module': 'GRWTSK.Fixture.MissingParent', 'parent': 'base', 'source': 'import Lean\nopen Lean Elab Command\nnamespace GRWTSK.Fixture.MissingParent\n\nrun_cmd liftCoreM do\n  addDecl (.defnDecl { name := `GRWTSK.Fixture.MissingParent.base._unsafe_rec, levelParams := [], type := mkForall `n .default (mkConst ``Nat) (mkConst ``Nat), value := mkLambda `n .default (mkConst ``Nat) (mkBVar 0), hints := .opaque, safety := .partial })\nend GRWTSK.Fixture.MissingParent\n', 'source_path': 'GRWTSK/Fixture/MissingParent.lean', 'source_sha256': '20e94fc3e08f9aceb6d565710ed1a605d82f9e518abd88f9c085b7cc2d0e86f2'}, 'opaque-parent': {'curated_negative_profile': True, 'kind': 'opaque-parent', 'module': 'GRWTSK.Fixture.OpaqueParent', 'parent': 'base', 'source': 'import Lean\nopen Lean Elab Command\nnamespace GRWTSK.Fixture.OpaqueParent\nopaque base : Nat → Nat := fun n => n\nrun_cmd liftCoreM do\n  addDecl (.defnDecl { name := `GRWTSK.Fixture.OpaqueParent.base._unsafe_rec, levelParams := [], type := mkForall `n .default (mkConst ``Nat) (mkConst ``Nat), value := mkLambda `n .default (mkConst ``Nat) (mkBVar 0), hints := .opaque, safety := .partial })\nend GRWTSK.Fixture.OpaqueParent\n', 'source_path': 'GRWTSK/Fixture/OpaqueParent.lean', 'source_sha256': 'b80924c9bebed2ec3ab30eee89657d5bf53c944735088cc2594e653d4afc8bcf'}, 'partial-parent': {'curated_negative_profile': True, 'kind': 'partial-parent', 'module': 'GRWTSK.Fixture.PartialParent', 'parent': 'base', 'source': 'import Lean\nopen Lean Elab Command\nnamespace GRWTSK.Fixture.PartialParent\n\nrun_cmd liftCoreM do\n  addDecl (.defnDecl { name := `GRWTSK.Fixture.PartialParent.base, levelParams := [], type := mkForall `n .default (mkConst ``Nat) (mkConst ``Nat), value := mkLambda `n .default (mkConst ``Nat) (mkBVar 0), hints := .opaque, safety := .partial })\nrun_cmd liftCoreM do\n  addDecl (.defnDecl { name := `GRWTSK.Fixture.PartialParent.base._unsafe_rec, levelParams := [], type := mkForall `n .default (mkConst ``Nat) (mkConst ``Nat), value := mkLambda `n .default (mkConst ``Nat) (mkBVar 0), hints := .opaque, safety := .partial })\nend GRWTSK.Fixture.PartialParent\n', 'source_path': 'GRWTSK/Fixture/PartialParent.lean', 'source_sha256': 'd6d0e6d2df7224aa465a482bee0dd9fbed125680baaff36c4c4601d083a5f0fd'}, 'positive': {'kind': 'positive', 'module': 'GRWTSK.Fixture.Positive', 'source': 'namespace GRWTSK.Fixture\ndef fixtureValue : Nat := 1\ntheorem fixtureValue_eq_one : fixtureValue = 1 := rfl\nprivate theorem privateTruth : True := True.intro\ndef patternedValue : Nat → Nat\n  | 0 => 0\n  | n + 1 => n\ntheorem patternedValue_zero : patternedValue 0 = 0 := patternedValue.eq_1\ntheorem patternedValue_succ (n : Nat) : patternedValue (Nat.succ n) = n :=\n  patternedValue.eq_2 n\nend GRWTSK.Fixture\n', 'source_path': 'GRWTSK/Fixture/Positive.lean', 'source_sha256': 'ea837839f32a8852a503eb8cc18f29ef1854d8211d47bd4f80762ec3f565e1b8'}, 'sorry': {'kind': 'sorry', 'module': 'GRWTSK.Fixture.Sorry', 'source': 'namespace GRWTSK.Fixture\ntheorem sorryFalse : False := by sorry\nend GRWTSK.Fixture\n', 'source_path': 'GRWTSK/Fixture/Sorry.lean', 'source_sha256': '20fce24b9a16cb3d9920bbbb37bed029f23b66f676f80848f9b3b1aa3f668342'}, 'source-profile-spoof': {'kind': 'source-profile-spoof', 'module': 'GRWTSK.Fixture.RuntimeStructural', 'observed_hash_override': '0000000000000000000000000000000000000000000000000000000000000000', 'parent': 'depth', 'source': 'namespace GRWTSK.Fixture.RuntimeStructural\ndef depth : Nat → Nat\n  | 0 => 0\n  | n + 1 => depth n + 1\ntheorem depth_zero : depth 0 = 0 := rfl\nend GRWTSK.Fixture.RuntimeStructural\n', 'source_path': 'GRWTSK/Fixture/RuntimeStructural.lean', 'source_sha256': '0be8353e896218d8c79446f0bdd1a1978c365c2e54d8ca22a60450df28c14afe'}, 'structural': {'kind': 'runtime-positive', 'module': 'GRWTSK.Fixture.RuntimeStructural', 'parent': 'depth', 'source': 'namespace GRWTSK.Fixture.RuntimeStructural\ndef depth : Nat → Nat\n  | 0 => 0\n  | n + 1 => depth n + 1\ntheorem depth_zero : depth 0 = 0 := rfl\nend GRWTSK.Fixture.RuntimeStructural\n', 'source_path': 'GRWTSK/Fixture/RuntimeStructural.lean', 'source_sha256': '0be8353e896218d8c79446f0bdd1a1978c365c2e54d8ca22a60450df28c14afe'}, 'type-mismatch': {'curated_negative_profile': True, 'kind': 'type-mismatch', 'module': 'GRWTSK.Fixture.TypeMismatch', 'parent': 'base', 'source': 'import Lean\nopen Lean Elab Command\nnamespace GRWTSK.Fixture.TypeMismatch\ndef base (n : Nat) : Nat := n\nrun_cmd liftCoreM do\n  addDecl (.defnDecl { name := `GRWTSK.Fixture.TypeMismatch.base._unsafe_rec, levelParams := [], type := mkForall `n .default (mkConst ``Nat) (mkForall `n .default (mkConst ``Nat) (mkConst ``Nat)), value := mkLambda `n .default (mkConst ``Nat) (mkLambda `n .default (mkConst ``Nat) (mkBVar 0)), hints := .opaque, safety := .partial })\nend GRWTSK.Fixture.TypeMismatch\n', 'source_path': 'GRWTSK/Fixture/TypeMismatch.lean', 'source_sha256': 'e873192efa8d3fd6d11777e790286aa1da14124353bb708c0ef83ce254c547d1'}, 'type-reference': {'curated_negative_profile': True, 'kind': 'type-reference', 'module': 'GRWTSK.Fixture.TypeReference', 'parent': 'base', 'source': 'import Lean\nopen Lean Elab Command\nnamespace GRWTSK.Fixture.TypeReference\ndef base (n : Nat) : Nat := n\nrun_cmd liftCoreM do\n  addDecl (.defnDecl { name := `GRWTSK.Fixture.TypeReference.base._unsafe_rec, levelParams := [], type := mkForall `n .default (mkConst ``Nat) (mkConst ``Nat), value := mkLambda `n .default (mkConst ``Nat) (mkBVar 0), hints := .opaque, safety := .partial })\n/- Deliberate hostile test injection: bypass kernel checking only to exercise audit reference guards; never mathematical admission. -/\nrun_cmd liftCoreM <| withOptions (fun opts => opts.setBool `debug.skipKernelTC true) do\n  addDecl (.defnDecl { name := `GRWTSK.Fixture.TypeReference.referenceProbe, levelParams := [], type := mkApp3 (mkConst ``Eq [Level.succ Level.zero]) (mkConst ``Nat) (mkApp (mkConst `GRWTSK.Fixture.TypeReference.base._unsafe_rec) (mkNatLit 0)) (mkNatLit 0), value := mkConst ``True.intro, hints := .opaque, safety := .safe })\nend GRWTSK.Fixture.TypeReference\n', 'source_path': 'GRWTSK/Fixture/TypeReference.lean', 'source_sha256': '63278cd4a8843550a156f3632e6fef29f4c56ed3ecfe89944425e45e1915ba13'}, 'unsafe': {'kind': 'unsafe', 'module': 'GRWTSK.Fixture.Unsafe', 'source': 'namespace GRWTSK.Fixture\nunsafe def uncheckedNatural : Nat := 0\nend GRWTSK.Fixture\n', 'source_path': 'GRWTSK/Fixture/Unsafe.lean', 'source_sha256': '47faa78ebe9f505eeb6c1d7d10fc6f42b637102040dd64d2d4dccb086c50fc60'}, 'unsafe-parent': {'curated_negative_profile': True, 'kind': 'unsafe-parent', 'module': 'GRWTSK.Fixture.UnsafeParent', 'parent': 'base', 'source': 'import Lean\nopen Lean Elab Command\nnamespace GRWTSK.Fixture.UnsafeParent\nunsafe def base (n : Nat) : Nat := n\nrun_cmd liftCoreM do\n  addDecl (.defnDecl { name := `GRWTSK.Fixture.UnsafeParent.base._unsafe_rec, levelParams := [], type := mkForall `n .default (mkConst ``Nat) (mkConst ``Nat), value := mkLambda `n .default (mkConst ``Nat) (mkBVar 0), hints := .opaque, safety := .partial })\nend GRWTSK.Fixture.UnsafeParent\n', 'source_path': 'GRWTSK/Fixture/UnsafeParent.lean', 'source_sha256': 'df2f07c889b050fdc0697e17a2e85f5081154676453d4dc8082f6160ad5f6e66'}, 'user-partial': {'kind': 'partial', 'module': 'GRWTSK.Fixture.UserPartial', 'source': 'namespace GRWTSK.Fixture.UserPartial\npartial def loop (n : Nat) : Nat := loop n\nend GRWTSK.Fixture.UserPartial\n', 'source_path': 'GRWTSK/Fixture/UserPartial.lean', 'source_sha256': 'b74fd83371b996a2feb7820d5860f6215bed9687ef6ff62044e802097875ae24'}, 'value-reference': {'curated_negative_profile': True, 'kind': 'value-reference', 'module': 'GRWTSK.Fixture.ValueReference', 'parent': 'base', 'source': 'import Lean\nopen Lean Elab Command\nnamespace GRWTSK.Fixture.ValueReference\ndef base (n : Nat) : Nat := n\nrun_cmd liftCoreM do\n  addDecl (.defnDecl { name := `GRWTSK.Fixture.ValueReference.base._unsafe_rec, levelParams := [], type := mkForall `n .default (mkConst ``Nat) (mkConst ``Nat), value := mkLambda `n .default (mkConst ``Nat) (mkBVar 0), hints := .opaque, safety := .partial })\n/- Deliberate hostile test injection: bypass kernel checking only to exercise audit reference guards; never mathematical admission. -/\nrun_cmd liftCoreM <| withOptions (fun opts => opts.setBool `debug.skipKernelTC true) do\n  addDecl (.defnDecl { name := `GRWTSK.Fixture.ValueReference.referenceProbe, levelParams := [], type := mkConst ``Nat, value := mkApp (mkConst `GRWTSK.Fixture.ValueReference.base._unsafe_rec) (mkNatLit 0), hints := .opaque, safety := .safe })\nend GRWTSK.Fixture.ValueReference\n', 'source_path': 'GRWTSK/Fixture/ValueReference.lean', 'source_sha256': 'a9eebc3dd1eb6b741bb7339302e973ad207cdcc3ce798464079e79d723cbd9d6'}, 'well-founded': {'kind': 'runtime-positive', 'module': 'GRWTSK.Fixture.RuntimeWellFounded', 'parent': 'depth', 'source': 'namespace GRWTSK.Fixture.RuntimeWellFounded\ndef depth (n : Nat) : Nat :=\n  if h : n = 0 then 0 else depth (n - 1) + 1\ntermination_by n\ndecreasing_by exact Nat.sub_lt (Nat.pos_of_ne_zero h) (by decide)\nend GRWTSK.Fixture.RuntimeWellFounded\n', 'source_path': 'GRWTSK/Fixture/RuntimeWellFounded.lean', 'source_sha256': '61427aa9348975d7932d9d8114288b41f122bfa863f06954731874c35d710f78'}}

def authorized_runtime_profiles(profile_scope="project"):
    if profile_scope == "project": return CURATED_PROJECT_RUNTIME_PROFILES
    if profile_scope == "native-fixtures": return CURATED_FIXTURE_RUNTIME_PROFILES
    raise RuntimeError("unrecognized runtime profile scope")


def runtime_owner_hash_payload(source_hashes, profile_scope="project"):
    """Observed hashes only; authority is the source-fixed table in both policies."""
    return {p["module"]: source_hashes.get(p["source_path"], "")
            for p in authorized_runtime_profiles(profile_scope) if p["source_path"] in source_hashes}


def parse_census(text, expected_modules, source_hashes=None, profile_scope="project"):
    source_hashes = {} if source_hashes is None else source_hashes
    declarations, modules = census_records(text, expected_modules)
    by_name = {d["name"]: d for d in declarations}
    authorized = {p["name"]: p for p in authorized_runtime_profiles(profile_scope)
                  if p["module"] in expected_modules}
    qualified = {d["name"] for d in declarations
                 if d.get("known_generated_runtime_helper") is True}
    if qualified != set(authorized):
        raise RuntimeError("invalid generated runtime profile membership: missing or extra helper")
    for d in declarations:
        for field in ("unsafe", "partial", "known_generated_runtime_helper", "mathematical_admission",
                      "runtime_helper_same_owner", "runtime_helper_type_equal",
                      "runtime_helper_level_params_equal", "direct_value_reference_to_runtime_helper"):
            if type(d.get(field)) is not bool:
                raise RuntimeError("malformed runtime census boolean: " + field)
        if not isinstance(d.get("type"), str) or not isinstance(d.get("level_params"), list) or not all(
                isinstance(v, str) for v in d["level_params"]):
            raise RuntimeError("malformed declaration type/universe parameters")
        for field in ("direct_type_references_to_runtime_helpers", "direct_value_references_to_runtime_helpers"):
            refs = d.get(field)
            if not isinstance(refs, list) or not all(isinstance(n, str) for n in refs) or len(refs) != len(set(refs)) or not set(refs) <= qualified:
                raise RuntimeError("malformed runtime reference census: " + field)
        value_refs = d["direct_value_references_to_runtime_helpers"]
        type_refs = d["direct_type_references_to_runtime_helpers"]
        if d["direct_value_reference_to_runtime_helper"] != bool(value_refs):
            raise RuntimeError("runtime reference scalar/list disagreement")
        axioms = d.get("axioms")
        if not isinstance(axioms, list) or not all(isinstance(a, str) for a in axioms):
            raise RuntimeError("malformed transitive axiom census")
        known = d["name"] in authorized
        if known:
            p = authorized[d["name"]]
            parent = by_name.get(p["parent"])
            required_hash = p["source_sha256"]
            if (d["module"] != p["module"] or d["kind"] != "definition" or
                    d["unsafe"] or not d["partial"] or d["mathematical_admission"] or
                    source_hashes.get(p["source_path"]) != required_hash or
                    d.get("runtime_helper_owner_source_sha256") != required_hash or
                    d.get("runtime_helper_profile_source_sha256") != required_hash or
                    d.get("runtime_helper_parent") != p["parent"] or
                    not all(d[f] for f in ("runtime_helper_same_owner", "runtime_helper_type_equal",
                                         "runtime_helper_level_params_equal")) or
                    parent is None or parent["module"] != p["module"] or parent["kind"] != "definition" or
                    parent.get("unsafe") is not False or parent.get("partial") is not False or
                    parent.get("known_generated_runtime_helper") is not False or
                    d["type"] != parent.get("type") or d["level_params"] != parent.get("level_params")):
                raise RuntimeError("invalid generated runtime profile structure/source: " + d["name"])
        elif d["unsafe"] or d["partial"] or d["kind"] == "axiom":
            raise RuntimeError("unsafe, partial, or axiom declaration: " + d["name"])
        if not set(axioms) <= ALLOWED_AXIOMS:
            raise RuntimeError("unapproved transitive axiom: " + d["name"])
        if not known and (type_refs or value_refs):
            raise RuntimeError("non-helper type/value references runtime helper: " + d["name"])
        admitted = not known and not d["unsafe"] and not d["partial"] and d["kind"] != "axiom" and not type_refs and not value_refs
        if d["mathematical_admission"] != admitted:
            raise RuntimeError("invalid mathematical admission classification")
    return declarations, modules


def warning_messages(text):
    return re.findall(r"^[ \t]*(?:[^\r\n]+?:\d+:\d+:[ \t]*)?warning(?:\([^()\r\n]+\))?:[^\r\n]*", text, re.M)


def runtime_census_violations(declarations, expected_modules, source_hashes, profile_scope="project"):
    """Reconcile the native violation list independently, including hostile rows."""
    by_name = {d["name"]: d for d in declarations}
    qualified, violations = set(), []
    for p in authorized_runtime_profiles(profile_scope):
        if p["module"] not in expected_modules:
            continue
        d, parent = by_name.get(p["name"], {}), by_name.get(p["parent"], {})
        matches = (d.get("module") == p["module"] and d.get("kind") == "definition" and
                   d.get("unsafe") is False and d.get("partial") is True and
                   parent.get("module") == p["module"] and parent.get("kind") == "definition" and
                   parent.get("unsafe") is False and parent.get("partial") is False and
                   d.get("runtime_helper_parent") == p["parent"] and
                   all(d.get(f) is True for f in ("runtime_helper_same_owner", "runtime_helper_type_equal", "runtime_helper_level_params_equal")) and
                   d.get("type") == parent.get("type") and d.get("level_params") == parent.get("level_params") and
                   source_hashes.get(p["source_path"]) == p["source_sha256"] and
                   d.get("runtime_helper_owner_source_sha256") == p["source_sha256"] and
                   d.get("runtime_helper_profile_source_sha256") == p["source_sha256"])
        if matches: qualified.add(p["name"])
        else: violations.append("runtime profile mismatch: " + p["name"])
    for d in declarations:
        name = d["name"]
        if d.get("known_generated_runtime_helper") is not (name in qualified):
            raise RuntimeError("native/independent helper classification disagreement")
        if d.get("unsafe") is True: violations.append("unsafe declaration: " + name)
        if d.get("partial") is True and name not in qualified: violations.append("partial declaration: " + name)
        if d.get("kind") == "axiom": violations.append("new axiom: " + name)
        for ax in d.get("axioms", []):
            if ax not in ALLOWED_AXIOMS: violations.append("unapproved axiom " + ax + " in " + name)
        if name not in qualified and d.get("direct_type_references_to_runtime_helpers"):
            violations.append("non-helper type references runtime helper: " + name)
        if name not in qualified and d.get("direct_value_references_to_runtime_helpers"):
            violations.append("non-helper value references runtime helper: " + name)
    return violations


def validate_runtime_fixture_output(case, stage, text, returncode, specification, source_path):
    errors, warnings = error_messages(text), warning_messages(text)
    headers = list(re.finditer(r"^(.+?):(\d+):(\d+):[ \t]*error(?:\([^()\r\n]+\))?:[ \t]*([^\r\n]*)", text, re.M))
    if type(returncode) is not int or returncode < 0:
        raise RuntimeError("fixture signalled/timed out or lacks compiler exit")
    if errors and (len(headers) != len(errors) or any(Path(h[1]).absolute() != Path(source_path).absolute() for h in headers)):
        raise RuntimeError("unattributed or foreign-source diagnostic in native fixture")
    if case == "sorry" and stage == "strict-source":
        if returncode <= 0 or warnings or not errors or not all(e.startswith("declaration uses `sorry`") for e in errors):
            raise RuntimeError("strict sorry source did not fail only for its intended sorry warning")
        return {"expected": "strict sorry rejection", "matched_errors": errors, "mathematical_admission": False}
    if stage in {"source", "additional-source", "warning-disabled-source"}:
        if returncode != 0 or errors or (warnings and not (case == "sorry" and stage == "warning-disabled-source")):
            raise RuntimeError("native fixture source did not compile cleanly")
        if warnings and not all("declaration uses `sorry`" in w for w in warnings):
            raise RuntimeError("unexpected warning in deliberate sorry source")
        return {"expected": "source compilation only", "matched_errors": [], "mathematical_admission": False}
    expected_modules = specification.get("expected_modules", [specification["module"]])
    declarations, modules = census_records(text, expected_modules)
    kind, module = specification["kind"], specification["module"]
    rows = {d["name"]: d for d in declarations}
    source_hashes = {specification["source_path"]: specification["source_sha256"]}
    source_hashes.update({p: hashlib.sha256(s.encode()).hexdigest() for p, s in specification.get("additional_sources", {}).items()})
    reported_violations = [json.loads(v) for v in re.findall(r'^.*?MATH_TRUST_VIOLATION::([^\r\n]+)$', text, re.M)]
    expected_violations = runtime_census_violations(declarations, expected_modules, source_hashes, "native-fixtures")
    if not all(isinstance(v, str) for v in reported_violations) or len(reported_violations) != len(set(reported_violations)) or sorted(reported_violations) != sorted(expected_violations):
        raise RuntimeError("native trust-violation list differs from independent census policy")
    if kind in {"positive", "runtime-positive"}:
        if returncode != 0 or errors or warnings:
            raise RuntimeError("positive native audit did not compile cleanly")
        parse_census(text, expected_modules, source_hashes, "native-fixtures")
        if kind == "positive":
            required = {"GRWTSK.Fixture.fixtureValue", "GRWTSK.Fixture.fixtureValue_eq_one",
                        "GRWTSK.Fixture.patternedValue_zero", "GRWTSK.Fixture.patternedValue_succ",
                        "GRWTSK.Fixture.patternedValue.eq_1", "GRWTSK.Fixture.patternedValue.eq_2",
                        "GRWTSK.Fixture.patternedValue.match_1"}
            if not required <= set(rows) or not any(n.startswith("_private." + module + ".") and n.endswith(".privateTruth") for n in rows):
                raise RuntimeError("positive generated/private coverage incomplete")
        else:
            helper = module + "." + specification["parent"] + "._unsafe_rec"
            if rows.get(helper, {}).get("known_generated_runtime_helper") is not True:
                raise RuntimeError("genuine recursive fixture did not exercise qualified runtime profile")
        return {"expected": "complete positive native census", "declarations": declarations, "modules": modules,
                "matched_errors": [], "runtime_profile_authority": "explicit frozen fixture table; no automatic enrollment"}
    if returncode <= 0 or warnings or len(errors) != 1 or not errors[0].startswith("project trust audit failed:") or not expected_violations:
        raise RuntimeError("negative native audit failed for an unintended reason")
    if specification.get("audit_line") is not None and int(headers[0][2]) != specification["audit_line"]:
        raise RuntimeError("native audit diagnostic outside exact frozen command")
    if kind == "sorry":
        name, fragment = "GRWTSK.Fixture.sorryFalse", "unapproved axiom sorryAx"
        observed = "sorryAx" in rows.get(name, {}).get("axioms", [])
    elif kind == "custom-axiom":
        name, fragment = "GRWTSK.Fixture.fabricatedFalse", "new axiom: GRWTSK.Fixture.fabricatedFalse"
        observed = rows.get(name, {}).get("kind") == "axiom" and "GRWTSK.Fixture.fabricatedFalse" in rows.get("GRWTSK.Fixture.consumesFabricatedFalse", {}).get("axioms", [])
    elif kind == "unsafe":
        name, fragment = "GRWTSK.Fixture.uncheckedNatural", "unsafe declaration: GRWTSK.Fixture.uncheckedNatural"
        observed = rows.get(name, {}).get("unsafe") is True
    elif kind == "partial":
        name, fragment = module + ".loop", "partial declaration:"
        observed = any(d.get("partial") is True and d.get("known_generated_runtime_helper") is False for d in declarations)
    elif kind in {"type-reference", "value-reference"}:
        name, fragment = module + ".referenceProbe", "non-helper " + kind.split('-')[0] + " references runtime helper:"
        field = "direct_" + kind.split('-')[0] + "_references_to_runtime_helpers"
        observed = rows.get(name, {}).get(field) == [module + ".base._unsafe_rec"] and rows.get(name, {}).get("known_generated_runtime_helper") is False
    elif kind == "forged-unprofiled":
        name, fragment = module + ".base._unsafe_rec", "partial declaration: " + module + ".base._unsafe_rec"
        observed = rows.get(name, {}).get("partial") is True and rows.get(name, {}).get("known_generated_runtime_helper") is False
    else:
        p = next(p for p in authorized_runtime_profiles("native-fixtures") if p["module"] == module)
        name, fragment = p["name"], "runtime profile mismatch: " + p["name"]
        d, parent = rows.get(name, {}), rows.get(p["parent"], {})
        observed = d.get("known_generated_runtime_helper") is False and d.get("partial") is True
        if kind == "opaque-parent": observed = observed and parent.get("kind") == "opaque"
        elif kind == "missing-parent": observed = observed and not parent
        elif kind == "unsafe-parent": observed = observed and parent.get("unsafe") is True
        elif kind == "partial-parent": observed = observed and parent.get("partial") is True
        elif kind == "type-mismatch": observed = observed and d.get("runtime_helper_type_equal") is False
        elif kind == "level-mismatch": observed = observed and d.get("runtime_helper_level_params_equal") is False
        elif kind == "foreign-owner": observed = observed and d.get("runtime_helper_same_owner") is False and parent.get("module") != module
        elif kind == "source-profile-spoof": observed = observed and d.get("runtime_helper_owner_source_sha256") == "0" * 64 and d.get("runtime_helper_profile_source_sha256") == p["source_sha256"]
        else: raise RuntimeError("unimplemented native fixture kind")
    if fragment not in text or not observed:
        raise RuntimeError("negative fixture omitted exact intended census observation: " + kind)
    # The native command is source-bound and emits only its own trust violation.
    # Every plain/coded error header must belong to this wrapper; warning mixtures fail.
    return {"expected": fragment, "declarations": declarations, "modules": modules, "matched_errors": errors,
            "mathematical_admission": False, "deliberate_hostile_fixture": True}


def native_fixture_blueprint(audit_bytes):
    """Pure reconstruction; receipt-controlled sources/profiles are never inputs."""
    body = "\n".join(line for line in audit_bytes.decode().splitlines() if not line.startswith("import "))
    if body.count('\n#audit_math_trust ""') != 1:
        raise RuntimeError("native audit invocation template missing or duplicated")
    blueprint = []
    ordered_names = ["positive", "sorry", "custom-axiom", "unsafe"]
    ordered_names += sorted(set(EXPANDED_NATIVE_CASES) - set(ordered_names))
    for name in ordered_names:
        original = EXPANDED_NATIVE_CASES[name]
        specification = dict(original)
        inputs = {path: source.encode() for path, source in specification.get("additional_sources", {}).items()}
        inputs[specification["source_path"]] = specification["source"].encode()
        hashes = {path: hashlib.sha256(raw).hexdigest() for path, raw in inputs.items()}
        if hashes[specification["source_path"]] != specification["source_sha256"]:
            raise RuntimeError("configured native fixture source digest differs")
        observed = runtime_owner_hash_payload(hashes, "native-fixtures")
        if specification.get("observed_hash_override"):
            if name != "source-profile-spoof" or specification["observed_hash_override"] != "0" * 64:
                raise RuntimeError("unsupported fixture source-profile override")
            observed[specification["module"]] = "0" * 64
        payload = {"scope": "native-fixtures", "sources": observed}
        literal = json.dumps(json.dumps(payload, sort_keys=True))
        wrapper_body = body.replace('\n#audit_math_trust ""', '\n#audit_math_trust ' + literal)
        modules = specification.get("expected_modules", [specification["module"]])
        inputs["FixtureAudit.lean"] = ("\n".join("import " + n for n in modules) + "\nimport Lean\n" + wrapper_body + "\n").encode()
        specification["audit_line"] = next(i for i, line in enumerate(inputs["FixtureAudit.lean"].decode().splitlines(), 1) if line.startswith("#audit_math_trust "))
        commands = [{"stage": "additional-source", "source": path, "destination": path[:-5] + ".olean", "warning_as_error": True}
                    for path in specification.get("additional_sources", {})]
        if name == "sorry":
            commands += [{"stage": "strict-source", "source": specification["source_path"], "destination": None, "warning_as_error": True},
                         {"stage": "warning-disabled-source", "source": specification["source_path"], "destination": specification["source_path"][:-5] + ".olean", "warning_as_error": False}]
        else:
            commands.append({"stage": "source", "source": specification["source_path"], "destination": specification["source_path"][:-5] + ".olean", "warning_as_error": True})
        commands.append({"stage": "audit", "source": "FixtureAudit.lean", "destination": None, "warning_as_error": True})
        blueprint.append({"case": name, "specification": specification, "inputs": inputs, "commands": commands})
    return blueprint


def cleanup_native_fixture_process(process, entry):
    """Bounded group cleanup/reap; never conceal the original failure."""
    cleanup_errors = []
    # The leader may already have exited with closed pipes while a descendant
    # remains. A successful communicate must never skip group KILL.
    try: os.killpg(process.pid, signal.SIGKILL)
    except ProcessLookupError: pass
    except OSError as error: cleanup_errors.append(str(error))
    try: process.communicate(timeout=3)
    except BaseException as error: cleanup_errors.append(str(error))
    try: process.wait(timeout=3)
    except BaseException as error: cleanup_errors.append(str(error))
    if cleanup_errors: entry["cleanup_errors"] = cleanup_errors
    entry["cleanup_attempted"] = True


def runtime_object_observation(root, relative):
    """Digest and stable inode/time identity from one no-follow open buffer."""
    path = Path(relative)
    if path.is_absolute() or ".." in path.parts:
        raise RuntimeError("invalid owned object path")
    parent = directory_descriptor(root / path.parent)
    descriptor = None
    identity = lambda value: [value.st_dev, value.st_ino, value.st_size, value.st_mtime_ns, value.st_ctime_ns]
    try:
        descriptor = os.open(path.name, os.O_RDONLY | os.O_NOFOLLOW, dir_fd=parent)
        before = os.fstat(descriptor)
        if not stat.S_ISREG(before.st_mode): raise RuntimeError("nonregular owned object")
        digest_state = hashlib.sha256()
        while True:
            raw = os.read(descriptor, 1024 * 1024)
            if not raw: break
            digest_state.update(raw)
        after = os.fstat(descriptor)
        visible = os.stat(path.name, dir_fd=parent, follow_symlinks=False)
        if identity(before) != identity(after) or identity(after) != identity(visible):
            raise RuntimeError("fixture object changed during observation")
        return {"sha256": digest_state.hexdigest(), "identity": identity(after), "bytes": after.st_size}
    finally:
        if descriptor is not None: os.close(descriptor)
        os.close(parent)


def run_lean_self_test(run, state, results, candidate_root=None, compiler_path=None, outer_guard=None):
    """Caller must own the canonical replay lease and clear BUSY before this API."""
    candidate_root = ROOT if candidate_root is None else Path(candidate_root)
    frozen = run / "source"
    make_directory(frozen, exclusive=True)
    fixture_extras = list(EXTRAS)
    if (candidate_root / "project-runtime-profile.json").exists():
        observed_profile = json.loads(read_source(candidate_root, "project-runtime-profile.json"))
        if observed_profile.get("profile") != CURATED_PROJECT_RUNTIME_PROFILES:
            raise RuntimeError("frozen project profile manifest differs from embedded authority")
        fixture_extras.append("project-runtime-profile.json")
    snapshot = source_snapshot(candidate_root, [], "FROZEN_NATIVE_PROFILE_OVERLAY", extras=fixture_extras, destination=frozen)
    state.update(status="NATIVE_FIXTURES_FROZEN", snapshot=snapshot, mode="expanded-runtime-profile-native-controls",
                 scope="Frozen hostile and positive audit fixtures only; no project theorem verdict", mathlib_imported=False,
                 native_verified=False, rh_proved=False, active=None)
    write_json(run / "source-freeze.json", snapshot)
    if read_source(frozen, "lean-toolchain").decode().strip() != "leanprover/lean4:v" + LEAN_VERSION:
        raise RuntimeError("unexpected lean-toolchain pin")
    lean = str(Path(compiler_path if compiler_path is not None else output(["elan", "which", "lean"])).absolute())
    version = output([lean, "--version"])
    if LEAN_VERSION not in version or LEAN_COMMIT not in version:
        raise RuntimeError("unexpected Lean compiler identity")
    binary_hash, standard_library = digest(Path(lean)), Path(lean).parent.parent / "lib/lean"
    cases, fixture_inputs = {}, {}
    blueprint = native_fixture_blueprint(read_source(frozen, AUDIT))
    for item in blueprint:
        name, specification = item["case"], item["specification"]
        source_root, build = run / "lean-fixtures" / name / "source", run / "lean-fixtures" / name / "build"
        make_directory(source_root, exclusive=True); make_directory(build, exclusive=True)
        for relative, raw in item["inputs"].items():
            write_bytes(source_root / relative, raw, exclusive=True, readonly=True)
        wrapper = source_root / "FixtureAudit.lean"
        for relative in item["inputs"]:
            path = source_root / relative; fixture_inputs[str(path.relative_to(run))] = digest(path)
        cases[name] = dict(specification=specification, source_root=source_root, build=build,
                           source=source_root / specification["source_path"], wrapper=wrapper)
    state.update(lean_version=version, lean_binary_sha256=binary_hash, standard_library_search_path=str(standard_library),
                 fixture_input_sha256=fixture_inputs, configured_case_count=len(cases),
                 runtime_profile=list(CURATED_FIXTURE_RUNTIME_PROFILES), project_runtime_profile=list(CURATED_PROJECT_RUNTIME_PROFILES), legacy_native_control_command_count=9,
                 configured_command_count=sum(len(item["commands"]) for item in blueprint),
                 fixture_blueprint_sha256=hashlib.sha256(json.dumps([{ "case": item["case"], "specification": item["specification"], "commands": item["commands"], "inputs_sha256": {path: hashlib.sha256(raw).hexdigest() for path, raw in item["inputs"].items()}} for item in blueprint], sort_keys=True).encode()).hexdigest())
    write_json(run / "fixture-freeze.json", fixture_inputs); write_json(run / "progress.json", state)
    owned_objects = {}

    def object_inventory():
        actual = set()
        for case in cases.values():
            for directory, dirs, files in os.walk(case["build"], followlinks=False):
                for name in dirs:
                    if not stat.S_ISDIR(os.lstat(Path(directory) / name).st_mode):
                        raise RuntimeError("linked fixture object directory")
                for name in files:
                    path = Path(directory) / name
                    if not stat.S_ISREG(os.lstat(path).st_mode): raise RuntimeError("nonregular fixture object")
                    actual.add(str(path.relative_to(run)))
        return actual

    def stable():
        verify_snapshot(candidate_root, snapshot, sources=[], head=snapshot["head"])
        verify_frozen(frozen, snapshot)
        if digest(Path(lean)) != binary_hash: raise RuntimeError("compiler changed during native controls")
        for relative, expected in fixture_inputs.items():
            if hashlib.sha256(read_source(run, relative)).hexdigest() != expected:
                raise RuntimeError("frozen native fixture changed")
        if object_inventory() != set(owned_objects): raise RuntimeError("fixture object family membership changed")
        for relative, expected in owned_objects.items():
            observed = runtime_object_observation(run, relative)
            if observed["sha256"] != expected["sha256"]:
                raise RuntimeError("fixture object family bytes changed")
            if observed["identity"] != expected["identity"]:
                raise RuntimeError("fixture object family identity changed")
        if outer_guard is not None: outer_guard()

    def invoke(name, stage, source, destination=None, warning=True):
        stable(); case = cases[name]
        argv = [lean, "--trust=0", "--memory=4096", "--threads=1", "-DwarningAsError=" + str(warning).lower()]
        if destination is not None:
            make_directory(destination.parent)
            if destination.exists() or destination.is_symlink(): raise RuntimeError("refusing stale fixture object")
            argv += ["-o", str(destination)]
        argv.append(str(source))
        roots = [str(case["build"]), str(standard_library)]
        env = dict(os.environ, LEAN_PATH=os.pathsep.join(roots)); env.pop("LEAN_SRC_PATH", None); env.pop("LEAN_SYSROOT", None)
        label = name + "-" + stage
        entry = dict(name=label, case=name, stage=stage, argv=argv, source=str(source), source_sha256=digest(source),
                     environment_search_roots=roots, warning_as_error=warning, outcome="pending", exit_code=None,
                     launch_status="NOT_LAUNCHED", native_pid=None, imported_fixture_object_observations_before=dict(owned_objects))
        results.append(entry); state.update(status="RUNNING_NATIVE_SELF_TEST", active=label, active_command=entry, results=results)
        write_json(run / "progress.json", state)
        started = time.monotonic()
        process, diagnostic = None, ""
        try:
            process = subprocess.Popen(argv, cwd=case["source_root"], env=env, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                                       text=True, start_new_session=True)
            entry["child_pid"] = process.pid
            if type(process.pid) is not int or process.pid <= 0: raise RuntimeError("invalid launched native process PID")
            entry.update(native_pid=process.pid, launch_status="LAUNCHED")
            write_json(run / "progress.json", state)
            stdout, stderr = process.communicate(timeout=120)
            diagnostic = stdout + stderr
            entry.update(exit_code=process.returncode, seconds=time.monotonic() - started, launch_status="FINISHED")
        except BaseException as error:
            captured = lambda value: value.decode(errors="replace") if isinstance(value, bytes) else (value or "")
            diagnostic = captured(getattr(error, "stdout", None)) + captured(getattr(error, "stderr", None)) + "\n" + str(error)
            entry.update(outcome="timed-out" if isinstance(error, subprocess.TimeoutExpired) else "failed",
                         original_error_type=type(error).__name__, error=str(error), seconds=time.monotonic() - started,
                         launch_status="TIMED_OUT" if isinstance(error, subprocess.TimeoutExpired) else "LAUNCH_OR_COMMUNICATION_FAILED")
            if process is not None: cleanup_native_fixture_process(process, entry)
            write_bytes(run / (label + ".log"), diagnostic.encode(), exclusive=True, readonly=True)
            entry.update(diagnostic_log=str(run / (label + ".log")), output_sha256=hashlib.sha256(diagnostic.encode()).hexdigest())
            write_json(run / "progress.json", state)
            raise
        write_bytes(run / (label + ".log"), diagnostic.encode(), exclusive=True, readonly=True)
        entry.update(diagnostic_log=str(run / (label + ".log")), output_sha256=hashlib.sha256(diagnostic.encode()).hexdigest())
        write_json(run / "progress.json", state)
        try:
            cleanup_native_fixture_process(process, entry)
            if entry.get("cleanup_errors"): raise RuntimeError("native child cleanup/reap did not finish cleanly")
            entry["validation"] = validate_runtime_fixture_output(name, stage, diagnostic, entry["exit_code"], case["specification"], source)
            if destination is not None:
                family = [destination] + [Path(str(destination) + suffix) for suffix in (".private", ".server") if Path(str(destination) + suffix).exists()]
                for path in family:
                    parent = directory_descriptor(path.parent)
                    try:
                        fd = os.open(path.name, os.O_RDONLY | os.O_NOFOLLOW, dir_fd=parent)
                        try:
                            if not stat.S_ISREG(os.fstat(fd).st_mode): raise RuntimeError("nonregular newly compiled object")
                            os.fchmod(fd, 0o444)
                        finally: os.close(fd)
                    finally: os.close(parent)
                    owned_objects[str(path.relative_to(run))] = runtime_object_observation(run, str(path.relative_to(run)))
                entry["after_build_own_object_family"] = [dict(path=str(path), **owned_objects[str(path.relative_to(run))]) for path in family]
                state["compiled_fixture_object_sha256"] = {relative: observation["sha256"] for relative, observation in owned_objects.items()}
                state["compiled_fixture_object_observations"] = dict(owned_objects)
            stable()
            entry["imported_fixture_object_observations_after"] = dict(owned_objects)
            entry["outcome"] = "passed"; state.update(active=None, active_command=None)
            write_json(run / "progress.json", state)
        except Exception as error:
            entry.update(outcome="failed", error=str(error)); write_json(run / "progress.json", state); raise
        print(label, "PASS", flush=True)

    for name, case in cases.items():
        specification = case["specification"]
        for relative in specification.get("additional_sources", {}):
            invoke(name, "additional-source", case["source_root"] / relative, case["build"] / (relative[:-5] + ".olean"))
        destination = case["build"] / (specification["source_path"][:-5] + ".olean")
        if name == "sorry":
            invoke(name, "strict-source", case["source"])
            invoke(name, "warning-disabled-source", case["source"], destination, warning=False)
        else: invoke(name, "source", case["source"], destination)
        invoke(name, "audit", case["wrapper"])
    stable()
    state.update(status="EXPANDED_RUNTIME_PROFILE_NATIVE_CONTROLS_PASSED", active=None, active_command=None,
                 configured_cases=list(cases), command_count=len(results), native_verified=True,
                 project_native_acceptance=False, results=results)
    write_json(run / "receipt.json", state); write_json(run / "progress.json", state)
    return 0


class RuntimeProfileFixtures(unittest.TestCase):
    """Synthetic policy/orchestration checks; subprocess and Git stay mocked."""
    def setUp(self):
        base = ROOT / ".local/runtime-profile-pure"
        make_directory(base)
        self.temp = tempfile.TemporaryDirectory(prefix="fixture-", dir=base)
        self.root = Path(self.temp.name)
        self.no_output = mock.patch(__name__ + ".output", side_effect=AssertionError("external output prohibited"))
        self.no_process = mock.patch(__name__ + ".subprocess.Popen", side_effect=AssertionError("native prohibited"))
        self.no_output.start(); self.no_process.start()

    def tearDown(self):
        self.no_process.stop(); self.no_output.stop(); self.temp.cleanup()

    def row(self, name, owner, **fields):
        d = dict(name=name, module=owner, kind="definition", type="Nat → Nat", level_params=[], unsafe=False, partial=False,
                 known_generated_runtime_helper=False, mathematical_admission=True,
                 runtime_helper_parent=None, runtime_helper_same_owner=False, runtime_helper_type_equal=False,
                 runtime_helper_level_params_equal=False, runtime_helper_profile_source_sha256="",
                 runtime_helper_owner_source_sha256="", direct_type_references_to_runtime_helpers=[],
                 direct_value_references_to_runtime_helpers=[], direct_value_reference_to_runtime_helper=False, axioms=[])
        d.update(fields); return d

    def profile_rows(self, p=None):
        p = CURATED_PROJECT_RUNTIME_PROFILES[0] if p is None else p
        parent = self.row(p["parent"], p["module"])
        helper = self.row(p["name"], p["module"], partial=True, known_generated_runtime_helper=True,
                          mathematical_admission=False, runtime_helper_parent=p["parent"], runtime_helper_same_owner=True,
                          runtime_helper_type_equal=True, runtime_helper_level_params_equal=True,
                          runtime_helper_profile_source_sha256=p["source_sha256"], runtime_helper_owner_source_sha256=p["source_sha256"])
        return [parent, helper], {p["source_path"]: p["source_sha256"]}, [p["module"]]

    def census(self, rows, owners=None, violations=None, error_path=None, error_line=7):
        owners = sorted({d["module"] for d in rows}) if owners is None else owners
        text = "".join("MATH_TRUST_MODULE::" + json.dumps(dict(module=o, declarations=sum(d["module"] == o for d in rows))) + "\n" for o in owners)
        text += "".join("MATH_TRUST_DECL::" + json.dumps(d) + "\n" for d in rows)
        text += "MATH_TRUST_COUNT::%d\nMATH_TRUST_MODULE_COUNT::%d\n" % (len(rows), len(owners))
        if violations:
            text += "".join("MATH_TRUST_VIOLATION::" + json.dumps(v) + "\n" for v in violations)
            text += str(error_path) + ":%d:0: error: project trust audit failed: [%s]\n" % (error_line, "; ".join(violations))
        return text

    def reject(self, callback, *args, **kwargs):
        with self.assertRaises((RuntimeError, ValueError, KeyError, TypeError, OSError)):
            callback(*args, **kwargs)

    def test_exact_curated_profile_complete_parent_helper_passes(self):
        rows, hashes, owners = self.profile_rows()
        ds, _ = parse_census(self.census(rows), owners, hashes)
        self.assertFalse(ds[1]["mathematical_admission"])
        self.assertTrue(ds[0]["mathematical_admission"])

    def test_source_drift_absence_and_observed_profile_spoof_reject(self):
        for mutation in ("source", "missing-source", "recorded-source", "profile-hash"):
            rows, hashes, owners = self.profile_rows()
            if mutation == "source": hashes[next(iter(hashes))] = "0" * 64
            elif mutation == "missing-source": hashes = {}
            elif mutation == "recorded-source": rows[1]["runtime_helper_owner_source_sha256"] = "0" * 64
            else: rows[1]["runtime_helper_profile_source_sha256"] = "0" * 64
            self.reject(parse_census, self.census(rows), owners, hashes)

    def test_suffix_and_recursive_tag_shape_cannot_auto_enroll(self):
        owner = "GRWTSK.Fixture.ForgedUnlisted"
        rows = [self.row(owner + ".base", owner), self.row(owner + ".base._unsafe_rec", owner,
            partial=True, mathematical_admission=False, known_generated_runtime_helper=True,
            runtime_helper_parent=owner + ".base", runtime_helper_same_owner=True,
            runtime_helper_type_equal=True, runtime_helper_level_params_equal=True,
            runtime_helper_owner_source_sha256="a" * 64, runtime_helper_profile_source_sha256="a" * 64)]
        self.reject(parse_census, self.census(rows), [owner], {owner.replace('.', '/') + '.lean': "a" * 64})
        rows[1]["known_generated_runtime_helper"] = False
        self.reject(parse_census, self.census(rows), [owner])

    def test_missing_extra_duplicate_helper_and_parent_reject(self):
        for mutation in ("missing-helper", "missing-parent", "extra-helper", "duplicate-helper"):
            rows, hashes, owners = self.profile_rows()
            if mutation == "missing-helper": rows.pop()
            elif mutation == "missing-parent": rows.pop(0)
            elif mutation == "extra-helper": rows.append(dict(rows[1], name="GRWTSK.Unknown._unsafe_rec"))
            else: rows.append(dict(rows[1]))
            self.reject(parse_census, self.census(rows, owners), owners, hashes)

    def test_parent_opaque_partial_unsafe_axiom_foreign_reject(self):
        for field, value in [("kind", "opaque"), ("kind", "axiom"), ("partial", True), ("unsafe", True), ("module", "GRWTSK.Other")]:
            rows, hashes, owners = self.profile_rows(); rows[0][field] = value
            if field == "module": owners += [value]
            self.reject(parse_census, self.census(rows, owners), owners, hashes)

    def test_helper_wrong_safety_kind_type_level_relationship_reject(self):
        for field, value in [("partial", False), ("unsafe", True), ("kind", "opaque"), ("type", "Nat"),
                             ("level_params", ["u"]), ("runtime_helper_parent", "GRWTSK.Other"),
                             ("runtime_helper_same_owner", False), ("runtime_helper_type_equal", False),
                             ("runtime_helper_level_params_equal", False), ("mathematical_admission", True)]:
            rows, hashes, owners = self.profile_rows(); rows[1][field] = value
            self.reject(parse_census, self.census(rows), owners, hashes)

    def test_unapproved_axioms_reject_in_parent_and_helper(self):
        for index in (0, 1):
            for axiom in ("sorryAx", "GRWTSK.Fabricated", "unsafeAxiom"):
                rows, hashes, owners = self.profile_rows(); rows[index]["axioms"] = [axiom]
                self.reject(parse_census, self.census(rows), owners, hashes)

    def test_standard_axioms_unchanged_for_parent_and_helper(self):
        rows, hashes, owners = self.profile_rows()
        for d in rows: d["axioms"] = sorted(ALLOWED_AXIOMS)
        parse_census(self.census(rows), owners, hashes)

    def test_every_nonhelper_kind_type_and_value_reference_rejects(self):
        for kind in ("theorem", "definition", "opaque", "constructor", "generated"):
            for field in ("direct_type_references_to_runtime_helpers", "direct_value_references_to_runtime_helpers"):
                rows, hashes, owners = self.profile_rows()
                d = self.row("GRWTSK.reference", owners[0], kind=kind, mathematical_admission=False)
                d[field] = [rows[1]["name"]]
                d["direct_value_reference_to_runtime_helper"] = field.startswith("direct_value")
                self.reject(parse_census, self.census(rows + [d]), owners, hashes)

    def test_qualified_helpers_can_reference_qualified_runtime_implementations(self):
        rows, hashes, owners = self.profile_rows()
        rows[1]["direct_value_references_to_runtime_helpers"] = [rows[1]["name"]]
        rows[1]["direct_value_reference_to_runtime_helper"] = True
        parse_census(self.census(rows), owners, hashes)

    def test_malformed_flags_references_and_level_metadata_reject(self):
        for field, value in [("partial", 1), ("unsafe", "false"), ("runtime_helper_type_equal", 1),
                             ("level_params", "u"), ("direct_value_references_to_runtime_helpers", ["Unknown"]),
                             ("direct_value_reference_to_runtime_helper", True), ("axioms", "propext")]:
            rows, hashes, owners = self.profile_rows(); rows[1][field] = value
            self.reject(parse_census, self.census(rows), owners, hashes)

    def test_project_and_fixture_authorities_are_separate(self):
        p = CURATED_FIXTURE_RUNTIME_PROFILES[0]
        rows, hashes, owners = self.profile_rows(p)
        self.reject(parse_census, self.census(rows), owners, hashes)
        parse_census(self.census(rows), owners, hashes, "native-fixtures")
        self.reject(parse_census, self.census(rows), owners, hashes, "untrusted")

    def test_blueprint_exact_18_cases_38_commands_preserves_baseline9(self):
        audit = read_source(ROOT, AUDIT)
        blue = native_fixture_blueprint(audit)
        self.assertEqual(len(blue), 18); self.assertEqual(sum(len(b["commands"]) for b in blue), 38)
        self.assertEqual([b["case"] for b in blue[:4]], ["positive", "sorry", "custom-axiom", "unsafe"])
        self.assertEqual(sum(len(b["commands"]) for b in blue[:4]), 9)
        self.assertEqual(sum(not c["warning_as_error"] for b in blue for c in b["commands"]), 1)
        for b in blue:
            self.assertEqual(hashlib.sha256(b["inputs"][b["specification"]["source_path"]]).hexdigest(), b["specification"]["source_sha256"])
            wrapper = b["inputs"]["FixtureAudit.lean"].decode()
            self.assertEqual(wrapper.count("\n#audit_math_trust "), 1)
            self.assertIn(r'\"scope\": \"native-fixtures\"', wrapper)

    def test_blueprint_substituted_template_and_untrusted_source_hash_override_reject(self):
        audit = read_source(ROOT, AUDIT)
        self.reject(native_fixture_blueprint, audit.replace(b'#audit_math_trust ""', b'#audit_math_trust "{}"'))
        with mock.patch.dict(EXPANDED_NATIVE_CASES["structural"], {"observed_hash_override": "0" * 64}):
            self.reject(native_fixture_blueprint, audit)
        with mock.patch.dict(EXPANDED_NATIVE_CASES["positive"], {"source_sha256": "0" * 64}):
            self.reject(native_fixture_blueprint, audit)

    def test_type_and_value_hostile_sources_are_independently_isolated(self):
        sources = EXPANDED_NATIVE_CASES
        self.assertIn("value := mkConst ``True.intro", sources["type-reference"]["source"])
        self.assertIn("``Eq [Level.succ Level.zero]", sources["type-reference"]["source"])
        self.assertIn("type := mkConst ``Nat", sources["value-reference"]["source"])
        for case in ("type-reference", "value-reference"):
            self.assertIn("debug.skipKernelTC true", sources[case]["source"])

    def test_cleanup_preserves_original_failure_and_bounds_reap(self):
        process = mock.Mock(pid=987654)
        process.communicate.side_effect = [subprocess.TimeoutExpired([], 3), ("", "")]
        entry = {"error": "original communication failure", "original_error_type": "OSError"}
        with mock.patch(__name__ + ".os.killpg") as kill:
            cleanup_native_fixture_process(process, entry)
        kill.assert_called_once_with(987654, signal.SIGKILL)
        self.assertEqual(process.wait.call_args.kwargs["timeout"], 3)
        self.assertEqual(entry["error"], "original communication failure")
        self.assertTrue(entry["cleanup_attempted"])

    def test_cleanup_errors_do_not_erase_original_interruption(self):
        process = mock.Mock(pid=987654); process.communicate.side_effect = OSError("cleanup read failed")
        process.wait.side_effect = subprocess.TimeoutExpired([], 3)
        entry = {"error": "original KeyboardInterrupt", "original_error_type": "KeyboardInterrupt"}
        with mock.patch(__name__ + ".os.killpg", side_effect=PermissionError("group failed")):
            cleanup_native_fixture_process(process, entry)
        self.assertEqual(entry["original_error_type"], "KeyboardInterrupt")
        self.assertTrue(entry["cleanup_errors"])

    def test_cleanup_kills_term_ignoring_descendant_after_exited_leader(self):
        process = mock.Mock(pid=987654, returncode=0)
        process.communicate.return_value = ("", "")
        entry = {"exit_code": 0}
        with mock.patch(__name__ + ".os.killpg") as kill:
            cleanup_native_fixture_process(process, entry)
        kill.assert_called_once_with(987654, signal.SIGKILL)
        process.communicate.assert_called_once_with(timeout=3)
        process.wait.assert_called_once_with(timeout=3)
        self.assertTrue(entry["cleanup_attempted"])

    def test_incomplete_census_duplicate_owner_and_counts_fail(self):
        rows, hashes, owners = self.profile_rows(); log = self.census(rows)
        for bad in (log.replace("MATH_TRUST_COUNT::2", "MATH_TRUST_COUNT::3"),
                    log + "MATH_TRUST_MODULE_COUNT::1\n", self.census(rows + [dict(rows[0])])):
            self.reject(parse_census, bad, owners, hashes)

    def test_nonprofile_partial_unsafe_axiom_sorry_remain_rejected(self):
        for fields in (dict(partial=True, mathematical_admission=False), dict(unsafe=True, mathematical_admission=False),
                       dict(kind="axiom", mathematical_admission=False), dict(axioms=["sorryAx"], mathematical_admission=False)):
            d = self.row("GRWTSK.hostile", "GRWTSK.Hostile", **fields)
            self.reject(parse_census, self.census([d]), [d["module"]])

    def test_error_and_warning_parsers_recognize_plain_and_coded_headers(self):
        for marker in ("error:", "error(lean.invalidField):"):
            self.assertEqual(error_messages("/f.lean:7:0: " + marker + " bad\n"), ["bad"])
        for marker in ("warning:", "warning(lean.fixture):"):
            for prefix in ("", "/f.lean:7:0: "):
                self.assertEqual(len(warning_messages(prefix + marker + " bad\n")), 1)

    def test_native_source_signal_timeout_warning_and_plain_coded_error_reject(self):
        spec = EXPANDED_NATIVE_CASES["positive"]; path = self.root / "source.lean"
        for code, log in [(-9, ""), (None, ""), (True, ""), (1, ""), (0, "warning(lean.fixture): unrelated\n"),
                          (0, str(path) + ":2:0: error(lean.invalidField): invalid field\n")]:
            self.reject(validate_runtime_fixture_output, "positive", "source", log, code, spec, path)

    def test_strict_sorry_requires_only_intended_attributed_errors(self):
        spec = EXPANDED_NATIVE_CASES["sorry"]; path = self.root / "source.lean"
        log = str(path) + ":2:1: error: declaration uses `sorry`\n"
        validate_runtime_fixture_output("sorry", "strict-source", log, 1, spec, path)
        for extra in ("error: unattributed\n", str(path) + ":2:1: error(lean.invalidField): invalid field\n", "warning(lean.fixture): unrelated\n"):
            self.reject(validate_runtime_fixture_output, "sorry", "strict-source", log + extra, 1, spec, path)

    def test_deliberate_sorry_source_warning_exception_is_narrow(self):
        spec = EXPANDED_NATIVE_CASES["sorry"]; path = self.root / "source.lean"
        log = str(path) + ":2:1: warning: declaration uses `sorry`\n"
        verdict = validate_runtime_fixture_output("sorry", "warning-disabled-source", log, 0, spec, path)
        self.assertFalse(verdict["mathematical_admission"])
        self.reject(validate_runtime_fixture_output, "sorry", "warning-disabled-source", log + "warning: unrelated\n", 0, spec, path)
        self.reject(validate_runtime_fixture_output, "positive", "source", log, 0, EXPANDED_NATIVE_CASES["positive"], path)

    def fixture_rows(self, case):
        spec = EXPANDED_NATIVE_CASES[case]; owner, kind = spec["module"], spec["kind"]
        if kind == "positive":
            names = ["fixtureValue", "fixtureValue_eq_one", "patternedValue", "patternedValue.eq_1",
                     "patternedValue.eq_2", "patternedValue.match_1", "patternedValue_zero", "patternedValue_succ"]
            rows = [self.row("GRWTSK.Fixture." + n, owner) for n in names]
            rows.append(self.row("_private." + owner + ".0.GRWTSK.Fixture.privateTruth", owner, kind="theorem"))
        elif kind == "sorry": rows = [self.row("GRWTSK.Fixture.sorryFalse", owner, kind="theorem", axioms=["sorryAx"], mathematical_admission=False)]
        elif kind == "custom-axiom":
            ax = "GRWTSK.Fixture.fabricatedFalse"
            rows = [self.row(ax, owner, kind="axiom", axioms=[ax], mathematical_admission=False),
                    self.row("GRWTSK.Fixture.consumesFabricatedFalse", owner, kind="theorem", axioms=[ax], mathematical_admission=False)]
        elif kind == "unsafe": rows = [self.row("GRWTSK.Fixture.uncheckedNatural", owner, unsafe=True, mathematical_admission=False)]
        elif kind == "partial": rows = [self.row(owner + ".loop", owner, partial=True, mathematical_admission=False)]
        elif kind == "forged-unprofiled":
            rows = [self.row(owner + ".base", owner), self.row(owner + ".base._unsafe_rec", owner,
                partial=True, mathematical_admission=False, runtime_helper_parent=owner + ".base",
                runtime_helper_same_owner=True, runtime_helper_type_equal=True, runtime_helper_level_params_equal=True)]
        else:
            p = next(p for p in CURATED_FIXTURE_RUNTIME_PROFILES if p["module"] == owner)
            rows, _, _ = self.profile_rows(p); parent, helper = rows
            if kind not in {"runtime-positive", "type-reference", "value-reference"}: helper["known_generated_runtime_helper"] = False
            if kind == "opaque-parent": parent["kind"] = "opaque"
            elif kind == "missing-parent": rows.pop(0); helper.update(runtime_helper_type_equal=False, runtime_helper_level_params_equal=False, runtime_helper_same_owner=False)
            elif kind == "unsafe-parent": parent.update(unsafe=True, mathematical_admission=False)
            elif kind == "partial-parent": parent.update(partial=True, mathematical_admission=False)
            elif kind == "type-mismatch": helper.update(type="Nat → Nat → Nat", runtime_helper_type_equal=False)
            elif kind == "level-mismatch": helper.update(level_params=["u"], runtime_helper_level_params_equal=False)
            elif kind == "foreign-owner": parent["module"] = "GRWTSK.Fixture.ForeignParent"; helper["runtime_helper_same_owner"] = False
            elif kind == "source-profile-spoof": helper["runtime_helper_owner_source_sha256"] = "0" * 64
            elif kind in {"type-reference", "value-reference"}:
                probe = self.row(owner + ".referenceProbe", owner, mathematical_admission=False)
                probe["direct_" + kind.split('-')[0] + "_references_to_runtime_helpers"] = [helper["name"]]
                probe["direct_value_reference_to_runtime_helper"] = kind == "value-reference"
                rows.append(probe)
        return rows

    def fixture_audit_log(self, case, path, audit_line=7):
        spec = dict(EXPANDED_NATIVE_CASES[case], audit_line=audit_line)
        rows = self.fixture_rows(case); owners = spec.get("expected_modules", [spec["module"]])
        hashes = {spec["source_path"]: spec["source_sha256"]}
        hashes.update({p: hashlib.sha256(s.encode()).hexdigest() for p, s in spec.get("additional_sources", {}).items()})
        violations = runtime_census_violations(rows, owners, hashes, "native-fixtures")
        return self.census(rows, owners, violations, path, audit_line), (1 if violations else 0), spec

    def test_all18_exact_source_intended_synthetic_native_contracts(self):
        path = self.root / "FixtureAudit.lean"
        for case in EXPANDED_NATIVE_CASES:
            log, code, spec = self.fixture_audit_log(case, path)
            with self.subTest(case=case): validate_runtime_fixture_output(case, "audit", log, code, spec, path)

    def test_negative_extra_plain_coded_error_warning_wrong_source_line_rejects(self):
        path = self.root / "FixtureAudit.lean"
        for case in ("sorry", "source-profile-spoof", "forged-unprofiled", "type-reference", "value-reference"):
            log, code, spec = self.fixture_audit_log(case, path)
            for extra in ("error: unattributed\n", str(path) + ":7:0: error(lean.invalidField): invalid field\n",
                          "warning: unrelated\n", str(path) + ":7:0: warning(lean.fixture): unrelated\n"):
                self.reject(validate_runtime_fixture_output, case, "audit", log + extra, code, spec, path)
            self.reject(validate_runtime_fixture_output, case, "audit", log.replace(str(path), str(self.root / "Foreign.lean")), code, spec, path)
            self.reject(validate_runtime_fixture_output, case, "audit", log.replace(":7:0:", ":6:0:"), code, spec, path)

    def test_omitted_extra_rehashed_violation_records_cannot_qualify(self):
        path = self.root / "FixtureAudit.lean"; log, code, spec = self.fixture_audit_log("sorry", path)
        for mutation in (re.sub(r'^MATH_TRUST_VIOLATION::[^\n]+\n', '', log, flags=re.M),
                         log + 'MATH_TRUST_VIOLATION::"extra violation"\n',
                         log.replace('MATH_TRUST_VIOLATION::"unapproved axiom sorryAx in GRWTSK.Fixture.sorryFalse"', 'MATH_TRUST_VIOLATION::"new unrelated gate"')):
            self.reject(validate_runtime_fixture_output, "sorry", "audit", mutation, code, spec, path)

    def mocked_native_run(self, tamper_object=False, communication_error=False, restore_object=False):
        candidate = self.root / "candidate"
        for relative in EXTRAS:
            write_bytes(candidate / relative, read_source(ROOT, relative), exclusive=True, readonly=True)
        binary = self.root / "toolchain/bin/lean"; write_bytes(binary, b"mock compiler; never executed", exclusive=True, readonly=True)
        run = self.root / "run"; make_directory(run, exclusive=True)
        test = self; calls = []
        class Process:
            pid = 987654
            def __init__(self, argv, **kwargs):
                calls.append((argv, kwargs)); self.argv, self.kwargs = argv, kwargs
                self.returncode = 0; self.first = True
            def communicate(self, timeout=None):
                if not self.first: return "", ""
                self.first = False
                source = Path(self.argv[-1]); case = source.parts[source.parts.index("lean-fixtures") + 1]
                if communication_error: raise OSError("deliberate mock communication failure")
                if source.name == "FixtureAudit.lean":
                    line = next(i for i, s in enumerate(read_source(source.parent, source.name).decode().splitlines(), 1) if s.startswith("#audit_math_trust "))
                    log, self.returncode, _ = test.fixture_audit_log(case, source, line)
                    if (tamper_object or restore_object) and case == "positive":
                        destination = source.parents[1] / "build/GRWTSK/Fixture/Positive.olean"
                        original = destination.read_bytes()
                        os.chmod(destination, 0o600); destination.write_bytes(b"substituted compiled object")
                        if restore_object:
                            destination.write_bytes(original); os.chmod(destination, 0o444)
                    return log, ""
                if case == "sorry" and "-DwarningAsError=true" in self.argv:
                    self.returncode = 1; return str(source) + ":2:1: error: declaration uses `sorry`\n", ""
                if "-o" in self.argv:
                    destination = Path(self.argv[self.argv.index("-o") + 1])
                    for suffix in ("", ".private", ".server"):
                        write_bytes(Path(str(destination) + suffix), (case + suffix).encode(), exclusive=True)
                return (str(source) + ":2:1: warning: declaration uses `sorry`\n" if case == "sorry" else ""), ""
            def wait(self, timeout=None): return self.returncode
        state, results = {}, []
        def mock_output(argv, root=ROOT):
            if argv == [str(binary), "--version"]: return "Lean (version " + LEAN_VERSION + ", commit " + LEAN_COMMIT + ")"
            raise AssertionError("unexpected output command")
        with mock.patch(__name__ + ".output", side_effect=mock_output), mock.patch(__name__ + ".subprocess.Popen", side_effect=Process), \
             mock.patch(__name__ + ".os.killpg"), contextlib.redirect_stdout(io.StringIO()):
            try: code = run_lean_self_test(run, state, results, candidate_root=candidate, compiler_path=str(binary))
            except BaseException as error: code = error
        return code, run, state, results, calls

    def test_mocked_all38_native_commands_freeze_inputs_seal_objects_and_keep_baseline9(self):
        code, run, state, results, calls = self.mocked_native_run()
        if isinstance(code, BaseException): raise code
        self.assertEqual(code, 0); self.assertEqual(len(results), 38)
        self.assertEqual(state["status"], "EXPANDED_RUNTIME_PROFILE_NATIVE_CONTROLS_PASSED")
        self.assertFalse(state["project_native_acceptance"]); self.assertFalse(state["mathlib_imported"])
        self.assertEqual(sum(not r["warning_as_error"] for r in results), 1)
        self.assertEqual(sum(r["stage"] == "audit" for r in results), 18)
        for entry, (argv, options) in zip(results, calls):
            self.assertTrue(entry["cleanup_attempted"]); self.assertEqual(entry["child_pid"], 987654)
            self.assertTrue(options["start_new_session"]); self.assertIn("--trust=0", argv)
            self.assertEqual(entry["outcome"], "passed")
            self.assertEqual(entry["source_sha256"], digest(Path(entry["source"])))
        for relative, expected in state["compiled_fixture_object_sha256"].items():
            self.assertEqual(digest(run / relative), expected); self.assertEqual((run / relative).stat().st_mode & 0o222, 0)

    def test_mocked_object_substitution_fails_without_native_success_receipt(self):
        error, run, state, results, _ = self.mocked_native_run(tamper_object=True)
        self.assertIsInstance(error, RuntimeError); self.assertIn("object family bytes changed", str(error))
        self.assertFalse((run / "receipt.json").exists()); self.assertEqual(results[-1]["outcome"], "failed")
        self.assertTrue((run / "positive-audit.log").exists())

    def test_mocked_object_restore_same_digest_different_identity_rejects(self):
        error, run, state, results, _ = self.mocked_native_run(restore_object=True)
        self.assertIsInstance(error, RuntimeError); self.assertIn("object family identity changed", str(error))
        self.assertFalse((run / "receipt.json").exists()); self.assertEqual(results[-1]["outcome"], "failed")
        source_entry = results[0]
        actual = runtime_object_observation(run, 'lean-fixtures/positive/build/GRWTSK/Fixture/Positive.olean')
        self.assertEqual(actual['sha256'], source_entry['after_build_own_object_family'][0]['sha256'])
        self.assertNotEqual(actual['identity'], source_entry['after_build_own_object_family'][0]['identity'])

    def test_mocked_communication_failure_records_pid_cleanup_original_error_and_log(self):
        error, run, state, results, _ = self.mocked_native_run(communication_error=True)
        self.assertIsInstance(error, OSError); entry = results[-1]
        self.assertEqual(entry["original_error_type"], "OSError"); self.assertTrue(entry["cleanup_attempted"])
        self.assertEqual(entry["child_pid"], 987654); self.assertEqual(entry["outcome"], "failed")
        self.assertFalse((run / "receipt.json").exists()); self.assertIn("deliberate mock", (run / "positive-source.log").read_text())


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    modes = parser.add_mutually_exclusive_group()
    modes.add_argument("--self-test", action="store_true", help="exercise Python/mock fixtures without invoking Lean")
    modes.add_argument("--lean-self-test", action="store_true", help="validate the native audit on frozen positive and hostile Lean fixtures after BUSY clears")
    args = parser.parse_args()
    if args.self_test:
        result = unittest.TextTestRunner(verbosity=2).run(unittest.defaultTestLoader.loadTestsFromTestCase(RuntimeProfileFixtures))
        raise SystemExit(0 if result.wasSuccessful() else 1)
    raise SystemExit(replay(lean_self_test=args.lean_self_test))
