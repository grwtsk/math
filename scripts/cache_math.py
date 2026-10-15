#!/usr/bin/env python3
"""Reversible source custody, never theorem admission (stdlib; Python >= 3.9).

The selected universe is exactly Git-tracked plus nonignored untracked .lean
paths below GRWTSK/, and GRWTSK.lean. Nothing is executed. SHA256 identifies
observed bytes operationally; its injectivity is not a mathematical premise.
The import graph is a lexical header scan, not a Lean elaboration certificate.
"""
from __future__ import annotations

import argparse
from contextlib import contextmanager
import datetime as dt
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import re
import stat
import subprocess
import sys
import uuid
import zlib

from monitor_math import lean_code, read_state

SCHEMA = "mathematical-source-cache-v1"
REF_SCHEMA = "mathematical-source-cache-ref-v1"
SCOPE = "git-visible-first-party-GRWTSK-lean-v1"
HASH = re.compile(r"[0-9a-f]{64}\Z")
MODULE = re.compile(r"(?:[^\W\d][\w']*)(?:\.(?:[^\W\d][\w']*))*\Z")
ROLES = {"library", "positive-check", "negative-control", "audit-driver",
         "candidate-source-only"}
PROOF = "unknown-unreplayed"
MAX_BYTES = 64 * 1024 * 1024
AUTO = object()
CATALOGS = ("docs/math-layout.json", "evidence/source-intake.json")
CONTEXT = ("lean-toolchain", "lakefile.toml", "lake-manifest.json", "LICENSE", "NOTICE")


class CacheError(ValueError):
    pass


def require(condition, message):
    if not condition:
        raise CacheError(message)


def digest(data):
    return hashlib.sha256(data).hexdigest()


def encoded(value):
    return (json.dumps(value, sort_keys=True, ensure_ascii=True,
                       separators=(",", ":")) + "\n").encode("ascii")


def no_duplicates(pairs):
    result = {}
    for key, value in pairs:
        require(key not in result, "duplicate JSON key: " + key)
        result[key] = value
    return result


def decoded(data):
    try:
        return json.loads(data.decode("utf-8"), object_pairs_hook=no_duplicates)
    except (UnicodeError, json.JSONDecodeError) as error:
        raise CacheError("invalid UTF-8 JSON") from error


def safe_relative(value):
    return (isinstance(value, str) and bool(value) and "\\" not in value
            and "\x00" not in value and not value.startswith("/")
            and all(p not in {"", ".", "..", ".git"} for p in value.split("/")))


def source_path(value):
    return safe_relative(value) and (value == "GRWTSK.lean" or
           value.startswith("GRWTSK/") and value.endswith(".lean"))


def physical_path(value):
    """Check every existing ancestor; resolving a symlink would hide a defect."""
    path = Path(os.path.abspath(os.path.expanduser(str(value))))
    cursor = Path(path.anchor)
    for part in path.parts[1:]:
        cursor /= part
        try:
            mode = cursor.lstat().st_mode
        except FileNotFoundError:
            continue
        require(not stat.S_ISLNK(mode), "symlink path/ancestor rejected: " + str(cursor))
    return path


def read_bytes(root, relative, optional=False):
    require(safe_relative(relative), "unsafe relative path")
    state, data = read_state(root, relative, retain=True)
    if optional and state["kind"] == "missing":
        return None
    require(state["kind"] == "file" and state.get("read_stable") is True
            and data is not None, "unsafe, missing, or unstable file: " + relative)
    require(len(data) <= MAX_BYTES, "file exceeds bounded cache input: " + relative)
    return data


def git(root, *args):
    result = subprocess.run(["git", "-C", str(root), *args],
                            env=dict(os.environ, GIT_OPTIONAL_LOCKS="0"),
                            capture_output=True, timeout=60)
    require(result.returncode == 0, "git " + args[0] + " failed")
    return result.stdout


def universe(root):
    require(not git(root, "ls-files", "--unmerged", "-z"),
            "unmerged Git index; preserve conflicts before snapshot")
    names = set()
    for options in (("--cached",), ("--others", "--exclude-standard")):
        for raw in git(root, "ls-files", "-z", *options).split(b"\0"):
            if raw:
                try:
                    rel = raw.decode("utf-8")
                except UnicodeError as error:
                    raise CacheError("non-UTF-8 Git path") from error
                if rel == "GRWTSK.lean" or rel.startswith("GRWTSK/") and rel.endswith(".lean"):
                    require(source_path(rel), "unsafe selected source path")
                    names.add(rel)
    require(names, "empty source universe rejected")
    return sorted(names)


def context_paths(root):
    paths = set(CONTEXT)
    for options in (("--cached",), ("--others", "--exclude-standard")):
        for raw in git(root, "ls-files", "-z", *options, "--", "LICENSES").split(b"\0"):
            if raw:
                try:
                    rel = raw.decode("utf-8")
                except UnicodeError as error:
                    raise CacheError("non-UTF-8 license context path") from error
                if rel.startswith("LICENSES/") and rel.endswith(".txt"):
                    require(safe_relative(rel), "unsafe license context path")
                    paths.add(rel)
    return sorted(paths)


def imports(raw):
    """Scan ordinary Lean import headers; fail closed on unsupported tokens.

    Nested comments and strings are masked by monitor_math. The pinned Lean
    Parser/Module/Syntax.lean defines [public] [meta] import [all] moduleName.
    Whitespace may cross lines. Quoted/escaped module names are deliberately
    unsupported and rejected. Edges cover explicit imports, not implicit Init.
    No graph edge certifies elaboration or acceptance.
    """
    try:
        code = lean_code(raw.decode("utf-8"))
    except UnicodeError as error:
        raise CacheError("non-UTF-8 Lean source") from error
    result, pos = [], 0
    for keyword in ("module", "prelude"):
        match = re.match(r"\s*" + keyword + r"(?=\s|$)", code[pos:])
        if match:
            pos += match.end()
    header = re.compile(r"\s*(?:public\s+)?(?:meta\s+)?import\s+(?:all\s+)?([^\s]+)")
    while True:
        match = header.match(code, pos)
        if not match:
            break
        name = match[1]
        require(MODULE.fullmatch(name) and name not in {"import", "public", "private", "meta", "all"},
                "unsupported import syntax")
        result.append(name)
        pos = match.end()
    require(not re.search(r"\bimport\b", code[pos:]), "unsupported non-header import")
    return sorted(set(result))


def module_of(path):
    return path[:-5].replace("/", ".")


def source_id(path):
    return "source:" + path


def catalog_entries(catalog_bytes):
    """Bindings are facts about records, independently of current-byte freshness."""
    found = {}
    layout_raw = catalog_bytes.get(CATALOGS[0])
    if layout_raw is not None:
        layout = decoded(layout_raw)
        require(isinstance(layout, dict), "invalid layout catalog")
        for key in ("active_sources", "candidate_sources"):
            entries = layout.get(key, [])
            require(isinstance(entries, list), "invalid layout source list")
            for entry in entries:
                require(isinstance(entry, dict) and source_path(entry.get("path")),
                        "invalid catalog source path")
                path = entry["path"]
                require(path not in found, "duplicate role catalog path: " + path)
                role = "candidate-source-only" if key == "candidate_sources" else entry.get("source_role")
                require(role in ROLES, "unknown source role: " + path)
                found[path] = {"role": role, "subject": entry.get("subject"),
                               "object": entry.get("object"), "bindings": [{
                                   "catalog": CATALOGS[0], "section": key,
                                   "entry_sha256": digest(encoded(entry)),
                                   "declared_status": entry.get("status", entry.get("logical_status")),
                                   "declared_verification": entry.get("verification"),
                                   "recorded_source_sha256": entry.get("sha256")} ]}
    intake_raw = catalog_bytes.get(CATALOGS[1])
    if intake_raw is not None:
        intake = decoded(intake_raw)
        require(isinstance(intake, dict) and isinstance(intake.get("sources", []), list),
                "invalid intake catalog")
        seen = set()
        for entry in intake.get("sources", []):
            require(isinstance(entry, dict) and source_path(entry.get("path")), "invalid intake path")
            path = entry["path"]
            require(path not in seen, "duplicate intake path")
            seen.add(path)
            if path not in found:
                found[path] = {"role": "candidate-source-only", "subject": None,
                               "object": None, "bindings": []}
            found[path]["bindings"].append({"catalog": CATALOGS[1], "section": "sources",
                                              "entry_sha256": digest(encoded(entry)),
                                              "declared_status": entry.get("status", entry.get("logical_status")),
                                              "declared_verification": entry.get("verification"),
                                              "recorded_source_sha256": entry.get("sha256")})
    return found


def placement(path):
    if path == "GRWTSK.lean":
        return "Library", "Umbrella"
    parts = PurePosixPath(path).parts[1:]
    return parts[0], parts[1] if len(parts) > 2 else Path(parts[-1]).stem


def role_record(path, raw_hash, bindings):
    subject, obj = placement(path)
    known = bindings.get(path)
    role = known["role"] if known else "candidate-source-only"
    # A control cannot become a library merely because a catalog says so.
    parts = PurePosixPath(path).parts
    if "Checks" in parts:
        pos = parts.index("Checks")
        expected = ({"Positive": "positive-check", "Negative": "negative-control"}
                    .get(parts[pos + 1], "audit-driver") if pos + 1 < len(parts) else "audit-driver")
        require(role in {expected, "candidate-source-only"}, "source role/path isolation failure: " + path)
    refs = [dict(item, binding_freshness="matches-observed-bytes" if item["recorded_source_sha256"] == raw_hash
                 else "stale-or-unbound") for item in known["bindings"]] if known else []
    matching = sum(item["recorded_source_sha256"] == raw_hash for item in refs)
    return {"source_role": role, "subject": known.get("subject") or subject if known else subject,
            "object": known.get("object") or obj if known else obj,
            "role_bindings": refs,
            "role_binding_status": ("mixed-recorded-source" if 0 < matching < len(refs)
                else "matches-recorded-source" if matching
                else "stale-recorded-source" if refs else "uncataloged-candidate"),
            "proof_status": PROOF, "mathematical_acceptance": False}


@contextmanager
def directory(base, relative="", create=False):
    """Hold no-follow descriptors throughout each write operation."""
    require(not relative or safe_relative(relative), "unsafe cache directory")
    descriptors = []
    try:
        fd = os.open(base, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
        descriptors.append(fd)
        for part in relative.split("/") if relative else []:
            if create:
                try:
                    os.mkdir(part, dir_fd=fd)
                except FileExistsError:
                    pass
            fd = os.open(part, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW, dir_fd=fd)
            descriptors.append(fd)
        yield fd
    except OSError as error:
        raise CacheError("unsafe or unavailable directory") from error
    finally:
        for fd in reversed(descriptors):
            os.close(fd)


def immutable_write(root, relative, data, allow_identical=True):
    require(safe_relative(relative), "unsafe immutable path")
    parent, name = str(PurePosixPath(relative).parent), PurePosixPath(relative).name
    with directory(root, "" if parent == "." else parent, create=True) as fd:
        try:
            out = os.open(name, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW,
                          0o644, dir_fd=fd)
        except FileExistsError:
            require(allow_identical, "destination file already exists: " + relative)
            require(read_bytes(root, relative) == data, "immutable object collision/corruption: " + relative)
            return
        with os.fdopen(out, "wb") as stream:
            stream.write(data)
            stream.flush()
            os.fsync(stream.fileno())
        os.fsync(fd)


def blob_path(raw_hash):
    require(isinstance(raw_hash, str) and HASH.fullmatch(raw_hash), "invalid blob identity")
    return "cache/objects/" + raw_hash[:2] + "/" + raw_hash + ".zlib"


def store_blob(root, raw):
    packed = zlib.compress(raw, 9)
    identity = digest(raw)
    immutable_write(root, blob_path(identity), packed)
    return {"raw_sha256": identity, "raw_bytes": len(raw),
            "compressed_sha256": digest(packed), "compressed_bytes": len(packed),
            "compression": "zlib"}


def load_blob(root, metadata):
    require(isinstance(metadata, dict) and metadata.get("compression") == "zlib", "invalid blob metadata")
    for key in ("raw_bytes", "compressed_bytes"):
        require(type(metadata.get(key)) is int and 0 <= metadata[key] <= MAX_BYTES, "invalid blob length")
    require(isinstance(metadata.get("compressed_sha256"), str)
            and HASH.fullmatch(metadata["compressed_sha256"]), "invalid compressed hash")
    packed = read_bytes(root, blob_path(metadata.get("raw_sha256")))
    require(len(packed) == metadata["compressed_bytes"] and digest(packed) == metadata["compressed_sha256"],
            "compressed object corrupt")
    try:
        decoder = zlib.decompressobj()
        raw = decoder.decompress(packed, metadata["raw_bytes"] + 1)
        require(decoder.eof and not decoder.unused_data and not decoder.unconsumed_tail,
                "truncated, trailing, or oversized compressed data")
    except zlib.error as error:
        raise CacheError("invalid compressed object") from error
    require(len(raw) == metadata["raw_bytes"] and digest(raw) == metadata["raw_sha256"],
            "raw object corrupt")
    return raw


def manifest_path(revision):
    require(isinstance(revision, str) and HASH.fullmatch(revision), "invalid revision identity")
    return "cache/manifests/" + revision + ".json"


def current(root):
    raw = read_bytes(root, "cache/refs/current.json", optional=True)
    if raw is None:
        return None
    ref = decoded(raw)
    require(isinstance(ref, dict) and set(ref) == {"schema", "revision"}
            and ref["schema"] == REF_SCHEMA and isinstance(ref["revision"], str)
            and HASH.fullmatch(ref["revision"]), "invalid current ref")
    return ref["revision"]


def reverse_closure(dependencies, changed):
    reverse = {node: set() for node in dependencies}
    for consumer, prerequisites in dependencies.items():
        for prerequisite in prerequisites:
            reverse.setdefault(prerequisite, set()).add(consumer)
    reached, pending = set(changed), list(changed)
    while pending:
        for consumer in reverse.get(pending.pop(), ()):
            if consumer not in reached:
                reached.add(consumer)
                pending.append(consumer)
    return sorted(reached)


def revision_effect(old, new):
    before = {r["path"]: r for r in old["sources"]} if old else {}
    after = {r["path"]: r for r in new["sources"]}
    changed = sorted(p for p in before.keys() | after.keys() if before.get(p) != after.get(p))
    dependencies = {}
    for manifest in (old, new):
        for row in manifest["sources"] if manifest else []:
            dependencies.setdefault(row["path"], set()).update(row["dependencies"])
    old_context = {entry["path"]: entry["blob"]["raw_sha256"] for entry in old["context_files"]} if old else {}
    new_context = {entry["path"]: entry["blob"]["raw_sha256"] for entry in new["context_files"]}
    changed_context = sorted(path for path in old_context.keys() | new_context.keys()
                             if old_context.get(path) != new_context.get(path))
    seeds = set(changed) | (before.keys() | after.keys() if changed_context else set())
    return {"changed_sources": changed,
            "changed_context_files": changed_context,
            "invalidation_seeds": sorted(seeds),
            "invalidated_sources": reverse_closure(dependencies, seeds),
            "receipt_policy": "Prior receipts retained in place; affected claims require replay; no acceptance propagated."}


def capture(root):
    head = git(root, "rev-parse", "--verify", "HEAD").decode("ascii").strip()
    paths = universe(root)
    raw_sources = {path: read_bytes(root, path) for path in paths}
    raw_catalogs = {path: read_bytes(root, path, optional=True) for path in CATALOGS}
    raw_catalogs = {path: raw for path, raw in raw_catalogs.items() if raw is not None}
    raw_context = {path: read_bytes(root, path, optional=True) for path in context_paths(root)}
    raw_context = {path: raw for path, raw in raw_context.items() if raw is not None}
    return head, raw_sources, raw_catalogs, raw_context


def build_manifest(root, frozen, parent):
    head, raw_sources, raw_catalogs, raw_context = frozen
    bindings, rows = catalog_entries(raw_catalogs), []
    modules = {module_of(path): path for path in raw_sources}
    require(len(modules) == len(raw_sources), "duplicate module identity")
    for path, raw in sorted(raw_sources.items()):
        names = imports(raw)
        missing = [name for name in names if (name == "GRWTSK" or name.startswith("GRWTSK."))
                   and name not in modules]
        require(not missing, "missing selected local imports in " + path + ": " + ", ".join(missing))
        row = {"id": source_id(path), "path": path, "module": module_of(path),
               "blob": store_blob(root, raw), "imports": names,
               "dependencies": sorted(modules[name] for name in names if name in modules),
               "external_imports": [name for name in names if name not in modules]}
        row.update(role_record(path, digest(raw), bindings))
        rows.append(row)
    manifest = {"schema": SCHEMA, "scope": SCOPE, "observed_head": head, "parent": parent,
            "sources": rows, "source_count": len(rows),
            "source_inventory": [{"id": row["id"], "path": row["path"],
                                  "raw_sha256": row["blob"]["raw_sha256"]} for row in rows],
            "catalogs": [{"path": path, "blob": store_blob(root, raw)}
                         for path, raw in sorted(raw_catalogs.items())],
            "context_files": [{"path": path, "blob": store_blob(root, raw)}
                              for path, raw in sorted(raw_context.items())],
            "proof_status": PROOF, "mathematical_acceptance": False,
            "limits": ["Lexical import inventory is not elaboration or proof replay.",
                       "Toolchain/build/license context is preserved when present; external package bytes and .lake artifacts are not included.",
                       "SHA256 is byte-identity bookkeeping; injectivity is not proved.",
                       "No receipt is erased, refreshed, or promoted by cache operations.",
                       "A cooperating cache-writer lock and immediate full readback detect observed drift; source edits are not globally locked."]}
    manifest["metadata_findings"] = metadata_findings(rows, bindings)
    return manifest


def metadata_findings(rows, bindings):
    result, present = [], {row["path"] for row in rows}
    for row in rows:
        if not row["role_bindings"]:
            result.append({"kind": "uncataloged-candidate", "path": row["path"]})
        for binding in row["role_bindings"]:
            if binding["binding_freshness"] != "matches-observed-bytes":
                result.append({"kind": "stale-or-unbound-catalog-record", "path": row["path"],
                               "catalog": binding["catalog"],
                               "recorded_source_sha256": binding["recorded_source_sha256"],
                               "observed_source_sha256": row["blob"]["raw_sha256"]})
    for path in sorted(bindings.keys() - present):
        result.append({"kind": "catalog-source-outside-current-universe", "path": path})
    return result


def validate_manifest(root, manifest):
    require(isinstance(manifest, dict) and manifest.get("schema") == SCHEMA
            and manifest.get("scope") == SCOPE, "unknown cache schema/scope")
    require(manifest.get("proof_status") == PROOF and manifest.get("mathematical_acceptance") is False,
            "cache cannot promote proof status")
    parent = manifest.get("parent")
    require(parent is None or isinstance(parent, str) and HASH.fullmatch(parent), "invalid parent revision")
    require(isinstance(manifest.get("observed_head"), str)
            and re.fullmatch(r"[0-9a-f]{40,64}", manifest["observed_head"]), "invalid observed HEAD")
    rows = manifest.get("sources")
    require(isinstance(rows, list) and rows and type(manifest.get("source_count")) is int
            and manifest["source_count"] == len(rows), "empty/invalid source inventory")
    paths, identities, raws, catalogs, context = set(), set(), {}, {}, {}
    require(isinstance(manifest.get("catalogs"), list), "missing catalog bindings")
    for entry in manifest["catalogs"]:
        require(isinstance(entry, dict) and entry.get("path") in CATALOGS
                and entry["path"] not in catalogs, "invalid/duplicate catalog")
        catalogs[entry["path"]] = load_blob(root, entry.get("blob"))
    bindings = catalog_entries(catalogs)
    require(isinstance(manifest.get("context_files"), list), "missing build/license context section")
    for entry in manifest["context_files"]:
        path = entry.get("path") if isinstance(entry, dict) else None
        require(safe_relative(path) and (path in CONTEXT or path.startswith("LICENSES/") and path.endswith(".txt"))
                and path not in context, "invalid/duplicate build/license context path")
        context[path] = load_blob(root, entry.get("blob"))
    require([entry["path"] for entry in manifest["context_files"]] == sorted(context), "context order not canonical")
    for row in rows:
        require(isinstance(row, dict) and source_path(row.get("path")), "unsafe source path")
        path = row["path"]
        require(path not in paths, "duplicate source path")
        require(row.get("id") == source_id(path) and row["id"] not in identities, "duplicate/incorrect source identity")
        require(row.get("module") == module_of(path), "incorrect module identity")
        paths.add(path)
        identities.add(row["id"])
        raw = load_blob(root, row.get("blob"))
        raws[path] = raw
        expected_role = role_record(path, digest(raw), bindings)
        require(all(row.get(k) == value for k, value in expected_role.items()), "source role/status binding mismatch")
    require([r["path"] for r in rows] == sorted(paths), "source order not canonical")
    inventory = [{"id": row["id"], "path": row["path"],
                  "raw_sha256": row["blob"]["raw_sha256"]} for row in rows]
    require(manifest.get("source_inventory") == inventory, "exact source identity coverage mismatch")
    modules = {module_of(path): path for path in paths}
    for row in rows:
        names = imports(raws[row["path"]])
        require(row.get("imports") == names, "incomplete/incorrect import inventory")
        require(not any((n == "GRWTSK" or n.startswith("GRWTSK.")) and n not in modules for n in names),
                "missing selected local import")
        require(row.get("dependencies") == sorted(modules[n] for n in names if n in modules),
                "incomplete/incorrect dependency edges")
        require(row.get("external_imports") == [n for n in names if n not in modules], "incorrect external imports")
    require(manifest.get("metadata_findings") == metadata_findings(rows, bindings),
            "metadata findings do not match preserved observations")
    return raws, catalogs, context


def load_manifest(root, revision):
    raw = read_bytes(root, manifest_path(revision))
    require(digest(raw) == revision, "manifest content identity mismatch")
    result = decoded(raw)
    require(encoded(result) == raw, "manifest is not canonical JSON")
    validate_manifest(root, result)
    return result


def verify(root, revision=None, live=False):
    root = physical_path(root)
    revision = revision or current(root)
    require(revision is not None, "no current revision")
    result = load_manifest(root, revision)
    # Validate the entire parent chain and exact invalidation records, retaining
    # historical manifests even when the live checkout has changed.
    seen, child = set(), result
    while True:
        require(revision not in seen, "cyclic revision history")
        seen.add(revision)
        previous = load_manifest(root, child["parent"]) if child["parent"] else None
        require(child.get("revision_effect") == revision_effect(previous, child), "incorrect revision invalidation")
        if previous is None:
            break
        revision, child = child["parent"], previous
    if live:
        head, raw_sources, raw_catalogs, raw_context = capture(root)
        stored_sources, stored_catalogs, stored_context = validate_manifest(root, result)
        require(raw_sources == stored_sources
                and raw_catalogs == stored_catalogs and raw_context == stored_context,
                "live source/catalog/context drift")
    return result


@contextmanager
def ref_lock(root):
    with directory(root, "cache/refs", create=True) as fd:
        try:
            lock = os.open("write.lock", os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW,
                           0o600, dir_fd=fd)
        except FileExistsError as error:
            raise CacheError("cache ref locked; retain lock for its owner") from error
        identity = os.fstat(lock)
        try:
            os.write(lock, str(os.getpid()).encode("ascii"))
            os.fsync(lock)
            yield fd
        finally:
            os.close(lock)
            try:
                remaining = os.stat("write.lock", dir_fd=fd, follow_symlinks=False)
                if (remaining.st_dev, remaining.st_ino) == (identity.st_dev, identity.st_ino):
                    os.unlink("write.lock", dir_fd=fd)
            except FileNotFoundError:
                pass


def attempt(root, status, parent, revision=None, error=None):
    value = {"schema": "mathematical-source-cache-attempt-v1", "status": status,
             "created_at": dt.datetime.now(dt.timezone.utc).isoformat(), "parent": parent,
             "revision": revision, "error": error, "proof_status": PROOF}
    name = "cache/attempts/" + uuid.uuid4().hex + ".json"
    immutable_write(root, name, encoded(value), allow_identical=False)
    return name


def snapshot(root, expected=AUTO, before_commit=None, require_parent=False):
    """Freeze -> encode -> readback -> CAS. Test hook is not exposed in CLI."""
    root = physical_path(root)
    parent, revision = None, None
    try:
        parent = current(root)
        require(expected is AUTO or expected == parent, "stale expected revision")
        require(not require_parent or parent is not None, "revise requires a current revision")
        previous = verify(root, parent) if parent else None
        frozen = capture(root)
        manifest = build_manifest(root, frozen, parent)
        manifest["revision_effect"] = revision_effect(previous, manifest)
        raw = encoded(manifest)
        revision = digest(raw)
        immutable_write(root, manifest_path(revision), raw)
        validate_manifest(root, manifest)
        if before_commit:
            before_commit()
        with ref_lock(root) as fd:
            require(current(root) == parent, "stale current revision at CAS")
            # The lock serializes cache writers, not source editors. Compare
            # all selected bytes, exact identities, catalogs and HEAD again.
            require(capture(root) == frozen, "source/catalog/HEAD drift before ref advancement")
            old_ref = read_bytes(root, "cache/refs/current.json", optional=True)
            if parent:
                immutable_write(root, "cache/refs/history/" + parent + ".json", old_ref)
            temp = ".current-" + uuid.uuid4().hex + ".tmp"
            out = os.open(temp, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW, 0o644, dir_fd=fd)
            with os.fdopen(out, "wb") as stream:
                stream.write(encoded({"schema": REF_SCHEMA, "revision": revision}))
                stream.flush()
                os.fsync(stream.fileno())
            require(capture(root) == frozen, "source/catalog/HEAD drift immediately before replacement")
            require(current(root) == parent, "stale current revision immediately before replacement")
            os.replace(temp, "current.json", src_dir_fd=fd, dst_dir_fd=fd)
            os.fsync(fd)
            require(current(root) == revision, "ref directory replaced concurrently")
        receipt = attempt(root, "stored-unreplayed", parent, revision)
        return {"revision": revision, "parent": parent, "source_count": manifest["source_count"],
                "catalog_file_count": len(manifest["catalogs"]),
                "context_file_count": len(manifest["context_files"]),
                "metadata_finding_count": len(manifest["metadata_findings"]),
                "proof_status": PROOF, "attempt": receipt,
                "revision_effect": manifest["revision_effect"]}
    except (CacheError, OSError, subprocess.SubprocessError) as error:
        # A failed operation retains objects, candidate manifests and old refs.
        # Failure recording is best-effort if even cache directories are unsafe.
        try:
            attempt(root, "failed", parent, revision, str(error))
        except (CacheError, OSError):
            pass
        if isinstance(error, CacheError):
            raise
        raise CacheError(str(error)) from error


def status(root):
    root = physical_path(root)
    revision = current(root)
    if revision is None:
        return {"revision": None, "proof_status": PROOF}
    manifest = verify(root, revision)
    head, live_sources, live_catalogs, live_context = capture(root)
    stored_sources, stored_catalogs, stored_context = validate_manifest(root, manifest)
    changed = sorted(p for p in live_sources.keys() | stored_sources.keys()
                     if live_sources.get(p) != stored_sources.get(p))
    graph = {r["path"]: r["dependencies"] for r in manifest["sources"]}
    modules = {module_of(path): path for path in live_sources.keys() | stored_sources.keys()}
    for path, raw in live_sources.items():
        graph[path] = sorted(set(graph.get(path, [])) | {
            modules[name] for name in imports(raw) if name in modules})
    seeds = set(changed) | (live_sources.keys() | stored_sources.keys()
                            if live_context != stored_context else set())
    return {"revision": revision, "source_count": manifest["source_count"],
            "changed_sources": changed, "invalidated_sources": reverse_closure(graph, seeds),
            "metadata_finding_count": len(manifest["metadata_findings"]),
            "catalog_drift": live_catalogs != stored_catalogs,
            "context_drift": live_context != stored_context,
            "head_drift": head != manifest["observed_head"], "proof_status": PROOF}


def expand(root, destination, revision=None):
    root, destination = physical_path(root), physical_path(destination)
    require(root != destination and root not in destination.parents and destination not in root.parents,
            "expansion destination must be outside the live repository")
    manifest = verify(root, revision)
    raws, catalogs, context = validate_manifest(root, manifest)
    all_files = dict(raws, **catalogs, **context)
    destination.parent.mkdir(parents=True, exist_ok=True)
    physical_path(destination)
    try:
        destination.mkdir()
    except FileExistsError:
        pass
    with directory(destination) as fd:
        require(not os.listdir(fd), "expansion destination is not empty")
        identity = os.fstat(fd)
        for path, raw in sorted(all_files.items()):
            current_stat = destination.lstat()
            require((current_stat.st_dev, current_stat.st_ino) == (identity.st_dev, identity.st_ino),
                    "expansion destination replaced concurrently")
            immutable_write(destination, path, raw, allow_identical=False)
        require(set(p.relative_to(destination).as_posix() for p in destination.rglob("*.lean")) == set(raws),
                "concurrent source added during expansion")
        for path, raw in all_files.items():
            require(read_bytes(destination, path) == raw, "expanded bytes changed concurrently")
    return {"destination": str(destination), "source_count": len(raws),
            "catalog_file_count": len(catalogs), "context_file_count": len(context),
            "proof_status": PROOF}


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[1])
    subs = parser.add_subparsers(dest="command", required=True)
    for name in ("snapshot", "revise"):
        command = subs.add_parser(name)
        command.add_argument("--expected", help="expected parent digest, or 'none'; omission captures current ref")
    check = subs.add_parser("verify")
    check.add_argument("--revision")
    check.add_argument("--live", action="store_true")
    subs.add_parser("status")
    command = subs.add_parser("expand")
    command.add_argument("destination", type=Path)
    command.add_argument("--revision")
    args = parser.parse_args(argv)
    try:
        if args.command in {"snapshot", "revise"}:
            expected = AUTO if args.expected is None else None if args.expected == "none" else args.expected
            require(expected is AUTO or expected is None or bool(HASH.fullmatch(expected)), "invalid expected revision")
            result = snapshot(args.root, expected, require_parent=args.command == "revise")
        elif args.command == "verify":
            manifest = verify(args.root, args.revision, args.live)
            result = {"status": "byte-custody-verified", "source_count": manifest["source_count"],
                      "catalog_file_count": len(manifest["catalogs"]),
                      "context_file_count": len(manifest["context_files"]),
                      "metadata_finding_count": len(manifest["metadata_findings"]),
                      "proof_status": PROOF, "mathematical_acceptance": False, "live": args.live}
            if args.live:
                result["head_observation_changed"] = (git(args.root, "rev-parse", "--verify", "HEAD")
                                                       .decode("ascii").strip() != manifest["observed_head"])
        elif args.command == "status":
            result = status(args.root)
        else:
            result = expand(args.root, args.destination, args.revision)
    except (CacheError, OSError, subprocess.SubprocessError) as error:
        print(json.dumps({"error": str(error), "proof_status": PROOF}), file=sys.stderr)
        return 1
    print(json.dumps(result, sort_keys=True, indent=2))
    return 0


if __name__ == "__main__":
    sys.exit(main())
