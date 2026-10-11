#!/usr/bin/env python3
"""Read-only Git-visible source inventory; Lean validity requires a separate replay."""
from __future__ import annotations

import argparse
from contextlib import contextmanager
import datetime as dt
import hashlib
import heapq
import json
import os
from pathlib import Path, PurePosixPath
import re
import stat
import subprocess
import sys
import uuid
from urllib.parse import urlsplit

SCHEMA = 1
HASH = re.compile(r"^[0-9a-fA-F]{64}$")
MODULE_SEGMENT = re.compile(r"[^\W\d][\w']*")
MANIFEST = "evidence/source-manifest.json"
CCC_REGISTRY = "evidence/ccc-control-soundness-source-manifest.json"
CCC_REGISTRY_SCHEMA = "ccc-control-soundness-source-registry-v1"
OUTPUT = ".local/math-monitor"


def digest(data):
    return hashlib.sha256(data).hexdigest()


def encoded(value):
    return (json.dumps(value, sort_keys=True, ensure_ascii=True, indent=2) + "\n").encode()


def git(root, *args, allowed=(0,)):
    env = dict(os.environ, GIT_OPTIONAL_LOCKS="0")
    p = subprocess.run(["git", "-C", str(root), *args], env=env,
                       capture_output=True, timeout=60)
    if p.returncode not in allowed:
        # Git error text can contain credential-bearing remotes or private paths.
        raise RuntimeError("git " + args[0] + " failed (exit " + str(p.returncode) + ")")
    return p.stdout


def decode(data):
    return data.decode("utf-8", "surrogateescape")


def safe_relative(rel):
    p = PurePosixPath(rel)
    return bool(rel) and not p.is_absolute() and ".." not in p.parts and ".git" not in p.parts


def remote_identity(raw):
    """Keep network host/repository only; never serialize userinfo/query/fragment."""
    try:
        u = urlsplit(raw)
        if u.scheme in {"http", "https", "ssh", "git"} and u.hostname:
            if "github.com" == u.hostname.lower():
                path = u.path.strip("/")
                if re.fullmatch(r"[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+", path):
                    return {"host": "github.com", "repository": path.removesuffix(".git")}
            return {"host": u.hostname, "repository_path_sha256": digest(u.path.encode())}
        m = re.fullmatch(r"(?:[^@\s]+@)?([^:/\s]+):([^\s]+)", raw)
        if m:
            host, path = m.groups()
            if host.lower() == "github.com" and re.fullmatch(r"[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+", path):
                return {"host": "github.com", "repository": path.removesuffix(".git")}
            return {"host": host, "repository_path_sha256": digest(path.encode())}
    except (ValueError, UnicodeError):
        pass
    return {"redacted_url_sha256": digest(raw.encode("utf-8", "surrogateescape"))}


def git_state(root):
    tracked = {decode(p) for p in git(root, "ls-files", "-z", "--cached").split(b"\0") if p}
    untracked = {decode(p) for p in git(root, "ls-files", "-z", "--others", "--exclude-standard").split(b"\0") if p}
    status = []
    fields = git(root, "status", "--porcelain=v1", "-z", "--untracked-files=all").split(b"\0")
    i = 0
    while i < len(fields):
        item = fields[i]
        i += 1
        if not item:
            continue
        row = {"code": decode(item[:2]), "path": decode(item[3:])}
        if b"R" in item[:2] or b"C" in item[:2]:
            row["from_path"] = decode(fields[i])
            i += 1
        status.append(row)
    remotes = []
    for name in decode(git(root, "remote")).splitlines():
        urls = decode(git(root, "remote", "get-url", "--all", name)).splitlines()
        remotes.append({"name": name, "fetch_identities": [remote_identity(x) for x in urls]})
    return {
        "head": decode(git(root, "rev-parse", "--verify", "HEAD", allowed=(0, 128))).strip() or None,
        "branch": decode(git(root, "symbolic-ref", "--quiet", "--short", "HEAD", allowed=(0, 1))).strip() or None,
        "status": status, "remotes": remotes,
        "tracked": sorted(tracked), "untracked": sorted(untracked),
    }


def read_state(root, rel, retain=False):
    """Hash regular bytes without following source symlinks, including parent links."""
    if not safe_relative(rel):
        return {"kind": "unsafe-path"}, None
    if not hasattr(os, "O_NOFOLLOW") or not hasattr(os, "O_DIRECTORY"):
        return {"kind": "unsupported-no-follow-platform"}, None
    descriptors, parents = [], []
    try:
        parent_fd = os.open(root, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
        descriptors.append(parent_fd)
        parts = PurePosixPath(rel).parts
        for component in parts[:-1]:
            before_dir = os.stat(component, dir_fd=parent_fd, follow_symlinks=False)
            if stat.S_ISLNK(before_dir.st_mode):
                return {"kind": "symlink-parent"}, None
            child_fd = os.open(component, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW,
                               dir_fd=parent_fd)
            descriptors.append(child_fd)
            opened_dir = os.fstat(child_fd)
            parents.append((parent_fd, component, opened_dir, before_dir))
            parent_fd = child_fd
        name = parts[-1]

        def parents_stable():
            for fd, component, opened_dir, before_dir in parents:
                after_dir = os.stat(component, dir_fd=fd, follow_symlinks=False)
                if not stat.S_ISDIR(after_dir.st_mode) or (
                        before_dir.st_dev, before_dir.st_ino) != (
                        opened_dir.st_dev, opened_dir.st_ino) or (
                        opened_dir.st_dev, opened_dir.st_ino) != (
                        after_dir.st_dev, after_dir.st_ino):
                    return False
            return True

        before = os.stat(name, dir_fd=parent_fd, follow_symlinks=False)
        base = {"mode": stat.S_IMODE(before.st_mode), "size": before.st_size,
                "mtime_ns": before.st_mtime_ns}
        if stat.S_ISLNK(before.st_mode):
            link = os.fsencode(os.readlink(name, dir_fd=parent_fd))
            after = os.stat(name, dir_fd=parent_fd, follow_symlinks=False)
            return dict(base, kind="symlink", link_sha256=digest(link),
                        read_stable=before == after and parents_stable()), None
        if not stat.S_ISREG(before.st_mode):
            return dict(base, kind="nonregular"), None
        fd = os.open(name, os.O_RDONLY | os.O_NOFOLLOW | getattr(os, "O_NONBLOCK", 0),
                     dir_fd=parent_fd)
        with os.fdopen(fd, "rb") as source:
            opened = os.fstat(source.fileno())
            if not stat.S_ISREG(opened.st_mode):
                return dict(base, kind="nonregular-during-read"), None
            h = hashlib.sha256()
            chunks = [] if retain else None
            while True:
                block = source.read(1024 * 1024)
                if not block:
                    break
                h.update(block)
                if chunks is not None:
                    chunks.append(block)
            finished = os.fstat(source.fileno())
        after = os.stat(name, dir_fd=parent_fd, follow_symlinks=False)
        stable = (before.st_dev, before.st_ino, before.st_size, before.st_mtime_ns) == (
            opened.st_dev, opened.st_ino, opened.st_size, opened.st_mtime_ns) == (
            finished.st_dev, finished.st_ino, finished.st_size, finished.st_mtime_ns) == (
            after.st_dev, after.st_ino, after.st_size, after.st_mtime_ns) and parents_stable()
        return dict(base, kind="file", sha256=h.hexdigest(), read_stable=stable), (
            b"".join(chunks) if chunks is not None and stable else None)
    except FileNotFoundError:
        return {"kind": "missing"}, None
    except OSError as error:
        return {"kind": "unreadable", "errno": error.errno}, None
    finally:
        for fd in reversed(descriptors):
            os.close(fd)


def byte_identity(state):
    return {k: state[k] for k in ("kind", "sha256", "link_sha256", "mode", "errno") if k in state}


def source_scan(root, paths, retain=False):
    states, content = {}, {}
    for rel in sorted(paths):
        keep = retain and (rel.endswith((".lean", ".py", ".json", ".md", ".toml")) or rel == "lean-toolchain")
        states[rel], data = read_state(root, rel, keep)
        if data is not None:
            content[rel] = data.decode("utf-8", "replace")
    return states, content


def lean_code(text):
    """Mask nested comments and strings while preserving line positions."""
    out = list(text)
    i, depth = 0, 0
    while i < len(text):
        if depth:
            if text.startswith("/-", i):
                out[i:i + 2] = "  "
                depth += 1
                i += 2
            elif text.startswith("-/", i):
                out[i:i + 2] = "  "
                depth -= 1
                i += 2
            else:
                if text[i] != "\n":
                    out[i] = " "
                i += 1
        elif text.startswith("/-", i):
            out[i:i + 2] = "  "
            depth = 1
            i += 2
        elif text.startswith("--", i):
            while i < len(text) and text[i] != "\n":
                out[i] = " "
                i += 1
        elif text[i] == '"':
            out[i] = " "
            i += 1
            while i < len(text):
                c = text[i]
                if c != "\n":
                    out[i] = " "
                i += 1
                if c == "\\" and i < len(text):
                    if text[i] != "\n":
                        out[i] = " "
                    i += 1
                elif c == '"':
                    break
        else:
            i += 1
    return "".join(out)


def role(rel):
    if not rel.startswith("checks/"):
        return "library-source" if rel.endswith(".lean") else "support"
    name = Path(rel).stem.lower()
    if any("control" in part.lower() for part in PurePosixPath(rel).parts[1:-1]) or (
            "control" in name or any(x in name for x in ("false", "wrong", "excluded", "isnot"))):
        return "control-fixture"  # Includes positive contract fixtures; not all should fail.
    return "audit-source"


def dependency_order(dependencies):
    """Return dependency-first order and exact cyclic strongly connected components."""
    reverse = {n: set() for n in dependencies}
    pending = {n: len(ds) for n, ds in dependencies.items()}
    for n, ds in dependencies.items():
        for dep in ds:
            reverse[dep].add(n)
    ready = [n for n, count in pending.items() if not count]
    heapq.heapify(ready)
    order = []
    while ready:
        n = heapq.heappop(ready)
        order.append(n)
        for user in sorted(reverse[n]):
            pending[user] -= 1
            if not pending[user]:
                heapq.heappush(ready, user)
    # Iterative Kosaraju avoids recursion limits on large future inventories.
    seen, finish = set(), []
    for start in sorted(dependencies):
        if start in seen:
            continue
        seen.add(start)
        stack = [(start, iter(sorted(dependencies[start])))]
        while stack:
            n, children = stack[-1]
            child = next(children, None)
            if child is None:
                finish.append(n)
                stack.pop()
            elif child not in seen:
                seen.add(child)
                stack.append((child, iter(sorted(dependencies[child]))))
    seen, cycles = set(), []
    for start in reversed(finish):
        if start in seen:
            continue
        component, stack = [], [start]
        seen.add(start)
        while stack:
            n = stack.pop()
            component.append(n)
            for child in reverse[n]:
                if child not in seen:
                    seen.add(child)
                    stack.append(child)
        if len(component) > 1 or start in dependencies[start]:
            cycles.append(sorted(component))
    return order, sorted(cycles), sorted(n for n, count in pending.items() if count)


def lean_inventory(states, content):
    observed_paths = {p[:-5].replace("/", "."): p for p in states if p.endswith(".lean")}
    # Missing tracked files remain in the byte/evidence inventory. A local
    # module graph requires retained regular source bytes from a stable read.
    paths = {module: rel for module, rel in observed_paths.items()
             if states[rel]["kind"] == "file" and states[rel].get("read_stable", True)
             and rel in content}
    unavailable = {}
    for module, rel in sorted(observed_paths.items()):
        if module not in paths:
            state = states[rel]
            reason = (state["kind"] if state["kind"] != "file" else
                      "unstable-read" if state.get("read_stable") is False else "content-unavailable")
            unavailable[module] = {"path": rel, "kind": state["kind"], "reason": reason}
    libs = {"GRWTSK"}
    config = content.get("lakefile.toml", "")
    for block in config.split("[[lean_lib]]")[1:]:
        match = re.search(r'^\s*name\s*=\s*"([^"\n]+)"', block.split("[[", 1)[0], re.M)
        if match:
            libs.add(match[1])
    dependencies, imports, missing, admissions = {}, {}, [], []
    for module, rel in sorted(paths.items()):
        dependencies[module] = set()
        code = lean_code(content[rel])
        imported = []
        for match in re.finditer(r"^\s*(?:(?:public|private)\s+)?import\s+([^\n]+)", code, re.M):
            imported.extend(match[1].split())
        imports[module] = sorted(set(imported))
        for name in imports[module]:
            if name in paths:
                dependencies[module].add(name)
            elif name in unavailable:
                missing.append({"importer": rel, "module": name, "reason": "source-unavailable",
                                "source_path": unavailable[name]["path"],
                                "source_state": unavailable[name]["reason"]})
            elif any(name == lib or name.startswith(lib + ".") for lib in libs):
                missing.append({"importer": rel, "module": name, "reason": "absent-local-module"})
        for match in re.finditer(r"\b(sorry|admit|axiom|unsafe|sorryAx)\b", code):
            if match[1] == "axiom":
                line_prefix = code[code.rfind("\n", 0, match.start()) + 1:match.start()]
                if not re.fullmatch(r"\s*(?:(?:private|protected)\s+)*", line_prefix):
                    continue  # The identifier `axiom` can also be a local variable.
            admissions.append({"path": rel, "line": code.count("\n", 0, match.start()) + 1,
                               "token": match[1], "role": role(rel), "classification": "candidate"})
    order, cycles, blocked = dependency_order(dependencies)
    reachable, stack = set(), ["GRWTSK"] if "GRWTSK" in paths else []
    while stack:
        n = stack.pop()
        if n not in reachable:
            reachable.add(n)
            stack.extend(dependencies[n] - reachable)
    library = {n for n in paths if any(n == lib or n.startswith(lib + ".") for lib in libs)}
    return {
        "validity": "not-run: inventory is not Lean elaboration or a proof audit",
        "module_paths": paths, "imports": imports,
        "local_dependencies": {n: sorted(ds) for n, ds in dependencies.items()},
        "dependency_first_order": [paths[n] for n in order],
        "library_compile_candidates": [paths[n] for n in order if n in library],
        "audit_candidates": [paths[n] for n in order if role(paths[n]) == "audit-source"],
        "control_fixtures": sorted(p for p in paths.values() if role(p) == "control-fixture"),
        "cycles": cycles, "cycle_blocked_modules": blocked, "missing_local_imports": missing,
        "unreadable_modules": sorted(row["path"] for row in unavailable.values()),
        "unavailable_module_paths": unavailable,
        "missing_lean_source_paths": sorted(p for p in observed_paths.values() if states[p]["kind"] == "missing"),
        "graph_scope": "Present Git-visible Lean files with retained stable regular bytes only; missing, linked, nonregular, unreadable and unstable sources remain classified outside the graph and are not compile candidates.",
        "umbrella": {"module": "GRWTSK", "reachable_library_paths": sorted(paths[n] for n in reachable & library),
                     "uncovered_library_paths": sorted(paths[n] for n in library - reachable)},
        "admission_candidates": admissions,
        "parser_limitations": "Static masking/parser; Lean macros, escaped import names and exotic strings require Lean review. Control directory membership does not determine expected success.",
    }


def binding_status(rel, expected, states):
    if not safe_relative(rel):
        return "unsafe-reference"
    state = states.get(rel)
    if state is None:
        return "outside-git-visible-inventory"
    if state["kind"] != "file":
        return state["kind"]
    if not isinstance(expected, str) or not HASH.fullmatch(expected):
        return "invalid-digest"
    return "matches-bytes" if state.get("sha256") == expected.lower() else "changed-bytes"


def destination_binding(value, location, states):
    """Bind conventional destination module spelling to observed source bytes only."""
    module = value.get("destination_module")
    row = {"field": location, "binding_kind": "destination-source-bytes"}
    if not isinstance(module, str) or not module or not all(
            MODULE_SEGMENT.fullmatch(part) for part in module.split(".")):
        return dict(row, status="unsupported-or-malformed-destination-module")
    rel = module.replace(".", "/") + ".lean"
    row["path"] = rel
    expected = value.get("destination_source_sha256")
    if not isinstance(expected, str) or not HASH.fullmatch(expected):
        return dict(row, status="invalid-digest")
    return dict(row, status=binding_status(rel, expected, states))


def registry_destination_binding(value, path_key, digest_key, location, states, kind):
    """Bind a registry's explicit relative path to inventory bytes, never file I/O."""
    row = {"field": location, "binding_kind": kind}
    if not isinstance(value, dict):
        return dict(row, status="malformed-source-registry-record")
    if path_key not in value:
        return dict(row, status="missing-destination")
    rel = value[path_key]
    if not isinstance(rel, str) or not rel:
        return dict(row, status="malformed-destination")
    if (not safe_relative(rel) or not PurePosixPath(rel).parts or
            str(PurePosixPath(rel)) != rel or "\\" in rel or
            any(ord(char) < 32 or ord(char) == 127 for char in rel)):
        return dict(row, status="unsafe-or-noncanonical-reference")
    row["path"] = rel
    if digest_key not in value:
        return dict(row, status="missing-destination-digest")
    expected = value[digest_key]
    if not isinstance(expected, str) or not HASH.fullmatch(expected):
        return dict(row, status="invalid-digest")
    return dict(row, status=binding_status(rel, expected, states))


def ccc_registry_inventory(value, states):
    """Account for the explicit source-count/list registry without native claims."""
    rows, issues = [], []
    observation = {"expected_schema": CCC_REGISTRY_SCHEMA, "field": "$",
                   "source_inputs_semantics": "Declared source-record count, excluding the separate audit destination.",
                   "completeness_scope": "Source count, source-record shape, unique safe destination paths and the separate audit pair only; order, axiom-report metadata, original-source comparison and proof premises are not verified."}
    if not isinstance(value, dict):
        issues.append({"field": "$", "status": "malformed-source-registry"})
        observation.update(completeness="incomplete-or-unsupported", mismatches=issues)
        return rows, observation
    if value.get("schema") != CCC_REGISTRY_SCHEMA:
        issues.append({"field": "$.schema", "status": "unsupported-source-registry-schema"})
    observation["observed_schema"] = value.get("schema") if isinstance(value.get("schema"), str) else None
    count = value.get("source_inputs")
    valid_count = type(count) is int and count >= 0
    observation["declared_source_count"] = count if valid_count else None
    if not valid_count:
        issues.append({"field": "$.source_inputs", "status": "missing-or-invalid-source-count"})
    sources = value.get("sources")
    if not isinstance(sources, list):
        issues.append({"field": "$.sources", "status": "missing-or-invalid-source-list"})
        sources = []
    observation["source_record_count"] = len(sources)
    if valid_count and count != len(sources):
        issues.append({"field": "$.source_inputs", "status": "source-count-differs-from-record-count"})
    paths, duplicates = set(), set()
    for index, source in enumerate(sources):
        row = registry_destination_binding(source, "destination", "destination_sha256",
                                           "$.sources[" + str(index) + "]", states,
                                           "source-registry-destination-bytes")
        rows.append(row)
        if "path" in row:
            if row["path"] in paths:
                duplicates.add(row["path"])
            paths.add(row["path"])
        if row["status"] in {"malformed-source-registry-record", "missing-destination",
                             "malformed-destination", "unsafe-or-noncanonical-reference",
                             "missing-destination-digest", "invalid-digest"}:
            issues.append({"field": row["field"], "status": row["status"]})
    observation["unique_source_destination_count"] = len(paths)
    observation["duplicate_source_destinations"] = sorted(duplicates)
    if duplicates:
        issues.append({"field": "$.sources", "status": "duplicate-source-destinations"})
    if len(paths) != len(sources):
        issues.append({"field": "$.sources", "status": "source-records-lack-unique-safe-destinations"})
    audit = registry_destination_binding(value, "audit_destination", "audit_destination_sha256",
                                         "$.audit_destination", states, "source-registry-audit-bytes")
    rows.append(audit)
    if "path" in audit and audit["path"] in paths:
        issues.append({"field": "$.audit_destination", "status": "audit-destination-overlaps-source-list"})
    if audit["status"] in {"missing-destination", "malformed-destination",
                           "unsafe-or-noncanonical-reference", "missing-destination-digest", "invalid-digest"}:
        issues.append({"field": audit["field"], "status": audit["status"]})
    observation.update(completeness="incomplete-or-unsupported" if issues else "complete-recognized-registry",
                       mismatches=issues)
    return rows, observation


def recorded_check_findings(value, location):
    """Check explicit receipt expectations, without deciding outcomes by filename."""
    expected, actual = value.get("expected_success"), value.get("actual_success")
    if not isinstance(expected, bool) and not isinstance(actual, bool) and not (
            isinstance(value.get("path"), str) and isinstance(value.get("expected_error_fragment"), str)):
        return []  # A similarly named metadata field alone is not a checker row.
    reasons = []
    if isinstance(expected, bool) and isinstance(actual, bool) and expected != actual:
        reasons.append("recorded-success-differs-from-expectation")
    exit_code = value.get("exit_code")
    if isinstance(actual, bool) and type(exit_code) is int and actual != (exit_code == 0):
        reasons.append("recorded-success-contradicts-exit-code")
    if value.get("expected_error_matched") is False:
        reasons.append("expected-error-not-matched")
    return [{"field": location, "reasons": reasons}] if reasons else []


def recorded_check_observation(value, location):
    expected, actual = value.get("expected_success"), value.get("actual_success")
    if not isinstance(expected, bool) and not isinstance(actual, bool) and not (
            isinstance(value.get("path"), str) and isinstance(value.get("expected_error_fragment"), str)):
        return None
    recognized = []
    for name in ("expected_success", "actual_success", "expected_error_matched"):
        if isinstance(value.get(name), bool):
            recognized.append(name)
    if type(value.get("exit_code")) is int:
        recognized.append("exit_code")
    required = {"expected_success", "actual_success", "exit_code"}
    if isinstance(value.get("expected_error_fragment"), str):
        required.add("expected_error_matched")
    missing = sorted(required - set(recognized))
    return {"field": location, "recognized_fields": sorted(recognized),
            "missing_or_unrecognized_fields": missing,
            "record_completeness": "incomplete" if missing else "complete-recognized-fields"}


def evidence_inventory(states, content):
    parsed, malformed = {}, []
    for rel, text in content.items():
        if rel.startswith("evidence/") and rel.endswith(".json"):
            try:
                parsed[rel] = json.loads(text)
            except (ValueError, RecursionError):
                malformed.append(rel)
    bindings = []
    manifest = parsed.get(MANIFEST, {})
    manifest_files = manifest.get("files", {}) if isinstance(manifest, dict) else {}
    if not isinstance(manifest_files, dict):
        manifest_files = {}
    try:
        lock = json.loads(content.get("lake-manifest.json", "{}"))
        pins = {p["name"]: p["rev"] for p in lock.get("packages", []) if "name" in p and "rev" in p}
    except (ValueError, AttributeError, TypeError):
        pins = {}
    summaries = []
    digest_map_keys = {"source_sha256", "source_hashes", "local_source_sha256",
                       "source_module_sha256", "retained_replay_sha256"}
    ambiguous_map_keys = {"files", "inputs"}
    manifest_keys = {"input_manifest_sha256", "manifest_sha256"}
    for receipt, obj in sorted(parsed.items()):
        local_bindings, failures, dependency_bindings, check_mismatches = [], [], [], []
        registry = None
        if receipt == CCC_REGISTRY or (isinstance(obj, dict) and obj.get("schema") == CCC_REGISTRY_SCHEMA):
            registry_rows, registry = ccc_registry_inventory(obj, states)
            local_bindings.extend(registry_rows)
        check_observations = []
        unverified_original_metadata = []
        explicit_check_count = 0
        stack = [("$", obj)]
        while stack:
            location, value = stack.pop()
            if isinstance(value, dict):
                if "destination_module" in value or "destination_source_sha256" in value:
                    local_bindings.append(destination_binding(value, location, states))
                if "original_module" in value:
                    unverified_original_metadata.append({"field": location + ".original_module",
                                                        "verification": "not-attempted: original-module metadata is outside destination-byte binding"})
                contradictions = recorded_check_findings(value, location)
                check_mismatches.extend(contradictions)
                observation = recorded_check_observation(value, location)
                if observation is not None:
                    check_observations.append(observation)
                if contradictions:
                    failures.append(location)
                if isinstance(value.get("expected_success"), bool) and isinstance(value.get("actual_success"), bool):
                    explicit_check_count += 1
                for key, child in value.items():
                    if key == "source_inputs" and registry is not None and location == "$" and not isinstance(child, dict):
                        pass  # The registry helper accounts for its count metadata.
                    elif key == "source_inputs":
                        if isinstance(child, dict):
                            for rel, expected in child.items():
                                row = {"field": location + "." + key, "path": rel,
                                       "binding_kind": "source-input-bytes"}
                                if not isinstance(expected, str) or not HASH.fullmatch(expected):
                                    row["status"] = "invalid-digest"
                                else:
                                    row["status"] = binding_status(rel, expected, states)
                                local_bindings.append(row)
                        else:
                            local_bindings.append({"field": location + "." + key,
                                                   "binding_kind": "source-input-bytes",
                                                   "status": "invalid-source-inputs-map"})
                    elif key in digest_map_keys | ambiguous_map_keys and isinstance(child, dict):
                        for rel, expected in child.items():
                            valid_digest = isinstance(expected, str) and HASH.fullmatch(expected)
                            explicit_map = key in digest_map_keys or (
                                receipt == MANIFEST and location == "$" and key == "files")
                            if not explicit_map and not valid_digest:
                                # These fields can also contain descriptive metadata
                                # or structured records, which are visited separately.
                                path_shaped = rel in states or "/" in rel or rel in {
                                    "lean-toolchain", ".gitignore", ".gitattributes", "LICENSE", "NOTICE"} or rel.endswith((
                                    ".lean", ".py", ".json", ".md", ".toml", ".yaml", ".yml", ".sh"))
                                if isinstance(expected, (dict, list)) or not path_shaped:
                                    continue
                            row = {"field": location + "." + key,
                                   "binding_kind": "source-digest-map-bytes"}
                            if valid_digest:
                                # An explicitly recognized digest map declares its
                                # keys as relative source paths, including root files.
                                row.update(path=rel, status=binding_status(rel, expected, states))
                            else:
                                # Keep malformed entries visible without inferring
                                # that arbitrary non-digest metadata names are paths.
                                row.update(digest_map_key=rel, status="invalid-digest")
                            local_bindings.append(row)
                    elif key in manifest_keys and isinstance(child, str):
                        local_bindings.append({"field": location + "." + key, "path": MANIFEST,
                                               "status": binding_status(MANIFEST, child, states)})
                    elif key == "checker_sha256" and isinstance(child, str):
                        matches = sorted(p for p, s in states.items() if p.startswith("scripts/") and s.get("sha256") == child)
                        local_bindings.append({"field": location + "." + key, "matching_checker_paths": matches,
                                               "status": "matches-candidate-checker" if matches else "unmatched-checker-digest"})
                    elif key in {"dependency_revisions", "package_revisions"} and isinstance(child, dict):
                        for name, revision in child.items():
                            dependency_bindings.append({"name": name, "status": "matches-lock" if pins.get(name) == revision else "differs-from-lock"})
                    if (key == "passed" and child is False) or (
                            key == "outcome" and isinstance(child, str) and
                            child in {"failed", "timed-out", "refuted-or-limited"}):
                        failures.append(location)
                    if isinstance(child, (dict, list)):
                        stack.append((location + "." + key, child))
                rel = value.get("path", value.get("source", value.get("rel")))
                expected = value.get("source_sha256", value.get("sha256"))
                if isinstance(rel, str) and isinstance(expected, str) and HASH.fullmatch(expected):
                    local_bindings.append({"field": location, "path": rel, "status": binding_status(rel, expected, states)})
            elif isinstance(value, list):
                stack.extend((location + "[" + str(i) + "]", x) for i, x in enumerate(value) if isinstance(x, (dict, list)))
        bindings.extend(dict(x, receipt=receipt) for x in local_bindings)
        stale = [x for x in local_bindings if x["status"] not in {"matches-bytes", "matches-candidate-checker"}]
        dependency_stale = [x for x in dependency_bindings if x["status"] != "matches-lock"]
        registry_stale = registry["mismatches"] if registry is not None else []
        incomplete_checks = [x for x in check_observations if x["record_completeness"] == "incomplete"]
        summaries.append({"path": receipt, "binding_count": len(local_bindings),
                          "static_freshness": "stale-or-unavailable" if stale or dependency_stale or registry_stale else "matches-recognized-bindings" if local_bindings or dependency_bindings else "unbound-or-unrecognized",
                          "mismatches": stale, "dependency_bindings": dependency_bindings,
                          "dependency_mismatches": dependency_stale,
                          "source_registry": registry,
                          "registry_mismatches": registry_stale,
                          "unverified_original_module_metadata": unverified_original_metadata,
                          "explicit_recorded_check_count": explicit_check_count,
                          "complete_recorded_check_count": len(check_observations) - len(incomplete_checks),
                          "recorded_check_observations": check_observations,
                          "incomplete_recorded_checks": incomplete_checks,
                          "recorded_check_mismatches": check_mismatches,
                          "recorded_outcome_consistency": "contradiction-candidates" if check_mismatches else
                              "incomplete-recognized-records" if incomplete_checks else
                              "matches-recognized-expectations" if check_observations else "unrecognized-or-missing",
                          "recorded_failure_candidates": sorted(set(failures)),
                          "lean_validity": "not-established-by-inventory"})
    refs = []
    for source, text in content.items():
        if source.endswith((".md", ".py")) or source.startswith("evidence/"):
            matches = set(re.findall(r"\bevidence/[A-Za-z0-9_.-]+\.json", text))
            if source.endswith(".py"):
                matches.update("evidence/" + n for n in re.findall(r'''["']evidence["']\s*/\s*["']([A-Za-z0-9_.-]+\.json)["']''', text))
            # This monitor's embedded self-check data describes fixture files.
            if source != "scripts/monitor_math.py":
                refs.extend({"source": source, "path": p, "classification": "static-reference-candidate"}
                            for p in sorted(matches) if p not in states or states[p]["kind"] == "missing")
    return {"scope": "Recognized static digest bindings and explicit recorded outcome consistency only; neither establishes actual execution or complete Lean replay.",
            "transfer_binding_scope": "Destination-module/source_inputs bindings compare observed Git-visible source bytes only; original-module metadata, original-source comparison, source-to-object provenance and native validity are not verified.",
            "source_registry_scope": "The recognized CCC registry binds destination and separate audit paths to observed Git-visible bytes, with declared-count and unique-path completeness; count metadata is not a source_inputs digest map. This does not establish source-to-object provenance or native acceptance.",
            "destination_module_name_profile": "Conventional module identifier segments matching the trust runner's Unicode word/apostrophe profile; escaped or other unsupported Lean name forms are unavailable to this static conversion, not mathematically invalidated.",
            "explicit_recorded_check_count_scope": "Boolean expected_success/actual_success pairs only, including incomplete records; complete_recorded_check_count additionally requires the reported exit and any requested reason match.",
            "source_manifest_present": MANIFEST in parsed, "manifest_bindings": [x for x in bindings if x["receipt"] == MANIFEST],
            "git_visible_unlisted_by_manifest": sorted(set(states) - set(manifest_files) - {MANIFEST}),
            "malformed_json": malformed, "receipts": summaries, "missing_references": refs,
            "bindings": bindings}


def followups(states, content, lean, evidence, drift):
    steps = []
    if drift:
        steps.append({"priority": 0, "action": "Repeat snapshot after recording concurrent source changes; current inventory is not a coherent build input."})
    if lean["missing_local_imports"] or lean["cycles"] or lean["unreadable_modules"]:
        steps.append({"priority": 0, "action": "Resolve reported source availability/import collisions without discarding concurrent work."})
    if any(x["status"] != "matches-bytes" for x in evidence["manifest_bindings"]):
        steps.append({"priority": 1, "action": "Review exact manifest/source discrepancies before manifest-bound checks; do not rewrite digests merely to bypass the gate."})
    if any(x["recorded_check_mismatches"] for x in evidence["receipts"]):
        steps.append({"priority": 1, "action": "Review recorded checker outcome contradictions; matching source hashes do not establish that expected positive and negative controls passed."})
    steps.append({"priority": 2, "action": "Use pinned Lean to replay every intended library module in library_compile_candidates, then audit declarations/axioms and the expected outcomes of controls."})
    for p in sorted(states):
        if p.startswith("scripts/") and (p == "scripts/check.py" or Path(p).name.startswith("check_")) and p.endswith(".py") and states[p]["kind"] == "file":
            text = content.get(p, "")
            steps.append({"priority": 3, "command": ["python3", "-B", p], "state": "not-run",
                          "effects": "Existing checker may execute Lean and replace evidence/build outputs; review its input gate and output locations before orchestration.",
                          "trust_zero_flag_present_in_source": "--trust=0" in text})
    if lean["umbrella"]["uncovered_library_paths"]:
        steps.append({"priority": 4, "action": "Review umbrella exclusions for intended public surface; source presence alone does not authorize exposing a module."})
    return steps


@contextmanager
def directory_at(parent_fd, rel, create=False):
    """Open each relative directory component without following symlinks."""
    if not safe_relative(rel) or not hasattr(os, "O_NOFOLLOW") or not hasattr(os, "O_DIRECTORY"):
        raise RuntimeError("unsafe or unsupported receipt-directory traversal")
    fds = []
    try:
        current = parent_fd
        for part in PurePosixPath(rel).parts:
            if create:
                try:
                    os.mkdir(part, mode=0o700, dir_fd=current)
                except FileExistsError:
                    pass
            current = os.open(part, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW,
                              dir_fd=current)
            fds.append(current)
        yield current
    finally:
        for fd in reversed(fds):
            os.close(fd)


@contextmanager
def receipt_directory(root):
    """Anchor the Git root and the ignored receipt tree for all receipt I/O."""
    if subprocess.run(["git", "-C", str(root), "check-ignore", "-q", OUTPUT + "/probe"],
                      env=dict(os.environ, GIT_OPTIONAL_LOCKS="0"), capture_output=True).returncode:
        raise RuntimeError("receipt location must be ignored by Git: " + OUTPUT)
    root_fd = os.open(root, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
    try:
        with directory_at(root_fd, OUTPUT, create=True) as fd:
            yield fd
    finally:
        os.close(root_fd)


def atomic_write(directory_fd, name, data):
    if not name or "/" in name or name in {".", ".."}:
        raise RuntimeError("receipt filename must be a basename")
    try:
        existing = os.stat(name, dir_fd=directory_fd, follow_symlinks=False)
        if not stat.S_ISREG(existing.st_mode):
            raise RuntimeError("receipt destination is not a regular file")
    except FileNotFoundError:
        pass
    temporary = ".write-" + uuid.uuid4().hex
    fd = os.open(temporary, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW,
                 mode=0o600, dir_fd=directory_fd)
    try:
        with os.fdopen(fd, "wb") as dest:
            dest.write(data)
            dest.flush()
            os.fsync(dest.fileno())
        os.replace(temporary, name, src_dir_fd=directory_fd, dst_dir_fd=directory_fd)
        os.fsync(directory_fd)
    finally:
        try:
            os.unlink(temporary, dir_fd=directory_fd)
        except FileNotFoundError:
            pass


def previous_receipt(directory_fd):
    """Do not read a replaced latest.json symlink or a nonregular file."""
    try:
        before = os.stat("latest.json", dir_fd=directory_fd, follow_symlinks=False)
    except FileNotFoundError:
        return {}
    if not stat.S_ISREG(before.st_mode):
        raise RuntimeError("latest receipt is not a regular file")
    fd = os.open("latest.json", os.O_RDONLY | os.O_NOFOLLOW | os.O_NONBLOCK,
                 dir_fd=directory_fd)
    with os.fdopen(fd, "rb") as source:
        opened = os.fstat(source.fileno())
        if not stat.S_ISREG(opened.st_mode):
            raise RuntimeError("latest receipt changed type during read")
        data = source.read()
        finished = os.fstat(source.fileno())
    after = os.stat("latest.json", dir_fd=directory_fd, follow_symlinks=False)
    identities = {(s.st_dev, s.st_ino, s.st_size, s.st_mtime_ns) for s in (before, opened, finished, after)}
    if len(identities) != 1 or not stat.S_ISREG(after.st_mode):
        raise RuntimeError("latest receipt changed during read")
    try:
        value = json.loads(data)
    except ValueError:
        return {}
    return value if isinstance(value, dict) else {}


def compare_previous(previous, states, untracked):
    old = previous.get("files_after", {}) if isinstance(previous, dict) else {}
    return {"previous_run_id": previous.get("run_id") if isinstance(previous, dict) else None,
            "baseline_available": bool(old), "added": sorted(set(states) - set(old)),
            "removed_from_git_visible_inventory": sorted(set(old) - set(states)),
            "changed": sorted(p for p in set(states) & set(old) if byte_identity(states[p]) != byte_identity(old[p])),
            "missing": sorted(p for p, s in states.items() if s["kind"] == "missing"),
            "untracked": untracked}


def snapshot(root):
    with receipt_directory(root) as output_fd:
        # Open the runs directory before reading sources so an existing symlink
        # fails closed before any snapshot receipt is written.
        with directory_at(output_fd, "runs", create=True) as runs_fd:
            return snapshot_anchored(root, output_fd, runs_fd)


def snapshot_anchored(root, output_fd, runs_fd):
    previous = previous_receipt(output_fd)
    start = dt.datetime.now(dt.timezone.utc)
    before = git_state(root)
    paths = set(before["tracked"]) | set(before["untracked"])
    first, content = source_scan(root, paths, retain=True)
    lean = lean_inventory(first, content)
    evidence = evidence_inventory(first, content)
    after = git_state(root)
    final_paths = set(after["tracked"]) | set(after["untracked"])
    second, _ = source_scan(root, paths | final_paths)
    # A final Git observation catches edits to the index during the second read.
    final_git = git_state(root)
    byte_drift = sorted(p for p in paths | final_paths if byte_identity(first.get(p, {"kind": "not-in-first-inventory"})) != byte_identity(second[p]))
    metadata_drift = sorted(p for p in paths & final_paths if first[p] != second[p])
    unstable = sorted(p for p in paths | final_paths if first.get(p, {}).get("read_stable") is False or second[p].get("read_stable") is False)
    git_drift = before != after or after != final_git
    drift = bool(byte_drift or metadata_drift or unstable or git_drift)
    run_id = start.strftime("%Y%m%dT%H%M%S.%fZ-") + uuid.uuid4().hex[:12]
    report = {"schema_version": SCHEMA, "run_id": run_id, "started_utc": start.isoformat(),
              "completed_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
              "scope": "Git tracked plus untracked nonignored working-tree paths; no ignored objects, remote network discovery, or Lean execution.",
              "lean_validity": "not-run", "source_observation_stable": not drift,
              "observation_limit": "Two byte reads and Git observations detect observed drift; edits reverted between observations and later changes cannot be excluded.",
              "git_before": before, "git_after": final_git,
              "files_before": first, "files_after": {p: second[p] for p in final_paths},
              "missing_tracked_lean_paths": sorted(p for p in before["tracked"]
                                                   if p.endswith(".lean") and first[p]["kind"] == "missing"),
              "before_inventory_sha256": digest(encoded(first)), "after_inventory_sha256": digest(encoded(second)),
              "drift": {"byte_or_type_paths": byte_drift, "metadata_paths": metadata_drift,
                        "unstable_reads": unstable, "git_state_changed": git_drift},
              "delta": compare_previous(previous, {p: second[p] for p in final_paths}, final_git["untracked"]),
              "analysis_boundary": "first byte observation; any drift invalidates a coherent interpretation",
              "lean": lean, "evidence": evidence,
              "followups": followups(first, content, lean, evidence, drift)}
    os.mkdir(run_id, mode=0o700, dir_fd=runs_fd)
    with directory_at(runs_fd, run_id) as run_fd:
        atomic_write(run_fd, "snapshot.json", encoded(report))
    # Atomic publication is safe for overlapping runs: latest is last completed.
    atomic_write(output_fd, "latest.json", encoded(report))
    summary = {"run_id": run_id, "receipt": str(PurePosixPath(OUTPUT) / "runs" / run_id / "snapshot.json"),
               "files": len(final_paths), "untracked": len(final_git["untracked"]),
               "source_observation_stable": not drift, "lean_validity": "not-run",
               "missing_local_imports": len(lean["missing_local_imports"]), "cycles": len(lean["cycles"]),
               "umbrella_uncovered": len(lean["umbrella"]["uncovered_library_paths"]),
               "unavailable_lean_sources": len(lean["unavailable_module_paths"]),
               "admission_candidates_in_library": sum(x["role"] == "library-source" for x in lean["admission_candidates"]),
               "recorded_check_mismatches": sum(len(x["recorded_check_mismatches"]) for x in evidence["receipts"]),
               "stale_or_unavailable_evidence": sum(x["static_freshness"] == "stale-or-unavailable" for x in evidence["receipts"])}
    print(json.dumps(summary, sort_keys=True))
    return report


def self_check(root):
    name = "self-check-" + uuid.uuid4().hex
    with receipt_directory(root) as output_fd:
        os.mkdir(name, mode=0o700, dir_fd=output_fd)
        with directory_at(output_fd, name) as fixture_fd:
            self_check_anchored(root, Path(root) / OUTPUT / name, fixture_fd)


def self_check_anchored(root, fixture, fixture_fd):
    outcomes = []

    def check(name, condition):
        if not condition:
            raise AssertionError(name)
        outcomes.append(name)

    text = '/- sorry /- axiom X -/ import GRWTSK.Ghost -/\nimport GRWTSK.A\n#check "sorry"\nexample : True := by\n  sorry\n'
    masked = lean_code(text)
    check("nested-comments-and-strings-masked", masked.count("sorry") == 1 and "Ghost" not in masked and len(text) == len(masked))
    paths = {"GRWTSK.lean": {"kind": "file"}, "GRWTSK/A.lean": {"kind": "file"},
             "GRWTSK/B.lean": {"kind": "file"}, "GRWTSK/Unused.lean": {"kind": "file"},
             "checks/SorryControl.lean": {"kind": "file"}}
    content = {"GRWTSK.lean": "import GRWTSK.A", "GRWTSK/A.lean": "import GRWTSK.B GRWTSK.Absent",
               "GRWTSK/B.lean": "import Mathlib", "GRWTSK/Unused.lean": "", "checks/SorryControl.lean": "example : True := by sorry"}
    lean = lean_inventory(paths, content)
    order = lean["dependency_first_order"]
    check("dependencies-before-users", order.index("GRWTSK/B.lean") < order.index("GRWTSK/A.lean") < order.index("GRWTSK.lean"))
    check("missing-local-import", lean["missing_local_imports"] == [{"importer": "GRWTSK/A.lean", "module": "GRWTSK.Absent", "reason": "absent-local-module"}])
    check("umbrella-exclusion", lean["umbrella"]["uncovered_library_paths"] == ["GRWTSK/Unused.lean"])
    check("control-admission-classified", lean["admission_candidates"][0]["role"] == "control-fixture")
    source_states = {"GRWTSK.lean": {"kind": "file"},
                     "GRWTSK/Analysis/New.lean": {"kind": "file"},
                     "GRWTSK/Analysis/Deleted.lean": {"kind": "missing"},
                     "checks/DeletedControl.lean": {"kind": "missing"}}
    source_content = {"GRWTSK.lean": "import GRWTSK.Analysis.New",
                      "GRWTSK/Analysis/New.lean": "import Mathlib",
                      "GRWTSK/Analysis/Deleted.lean": "axiom obsolete : False"}
    current_lean = lean_inventory(source_states, source_content)
    check("deleted-source-kept-outside-graph-and-coverage",
          set(current_lean["module_paths"]) == {"GRWTSK", "GRWTSK.Analysis.New"} and
          current_lean["umbrella"]["uncovered_library_paths"] == [] and
          current_lean["missing_lean_source_paths"] == ["GRWTSK/Analysis/Deleted.lean", "checks/DeletedControl.lean"] and
          not current_lean["control_fixtures"] and not current_lean["admission_candidates"])
    source_content["GRWTSK/Analysis/New.lean"] = "import GRWTSK.Analysis.Deleted"
    current_lean = lean_inventory(source_states, source_content)
    check("imports-of-missing-observed-modules-are-unavailable",
          current_lean["local_dependencies"]["GRWTSK.Analysis.New"] == [] and
          current_lean["missing_local_imports"] == [{"importer": "GRWTSK/Analysis/New.lean",
              "module": "GRWTSK.Analysis.Deleted", "reason": "source-unavailable",
              "source_path": "GRWTSK/Analysis/Deleted.lean", "source_state": "missing"}])
    bad_states = {"GRWTSK/Linked.lean": {"kind": "symlink"},
                  "GRWTSK/Parent/Child.lean": {"kind": "symlink-parent"},
                  "GRWTSK/Directory.lean": {"kind": "nonregular"},
                  "GRWTSK/Error.lean": {"kind": "unreadable", "errno": 20},
                  "GRWTSK/Unstable.lean": {"kind": "file", "read_stable": False}}
    bad_lean = lean_inventory(bad_states, {p: "import GRWTSK.Linked\naxiom falseProof : False" for p in bad_states})
    check("unstable-linked-and-nonregular-sources-never-compile-candidates",
          not bad_lean["module_paths"] and not bad_lean["library_compile_candidates"] and
          not bad_lean["cycles"] and not bad_lean["admission_candidates"] and
          len(bad_lean["unavailable_module_paths"]) == len(bad_states) and
          bad_lean["unavailable_module_paths"]["GRWTSK.Unstable"]["reason"] == "unstable-read")
    no_content = lean_inventory({"GRWTSK/Unread.lean": {"kind": "file", "read_stable": True}}, {})
    check("missing-content-is-unavailable-not-empty-module", not no_content["module_paths"] and
          no_content["unavailable_module_paths"]["GRWTSK.Unread"]["reason"] == "content-unavailable")
    order, cycles, blocked = dependency_order({"A": {"B"}, "B": {"A"}, "C": {"A"}, "D": set()})
    check("cycles-separate-from-dependent-blockage", cycles == [["A", "B"]] and blocked == ["A", "B", "C"] and order == ["D"])
    (fixture / "regular.lean").write_bytes(b"import Mathlib\n")
    (fixture / "linked.lean").symlink_to("regular.lean")
    (fixture / "linked-parent").symlink_to(".")
    regular, _ = read_state(fixture, "regular.lean")
    linked, data = read_state(fixture, "linked.lean", True)
    parent, _ = read_state(fixture, "linked-parent/regular.lean")
    missing, _ = read_state(fixture, "missing.lean")
    check("source-symlinks-never-followed", linked["kind"] == "symlink" and data is None and parent["kind"] == "symlink-parent")
    check("missing-tracked-shape", missing["kind"] == "missing")
    check("content-digest", regular["sha256"] == digest(b"import Mathlib\n"))
    outside = fixture / "outside"
    outside.mkdir()
    (outside / "regular.lean").write_bytes(b"EXTERNAL BYTE MARKER")
    raced = fixture / "race-parent"
    raced.mkdir()
    (raced / "regular.lean").write_bytes(b"original source")
    original_open = os.open

    def swap_before_parent_open(path, flags, *args, **kwargs):
        if path == "race-parent" and "dir_fd" in kwargs:
            raced.rename(fixture / "race-original")
            raced.symlink_to("outside")
        return original_open(path, flags, *args, **kwargs)

    os.open = swap_before_parent_open
    try:
        race_state, race_content = read_state(fixture, "race-parent/regular.lean", True)
    finally:
        os.open = original_open
    check("parent-symlink-race-fails-closed", race_state["kind"] != "file" and race_content is None)
    raced_after = fixture / "race-after-open"
    raced_after.mkdir()
    (raced_after / "regular.lean").write_bytes(b"original source")

    def swap_after_file_open(path, flags, *args, **kwargs):
        fd = original_open(path, flags, *args, **kwargs)
        if path == "regular.lean" and "dir_fd" in kwargs:
            raced_after.rename(fixture / "race-after-original")
            raced_after.symlink_to("outside")
        return fd

    os.open = swap_after_file_open
    try:
        race_state, race_content = read_state(fixture, "race-after-open/regular.lean", True)
    finally:
        os.open = original_open
    check("unstable-parent-content-discarded", race_state["kind"] == "file" and
          race_state["read_stable"] is False and race_content is None and
          race_state["sha256"] == digest(b"original source"))
    check("manifest-drift-and-path-safety", binding_status("regular.lean", "0" * 64, {"regular.lean": regular}) == "changed-bytes" and binding_status("../escape", "0" * 64, {}) == "unsafe-reference")
    states = {"GRWTSK/A.lean": dict(regular), MANIFEST: dict(regular)}
    transfer = {"destination_module": "GRWTSK.A", "destination_source_sha256": regular["sha256"],
                "original_module": "FormalResearch.A", "original_source_sha256": "0" * 64}
    transfer_evidence = evidence_inventory(states, {"evidence/transfer.json": json.dumps({"source_mapping": [transfer]})})
    transfer_receipt = transfer_evidence["receipts"][0]
    check("destination-transfer-fresh-bytes-only", transfer_receipt["static_freshness"] == "matches-recognized-bindings" and
          transfer_evidence["bindings"][0]["path"] == "GRWTSK/A.lean" and
          len(transfer_receipt["unverified_original_module_metadata"]) == 1 and
          transfer_receipt["lean_validity"] == "not-established-by-inventory")
    changed_transfer = dict(transfer, destination_source_sha256="0" * 64)
    changed_evidence = evidence_inventory(states, {"evidence/transfer.json": json.dumps(changed_transfer)})
    check("destination-transfer-changed-bytes", changed_evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          changed_evidence["bindings"][0]["status"] == "changed-bytes")
    missing_transfer = dict(transfer, destination_module="GRWTSK.Absent")
    missing_evidence = evidence_inventory(states, {"evidence/transfer.json": json.dumps(missing_transfer)})
    check("destination-transfer-missing-source", missing_evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          missing_evidence["bindings"][0]["status"] == "outside-git-visible-inventory")
    bad_modules = ["../Outside", "/absolute/Module", "GRWTSK..A", "GRWTSK.A/B", "GRWTSK.0Bad",
                   "GRWTSK.A\\B", "GRWTSK.\u00abA-B\u00bb", "GRWTSK.A\nB", "", None, 42]
    bad_evidence = evidence_inventory(states, {"evidence/transfer.json": json.dumps([
          dict(transfer, destination_module=name) for name in bad_modules])})
    check("destination-transfer-malformed-name-cannot-produce-path", bad_evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          len(bad_evidence["bindings"]) == len(bad_modules) and
          all("path" not in row and row["status"] == "unsupported-or-malformed-destination-module" for row in bad_evidence["bindings"]))
    bad_digests = [None, "short", "g" * 64, [], {"sha256": regular["sha256"]}]
    bad_evidence = evidence_inventory(states, {"evidence/transfer.json": json.dumps([
          dict(transfer, destination_source_sha256=h) for h in bad_digests])})
    check("destination-transfer-invalid-digests", bad_evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          all(row["status"] == "invalid-digest" for row in bad_evidence["bindings"]))
    partial_evidence = evidence_inventory(states, {"evidence/transfer.json": json.dumps([
          {"destination_module": "GRWTSK.A"}, {"destination_source_sha256": regular["sha256"]}])})
    check("destination-transfer-partial-pair-unavailable", partial_evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          sorted(row["status"] for row in partial_evidence["bindings"]) == ["invalid-digest", "unsupported-or-malformed-destination-module"])
    conventional_states = dict(states, **{"GRWTSK/\u00c0Module'.lean": regular})
    check("destination-profile-matches-conventional-unicode-identifiers", destination_binding({
          "destination_module": "GRWTSK.\u00c0Module'", "destination_source_sha256": regular["sha256"]}, "$", conventional_states)["status"] == "matches-bytes")
    source_input_states = dict(states, **{"lakefile.toml": regular, "scripts/check.py": regular,
                                         "deleted.lean": {"kind": "missing"}})
    fresh_inputs = {"source_inputs": {"lakefile.toml": regular["sha256"], "scripts/check.py": regular["sha256"]}}
    input_evidence = evidence_inventory(source_input_states, {"evidence/input.json": json.dumps(fresh_inputs)})
    check("source-input-map-includes-root-configs", input_evidence["receipts"][0]["static_freshness"] == "matches-recognized-bindings" and
          sorted(row["path"] for row in input_evidence["bindings"]) == ["lakefile.toml", "scripts/check.py"])
    input_evidence = evidence_inventory(source_input_states, {"evidence/input.json": json.dumps({"source_inputs": {
          "lakefile.toml": "0" * 64, "deleted.lean": regular["sha256"], "absent.lean": regular["sha256"]}})})
    check("source-input-map-changed-and-missing", input_evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          sorted(row["status"] for row in input_evidence["bindings"]) == ["changed-bytes", "missing", "outside-git-visible-inventory"])
    input_evidence = evidence_inventory(source_input_states, {"evidence/input.json": json.dumps({"source_inputs": {
          "../escape.lean": regular["sha256"], "/absolute.lean": regular["sha256"], ".git/config": regular["sha256"]}})})
    check("source-input-map-unsafe-references-unavailable", input_evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          all(row["status"] == "unsafe-reference" for row in input_evidence["bindings"]))
    input_evidence = evidence_inventory(source_input_states, {"evidence/input.json": json.dumps({"source_inputs": {
          "lakefile.toml": {"sha256": regular["sha256"]}, "scripts/check.py": "bad"}})})
    check("source-input-map-invalid-digests-unavailable", input_evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          all(row["status"] == "invalid-digest" for row in input_evidence["bindings"]))
    input_evidence = evidence_inventory(source_input_states, {"evidence/input.json": json.dumps({"source_inputs": ["lakefile.toml"]})})
    check("source-input-map-malformed-schema-unavailable", input_evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          input_evidence["bindings"][0]["status"] == "invalid-source-inputs-map")
    registry_states = dict(states, **{"GRWTSK/B.lean": regular, "checks/Audit.lean": regular})
    registry = {"schema": CCC_REGISTRY_SCHEMA, "source_inputs": 2, "sources": [
        {"destination": "GRWTSK/A.lean", "destination_sha256": regular["sha256"]},
        {"destination": "GRWTSK/B.lean", "destination_sha256": regular["sha256"]}],
        "audit_destination": "checks/Audit.lean", "audit_destination_sha256": regular["sha256"]}

    def registry_case(value, observed=registry_states, receipt=CCC_REGISTRY):
        return evidence_inventory(observed, {receipt: json.dumps(value)})

    fresh_registry = registry_case(registry)
    fresh_registry_receipt = fresh_registry["receipts"][0]
    check("registry-count-is-metadata-with-source-and-audit-bindings", fresh_registry_receipt["binding_count"] == 3 and
          fresh_registry_receipt["static_freshness"] == "matches-recognized-bindings" and
          fresh_registry_receipt["source_registry"]["declared_source_count"] == 2 and
          fresh_registry_receipt["source_registry"]["unique_source_destination_count"] == 2 and
          not fresh_registry_receipt["registry_mismatches"] and
          fresh_registry_receipt["recorded_outcome_consistency"] == "unrecognized-or-missing" and
          fresh_registry_receipt["lean_validity"] == "not-established-by-inventory")
    changed_registry = registry_case(dict(registry, sources=[dict(registry["sources"][0], destination_sha256="0" * 64), registry["sources"][1]]))
    check("registry-source-drift-is-static-only", changed_registry["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          changed_registry["receipts"][0]["mismatches"][0]["status"] == "changed-bytes" and
          not changed_registry["receipts"][0]["registry_mismatches"] and
          not changed_registry["receipts"][0]["recorded_failure_candidates"])
    missing_registry_states = dict(registry_states)
    del missing_registry_states["GRWTSK/B.lean"]
    missing_registry_states["checks/Audit.lean"] = {"kind": "missing"}
    unavailable_registry = registry_case(registry, missing_registry_states)
    check("registry-missing-source-and-audit-bytes-unavailable", unavailable_registry["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          sorted(row["status"] for row in unavailable_registry["receipts"][0]["mismatches"]) == ["missing", "outside-git-visible-inventory"])
    duplicate_registry = registry_case(dict(registry, sources=[registry["sources"][0], registry["sources"][0]]))
    check("registry-duplicate-destinations-break-completeness", duplicate_registry["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          duplicate_registry["receipts"][0]["source_registry"]["duplicate_source_destinations"] == ["GRWTSK/A.lean"] and
          duplicate_registry["receipts"][0]["source_registry"]["unique_source_destination_count"] == 1)
    overlapping_audit = registry_case(dict(registry, audit_destination="GRWTSK/A.lean"))
    check("registry-audit-destination-is-separate", any(x["status"] == "audit-destination-overlaps-source-list" for x in overlapping_audit["receipts"][0]["registry_mismatches"]) and
          overlapping_audit["receipts"][0]["static_freshness"] == "stale-or-unavailable")
    wrong_count = registry_case(dict(registry, source_inputs=3))
    check("registry-count-must-match-record-count", any(x["status"] == "source-count-differs-from-record-count" for x in wrong_count["receipts"][0]["registry_mismatches"]) and
          wrong_count["receipts"][0]["static_freshness"] == "stale-or-unavailable")
    bad_counts = [True, "2", None, -1, 2.0, {}]
    check("registry-count-requires-nonnegative-int-excluding-bool", all(any(x["status"] == "missing-or-invalid-source-count" for x in registry_case(dict(registry, source_inputs=count))["receipts"][0]["registry_mismatches"]) for count in bad_counts))
    partial_records = [None, {}, {"destination": "GRWTSK/A.lean"},
                       {"destination_sha256": regular["sha256"]},
                       {"destination": 42, "destination_sha256": regular["sha256"]}]
    partial_registry = registry_case(dict(registry, source_inputs=len(partial_records), sources=partial_records))
    check("registry-malformed-and-partial-records-remain-explicit", partial_registry["receipts"][0]["binding_count"] == len(partial_records) + 1 and
          partial_registry["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          sorted(row["status"] for row in partial_registry["receipts"][0]["mismatches"]) == [
              "malformed-destination", "malformed-source-registry-record", "missing-destination", "missing-destination", "missing-destination-digest"])
    unsafe_registry_paths = ["../Outside.lean", "/Outside.lean", "./GRWTSK/A.lean", "GRWTSK//A.lean", ".", "GRWTSK/A.lean/", "GRWTSK\\A.lean", "GRWTSK/A\u0000.lean"]
    unsafe_registry = registry_case(dict(registry, source_inputs=len(unsafe_registry_paths), sources=[
          {"destination": path, "destination_sha256": regular["sha256"]} for path in unsafe_registry_paths]))
    check("registry-destinations-reject-traversal-and-aliases", len(unsafe_registry["receipts"][0]["mismatches"]) == len(unsafe_registry_paths) and
          all("path" not in row and row["status"] == "unsafe-or-noncanonical-reference" for row in unsafe_registry["receipts"][0]["mismatches"]))
    invalid_registry_digest = registry_case(dict(registry, sources=[dict(registry["sources"][0], destination_sha256=[]), registry["sources"][1]]))
    check("registry-invalid-destination-digest-breaks-completeness", invalid_registry_digest["receipts"][0]["mismatches"][0]["status"] == "invalid-digest" and
          any(x["status"] == "invalid-digest" for x in invalid_registry_digest["receipts"][0]["registry_mismatches"]))
    partial_audits = [{k:v for k,v in registry.items() if k != missing} for missing in ("audit_destination", "audit_destination_sha256")]
    check("registry-partial-audit-pair-unavailable", all(registry_case(value)["receipts"][0]["static_freshness"] == "stale-or-unavailable" and registry_case(value)["receipts"][0]["registry_mismatches"] for value in partial_audits))
    malformed_registry_lists = [dict(registry, sources={}), {k:v for k,v in registry.items() if k != "sources"}, []]
    check("registry-malformed-root-or-source-list-unavailable", all(registry_case(value)["receipts"][0]["static_freshness"] == "stale-or-unavailable" and registry_case(value)["receipts"][0]["registry_mismatches"] for value in malformed_registry_lists))
    unsupported_registry = registry_case(dict(registry, schema="future-source-registry"))
    check("registry-unsupported-schema-is-not-native-failure", unsupported_registry["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          unsupported_registry["receipts"][0]["registry_mismatches"][0]["status"] == "unsupported-source-registry-schema" and
          not unsupported_registry["receipts"][0]["recorded_failure_candidates"])
    copied_registry = registry_case(registry, receipt="evidence/recognized-registry.json")
    unrelated_sources = registry_case({"sources": registry["sources"]}, receipt="evidence/citation.json")
    check("registry-marker-recognition-does-not-infer-unrelated-sources", copied_registry["receipts"][0]["binding_count"] == 3 and
          unrelated_sources["receipts"][0]["source_registry"] is None and
          unrelated_sources["receipts"][0]["static_freshness"] == "unbound-or-unrecognized")
    root_file_states = dict(states, **{"lakefile.toml": regular, "README.md": regular, "NOTICE": regular})
    root_hashes = {"source_sha256": {name: regular["sha256"] for name in ("lakefile.toml", "README.md", "NOTICE")},
                   "mathematical_metadata": {"theorem_bound": regular["sha256"]}}
    root_evidence = evidence_inventory(root_file_states, {"evidence/root-files.json": json.dumps(root_hashes)})
    check("recognized-digest-maps-include-root-files", root_evidence["receipts"][0]["static_freshness"] == "matches-recognized-bindings" and
          sorted(row["path"] for row in root_evidence["bindings"]) == ["NOTICE", "README.md", "lakefile.toml"])
    root_evidence = evidence_inventory(root_file_states, {"evidence/root-files.json": json.dumps({"source_sha256": {"lakefile.toml": "0" * 64}})})
    check("recognized-root-config-drift-unavailable", root_evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          root_evidence["bindings"][0]["status"] == "changed-bytes")
    root_evidence = evidence_inventory(states, {"evidence/root-files.json": json.dumps({"source_sha256": {"lakefile.toml": regular["sha256"]}})})
    check("recognized-root-config-missing-unavailable", root_evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          root_evidence["bindings"][0]["status"] == "outside-git-visible-inventory")
    root_evidence = evidence_inventory(root_file_states, {"evidence/root-files.json": json.dumps({"source_sha256": {"metadata_count": 30}})})
    check("malformed-digest-map-entry-does-not-infer-path", root_evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          "path" not in root_evidence["bindings"][0] and root_evidence["bindings"][0]["digest_map_key"] == "metadata_count")
    metadata = evidence_inventory(root_file_states, {"evidence/metadata.json": json.dumps({"inputs": {
          "description": "finite-window candidate", "count": 30, "calculation": {"coefficient": 2}}})})
    check("ambiguous-map-metadata-remains-unbound", metadata["receipts"][0]["static_freshness"] == "unbound-or-unrecognized" and
          not metadata["bindings"])
    bad_root_input = evidence_inventory(root_file_states, {"evidence/metadata.json": json.dumps({"inputs": {"lakefile.toml": "invalid"}})})
    check("ambiguous-map-malformed-root-config-remains-explicit", bad_root_input["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          bad_root_input["bindings"][0]["digest_map_key"] == "lakefile.toml" and bad_root_input["bindings"][0]["status"] == "invalid-digest")
    structured = evidence_inventory(root_file_states, {"evidence/metadata.json": json.dumps({"files": {
          "summary": {"path": "README.md", "sha256": regular["sha256"]}}})})
    check("ambiguous-map-structured-row-visited-without-false-map-error", structured["receipts"][0]["static_freshness"] == "matches-recognized-bindings" and
          len(structured["bindings"]) == 1 and structured["bindings"][0]["path"] == "README.md")
    receipt = {"source_sha256": {"GRWTSK/A.lean": regular["sha256"]}, "checks": [{"expected_success": False, "actual_success": False, "passed": True}]}
    evidence = evidence_inventory(states, {"evidence/test.json": json.dumps(receipt)})
    check("expected-rejection-is-not-failure", not evidence["receipts"][0]["recorded_failure_candidates"] and evidence["receipts"][0]["static_freshness"] == "matches-recognized-bindings")
    check("positive-recorded-pass-consistent", not recorded_check_findings({"expected_success": True,
          "actual_success": True, "exit_code": 0, "expected_error_matched": True, "passed": True}, "$.checks[0]"))
    contradictions = recorded_check_findings({"expected_success": True, "actual_success": False,
                                              "exit_code": 1, "passed": False}, "$.checks[0]")
    check("positive-recorded-failure-flagged", contradictions[0]["reasons"] == ["recorded-success-differs-from-expectation"])
    check("correctly-rejected-control-consistent", not recorded_check_findings({"expected_success": False,
          "actual_success": False, "exit_code": 1, "expected_error_matched": True, "passed": True}, "$.checks[0]"))
    contradictions = recorded_check_findings({"expected_success": False, "actual_success": True,
                                              "exit_code": 0, "expected_error_matched": True}, "$.checks[0]")
    check("unexpected-control-success-flagged", contradictions[0]["reasons"] == ["recorded-success-differs-from-expectation"])
    contradictions = recorded_check_findings({"expected_success": True, "actual_success": True,
                                              "exit_code": 1, "expected_error_matched": False}, "$.checks[0]")
    check("exit-code-and-error-match-contradictions-flagged", contradictions[0]["reasons"] == [
          "recorded-success-contradicts-exit-code", "expected-error-not-matched"])
    check("unrecognized-outcome-types-not-interpreted", not recorded_check_findings({"expected_success": "false",
          "actual_success": "true", "exit_code": "0", "expected_error_matched": "false", "passed": True}, "$.checks[0]"))
    missing_outcomes = evidence_inventory(states, {"evidence/test.json": json.dumps({"checks": [{"passed": True}]})})
    check("missing-outcome-data-unrecognized", missing_outcomes["receipts"][0]["recorded_outcome_consistency"] == "unrecognized-or-missing" and
          not missing_outcomes["receipts"][0]["recorded_check_mismatches"])
    partial = evidence_inventory(states, {"evidence/test.json": json.dumps({"checks": [
          {"expected_success": False, "actual_success": False},
          {"expected_success": False, "actual_success": False, "exit_code": 1, "expected_error_fragment": "Type mismatch"}]})})
    check("partial-records-stay-incomplete", partial["receipts"][0]["recorded_outcome_consistency"] == "incomplete-recognized-records" and
          partial["receipts"][0]["complete_recorded_check_count"] == 0 and
          len(partial["receipts"][0]["incomplete_recorded_checks"]) == 2)
    check("lone-error-match-metadata-unrecognized", not recorded_check_findings({"expected_error_matched": False}, "$.metadata") and
          recorded_check_observation({"expected_error_matched": False}, "$.metadata") is None)
    mixed = evidence_inventory(states, {"evidence/test.json": json.dumps({"source_sha256": {"GRWTSK/A.lean": regular["sha256"]},
            "checks": [{"expected_success": False, "actual_success": True, "exit_code": 0, "passed": True}]})})
    check("digest-freshness-separated-from-control-outcome", mixed["receipts"][0]["static_freshness"] == "matches-recognized-bindings" and
          mixed["receipts"][0]["recorded_outcome_consistency"] == "contradiction-candidates")
    receipt["source_sha256"]["GRWTSK/A.lean"] = "0" * 64
    evidence = evidence_inventory(states, {"evidence/test.json": json.dumps(receipt)})
    check("stale-evidence-detected", evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable")
    evidence = evidence_inventory(states, {"evidence/test.json": json.dumps({"dependency_revisions": {"mathlib": "wrong"}}),
                                            "lake-manifest.json": json.dumps({"packages": [{"name": "mathlib", "rev": "pinned"}]})})
    check("dependency-drift-invalidates-freshness", evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable")
    evidence = evidence_inventory(states, {MANIFEST: json.dumps({"files": {"GRWTSK/A.lean": "invalid"}})})
    check("invalid-manifest-digest-reported", evidence["manifest_bindings"][0]["status"] == "invalid-digest")
    malformed_manifest = evidence_inventory(states, {MANIFEST: json.dumps({"files": {
          "GRWTSK/A.lean": {"sha256": regular["sha256"]}, "NOTICE": regular["sha256"]}})})
    check("manifest-files-map-never-skips-malformed-records", malformed_manifest["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          len(malformed_manifest["manifest_bindings"]) == 2 and
          any(row.get("digest_map_key") == "GRWTSK/A.lean" and row["status"] == "invalid-digest" for row in malformed_manifest["manifest_bindings"]))
    check("axiom-variable-not-admission", not lean_inventory({"GRWTSK/A.lean": {"kind": "file"}},
          {"GRWTSK/A.lean": "for axiom in axioms do\n  pure axiom"})["admission_candidates"])
    check("remote-credentials-redacted", remote_identity("https://token:secret@github.com/grwtsk/math.git?access_token=secret#secret") == {"host": "github.com", "repository": "grwtsk/math"})
    check("private-local-remote-redacted", "redacted_url_sha256" in remote_identity("/private/work/repo"))
    before = {"files_after": {"regular.lean": regular}}
    changed = dict(regular, sha256="0" * 64)
    delta = compare_previous(before, {"regular.lean": changed, "new.lean": missing}, ["new.lean"])
    check("prior-receipt-delta", delta["changed"] == ["regular.lean"] and delta["added"] == ["new.lean"] and delta["missing"] == ["new.lean"])
    repo = fixture / "git-fixture"
    repo.mkdir()
    git(repo, "init", "--initial-branch=main")
    (repo / ".gitignore").write_text("/.local/\n")
    (repo / "tracked.lean").write_text("import Mathlib\n")
    (repo / "deleted.lean").write_text("import Mathlib\n")
    git(repo, "add", "--", ".gitignore", "tracked.lean", "deleted.lean")
    (repo / "deleted.lean").unlink()
    (repo / "new.lean").write_text("import Mathlib\n")
    ignored = repo / ".local"
    ignored.mkdir()
    (ignored / "ignored.lean").write_text("sorry\n")
    observed = git_state(repo)
    check("actual-git-visible-scope", set(observed["tracked"]) == {".gitignore", "tracked.lean", "deleted.lean"} and observed["untracked"] == ["new.lean"])
    fixture_states, _ = source_scan(repo, set(observed["tracked"]) | set(observed["untracked"]))
    check("actual-git-tracked-deletion", fixture_states["deleted.lean"]["kind"] == "missing" and ".local/ignored.lean" not in fixture_states)
    (repo / "GRWTSK/Analysis").mkdir(parents=True)
    (repo / "GRWTSK.lean").write_text("import GRWTSK.Analysis.New\n")
    old_library = "GRWTSK/Analysis/Old.lean"
    new_library = "GRWTSK/Analysis/New.lean"
    old_bytes = b"import Mathlib\n"
    (repo / old_library).write_bytes(old_bytes)
    git(repo, "add", "--", "GRWTSK.lean", old_library)
    (repo / old_library).unlink()
    (repo / new_library).write_text("import Mathlib\n")
    observed = git_state(repo)
    fixture_states, fixture_content = source_scan(repo, set(observed["tracked"]) | set(observed["untracked"]), retain=True)
    actual_lean = lean_inventory(fixture_states, fixture_content)
    check("actual-git-missing-library-state-retained", old_library in observed["tracked"] and
          fixture_states[old_library]["kind"] == "missing" and old_library in actual_lean["missing_lean_source_paths"])
    check("actual-git-untracked-library-source-in-graph", new_library in observed["untracked"] and
          actual_lean["module_paths"]["GRWTSK.Analysis.New"] == new_library and
          new_library in actual_lean["library_compile_candidates"])
    check("actual-git-deleted-library-never-uncovered", actual_lean["umbrella"]["uncovered_library_paths"] == [] and
          old_library not in actual_lean["dependency_first_order"] and
          old_library not in actual_lean["library_compile_candidates"])
    old_receipt = {"evidence/old.json": json.dumps({"source_sha256": {old_library: digest(old_bytes)}})}
    old_evidence = evidence_inventory(fixture_states, old_receipt)
    check("actual-git-deleted-source-evidence-stays-missing",
          old_evidence["receipts"][0]["static_freshness"] == "stale-or-unavailable" and
          old_evidence["bindings"][0]["status"] == "missing")
    outside_receipts = fixture / "external-receipts"
    outside_receipts.mkdir()
    with receipt_directory(repo) as receipt_fd:
        os.symlink(str(outside_receipts), "runs", dir_fd=receipt_fd)
    rejected = False
    try:
        snapshot(repo)
    except (OSError, RuntimeError):
        rejected = True
    check("nested-runs-symlink-rejected", rejected and not list(outside_receipts.iterdir()))
    with receipt_directory(repo) as receipt_fd:
        os.unlink("runs", dir_fd=receipt_fd)
        os.symlink(str(outside_receipts / "latest.json"), "latest.json", dir_fd=receipt_fd)
    rejected = False
    try:
        snapshot(repo)
    except (OSError, RuntimeError):
        rejected = True
    check("latest-symlink-never-read-or-replaced", rejected and not list(outside_receipts.iterdir()) and
          (repo / OUTPUT / "latest.json").is_symlink())
    with receipt_directory(repo) as receipt_fd:
        os.unlink("latest.json", dir_fd=receipt_fd)
        with directory_at(receipt_fd, "race-output", create=True) as race_fd:
            os.rename("race-output", "race-original", src_dir_fd=receipt_fd, dst_dir_fd=receipt_fd)
            os.symlink(str(outside_receipts), "race-output", dir_fd=receipt_fd)
            atomic_write(race_fd, "marker.json", b"{}\n")
    check("anchored-atomic-write-ignores-replacement-directory-link", not list(outside_receipts.iterdir()) and
          (repo / OUTPUT / "race-original" / "marker.json").is_file())
    rejected = False
    with receipt_directory(repo) as receipt_fd:
        os.symlink(str(outside_receipts), "self-check-existing", dir_fd=receipt_fd)
        try:
            with directory_at(receipt_fd, "self-check-existing", create=True):
                pass
        except OSError:
            rejected = True
    check("self-check-directory-link-rejected", rejected and not list(outside_receipts.iterdir()))
    atomic_write(fixture_fd, "results.json", encoded({"passed": outcomes, "lean_validity": "not-run"}))
    print(json.dumps({"self_check": "passed", "checks": len(outcomes), "receipt": str(PurePosixPath(OUTPUT) / fixture.name / "results.json")}))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("action", choices=("snapshot", "self-check"))
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parent.parent)
    args = parser.parse_args()
    root = args.root.resolve()
    try:
        actual = decode(git(root, "rev-parse", "--show-toplevel")).strip()
        if root != Path(actual).resolve():
            raise RuntimeError("--root must be the Git checkout root")
        if args.action == "snapshot":
            snapshot(root)
        else:
            self_check(root)
    except (RuntimeError, OSError, ValueError, subprocess.TimeoutExpired, AssertionError) as error:
        # No subprocess error output, source bytes or absolute paths are emitted.
        print(json.dumps({"error_type": type(error).__name__, "snapshot_completed": False}), file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
