#!/usr/bin/env python3
"""Check the structural lower bound for a mathematical subject layout.

This does not infer a theorem's mathematical subject from its filename. Subject
review is still required. It reads Git tracked and nonignored untracked sources,
never loads Lean, and never changes Git state. Historical declaration namespaces
are deliberately outside this path/import check.
"""

import argparse
import contextlib
import hashlib
import io
import json
import os
from pathlib import Path, PurePosixPath
import re
import stat
import subprocess
import sys
import tempfile
import unittest.mock


SUBJECT_ROOTS = frozenset({
    "Algebra", "Analysis", "Combinatorics", "Data", "DynamicalSystems",
    "Geometry", "GroupTheory", "LinearAlgebra", "Logic", "MeasureTheory",
    "NumberTheory", "Order", "Probability", "SetTheory", "Spectral", "Topology",
})
LEGACY_SEGMENTS = frozenset({
    "CCC", "RiemannHypothesis", "Conversation", "ProofHorizon",
    "CorkscrewChamberCap", "SpectralUnificationOfComputabilityAndAlgebraicSymmetry",
    "HadwigerNelson", "Waveform",
})
CAMPAIGN_WORDS = frozenset({
    "branch", "branches", "campaign", "campaigns", "conversation",
    "conversations", "research", "workstream", "workstreams", "pipeline",
    "prototype", "draft", "style", "styles",
})
IDENTIFIER = r"(?:[^\W\d][\w']*|«[^»\r\n]+»)"
MODULE = re.compile(IDENTIFIER + r"(?:[ \t\r\n]*\.[ \t\r\n]*" + IDENTIFIER + r")*")
IMPORT_COMMAND = re.compile(r"^[ \t]*(?:(?:public|private)[ \t]+)?import\b", re.M)
HEADER_STOP = frozenset({
    "import", "public", "private", "prelude", "namespace", "section", "end",
    "open", "export", "set_option", "attribute", "variable", "def", "abbrev",
    "theorem", "lemma", "example", "instance", "structure", "class",
    "inductive", "noncomputable", "opaque", "axiom", "macro", "syntax",
    "elab", "initialize", "builtin_initialize",
})
SCOPE = "Present Git tracked plus nonignored untracked Lean sources; deleted tracked regular files are reported separately. No ignored archives, builds, or native execution."
LIMIT = "Explicit path bans and subject-root checks are a structural lower bound; mathematical subject review is required."
ROOT_MODULE = "GRWTSK.lean"
CHECK_SEGMENT = "Checks"
ROLE_SEGMENTS = {"Positive": "positive-check", "Negative": "negative-control"}


def git_inventory(root):
    """Read the index and nonignored working files without optional Git locks."""
    paths, tracked_modes = set(), {}
    environment = dict(os.environ, GIT_OPTIONAL_LOCKS="0")
    for arguments in (("--cached", "--stage"), ("--others", "--exclude-standard")):
        process = subprocess.run(
            ["git", "-C", str(root), "ls-files", "-z", *arguments],
            env=environment, capture_output=True, timeout=60,
        )
        if process.returncode:
            raise RuntimeError("Git source inventory failed (exit %d)." % process.returncode)
        for item in process.stdout.split(b"\0"):
            if not item:
                continue
            if "--stage" in arguments:
                metadata, separator, encoded_path = item.partition(b"\t")
                fields = metadata.split()
                if not separator or len(fields) != 3:
                    raise ValueError("malformed Git tracked source inventory")
                relative = encoded_path.decode("utf-8", "surrogateescape")
                tracked_modes.setdefault(relative, set()).add(fields[0].decode("ascii"))
            else:
                relative = item.decode("utf-8", "surrogateescape")
            paths.add(relative)
    regular_modes = {"100644", "100755"}
    return {"paths": sorted(paths), "tracked_regular": sorted(
        path for path, modes in tracked_modes.items() if modes and modes <= regular_modes)}


class MissingSource(ValueError):
    """A safely traversed source path was absent before opening the source."""


def safe_parts(relative):
    path = PurePosixPath(relative)
    if not relative or not path.parts or path.is_absolute() or any(p in {"..", ".git"} for p in path.parts):
        raise ValueError("unsafe inventory path")
    return path.parts


def read_regular(root, relative):
    """Read regular source bytes through directory descriptors, following no links."""
    parts = safe_parts(relative)
    if not hasattr(os, "O_NOFOLLOW") or not hasattr(os, "O_DIRECTORY"):
        raise ValueError("no-follow source reads unavailable on this platform")
    descriptors, parents = [], []
    try:
        root_before = os.stat(root, follow_symlinks=False)
        directory = os.open(root, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
        descriptors.append(directory)
        root_opened = os.fstat(directory)

        def validate_parents():
            root_after = os.stat(root, follow_symlinks=False)
            if not stat.S_ISDIR(root_after.st_mode) or not (
                    root_before.st_dev, root_before.st_ino) == (
                    root_opened.st_dev, root_opened.st_ino) == (
                    root_after.st_dev, root_after.st_ino):
                raise ValueError("source root changed during read")
            for parent, component, original, opened_parent in parents:
                current = os.stat(component, dir_fd=parent, follow_symlinks=False)
                if not stat.S_ISDIR(current.st_mode) or not (
                        original.st_dev, original.st_ino) == (
                        opened_parent.st_dev, opened_parent.st_ino) == (
                        current.st_dev, current.st_ino):
                    raise ValueError("source parent changed during read")

        for component in parts[:-1]:
            try:
                before = os.stat(component, dir_fd=directory, follow_symlinks=False)
            except FileNotFoundError as error:
                validate_parents()
                raise MissingSource("source absent from working tree") from error
            if stat.S_ISLNK(before.st_mode):
                raise ValueError("symlink in source parent path")
            child = os.open(component, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW,
                            dir_fd=directory)
            descriptors.append(child)
            opened = os.fstat(child)
            parents.append((directory, component, before, opened))
            directory = child
        try:
            before = os.stat(parts[-1], dir_fd=directory, follow_symlinks=False)
        except FileNotFoundError as error:
            validate_parents()
            raise MissingSource("source absent from working tree") from error
        if stat.S_ISLNK(before.st_mode):
            raise ValueError("symlink source")
        if not stat.S_ISREG(before.st_mode):
            raise ValueError("nonregular source")
        fd = os.open(parts[-1], os.O_RDONLY | os.O_NOFOLLOW | getattr(os, "O_NONBLOCK", 0),
                     dir_fd=directory)
        with os.fdopen(fd, "rb") as source:
            opened = os.fstat(source.fileno())
            if not stat.S_ISREG(opened.st_mode):
                raise ValueError("source became nonregular")
            data = source.read()
            after_read = os.fstat(source.fileno())
        after = os.stat(parts[-1], dir_fd=directory, follow_symlinks=False)
        identity = lambda s: (s.st_dev, s.st_ino, s.st_size, s.st_mtime_ns, s.st_ctime_ns)
        if not identity(before) == identity(opened) == identity(after_read) == identity(after):
            raise ValueError("source changed during read")
        validate_parents()
        return data
    finally:
        for descriptor in reversed(descriptors):
            os.close(descriptor)


def mask_lean(text):
    """Mask nested comments and literals, preserving every character/line offset.

    This extends monitor_math.py's comment/string masking with Lean raw strings,
    character literals, and quoted identifiers. Quoted identifiers are code and
    their embedded comment markers are not reinterpreted as comments.
    """
    output = list(text)
    position = 0

    def erase(start, finish):
        for index in range(start, finish):
            if text[index] != "\n":
                output[index] = " "

    while position < len(text):
        if text.startswith("/-", position):
            start, depth = position, 1
            position += 2
            while position < len(text) and depth:
                if text.startswith("/-", position):
                    depth += 1
                    position += 2
                elif text.startswith("-/", position):
                    depth -= 1
                    position += 2
                else:
                    position += 1
            if depth:
                raise ValueError("unterminated Lean block comment")
            erase(start, position)
        elif text.startswith("--", position):
            finish = text.find("\n", position)
            finish = len(text) if finish < 0 else finish
            erase(position, finish)
            position = finish
        elif text[position] == "«":
            finish = text.find("»", position + 1)
            if finish < 0:
                raise ValueError("unterminated Lean quoted identifier")
            position = finish + 1
        elif (text[position] == "r" and
              (position == 0 or not (text[position - 1].isalnum() or text[position - 1] in "_'")) and
              re.match(r'r#*"', text[position:])):
            opening = re.match(r'r(#*)"', text[position:])
            start = position
            delimiter = '"' + opening[1]
            position += len(opening[0])
            finish = text.find(delimiter, position)
            if finish < 0:
                raise ValueError("unterminated Lean raw string")
            position = finish + len(delimiter)
            erase(start, position)
        elif text[position] == '"':
            start = position
            position += 1
            while position < len(text):
                character = text[position]
                position += 1
                if character == "\\" and position < len(text):
                    position += 1
                elif character == '"':
                    break
            else:
                raise ValueError("unterminated Lean string")
            erase(start, position)
        elif (text[position] == "'" and
              (position == 0 or not (text[position - 1].isalnum() or text[position - 1] in "_'"))):
            # A character literal has one character or one escape, followed by '.
            match = re.match(r"'(?:[^'\\\n]|\\(?:u[0-9a-fA-F]{4}|x[0-9a-fA-F]{2}|[^\n]))'",
                             text[position:])
            if match:
                erase(position, position + len(match[0]))
                position += len(match[0])
            else:
                position += 1
        else:
            position += 1
    return "".join(output)


def imports(text):
    """Read actual import commands; comments, literals and namespaces stay distinct."""
    code = mask_lean(text)
    found = []
    for command in IMPORT_COMMAND.finditer(code):
        position = command.end()
        while position < len(code):
            while position < len(code) and code[position].isspace():
                position += 1
            match = MODULE.match(code, position)
            if not match:
                break
            pieces = re.findall(IDENTIFIER, match[0])
            pieces = [piece[1:-1] if piece.startswith("«") else piece for piece in pieces]
            if len(pieces) == 1 and pieces[0] in HEADER_STOP:
                break
            found.append({"module": ".".join(pieces),
                          "line": code.count("\n", 0, position) + 1})
            position = match.end()
    return sorted({(entry["module"], entry["line"]) for entry in found})


def forbidden_name(segment):
    if segment.casefold() in {name.casefold() for name in LEGACY_SEGMENTS}:
        return "legacy conjecture/campaign segment"
    words = re.findall(r"[A-Z]+(?=[A-Z][a-z]|[0-9]|$)|[A-Z]?[a-z]+|[0-9]+", segment)
    if any(word.casefold() == "ccc" for word in words):
        return "legacy CCC alias"
    if any(word.casefold() in CAMPAIGN_WORDS for word in words):
        return "campaign/branch/style alias"
    return None


def layout_issues(parts, allowed):
    """The same structural policy applies to filesystem and imported modules."""
    issues = []
    if parts and parts[0] == "GRWTSK":
        if len(parts) == 1:
            return issues  # The library umbrella is not a mathematical subject module.
        if parts[1] not in allowed:
            issues.append(("unknown-subject-root", parts[1], "not an approved mathematical subject root"))
        for segment in parts[1:]:
            reason = forbidden_name(segment)
            if reason:
                issues.append(("forbidden-layout-name", segment, reason))
    return issues


def source_role(relative):
    """Classify one maintained Lean path by its physical source-set contract."""
    if relative == ROOT_MODULE:
        return "library"
    parts = PurePosixPath(relative).parts
    if len(parts) < 3 or parts[0] != "GRWTSK":
        return None
    if CHECK_SEGMENT not in parts:
        return "library"
    index = parts.index(CHECK_SEGMENT)
    if index < 2 or parts.count(CHECK_SEGMENT) != 1 or index == len(parts) - 1:
        return None
    return ROLE_SEGMENTS.get(parts[index + 1], "audit-driver")


def module_name(relative):
    return str(PurePosixPath(relative).with_suffix("")).replace("/", ".")


def source_set_findings(files):
    """Check containment, module identity, imports, cycles, and public closure."""
    findings = []
    records = {entry["path"]: entry for entry in files}
    modules = {}
    folded = {}
    for relative, entry in records.items():
        role = entry["source_role"]
        if role is None:
            findings.append({"code": "unclassified-maintained-source", "path": relative,
                             "message": "maintained Lean source is outside the canonical role layout"})
            continue
        module = module_name(relative)
        if module in modules:
            findings.append({"code": "duplicate-module", "path": relative, "module": module,
                             "message": "duplicate exact Lean module identity"})
        modules[module] = relative
        folded.setdefault(module.casefold(), []).append(module)
    for identities in folded.values():
        if len(set(identities)) > 1:
            for identity in sorted(set(identities)):
                findings.append({"code": "case-folding-module-collision",
                                 "path": modules[identity], "module": identity,
                                 "message": "module identity collides on a case-insensitive filesystem"})

    graph = {module: [] for module in modules}
    for module, relative in modules.items():
        role = records[relative]["source_role"]
        for imported, line in records[relative]["imports"]:
            if imported != "GRWTSK" and not imported.startswith("GRWTSK."):
                continue
            target = modules.get(imported)
            if target is None:
                findings.append({"code": "unresolved-local-import", "path": relative,
                                 "line": line, "module": imported,
                                 "message": "import has no present Git-visible maintained source"})
                continue
            graph[module].append(imported)
            if role == "library" and records[target]["source_role"] != "library":
                findings.append({"code": "library-imports-validation", "path": relative,
                                 "line": line, "module": imported,
                                 "message": "public library source imports a validation source"})

    visiting, visited = [], set()
    def visit(module):
        if module in visiting:
            cycle = visiting[visiting.index(module):] + [module]
            findings.append({"code": "cyclic-local-import", "path": modules[module],
                             "module": module, "message": " -> ".join(cycle)})
            return
        if module in visited:
            return
        visiting.append(module)
        for dependency in graph[module]:
            visit(dependency)
        visiting.pop()
        visited.add(module)
    for module in sorted(graph):
        visit(module)

    reachable, pending = set(), ["GRWTSK"] if "GRWTSK" in modules else []
    while pending:
        module = pending.pop()
        if module in reachable:
            continue
        reachable.add(module)
        pending.extend(graph[module])
    for module, relative in sorted(modules.items()):
        if records[relative]["source_role"] == "library" and module not in reachable:
            findings.append({"code": "library-module-outside-public-closure", "path": relative,
                             "module": module,
                             "message": "library module is not reachable from GRWTSK.lean"})
    return findings


def catalog_findings(root, files):
    """Require the authoritative map to cover the exact current maintained set."""
    path = Path(root) / "docs/math-layout.json"
    if not path.is_file():
        return []
    try:
        layout = json.loads(read_regular(root, "docs/math-layout.json"))
        catalog = layout["active_sources"]
    except (KeyError, TypeError, json.JSONDecodeError, UnicodeDecodeError, ValueError) as error:
        return [{"code": "invalid-source-catalog", "path": "docs/math-layout.json",
                 "message": str(error)}]
    findings, indexed = [], {}
    for entry in catalog:
        if not isinstance(entry, dict) or not isinstance(entry.get("path"), str):
            findings.append({"code": "invalid-source-catalog", "path": "docs/math-layout.json",
                             "message": "active source record lacks a path"})
            continue
        if entry["path"] in indexed:
            findings.append({"code": "duplicate-source-catalog-entry", "path": entry["path"],
                             "message": "active source is cataloged more than once"})
        indexed[entry["path"]] = entry
    observed = {entry["path"]: entry for entry in files}
    for relative in sorted(observed.keys() - indexed.keys()):
        findings.append({"code": "uncataloged-maintained-source", "path": relative,
                         "message": "present maintained Lean source is absent from active_sources"})
    for relative in sorted(indexed.keys() - observed.keys()):
        findings.append({"code": "stale-source-catalog-entry", "path": relative,
                         "message": "cataloged active source is absent from the working tree"})
    for relative in sorted(observed.keys() & indexed.keys()):
        actual, declared = observed[relative], indexed[relative]
        if declared.get("sha256") != actual["sha256"]:
            findings.append({"code": "stale-source-catalog-hash", "path": relative,
                             "message": "catalog hash does not bind the current bytes"})
        if declared.get("source_role") != actual["source_role"]:
            findings.append({"code": "source-role-mismatch", "path": relative,
                             "message": "catalog role disagrees with physical role path"})
        if declared.get("target_path") != relative:
            findings.append({"code": "source-target-mismatch", "path": relative,
                             "message": "catalog target is not the current canonical path"})
        if actual["source_role"] != "library" and not declared.get("runner"):
            findings.append({"code": "validation-without-runner", "path": relative,
                             "message": "validation source lacks an explicit runner/outcome policy"})
    return findings


def check_paths(root, paths, tracked_regular=(), enforce_source_sets=False):
    allowed = set(SUBJECT_ROOTS)
    findings, files, deleted = [], [], []
    tracked_regular = set(tracked_regular)
    library_count, import_count = 0, 0
    role_counts = {name: 0 for name in ("library", "positive-check", "negative-control", "audit-driver")}
    for relative in sorted(set(paths)):
        if not relative.endswith(".lean"):
            continue
        role = source_role(relative)
        library = role == "library"
        try:
            data = read_regular(root, relative)
            text = data.decode("utf-8")
            entries = imports(text)
        except (OSError, UnicodeError, ValueError) as error:
            if isinstance(error, MissingSource) and relative in tracked_regular:
                deleted.append(relative)
                continue
            message = str(error) if isinstance(error, (UnicodeError, ValueError)) else (
                "source unavailable (errno %s)" % error.errno)
            findings.append({"code": "source-unavailable", "path": relative, "message": message})
            if library:
                library_count += 1
            continue
        for line_number, line in enumerate(mask_lean(text).splitlines(), 1):
            match = re.match(r"^[ \t]*(?:(?:public|private)[ \t]+)?import[ \t]+\S+[ \t]+\S+", line)
            if match:
                findings.append({"code": "invalid-import-command", "path": relative,
                                 "line": line_number,
                                 "message": "Lean import commands accept one module per command"})
        if library:
            library_count += 1
        if relative.startswith("GRWTSK/"):
            module_parts = list(PurePosixPath(relative).with_suffix("").parts)
            for code, segment, reason in layout_issues(module_parts, allowed):
                findings.append({"code": code, "path": relative, "segment": segment,
                                 "message": reason})
        if role in role_counts:
            role_counts[role] += 1
        files.append({"path": relative, "sha256": hashlib.sha256(data).hexdigest(),
                      "source_role": role, "imports": entries})
        for module, line in entries:
            if module == "GRWTSK" or module.startswith("GRWTSK."):
                import_count += 1
                for code, segment, reason in layout_issues(module.split("."), allowed):
                    findings.append({"code": "forbidden-import", "path": relative,
                                     "line": line, "module": module, "segment": segment,
                                     "message": reason, "layout_code": code})
    if enforce_source_sets:
        findings.extend(source_set_findings(files))
        findings.extend(catalog_findings(root, files))
    findings.sort(key=lambda entry: (entry["path"], entry.get("line", 0), entry["code"],
                                     entry.get("module", ""), entry.get("segment", "")))
    return {"schema_version": 1, "status": "FAIL" if findings else "PASS",
            "scope": SCOPE, "limit": LIMIT, "subject_review_required": True,
            "allowed_subject_roots": sorted(allowed), "library_module_count": library_count,
            "lean_source_count": len(files), "project_import_count": import_count,
            "source_role_counts": role_counts,
            "deleted_tracked_regular_paths": deleted,
            "files": [{key: value for key, value in entry.items() if key != "imports"}
                      for entry in files], "findings": findings}


def ignored_fixture_directory(root):
    """Create fresh ignored fixtures only, rejecting symlinked receipt parents."""
    base = Path(root) / ".local" / "math-layout" / "self-tests"
    current = Path(root)
    root_mode = current.lstat().st_mode
    if not stat.S_ISDIR(root_mode) or stat.S_ISLNK(root_mode):
        raise ValueError("fixture root must be a regular directory")
    for component in base.relative_to(root).parts:
        current = current / component
        try:
            mode = current.lstat().st_mode
        except FileNotFoundError:
            current.mkdir()
            mode = current.lstat().st_mode
        if not stat.S_ISDIR(mode) or stat.S_ISLNK(mode):
            raise ValueError("fixture parent must be a regular directory")
    directory = Path(tempfile.mkdtemp(prefix="fixtures-", dir=base))
    process = subprocess.run(["git", "-C", str(root), "check-ignore", "-q", str(directory)],
                             env=dict(os.environ, GIT_OPTIONAL_LOCKS="0"), capture_output=True)
    if process.returncode:
        directory.rmdir()
        raise ValueError("self-test fixtures must be ignored by Git")
    return directory


def self_test(root):
    fixture = ignored_fixture_directory(root)
    passed = []

    def case(name, sources, expected_codes=(), links=(), tracked_regular=(), extra_paths=()):
        directory = fixture / name
        directory.mkdir()
        for path, text in sources.items():
            destination = directory / path
            destination.parent.mkdir(parents=True, exist_ok=True)
            destination.write_text(text, encoding="utf-8")
        for path, target in links:
            destination = directory / path
            destination.parent.mkdir(parents=True, exist_ok=True)
            destination.symlink_to(target)
        report = check_paths(directory, list(sources) + [item[0] for item in links] + list(extra_paths),
                             tracked_regular)
        codes = {item["code"] for item in report["findings"]}
        if codes != set(expected_codes):
            raise AssertionError("%s: expected %s, got %s" % (name, sorted(expected_codes), sorted(codes)))
        passed.append(name)
        return report

    case("canonical-subjects", {
        "GRWTSK/Algebra/OrderedProduct.lean": "import Mathlib\n",
        "GRWTSK/Analysis/Integrals/CauchySchwarz.lean": "import GRWTSK.Algebra.OrderedProduct\n",
        "GRWTSK/NumberTheory/Zeta/Target.lean": "namespace GRWTSK.RiemannHypothesis\nend GRWTSK.RiemannHypothesis\n",
        "GRWTSK.lean": ("public import GRWTSK.Analysis.Integrals.CauchySchwarz\n"
                        "public import GRWTSK.NumberTheory.Zeta.Target\n"),
    })
    case("all-approved-subject-roots", {
        "GRWTSK/" + subject + "/Basic.lean": "import Mathlib\n"
        for subject in sorted(SUBJECT_ROOTS)
    })
    case("spectral-subject-root", {"GRWTSK/Spectral/Operator.lean": "import Mathlib\n"})
    case("spectral-import-without-local-directory", {
        "GRWTSK/Analysis/Operator.lean": "import GRWTSK.Spectral.Operator\n",
    })
    for segment in sorted(LEGACY_SEGMENTS):
        case("nested-" + segment, {"GRWTSK/Analysis/" + segment + "/Basic.lean": "import Mathlib\n"},
             ("forbidden-layout-name",))
        case("import-" + segment, {
            "GRWTSK/Analysis/Basic.lean": "import GRWTSK.Analysis." + segment + ".Basic\n",
        }, ("forbidden-import",))
    case("legacy-root-aggregator", {"GRWTSK/ProofHorizon.lean": "import Mathlib\n"},
         ("unknown-subject-root", "forbidden-layout-name"))
    case("branch-file-alias", {"GRWTSK/Analysis/BranchCorrelation.lean": "import Mathlib\n"},
         ("forbidden-layout-name",))
    case("no-campaign-substitute", {"GRWTSK/Analysis/ResearchCampaign/Basic.lean": "import Mathlib\n"},
         ("forbidden-layout-name",))
    case("unknown-root", {"GRWTSK/Project/Basic.lean": "import Mathlib\n"}, ("unknown-subject-root",))
    masked = '/- import GRWTSK.CCC.X /- nested -/ -/\n-- import GRWTSK.ProofHorizon\n#check "import GRWTSK.Conversation.X\\\""\n#check r###"literal \" import GRWTSK.CCC.X /-"###\nnamespace GRWTSK.RiemannHypothesis\nend GRWTSK.RiemannHypothesis\n'
    case("comments-escaped-raw-strings-namespaces", {"GRWTSK/Analysis/Basic.lean": masked})
    report = case("live-multiline-and-quoted-imports", {
        "GRWTSK/Analysis/Basic.lean": "public import\n  GRWTSK.Analysis.Basic GRWTSK.«CCC».Budget\nprivate import GRWTSK.ProofHorizon\nnamespace GRWTSK.RiemannHypothesis\n",
    }, ("forbidden-import",))
    if [(x["module"], x["line"]) for x in report["findings"] if x["segment"] in {"CCC", "ProofHorizon"}] != [
            ("GRWTSK.CCC.Budget", 2), ("GRWTSK.CCC.Budget", 2),
            ("GRWTSK.ProofHorizon", 3), ("GRWTSK.ProofHorizon", 3)]:
        raise AssertionError("import module/line preservation")
    passed.append("import-module-line-preservation")
    case("file-symlink", {"outside.txt": "import Mathlib\n"},
         ("source-unavailable",), (("GRWTSK/Analysis/Link.lean", "../../outside.txt"),))
    case("broken-symlink-remains-error", {}, ("source-unavailable",),
         (("GRWTSK/Analysis/Link.lean", "../../missing.lean"),),
         ("GRWTSK/Analysis/Link.lean",))
    case("missing-untracked-source-fails-closed", {}, ("source-unavailable",),
         extra_paths=("GRWTSK/Analysis/Missing.lean",))
    deleted_paths = ("GRWTSK/CCC/Budget.lean", "GRWTSK/ProofHorizon/Control.lean")
    report = case("deleted-tracked-legacy-regular-files", {
        "GRWTSK/Analysis/Control.lean": "import Mathlib\n",
    }, tracked_regular=deleted_paths, extra_paths=deleted_paths)
    if report["deleted_tracked_regular_paths"] != sorted(deleted_paths) or report["library_module_count"] != 1:
        raise AssertionError("deleted tracked regular files must be separately reported")
    passed.append("deleted-tracked-path-reporting")
    case("unsafe-tracked-path-remains-error", {}, ("source-unavailable",),
         tracked_regular=("../Escape.lean",), extra_paths=("../Escape.lean",))
    directory_source = fixture / "directory-source"
    (directory_source / "GRWTSK/Analysis/Basic.lean").mkdir(parents=True)
    report = check_paths(directory_source, ["GRWTSK/Analysis/Basic.lean"],
                         ["GRWTSK/Analysis/Basic.lean"])
    if {x["code"] for x in report["findings"]} != {"source-unavailable"}:
        raise AssertionError("directory source must fail even when Git-tracked")
    passed.append("directory-source-remains-error")
    parent = fixture / "parent-symlink"
    parent.mkdir()
    (parent / "outside").mkdir()
    (parent / "outside/Basic.lean").write_text("import Mathlib\n")
    (parent / "GRWTSK").mkdir()
    (parent / "GRWTSK/Analysis").symlink_to("../outside", target_is_directory=True)
    report = check_paths(parent, ["GRWTSK/Analysis/Basic.lean"], ["GRWTSK/Analysis/Basic.lean"])
    if {x["code"] for x in report["findings"]} != {"source-unavailable"}:
        raise AssertionError("symlinked parent fails closed")
    passed.append("parent-symlink-fails-closed")
    case("unterminated-comment", {"GRWTSK/Analysis/Basic.lean": "/- import GRWTSK.CCC.X"},
         ("source-unavailable",))
    tracked = b"100644 0000000000000000000000000000000000000000 0\tGRWTSK/Analysis/Tracked.lean\0"
    tracked += b"120000 0000000000000000000000000000000000000000 0\tGRWTSK/Analysis/Link.lean\0"
    untracked = b"GRWTSK/Analysis/CCC/New.lean\0"
    with unittest.mock.patch.object(subprocess, "run", side_effect=[
            subprocess.CompletedProcess([], 0, tracked, b""),
            subprocess.CompletedProcess([], 0, untracked, b"")]) as mocked:
        observed = git_inventory(fixture)
        if observed != {"paths": ["GRWTSK/Analysis/CCC/New.lean", "GRWTSK/Analysis/Link.lean",
                                  "GRWTSK/Analysis/Tracked.lean"],
                        "tracked_regular": ["GRWTSK/Analysis/Tracked.lean"]}:
            raise AssertionError("new untracked source missing from inventory")
        if "--exclude-standard" not in mocked.call_args_list[1][0][0]:
            raise AssertionError("ignored build/archive inventory exclusion missing")
    passed.append("tracked-and-new-untracked-nonignored-inventory")
    case("new-untracked-legacy-source-rejected", {
        "GRWTSK/Analysis/CCC/New.lean": "import Mathlib\n",
    }, ("forbidden-layout-name",))
    complete = fixture / "source-set-completeness"
    (complete / "GRWTSK/Analysis/Checks/Negative").mkdir(parents=True)
    (complete / "GRWTSK/Analysis").mkdir(exist_ok=True)
    (complete / "GRWTSK.lean").write_text("import GRWTSK.Analysis.Public\nimport GRWTSK.Analysis.Checks.Negative.Bad\n")
    (complete / "GRWTSK/Analysis/Public.lean").write_text("import GRWTSK.Analysis.Missing\n")
    (complete / "GRWTSK/Analysis/Omitted.lean").write_text("import Mathlib\n")
    (complete / "GRWTSK/Analysis/Checks/Negative/Bad.lean").write_text("import GRWTSK.Analysis.Public\n")
    (complete / "escaped.lean").write_text("import Mathlib\n")
    paths = sorted(str(path.relative_to(complete)) for path in complete.rglob("*.lean"))
    report = check_paths(complete, paths, enforce_source_sets=True)
    required = {"unclassified-maintained-source", "unresolved-local-import",
                "library-imports-validation", "library-module-outside-public-closure"}
    if not required <= {entry["code"] for entry in report["findings"]}:
        raise AssertionError("source-set containment and closure fixtures were not detected")
    passed.append("source-set-containment-imports-and-public-closure")
    cyclic = fixture / "source-set-cycle"
    (cyclic / "GRWTSK/Analysis").mkdir(parents=True)
    (cyclic / "GRWTSK.lean").write_text("import GRWTSK.Analysis.A\n")
    (cyclic / "GRWTSK/Analysis/A.lean").write_text("import GRWTSK.Analysis.B\n")
    (cyclic / "GRWTSK/Analysis/B.lean").write_text("import GRWTSK.Analysis.A\n")
    paths = sorted(str(path.relative_to(cyclic)) for path in cyclic.rglob("*.lean"))
    report = check_paths(cyclic, paths, enforce_source_sets=True)
    if "cyclic-local-import" not in {entry["code"] for entry in report["findings"]}:
        raise AssertionError("local import cycle fixture was not detected")
    passed.append("source-set-cycle")
    malformed = fixture / "multiple-modules-in-one-import"
    (malformed / "GRWTSK/Analysis").mkdir(parents=True)
    (malformed / "GRWTSK.lean").write_text(
        "import GRWTSK.Analysis.A GRWTSK.Analysis.B\n")
    (malformed / "GRWTSK/Analysis/A.lean").write_text("import Mathlib\n")
    (malformed / "GRWTSK/Analysis/B.lean").write_text("import Mathlib\n")
    paths = sorted(str(path.relative_to(malformed)) for path in malformed.rglob("*.lean"))
    report = check_paths(malformed, paths)
    if "invalid-import-command" not in {entry["code"] for entry in report["findings"]}:
        raise AssertionError("multiple modules in one import command were not rejected")
    passed.append("single-module-import-command")
    catalog_root = fixture / "catalog-completeness"
    (catalog_root / "GRWTSK/Analysis").mkdir(parents=True)
    (catalog_root / "docs").mkdir()
    (catalog_root / "GRWTSK.lean").write_text("import GRWTSK.Analysis.A\n")
    (catalog_root / "GRWTSK/Analysis/A.lean").write_text("import Mathlib\n")
    (catalog_root / "docs/math-layout.json").write_text(json.dumps({"active_sources": [{
        "path": "GRWTSK.lean", "sha256": hashlib.sha256(
            (catalog_root / "GRWTSK.lean").read_bytes()).hexdigest(),
        "source_role": "library", "target_path": "GRWTSK.lean", "runner": "lake build GRWTSK",
    }]}))
    paths = sorted(str(path.relative_to(catalog_root)) for path in catalog_root.rglob("*.lean"))
    report = check_paths(catalog_root, paths, enforce_source_sets=True)
    if "uncataloged-maintained-source" not in {entry["code"] for entry in report["findings"]}:
        raise AssertionError("catalog omission fixture was not detected")
    passed.append("catalog-omission")
    bad_fixture = fixture / "new-untracked-legacy-source-rejected"
    bad_inventory = {"paths": ["GRWTSK/Analysis/CCC/New.lean"], "tracked_regular": []}
    with unittest.mock.patch(__name__ + ".git_inventory", return_value=bad_inventory):
        captured = io.StringIO()
        with contextlib.redirect_stdout(captured):
            exit_code = main(["--root", str(bad_fixture), "--json"])
        default_report = json.loads(captured.getvalue())
        captured = io.StringIO()
        with contextlib.redirect_stdout(captured):
            baseline_exit = main(["--root", str(bad_fixture), "--json", "--baseline"])
        baseline_report = json.loads(captured.getvalue())
    if exit_code != 1 or default_report["status"] != "FAIL" or default_report["report_only"]:
        raise AssertionError("CLI default must reject layout violations")
    if baseline_exit != 0 or baseline_report["status"] != "BASELINE_VIOLATIONS" or not baseline_report["report_only"]:
        raise AssertionError("baseline must remain explicitly report-only")
    passed.append("cli-default-failure-and-report-only-baseline")
    good_fixture = fixture / "canonical-subjects"
    good_inventory = {"paths": sorted(str(p.relative_to(good_fixture)) for p in good_fixture.rglob("*.lean")),
                      "tracked_regular": []}
    with unittest.mock.patch(__name__ + ".git_inventory", return_value=good_inventory):
        first, second = io.StringIO(), io.StringIO()
        with contextlib.redirect_stdout(first):
            first_exit = main(["--root", str(good_fixture), "--json"])
        with contextlib.redirect_stdout(second):
            second_exit = main(["--root", str(good_fixture), "--json"])
    if first_exit or second_exit or first.getvalue() != second.getvalue():
        raise AssertionError("canonical CLI reports must pass deterministically")
    passed.append("cli-pass-and-deterministic-json")
    result = {"schema_version": 1, "status": "SELF_TEST_PASSED", "fixture_count": len(passed),
              "fixtures": passed, "native_execution": False, "git_mutations": False,
              "checker_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    with (fixture / "receipt.json").open("x", encoding="utf-8") as output:
        json.dump(result, output, sort_keys=True, indent=2)
        output.write("\n")
    return result, fixture / "receipt.json"


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).absolute().parents[1])
    parser.add_argument("--json", action="store_true", help="emit deterministic JSON instead of human findings")
    parser.add_argument("--baseline", action="store_true", help="report violations without a failing exit; not layout acceptance")
    parser.add_argument("--self-test", action="store_true", help="run pure Python fixtures in a fresh ignored directory")
    args = parser.parse_args(argv)
    root = Path(os.path.abspath(args.root))
    try:
        if args.self_test:
            report, receipt = self_test(root)
            if args.json:
                print(json.dumps(report, sort_keys=True, indent=2))
            else:
                print("Math layout self-tests passed: %d fixtures." % report["fixture_count"])
                print("Receipt: " + str(receipt))
            return 0
        inventory = git_inventory(root)
        report = check_paths(root, inventory["paths"], inventory["tracked_regular"],
                             enforce_source_sets=True)
        if inventory != git_inventory(root):
            report["findings"].append({"code": "inventory-changed", "path": "",
                                      "message": "Git-visible inventory changed during inspection"})
            report["status"] = "FAIL"
        report["report_only"] = args.baseline
        if args.baseline:
            report["status"] = "BASELINE_VIOLATIONS" if report["findings"] else "BASELINE_CLEAR"
        if args.json:
            print(json.dumps(report, sort_keys=True, ensure_ascii=True, indent=2))
        else:
            print("Math layout: %s (%d library modules, %d findings)." % (
                report["status"], report["library_module_count"], len(report["findings"])))
            if report["deleted_tracked_regular_paths"]:
                print("Deleted tracked regular sources (not enforced as present modules):")
                for path in report["deleted_tracked_regular_paths"]:
                    print("  " + path)
            for finding in report["findings"]:
                location = finding["path"] + (":" + str(finding["line"]) if "line" in finding else "")
                module = " [" + finding["module"] + "]" if "module" in finding else ""
                print("%s: %s%s: %s" % (location, finding["code"], module, finding["message"]))
            print(LIMIT)
            if args.baseline:
                print("Report-only baseline; findings remain violations.")
        return 1 if report["findings"] and not args.baseline else 0
    except (OSError, RuntimeError, ValueError, AssertionError, subprocess.TimeoutExpired) as error:
        report = {"schema_version": 1, "status": "ERROR", "scope": SCOPE, "limit": LIMIT,
                  "subject_review_required": True, "findings": [
                      {"code": "check-error", "path": "", "message": str(error)}]}
        if args.json:
            print(json.dumps(report, sort_keys=True, indent=2))
        else:
            print("Math layout error: " + str(error))
        return 1


if __name__ == "__main__":
    sys.exit(main())
