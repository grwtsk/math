#!/usr/bin/env python3
"""Fresh scoped kernel replay of manifested immutable mathematical source bytes.

Compile only private 0400 copies preserving the original logical module paths.
Receipts, snapshots and logs stay under ignored .local/checks. The checker does
not install dependencies, mutate Git, or replay dependency source files.
"""
from __future__ import annotations

import argparse
from dataclasses import dataclass
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import stat
import subprocess
import sys
import threading
import time
import uuid

NAMESPACES = ("ASBNP04", "PPNC", "PPNCP04", "EulerP04RH", "HSSCP04")
FORBIDDEN_ASSETS = {".pdf", ".tex"}
MODULE_PATTERN = re.compile(r"GRWTSK(?:\.[A-Za-z_][A-Za-z0-9_]*)+")


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def file_identity(value: os.stat_result) -> tuple[int, ...]:
    return (value.st_dev, value.st_ino, value.st_size, value.st_mtime_ns,
            value.st_ctime_ns, value.st_mode, value.st_nlink)


def safe_absolute(path: Path) -> Path:
    path = path.absolute()
    if ".." in path.parts:
        raise ValueError(f"Parent traversal is not a replay input: {path}")
    return path


def safe_relative(value: str) -> Path:
    path = Path(value)
    if not value or not path.parts or path.is_absolute() or ".." in path.parts:
        raise ValueError(f"Expected a repository-relative file: {value}")
    return path


@dataclass(frozen=True)
class StableRead:
    path: Path
    data: bytes
    identity: tuple[int, ...]
    ancestry: tuple[tuple[str, int, int], ...]


def stable_read(path: Path) -> StableRead:
    """Anchored no-follow read; bind the path, all parents and one bytes read."""
    if not hasattr(os, "O_NOFOLLOW") or not hasattr(os, "O_DIRECTORY"):
        raise ValueError("Anchored no-follow replay is unavailable on this platform")
    path = safe_absolute(path)
    flags = os.O_RDONLY | os.O_NOFOLLOW | getattr(os, "O_NONBLOCK", 0)
    descriptors, parents, ancestry = [], [], []
    try:
        directory = os.open("/", flags | os.O_DIRECTORY)
        descriptors.append(directory)
        for component in path.parts[1:-1]:
            before = os.stat(component, dir_fd=directory, follow_symlinks=False)
            if not stat.S_ISDIR(before.st_mode):
                raise ValueError(f"Linked or non-directory input ancestor: {path}")
            child = os.open(component, flags | os.O_DIRECTORY, dir_fd=directory)
            descriptors.append(child)
            opened = os.fstat(child)
            if (before.st_dev, before.st_ino) != (opened.st_dev, opened.st_ino):
                raise ValueError(f"Input ancestor changed while opening: {path}")
            parents.append((directory, component, opened))
            ancestry.append((component, opened.st_dev, opened.st_ino))
            directory = child
        before = os.stat(path.name, dir_fd=directory, follow_symlinks=False)
        if not stat.S_ISREG(before.st_mode):
            raise ValueError(f"Linked or nonregular replay input: {path}")
        source = os.open(path.name, flags, dir_fd=directory)
        descriptors.append(source)
        opened = os.fstat(source)
        if not stat.S_ISREG(opened.st_mode) or file_identity(before) != file_identity(opened):
            raise ValueError(f"Replay input changed while opening: {path}")
        chunks = []
        while True:
            chunk = os.read(source, 1024 * 1024)
            if not chunk:
                break
            chunks.append(chunk)
        after_read = os.fstat(source)
        after_path = os.stat(path.name, dir_fd=directory, follow_symlinks=False)
        if file_identity(before) != file_identity(after_read) or file_identity(before) != file_identity(after_path):
            raise ValueError(f"Replay input changed during read: {path}")
        for parent, component, opened_parent in parents:
            current = os.stat(component, dir_fd=parent, follow_symlinks=False)
            if not stat.S_ISDIR(current.st_mode) or (current.st_dev, current.st_ino) != (
                    opened_parent.st_dev, opened_parent.st_ino):
                raise ValueError(f"Input ancestor changed during read: {path}")
        return StableRead(path, b"".join(chunks), file_identity(opened), tuple(ancestry))
    except OSError as error:
        raise ValueError(f"Missing, linked or inaccessible replay input: {path}") from error
    finally:
        for descriptor in reversed(descriptors):
            os.close(descriptor)


def read_regular(root: Path, relative: str) -> StableRead:
    return stable_read(safe_absolute(root) / safe_relative(relative))


def relative_file(root: Path, value: str) -> Path:
    # Keep the logical path; never resolve a source alias to a physical target.
    return read_regular(root, value).path


def sha256(path: Path) -> str:
    return digest(stable_read(path).data)


def directory_descriptor(path: Path, create: bool = False) -> int:
    path = safe_absolute(path)
    descriptor = os.open("/", os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
    try:
        for component in path.parts[1:]:
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
        raise ValueError(f"Linked or inaccessible output directory: {path}") from error


def make_directory(path: Path, exclusive: bool = False) -> None:
    parent = directory_descriptor(path.parent, create=True)
    try:
        try:
            os.mkdir(path.name, mode=0o700, dir_fd=parent)
        except FileExistsError:
            if exclusive:
                raise ValueError(f"Refusing existing run directory: {path}")
        child = os.open(path.name, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW, dir_fd=parent)
        os.close(child)
    except OSError as error:
        raise ValueError(f"Linked or inaccessible output directory: {path}") from error
    finally:
        os.close(parent)


def write_exclusive(path: Path, data: bytes, readonly: bool = False) -> None:
    parent = directory_descriptor(path.parent, create=True)
    descriptor = None
    try:
        descriptor = os.open(path.name, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW,
                             0o600, dir_fd=parent)
        if not stat.S_ISREG(os.fstat(descriptor).st_mode):
            raise ValueError(f"Refusing nonregular output: {path}")
        with os.fdopen(descriptor, "wb", closefd=False) as stream:
            stream.write(data)
            stream.flush()
        if readonly:
            os.fchmod(descriptor, 0o400)
        os.fsync(descriptor)
    except OSError as error:
        raise ValueError(f"Existing, linked or inaccessible output: {path}") from error
    finally:
        if descriptor is not None:
            os.close(descriptor)
        os.close(parent)


def atomic_json(path: Path, value: dict) -> None:
    """Durable progress replacement through a no-follow parent descriptor."""
    parent = directory_descriptor(path.parent)
    temporary = path.name + "." + uuid.uuid4().hex + ".tmp"
    try:
        try:
            old = os.stat(path.name, dir_fd=parent, follow_symlinks=False)
        except FileNotFoundError:
            old = None
        if old is not None and (not stat.S_ISREG(old.st_mode) or old.st_nlink != 1):
            raise ValueError(f"Linked or nonregular receipt destination: {path}")
        descriptor = os.open(temporary, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW,
                             0o600, dir_fd=parent)
        with os.fdopen(descriptor, "w", encoding="utf-8") as stream:
            stream.write(json.dumps(value, indent=2) + "\n")
            stream.flush()
            os.fsync(stream.fileno())
        os.replace(temporary, path.name, src_dir_fd=parent, dst_dir_fd=parent)
        os.fsync(parent)
    finally:
        os.close(parent)


@dataclass(frozen=True)
class FrozenInput:
    original: StableRead
    logical_path: str
    snapshot: StableRead


def freeze_input(read: StableRead, frozen: Path, logical_path: str) -> FrozenInput:
    target = frozen / safe_relative(logical_path)
    write_exclusive(target, read.data, readonly=True)
    snapshot = stable_read(target)
    if snapshot.data != read.data or stat.S_IMODE(snapshot.identity[5]) != 0o400 or snapshot.identity[6] != 1:
        raise ValueError(f"Immutable input copy did not preserve bytes: {logical_path}")
    return FrozenInput(read, logical_path, snapshot)


def verify_input(record: FrozenInput) -> None:
    current = stable_read(record.original.path)
    if current.identity != record.original.identity or current.ancestry != record.original.ancestry or current.data != record.original.data:
        raise ValueError(f"Original replay input changed: {record.original.path}")
    copied = stable_read(record.snapshot.path)
    if copied.identity != record.snapshot.identity or copied.ancestry != record.snapshot.ancestry or copied.data != record.original.data:
        raise ValueError(f"Immutable replay copy changed: {record.logical_path}")
    if stat.S_IMODE(copied.identity[5]) != 0o400 or copied.identity[6] != 1:
        raise ValueError(f"Replay copy lost private read-only identity: {record.logical_path}")


def verify_stable(read: StableRead) -> None:
    current = stable_read(read.path)
    if current.identity != read.identity or current.ancestry != read.ancestry or current.data != read.data:
        raise ValueError(f"Pinned runtime or dependency input changed: {read.path}")


def diagnostic_records(text: str) -> list[dict]:
    """Parse every Lean error/warning header, including location-free failures."""
    result = []
    for line in text.splitlines():
        match = re.match(r"^(?:(.+?):(\d+):(\d+):\s*)?(error|warning)(?:\(([^()\r\n]+)\))?:\s*(.*)$", line)
        if match:
            result.append({"path":match[1], "line":int(match[2]) if match[2] else None,
                           "column":int(match[3]) if match[3] else None,
                           "kind":match[4], "code":match[5], "message":match[6]})
    return result


def strict_custom_axiom_diagnostic(text: str, relative: str, namespace: str) -> tuple[bool, str]:
    records = diagnostic_records(text)
    if len(records) != 1 or records[0]["kind"] != "error":
        return False, "Expected exactly one intended custom-axiom error and no unrelated error or warning"
    record = records[0]
    if record["path"] != relative or record["line"] != 5 or record["column"] != 0 or record["code"] is not None:
        return False, "The rejection must be at the frozen control's audit command"
    name = re.escape(namespace) + r"\.hostileCustomAxiom"
    qualified = r"(?:_private\.[A-Za-z0-9_.]+\.)?" + name
    intended = re.fullmatch(r"Unapproved axiom ("+qualified+r") in ("+qualified+r")", record["message"])
    if intended is None or intended[1] != intended[2]:
        return False, "The sole error must identify exactly the injected custom axiom and its owner"
    # A second multiline/unsupported failure must not disappear in the oracle.
    other = [line.strip() for line in text.splitlines() if line.strip() and
             line != next(line for line in text.splitlines() if line.endswith(record["message"]))]
    if any(re.search(r"(?:error(?:\([^()\r\n]+\))?:|warning(?:\([^()\r\n]+\))?:|unknown constant|failed to import|unsupported|panic|uncaught)", line, re.I)
           for line in other):
        return False, "An additional unrelated diagnostic accompanies the intended rejection"
    return True, "Exactly the intended source-linked custom axiom was rejected"


def code_mask(text: str) -> str:
    """Blank Lean comments and strings, preserving offsets and newlines."""
    chars = list(text)
    i, depth, quoted = 0, 0, False
    while i < len(text):
        if depth:
            if text.startswith("/-", i):
                depth += 1
                chars[i:i + 2] = "  "
                i += 2
            elif text.startswith("-/", i):
                depth -= 1
                chars[i:i + 2] = "  "
                i += 2
            else:
                if text[i] not in "\r\n":
                    chars[i] = " "
                i += 1
        elif quoted:
            if text[i] == "\\" and i + 1 < len(text):
                chars[i:i + 2] = "  "
                i += 2
            else:
                if text[i] == '"':
                    quoted = False
                if text[i] not in "\r\n":
                    chars[i] = " "
                i += 1
        elif text.startswith("/-", i):
            depth = 1
            chars[i:i + 2] = "  "
            i += 2
        elif text.startswith("--", i):
            end = text.find("\n", i)
            if end < 0:
                end = len(text)
            for j in range(i, end):
                if text[j] != "\r":
                    chars[j] = " "
            i = end
        elif text[i] == '"':
            quoted = True
            chars[i] = " "
            i += 1
        else:
            i += 1
    if depth or quoted:
        raise ValueError("Unterminated Lean comment or string")
    return "".join(chars)


def imports(text: str) -> list[str]:
    masked = code_mask(text)
    result = []
    statements = list(re.finditer(
        r"(?m)^[ \t]*(?:public[ \t]+)?(?:meta[ \t]+)?import[ \t]+([^\r\n]*)", masked))
    # This published scope uses one-line imports. Reject unsupported syntax
    # instead of silently leaving a dependency out of the fresh build graph.
    for keyword in re.finditer(r"(?<![A-Za-z0-9_.])import(?![A-Za-z0-9_])", masked):
        if not any(statement.start() <= keyword.start() < statement.start(1)
                   for statement in statements):
            raise ValueError("Unsupported import syntax; use a complete one-line import statement")
    for statement in statements:
        result.extend(re.findall(r"[A-Za-z_][A-Za-z0-9_.]*", statement.group(1)))
        if not statement.group(1).strip():
            raise ValueError("Empty or multiline import statement is outside the manifested source scope")
    return sorted(set(result))




def reject_document_assets(root: Path) -> None:
    for directory, subdirs, filenames in os.walk(root, followlinks=False):
        subdirs[:] = [name for name in subdirs if name not in {".git", ".lake", ".local"}]
        for filename in filenames:
            path = Path(directory) / filename
            if path.suffix.lower() in FORBIDDEN_ASSETS:
                raise ValueError(f"Forbidden mathematical repository asset: {path.relative_to(root)}")


def source_assets(source_dirs: set[Path]) -> set[Path]:
    result = set()
    for source_dir in source_dirs:
        descriptor = directory_descriptor(source_dir)
        os.close(descriptor)
        for directory, subdirs, filenames in os.walk(source_dir, followlinks=False):
            subdirs[:] = [name for name in subdirs if name not in {".git", ".lake", ".local"}]
            for child in subdirs:
                information = os.stat(Path(directory) / child, follow_symlinks=False)
                if not stat.S_ISDIR(information.st_mode):
                    raise ValueError(f"Linked source inventory directory: {Path(directory)/child}")
            result.update(Path(directory) / name for name in filenames if Path(name).suffix != ".lean")
    return result


@dataclass
class Node:
    relative: str
    read: StableRead
    source_hash: str
    imports: list[str]
    dependencies: set[str]
    frozen: FrozenInput | None = None


class CommandRunner:
    """Persist exact command/source identities before and after every child."""
    def __init__(self, state: Path, frozen: Path, receipt: dict, guard,
                 environment: dict, timeout: int = 600):
        self.state, self.frozen, self.receipt = state, frozen, receipt
        self.guard, self.environment, self.timeout = guard, environment, timeout
        self.mutex = threading.RLock()
        self.receipt.setdefault("commands", [])

    def save(self) -> None:
        with self.mutex:
            atomic_json(self.state / "receipt.json", self.receipt)

    def run(self, label: str, argv: list[str], bindings: dict[str,str], timeout: int | None = None,
            cwd: Path | None = None, environment: dict | None = None) -> dict:
        import signal
        if not re.fullmatch(r"[A-Za-z0-9_.-]+", label):
            raise ValueError(f"Unsafe command label: {label}")
        command_root = safe_absolute(cwd or self.frozen)
        command_environment = environment or self.environment
        contract = {"argv":argv, "cwd":str(command_root), "source_sha256":bindings,
                    "LEAN_PATH":command_environment.get("LEAN_PATH", ""),
                    "timeout_seconds":timeout or self.timeout}
        entry = {"label":label, **contract,
                 "command_sha256":digest(json.dumps(contract,sort_keys=True,separators=(",",":")).encode()),
                 "status":"precheck", "exit_code":None}
        self.receipt["commands"].append(entry)
        self.receipt.update(status="running", active_command=label, kernel_checked=False)
        self.save()
        started, text, stdout, stderr, process, interrupted = time.monotonic(), "", "", "", None, False
        try:
            self.guard()
            entry["status"] = "running"
            self.save()
            process = subprocess.Popen(argv, cwd=command_root, env=command_environment,
                                       stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                                       text=True, start_new_session=True)
            stdout, stderr = process.communicate(timeout=timeout or self.timeout)
            text = stdout + stderr
            entry.update(exit_code=process.returncode, status="completed")
        except subprocess.TimeoutExpired:
            if process is not None:
                os.killpg(process.pid, signal.SIGKILL)
                stdout, stderr = process.communicate()
                text = stdout + stderr
            text += "\nChecker command timed out.\n"
            entry.update(status="timed-out", error="bounded native command timeout")
        except KeyboardInterrupt:
            interrupted = True
            if process is not None:
                try:
                    os.killpg(process.pid, signal.SIGKILL)
                except ProcessLookupError:
                    pass
                stdout, stderr = process.communicate()
                text = stdout + stderr
            text += "\nChecker interrupted; native child terminated.\n"
            entry.update(status="interrupted", error="KeyboardInterrupt")
        except (OSError, ValueError, subprocess.SubprocessError) as error:
            text += str(error) + "\n"
            entry.update(status="failed", error=str(error))
        finally:
            try:
                self.guard()
                entry["postcheck_passed"] = True
            except (OSError, ValueError) as error:
                entry.update(status="input-changed", postcheck_passed=False, error=str(error))
                text += "\nPost-command integrity failure: " + str(error) + "\n"
            log = self.state / "logs" / (label + ".log")
            write_exclusive(log, text.encode())
            entry.update(elapsed_seconds=time.monotonic()-started,
                         log=str(log.relative_to(self.state)), log_sha256=digest(text.encode()),
                         diagnostics=diagnostic_records(text))
            self.receipt.update(active_command=None,
                status="command-completed" if entry["status"] == "completed" else entry["status"])
            self.save()
        if interrupted:
            raise KeyboardInterrupt
        return {**entry, "text":text, "stdout":stdout, "stderr":stderr}



def freeze_native_artifacts(artifact: Path, compiled_reads: list[StableRead]) -> dict:
    stem = str(artifact)[:-len(".olean")]
    families = {}
    for suffix in (".olean", ".olean.private", ".olean.server", ".ir", ".ir.sig"):
        path = Path(stem + suffix)
        if not path.exists() and not path.is_symlink():
            continue
        parent = directory_descriptor(path.parent)
        try:
            descriptor = os.open(path.name,os.O_RDONLY|os.O_NOFOLLOW,dir_fd=parent)
            try:
                information = os.fstat(descriptor)
                if not stat.S_ISREG(information.st_mode) or information.st_nlink != 1:
                    raise ValueError("Nonregular fresh compiled object family")
                os.fchmod(descriptor,0o400)
            finally:
                os.close(descriptor)
        finally:
            os.close(parent)
        read = stable_read(path)
        compiled_reads.append(read)
        families[suffix] = {"sha256":digest(read.data),"bytes":len(read.data),
                            "identity":list(read.identity)}
    if ".olean" not in families:
        raise ValueError(f"Fresh native command did not produce its declared object: {artifact}")
    return families


def seal_frozen_source(frozen: Path) -> dict[str,list[int]]:
    """Seal the complete source tree once, including all generated controls."""
    directories=[]
    for directory,subdirs,_ in os.walk(frozen,followlinks=False):
        for name in subdirs:
            if not stat.S_ISDIR(os.stat(Path(directory)/name,follow_symlinks=False).st_mode):
                raise ValueError("Linked directory in immutable source tree")
        directories.append(Path(directory))
    records={}
    for path in reversed(directories):
        descriptor=directory_descriptor(path)
        try:
            os.fchmod(descriptor,0o500)
            records[path.relative_to(frozen).as_posix()]=list(file_identity(os.fstat(descriptor)))
        finally:
            os.close(descriptor)
    return records


def verify_sealed_source(frozen: Path, records: dict[str,list[int]]) -> None:
    for relative,expected in records.items():
        path=frozen if relative=="." else frozen/safe_relative(relative)
        descriptor=directory_descriptor(path)
        try:
            if list(file_identity(os.fstat(descriptor)))!=expected:
                raise ValueError(f"Sealed source directory changed: {relative}")
        finally:
            os.close(descriptor)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).absolute().parent.parent)
    parser.add_argument("--manifest", type=Path, help="Default: ROOT/evidence/moebius-response-sources.json")
    parser.add_argument("--lean", type=Path, default=Path(shutil.which("lean") or "lean"))
    parser.add_argument("--packages", type=Path, help="Default: ROOT/.lake/packages")
    parser.add_argument("--jobs", type=int, default=1, help="Scoped native replay currently requires one process")
    parser.add_argument("--timeout", type=int, default=600, help="Per-command timeout in seconds, at most3600")
    parser.add_argument("--validate-only", action="store_true", help="No Lean source replay or kernel acceptance claim")
    parser.add_argument("--native-lease", type=Path, action="append", default=[],
                        help="Additional existing shared native replay lock; no directory is created there")
    args = parser.parse_args()
    root = safe_absolute(args.root)
    manifest_path = safe_absolute(args.manifest or root / "evidence/moebius-response-sources.json")
    packages = safe_absolute(args.packages or root / ".lake/packages")
    if args.jobs != 1 or not 1 <= args.timeout <= 3600:
        parser.error("Use --jobs1 and a bounded --timeout of1..3600 seconds")
    state, receipt, runner, lease_context, lease_held = None, None, None, None, False
    try:
        descriptor = directory_descriptor(root)
        os.close(descriptor)
        manifest_read = stable_read(manifest_path)
        checker_read = stable_read(Path(__file__).absolute())
        ignore_read = read_regular(root,".gitignore")
        if not {"/.local/", ".local/", "/.local", ".local"}.intersection(ignore_read.data.decode().splitlines()):
            raise ValueError("Repository .gitignore must explicitly ignore .local")
        stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
        state = root / ".local/checks" / ("moebius-response-" + stamp + "-" + uuid.uuid4().hex[:12])
        make_directory(state, exclusive=True)
        frozen, build = state / "source", state / "build"
        for directory in (frozen, build, state / "logs"):
            make_directory(directory, exclusive=True)
        receipt = {"status":"initializing", "kernel_checked":False, "root":str(root),
                   "manifest":str(manifest_path), "manifest_sha256":digest(manifest_read.data),
                   "checker":str(checker_read.path), "checker_sha256":digest(checker_read.data),
                   "source_records":{}, "snapshot_records":[], "checked_modules":[],
                   "custom_axiom_negative_controls":[], "commands":[],
                   "native_jobs":1, "command_timeout_seconds":args.timeout,
                   "kernel_trust_level":0, "warnings_as_errors":True,
                   "native_memory_limit_megabytes":4096, "native_threads":1,
                   "fresh_project_build":True, "immutable_project_source_copies":True,
                   "snapshot_mode":"0400 exclusive regular files; no-follow logical paths",
                   "scope":"Manifested project replay only. No open arithmetic obligation is supplied.",
                   "dependency_provenance_scope":"Declared package anchors and direct cached dependency objects are identified. No transitive artifact census, dependency checkout pin/cleanliness claim, source replay, or object-to-source provenance is asserted by this driver."}
        atomic_json(state / "receipt.json", receipt)
        manifest = json.loads(manifest_read.data)
        if manifest.get("schema_version") != 1:
            raise ValueError("Expected manifest schema_version1")
        records = manifest.get("modules")
        if not isinstance(records, dict) or not records:
            raise ValueError("Manifest modules must be a nonempty module-to-record map")
        frozen_inputs, frozen_by_logical = [], {}
        generated, runtime_reads, compiled_reads = [], [], []
        dependency_roots, dependency_record = [], None
        sealed_directories={}
        def freeze(read: StableRead, logical: str) -> FrozenInput:
            if logical in frozen_by_logical:
                result = frozen_by_logical[logical]
                if result.original.path != read.path or result.original.data != read.data:
                    raise ValueError(f"Frozen logical path collision: {logical}")
                return result
            result = freeze_input(read,frozen,logical)
            frozen_by_logical[logical] = result
            frozen_inputs.append(result)
            receipt["snapshot_records"].append({"logical_path":logical,
                "sha256":digest(read.data),"original_path":str(read.path),
                "original_identity":list(read.identity),"snapshot_identity":list(result.snapshot.identity),
                "snapshot_relative_path":"source/"+logical})
            return result
        freeze(manifest_read,"VerificationInputs/manifest.json")
        freeze(checker_read,"VerificationInputs/check_moebius_response.py")
        freeze(ignore_read,".gitignore")
        assets = manifest.get("assets",{})
        if not isinstance(assets,dict):
            raise ValueError("Assets must map relative file paths to SHA-256 strings")
        required_inputs = {"scripts/moebius_response_inputs.py", "scripts/moebius_owner_census.py",
                           "scripts/check_math_layout.py", "lake-manifest.json", "lakefile.toml", "lean-toolchain"}
        if required_inputs - set(assets):
            raise ValueError("Manifest must bind the canonical policy, dependency pins and owner audit helpers: " +
                             ", ".join(sorted(required_inputs-set(assets))))
        asset_paths = {}
        for relative, expected in assets.items():
            read=read_regular(root,relative)
            if read.path.suffix.lower() in FORBIDDEN_ASSETS or read.path.suffix==".lean":
                raise ValueError(f"Invalid non-source manifest asset: {relative}")
            if digest(read.data)!=expected:
                raise ValueError(f"Manifest asset hash mismatch: {relative}")
            asset_paths[read.path]=expected
            freeze(read,relative)
        def load_bound_helper(relative):
            bound=frozen_by_logical[relative]
            namespace={"__name__":"moebius_frozen_"+Path(relative).stem,
                       "__file__":str(bound.snapshot.path)}
            exec(compile(bound.original.data,str(bound.snapshot.path),"exec"),namespace)
            return namespace
        owner_contract=manifest.get("owner_census")
        if (not isinstance(owner_contract,dict) or owner_contract.get("helper_module")!="MoebiusResponseOwnerAudit" or
                owner_contract.get("parser_asset")!="scripts/moebius_owner_census.py" or
                owner_contract.get("runtime_exceptions_allowed") is not False):
            raise ValueError("Declare the exact operational owner_census contract with runtime exceptions disabled")
        helper_record=owner_contract.get("helper")
        if (not isinstance(helper_record,dict) or helper_record.get("path")!="checks/MoebiusResponseOwnerAudit.lean" or
                helper_record.get("imports")!=["Lean"]):
            raise ValueError("Pin the operational owner-census observer source separately from mathematical modules/assets")
        helper_read=read_regular(root,helper_record["path"])
        if digest(helper_read.data)!=helper_record.get("sha256") or imports(helper_read.data.decode())!=["Lean"]:
            raise ValueError("Operational owner-census observer source/import pin mismatch")
        freeze(helper_read,helper_record["path"])
        receipt["operational_owner_census_contract"]=owner_contract
        inputs=load_bound_helper("scripts/moebius_response_inputs.py")
        census=load_bound_helper("scripts/moebius_owner_census.py")
        bytes_reader=lambda directory,relative: read_regular(directory,relative).data
        policy,policy_bytes=inputs["policy_module"](frozen,bytes_reader)
        subjects,forbidden=policy["SUBJECT_ROOTS"],policy["LEGACY_SEGMENTS"]
        receipt["shared_layout_policy_sha256"]=digest(policy_bytes)
        nodes = {}
        for module, record in records.items():
            if not MODULE_PATTERN.fullmatch(module) or not isinstance(record,dict):
                raise ValueError(f"Invalid mathematical source module: {module}")
            parts = module.split(".")
            if len(parts)<3 or parts[1] not in subjects or forbidden.intersection(parts):
                raise ValueError(f"Expected a mathematical subject/object module: {module}")
            relative = module.replace(".","/")+".lean"
            if record.get("path") != relative:
                raise ValueError(f"Source path must identify its actual module: {module}")
            read = read_regular(root,relative)
            source_hash = digest(read.data)
            if record.get("sha256") != source_hash:
                raise ValueError(f"Manifest source hash mismatch: {module}")
            actual_imports = imports(read.data.decode("utf-8"))
            declared = record.get("imports")
            if not isinstance(declared,list) or any(not isinstance(i,str) for i in declared):
                raise ValueError(f"Exact direct import inventory required: {module}")
            if sorted(set(declared)) != actual_imports or len(declared)!=len(set(declared)):
                raise ValueError(f"Added, missing or duplicated manifest import: {module}")
            dependencies = {i for i in actual_imports if i.startswith("GRWTSK.")}
            if dependencies - set(records):
                raise ValueError(f"Unmanifested project imports in {module}: {sorted(dependencies-set(records))}")
            nodes[module] = Node(relative,read,source_hash,actual_imports,dependencies,freeze(read,relative))
        audit, aggregator = manifest.get("audit_module"),manifest.get("aggregator_module")
        if audit not in nodes or aggregator not in nodes or audit==aggregator:
            raise ValueError("Declare distinct manifested audit_module and aggregator_module")
        reachable, stack = set(),[audit]
        while stack:
            name=stack.pop()
            if name not in reachable:
                reachable.add(name)
                stack.extend(nodes[name].dependencies)
        if set(nodes)-reachable-{aggregator}:
            raise ValueError(f"Sources unreachable from application kernel audit: {sorted(set(nodes)-reachable-{aggregator})}")
        if nodes[aggregator].dependencies!={audit}:
            raise ValueError("Aggregator must import exactly the manifested application kernel audit")
        source_dirs={node.read.path.parent for node in nodes.values()}
        actual_assets=source_assets(source_dirs)
        if actual_assets-set(asset_paths):
            raise ValueError("Unmanifested assets beside mathematical sources: "+
                             ", ".join(str(p.relative_to(root)) for p in sorted(actual_assets-set(asset_paths))))
        reject_document_assets(root)
        directory=directory_descriptor(packages)
        os.close(directory)
        lean=args.lean.absolute()
        # The elan shim may install. Identify it without executing it; only an
        # already-installed compiler is admitted as the actual native input.
        elan_binary=lean.parent/"elan"
        shim=lean.is_file() and (lean.resolve().name=="elan" or
             (elan_binary.is_file() and digest(lean.read_bytes())==digest(elan_binary.read_bytes())))
        if shim:
            toolchain_read=read_regular(root,"lean-toolchain")
            freeze(toolchain_read,"lean-toolchain")
            toolchain=toolchain_read.data.decode().strip()
            elan_home=Path(os.environ.get("ELAN_HOME",str(Path.home()/".elan")))
            lean=elan_home/"toolchains"/toolchain.replace("/","--").replace(":","---")/"bin/lean"
        lean=safe_absolute(lean)
        lean_read=stable_read(lean)
        if not os.access(lean,os.X_OK):
            raise ValueError("Supply an installed executable --lean; no toolchain installation is attempted")
        if manifest.get("lean_sha256") and manifest["lean_sha256"]!=digest(lean_read.data):
            raise ValueError("Pinned Lean executable hash mismatch")
        runtime_reads.append(lean_read)
        roots=[]
        for package in sorted(packages.iterdir()):
            candidate=package/".lake/build/lib/lean"
            if candidate.is_dir():
                descriptor=directory_descriptor(candidate)
                os.close(descriptor)
                roots.append(candidate)
        anchors=manifest.get("package_anchors")
        if not isinstance(anchors,list) or not anchors:
            raise ValueError("Pinned package_anchors are required")
        anchor_paths={}
        for anchor in anchors:
            read=read_regular(packages,anchor["path"])
            if digest(read.data)!=anchor["sha256"]:
                raise ValueError(f"Pinned package anchor mismatch: {anchor['path']}")
            anchor_paths[read.path]=anchor["sha256"]
            runtime_reads.append(read)
        mathlib={p/"Mathlib.olean" for p in roots if (p/"Mathlib.olean").is_file()}
        if not mathlib.intersection(anchor_paths):
            raise ValueError("Pin the actual cached Mathlib.olean anchor")
        environment=dict(os.environ)
        environment.pop("LEAN_SRC_PATH",None)
        environment["LEAN_PATH"]=os.pathsep.join(map(str,[build,*roots]))
        def guard():
            if sealed_directories:
                verify_sealed_source(frozen,sealed_directories)
            for record in frozen_inputs:
                verify_input(record)
            for read in [*runtime_reads,*generated,*compiled_reads]:
                verify_stable(read)
            if dependency_record is not None:
                inputs["verify_dependency_snapshot"](dependency_roots,dependency_record,bytes_reader,check_bytes=False)
            if source_assets(source_dirs)!=actual_assets:
                raise ValueError("Source-adjacent asset membership changed during replay")
            reject_document_assets(root)
        runner=CommandRunner(state,frozen,receipt,guard,environment,args.timeout)
        receipt.update(source_records=records,asset_records=assets,package_anchors=anchors,
                       audit_module=audit,aggregator_module=aggregator,
                       lean_executable=str(lean),lean_sha256=digest(lean_read.data),packages=str(packages),
                       import_search_roots=[str(build),*map(str,roots)])
        runner.save()
        # Route all helper subprocesses through the same durable command runner.
        # This includes source/Git policy checks and dependency metadata commands.
        helper_command_count=0
        class LoggedSubprocess:
            @staticmethod
            def run(argv, cwd=None, capture_output=False, text=False, timeout=None, env=None, **kwargs):
                nonlocal helper_command_count
                if kwargs or not capture_output or not text:
                    raise ValueError("Unsupported helper subprocess contract")
                helper_command_count+=1
                entry=runner.run("input-command-"+str(helper_command_count),list(map(str,argv)),{},
                                 timeout=timeout or 60,cwd=cwd,environment=env)
                if entry["status"]!="completed":
                    raise ValueError("Input helper command did not complete: "+entry["status"])
                return subprocess.CompletedProcess(argv,entry["exit_code"],entry["stdout"],entry["stderr"])
        inputs["subprocess"]=LoggedSubprocess
        if not args.validate_only:
            own_lock=root/".local/math-trust/replay.lock"
            make_directory(own_lock.parent)
            if not own_lock.exists():
                write_exclusive(own_lock,b"")
            else:
                stable_read(own_lock)
            locks=sorted({safe_absolute(own_lock),*(safe_absolute(p) for p in args.native_lease)})
            lease_context=inputs["native_lease"](locks)
            lease_context.__enter__()
            lease_held=True
            receipt["shared_native_locks"]=[str(p) for p in locks]
            runner.save()
            receipt["competing_native_jobs"]=inputs["competing_native_jobs"]()
            runner.save()
        receipt["shared_math_layout_gate"]=inputs["require_layout"](root,frozen,bytes_reader)
        runner.save()
        pins,checkout_states,lock_hash=inputs["package_pins"](root,packages,bytes_reader)
        if manifest.get("dependency_revisions") != pins or manifest.get("dependency_lock_sha256") != lock_hash:
            raise ValueError("Manifest dependency revisions/lock hash differ from the actual pinned inputs")
        receipt.update(dependency_source_revisions=pins,dependency_checkout_states=checkout_states,
                       lake_lock_sha256=lock_hash)
        roots=[p for p in roots if p.relative_to(packages).parts[0] in pins]
        environment["LEAN_PATH"]=os.pathsep.join(map(str,[build,*roots]))
        receipt["import_search_roots"]=[str(build),*map(str,roots)]
        runner.save()
        version_entry=runner.run("compiler-version",[str(lean),"--version"],{},timeout=30)
        if version_entry["status"]!="completed" or version_entry["exit_code"]!=0 or version_entry["diagnostics"]:
            raise ValueError("Installed compiler identity command failed")
        version=version_entry["text"].strip()
        if not isinstance(manifest.get("lean_version"),str) or manifest["lean_version"]!=version:
            raise ValueError(f"Pinned Lean version mismatch: {version!r}")
        receipt["lean_version"]=version
        prefix_entry=runner.run("compiler-prefix",[str(lean),"--print-prefix"],{},timeout=30)
        if prefix_entry["status"]!="completed" or prefix_entry["exit_code"]!=0 or prefix_entry["diagnostics"]:
            raise ValueError("Installed compiler prefix command failed")
        prefix=Path(prefix_entry["text"].strip())
        directory=directory_descriptor(prefix/"lib/lean")
        os.close(directory)
        package_imports={}
        for name in sorted({i for n in nodes.values() for i in n.imports}-set(nodes)):
            candidates=[p/(name.replace(".","/")+".olean") for p in [*roots,prefix/"lib/lean"]]
            found=next((p for p in candidates if p.is_file()),None)
            if found is None:
                raise ValueError(f"Unresolved cached dependency: {name}")
            read=stable_read(found)
            package_imports[read.path]=digest(read.data)
            runtime_reads.append(read)
        receipt["direct_cached_dependencies"]=[{"path":str(p),"sha256":h} for p,h in sorted(package_imports.items())]
        runner.save()
        guard()
        if args.validate_only:
            receipt.update(status="inputs-validated",kernel_checked=False)
            runner.save()
            print(f"Inputs and immutable snapshots validated; no kernel claim. Receipt: {state/'receipt.json'}",flush=True)
            return 0
        # No source directory may remain writable during a Lean source command.
        # Prepare every operational/control source before the one-time seal.
        helper_data=census["helper_source"]()
        if helper_data!=frozen_by_logical["checks/MoebiusResponseOwnerAudit.lean"].original.data:
            raise ValueError("Owner audit helper differs from the frozen manifest pin")
        helper_relative="MoebiusResponseOwnerAudit.lean"
        owner_relative="MoebiusResponseOwnerCensus.lean"
        owner_hashes={name:node.source_hash for name,node in nodes.items()}
        owner_source=census["generate_audit_source"](sorted(nodes)).encode()
        control_sources={}
        for relative,data in ((helper_relative,helper_data),(owner_relative,owner_source)):
            write_exclusive(frozen/relative,data,readonly=True)
            generated.append(stable_read(frozen/relative))
        for namespace in NAMESPACES:
            for visibility in ("public","private"):
                relative=f"MoebiusControls/{namespace}_{visibility}.lean"
                modifier="private " if visibility=="private" else ""
                data=(f"import {audit}\nnamespace {namespace}\n{modifier}axiom hostileCustomAxiom : False\n"
                      f"end {namespace}\nrun_cmd P04Audit.check\n").encode()
                write_exclusive(frozen/relative,data,readonly=True)
                generated.append(stable_read(frozen/relative))
                control_sources[namespace,visibility]=(relative,data)
        sealed_directories=seal_frozen_source(frozen)
        receipt["sealed_source_directory_records"]=sealed_directories
        receipt.update(status="freezing-dependency-objects",kernel_checked=False)
        runner.save()
        def snapshot_progress(update):
            receipt["dependency_snapshot_progress"]=update
            runner.save()
        dependency_roots,dependency_record=inputs["freeze_dependencies"](
            root,packages,lean,state,bytes_reader,progress=snapshot_progress)
        inputs["verify_dependency_snapshot"](dependency_roots,dependency_record,bytes_reader,check_bytes=True)
        environment["LEAN_PATH"]=os.pathsep.join(map(str,[build,*dependency_roots]))
        receipt.update(dependency_snapshot=dependency_record,
                       dependency_provenance_scope=dependency_record["scope"],
                       import_search_roots=[str(build),*map(str,dependency_roots)],
                       dependency_guard_cadence="Object membership/identity before and after every command; all object hashes before source elaboration and at final return.")
        runner.save()
        guard()
        started, completed, pending, failed=time.monotonic(),set(),set(nodes),False
        def native_argv(relative: str, artifact: Path | None = None) -> list[str]:
            if not sealed_directories:
                raise ValueError("Refusing Lean source elaboration without a sealed source tree")
            argv=[str(lean),"--trust=0","--memory=4096","--threads=1","-DwarningAsError=true"]
            if artifact is not None:
                make_directory(artifact.parent)
                if artifact.exists() or artifact.is_symlink():
                    raise ValueError(f"Refusing preexisting native output: {artifact}")
                argv.extend(["-o",str(artifact)])
            return [*argv,relative]
        while pending:
            ready=sorted(name for name in pending if nodes[name].dependencies<=completed)
            if not ready:
                raise ValueError("Dependency cycle or failed prerequisite: "+", ".join(sorted(pending)))
            name=ready[0]
            node=nodes[name]
            artifact=build/(name.replace(".","/")+".olean")
            command=runner.run(name,native_argv(node.relative,artifact),{node.relative:node.source_hash})
            passed=command["status"]=="completed" and command["exit_code"]==0 and not command["diagnostics"] and "sorryAx" not in command["text"]
            artifact_hash=None
            artifact_families={}
            if passed:
                artifact_families=freeze_native_artifacts(artifact,compiled_reads)
                artifact_hash=artifact_families[".olean"]["sha256"]
            result={"module":name,"dependencies":sorted(node.dependencies),"source_sha256":node.source_hash,
                    "compiled_snapshot_path":node.relative,"source_unchanged":command.get("postcheck_passed",False),
                    "exit_code":command["exit_code"],"passed":passed,"command_sha256":command["command_sha256"],
                    "log":"logs/"+name+".log","log_sha256":command["log_sha256"],"artifact_sha256":artifact_hash,
                    "artifact_families":artifact_families}
            receipt["checked_modules"].append(result)
            runner.save()
            print(f"{name}: {'kernel-checked' if passed else 'FAILED'}",flush=True)
            pending.remove(name)
            if not passed:
                failed=True
                break
            completed.add(name)
        if not failed:
            helper_artifact=build/"MoebiusResponseOwnerAudit.olean"
            helper_command=runner.run("owner-census-helper",native_argv(helper_relative,helper_artifact),
                                      {helper_relative:digest(helper_data)})
            if helper_command["status"]!="completed" or helper_command["exit_code"]!=0 or helper_command["diagnostics"]:
                raise ValueError("Owner census helper failed its fresh trust-zero compilation")
            helper_families=freeze_native_artifacts(helper_artifact,compiled_reads)
            owner_command=runner.run("complete-owner-census",native_argv(owner_relative),
                                     {owner_relative:digest(owner_source)})
            if owner_command["status"]!="completed" or owner_command["diagnostics"]:
                raise ValueError("Complete owner census did not produce a clean successful diagnostic")
            verdict=census["validate_owner_census"](owner_command["text"],sorted(nodes),owner_hashes,
                                                   returncode=owner_command["exit_code"],allow_pinned_runtime=False)
            receipt["complete_owner_census"]={"verdict":verdict,"helper_sha256":digest(helper_data),
                "generated_source_sha256":digest(owner_source),"helper_artifact_families":helper_families,
                "parser_sha256":digest(frozen_by_logical["scripts/moebius_owner_census.py"].original.data),
                "command_sha256":owner_command["command_sha256"],"runtime_exceptions_allowed":False,
                "scope":"Every declared fresh project owner, including private/generated declarations and zero-declaration modules; standard axioms only, no owned unsafe/partial/custom-axiom declarations."}
            runner.save()
        if not failed:
            for namespace in NAMESPACES:
                for visibility in ("public","private"):
                    relative,data=control_sources[namespace,visibility]
                    label=f"control_{namespace}_{visibility}"
                    command=runner.run(label,native_argv(relative),{relative:digest(data)})
                    exact,reason=strict_custom_axiom_diagnostic(command["text"],relative,namespace)
                    rejected=command["status"]=="completed" and command["exit_code"]!=0 and exact
                    receipt["custom_axiom_negative_controls"].append({"namespace":namespace,"visibility":visibility,
                        "rejected":rejected,"exit_code":command["exit_code"],"source_sha256":digest(data),
                        "oracle_reason":reason,"command_sha256":command["command_sha256"],
                        "log":"logs/"+label+".log","log_sha256":command["log_sha256"]})
                    runner.save()
                    failed=failed or not rejected
                    print(f"{namespace} {visibility} custom axiom: {'rejected' if rejected else 'FAILED'}",flush=True)
        audit_command=next((r for r in receipt["commands"] if r["label"]==audit),None)
        audit_text=stable_read(state/audit_command["log"]).data.decode() if audit_command else ""
        counts=re.findall(r"Kernel axiom audit passed for (\d+) declarations",audit_text)
        if len(counts)!=1:
            failed=True
            receipt["error"]="Application declaration axiom audit did not report exactly one successful count"
        guard()
        inputs["verify_dependency_snapshot"](dependency_roots,dependency_record,bytes_reader,check_bytes=True)
        final_pins,final_checkout_states,final_lock_hash=inputs["package_pins"](root,packages,bytes_reader)
        if (final_pins,final_checkout_states,final_lock_hash)!=(pins,checkout_states,lock_hash):
            raise ValueError("Dependency source lock/checkout identities changed during replay")
        final_layout=inputs["require_layout"](root,frozen,bytes_reader)
        receipt["shared_math_layout_gate_final"]=final_layout
        initial_report=receipt["shared_math_layout_gate"]["report"]
        if final_layout["report"] != initial_report:
            before={row["path"]:row["sha256"] for row in initial_report.get("files",[])}
            after={row["path"]:row["sha256"] for row in final_layout["report"].get("files",[])}
            changed=sorted(path for path in set(before)|set(after) if before.get(path)!=after.get(path))
            raise ValueError("Complete Git-visible layout/source inventory changed during replay: "+", ".join(changed))
        guard()
        if "complete_owner_census" not in receipt:
            failed=True
            receipt["error"]="No complete successful source-linked owner census was recorded"
        receipt.update(all_final_hashes_match=True,audited_declaration_count=int(counts[0]) if len(counts)==1 else None,
                       compiled_module_count=len(completed),elapsed_seconds=time.monotonic()-started,
                       status="kernel-checked" if not failed else "failed",kernel_checked=not failed)
        receipt["checked_modules"].sort(key=lambda row:row["module"])
        runner.save()
        print(f"Receipt: {state/'receipt.json'}",flush=True)
        return int(failed)
    except KeyboardInterrupt:
        if receipt is not None:
            receipt.update(status="interrupted",kernel_checked=False,error="KeyboardInterrupt")
            atomic_json(state/"receipt.json",receipt)
        print(f"Interrupted; durable receipt: {state/'receipt.json' if state else 'not initialized'}",file=sys.stderr)
        return 130
    except (OSError,ValueError,RuntimeError,KeyError,TypeError,subprocess.SubprocessError) as error:
        if receipt is not None:
            receipt.update(status="failed",kernel_checked=False,error=str(error))
            atomic_json(state/"receipt.json",receipt)
        print(f"REJECTED: {error}; receipt: {state/'receipt.json' if state else 'not initialized'}",file=sys.stderr)
        return 1
    finally:
        if lease_held:
            lease_context.__exit__(None,None,None)


if __name__ == "__main__":
    raise SystemExit(main())
