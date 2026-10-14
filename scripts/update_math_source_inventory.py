#!/usr/bin/env python3
"""Refresh current source facts in the authoritative mathematical layout index.

Historical migration entries are append-only. This command updates only the
current inventory, role membership, current hashes, and generated catalog.
"""

from collections import Counter, defaultdict
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import re
import runpy
import stat
import subprocess


ROOT = Path(__file__).resolve().parents[1]
LAYOUT_PATH = ROOT / "docs/math-layout.json"
CATALOG_PATH = ROOT / "docs/reference/math-source-catalog.json"
MIGRATION_VERIFICATION = ROOT / "evidence/lean-consolidation-2026-10-14.json"
CURRENT_VERIFICATION = ROOT / "evidence/lean-consolidation-rigor-post-merge-2026-10-14.json"
SOURCE_INTAKE = ROOT / "evidence/source-intake.json"
CANDIDATE_STATUS = "CANDIDATE_SOURCE_ONLY"
GENERATED_VIEWS = {
    CATALOG_PATH,
    ROOT / "docs/reference/results.md",
    ROOT / "docs/reference/repository-artifact-catalog.json",
}
DECLARATION = re.compile(
    r"^\s*(?:(private|protected)\s+)?(?:(?:noncomputable|unsafe|partial)\s+)*"
    r"(theorem|lemma|def|abbrev|opaque|axiom|instance|structure|class|inductive)"
    r"\s+([^\s:{(\[]+)", re.M)
NAMESPACE = re.compile(r"^\s*namespace\s+([^\s]+)", re.M)

# Append-only follow-up to the byte-preserving move records.  These sources had
# a malformed multi-module import command at the inspected bytes.  Splitting
# that command into one import per line changed only the recorded byte range;
# it did not change declarations.  The original move records remain unchanged.
IMPORT_NORMALIZATION = {
    "GRWTSK/Analysis/Energy/Checks/Negative/DeterminantPaysBudget.lean": ("a5f04442fd6bd458516ef6352ee81cdcb8309233cf950064b91c5ea3bd628ae1", "987d693985aa2c6fb3838baaa586d7170a3f2288fb7533f29afdf7985d202d66", "energy"),
    "GRWTSK/Analysis/Energy/Checks/Negative/DroppedResidual.lean": ("ca51b91a3f24b42ab16994c0ba60fe1f3c89def07c430de1a42bc52ff85bd431", "340861a9ab734d68b26c48200d4eaa30cfc540641ba57fa809c7fc265ab86b5d", "energy"),
    "GRWTSK/Analysis/Energy/Checks/Negative/FiniteSamples.lean": ("6229167a3bcf9fab9e089e00060bb82f7e5fe70e82f64726baaa2c5fc3834a48", "154a84bc8494bda116616878060fa9445942e4198f2b76356fcaf1d9a7c0076a", "energy"),
    "GRWTSK/Analysis/Energy/Checks/Negative/MissingBudget.lean": ("27074be334ec757d2879ef516a24546b1b343e568fb0bc4deeae00b613934054", "c45843b3e4b9789537c1ec78dab070630df4014ed29742e8ccc1d6f4defa7c90", "energy"),
    "GRWTSK/Analysis/Energy/Checks/Negative/SingleRate.lean": ("35bac676d435826dc20ee8876ef915920bf85c11af0e0dc46d5010cc934088ab", "25a94810150ea7a4176ffde2573304846b30236bff0e91e2483de3698adaff84", "energy"),
    "GRWTSK/Analysis/Energy/Checks/Declarations.lean": ("8376ac0c9f809d888165da1f159eab65b3ce402664c71585aee1a614d9613738", "f4a132fe1e3cd1c88be8cf3af8ff815303b413488f30e7e4c641b63d1966ef67", "energy"),
    "GRWTSK/Analysis/Fourier/Checks/Audit.lean": ("59bbc85f31ff3e12ccd04fe9caa7f03fa379c9abf086da3d61b31471937c93fa", "6882ba24f7b252bf1a47ee28318e9a73745a90a430bc93f1d66c2cea23b50b30", "fourier"),
    "GRWTSK/Analysis/Fourier/Checks/Negative/FalseAlias.lean": ("dd34dac4098d104fdf6565e57eb489069b7bb69fd666b428dbf7b66a5388de26", "0a7c9c9a5c59e999ff057598fb92bd81d081999b1006a58edfa03a09913ab21d", "fourier"),
    "GRWTSK/Analysis/Fourier/Checks/Negative/FalseRounding.lean": ("a7dfa57ad91a7139744a5d3d3351d1de6a526ea0e1a7fa5fc1ebe43d4974f844", "7c091cfd07b15d1521a8773b7b399e2578e65833c038ac0469b2c117a712d79d", "fourier"),
    "GRWTSK/Analysis/Fourier/Checks/Negative/FalseTraceBound.lean": ("7d5156f0e177369d703859240185062e4e05a83e1fe3932dde84040f82a52fba", "ac8ca4b886975546124e4bae466c951599e5ffed4a3c68e3f50491403bfa7db5", "fourier"),
    "GRWTSK/Analysis/Fourier/Checks/Negative/MissingReturn.lean": ("7118c88504969b8a77b61c66329c4e53b91e6b1aecb4e8b22cdb3f5d173aa718", "2a5504aaa73f08720c870999ce5444afe59aaa67af1219732afa6722d6140563", "fourier"),
    "GRWTSK/Analysis/Fourier/Checks/Negative/WrongAngular.lean": ("efa4886ea1f8a43df1678ac5299afd0b75979d3b60e987c0ccca71796e6ef503", "3484f4d821ac452a2c9a6db59e535a86f12746e2085ece7d8a34caf5cdc7bf35", "fourier"),
    "GRWTSK/Logic/ProofChecking/Checks/LibraryDeclarations.lean": ("5268ba9b369da4379e222ab02f913bf3557f29a6249d90f0d7254f5907424dc8", "6755adf530da86bdd362fe22a66baf81a088523c1b28bd1da0a49a6eeb41d960", "library-declarations"),
    "GRWTSK/NumberTheory/ContinuedFractions/Checks/SequenceRealizationAudit.lean": ("2f52b4d8c05054a7aab174963f9771c1ca831e4d65f1349a07bfddb69aa70f50", "4e7eabf1ad20ce01001965a12c215cbdfdf9c86ef70296c8342094ec43045b6b", "sequence"),
    "GRWTSK/Analysis/Fourier/WindowCertificates/Checks/Negative/FalseAlias.lean": ("dd34dac4098d104fdf6565e57eb489069b7bb69fd666b428dbf7b66a5388de26", "0a7c9c9a5c59e999ff057598fb92bd81d081999b1006a58edfa03a09913ab21d", "fourier"),
    "GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy/Checks/Negative/FalseRounding.lean": ("a7dfa57ad91a7139744a5d3d3351d1de6a526ea0e1a7fa5fc1ebe43d4974f844", "7c091cfd07b15d1521a8773b7b399e2578e65833c038ac0469b2c117a712d79d", "fourier"),
    "GRWTSK/LinearAlgebra/Schrodinger/Sampling/Checks/Negative/FalseTraceBound.lean": ("7d5156f0e177369d703859240185062e4e05a83e1fe3932dde84040f82a52fba", "ac8ca4b886975546124e4bae466c951599e5ffed4a3c68e3f50491403bfa7db5", "fourier"),
    "GRWTSK/Analysis/Asymptotics/PolynomialClosure/Checks/Negative/MissingReturn.lean": ("7118c88504969b8a77b61c66329c4e53b91e6b1aecb4e8b22cdb3f5d173aa718", "2a5504aaa73f08720c870999ce5444afe59aaa67af1219732afa6722d6140563", "fourier"),
    "GRWTSK/Analysis/Fourier/Parseval/Checks/Negative/WrongAngular.lean": ("efa4886ea1f8a43df1678ac5299afd0b75979d3b60e987c0ccca71796e6ef503", "3484f4d821ac452a2c9a6db59e535a86f12746e2085ece7d8a34caf5cdc7bf35", "fourier"),
}

IMPORT_RANGES = {
    "energy": {"old": [41, 301], "new": [41, 343], "old_sha256": "e2ace271ef12a1f2ca3487a83d3a530919e6f207671abf5435e61e3b7356d00f", "new_sha256": "000029f6cb11a1d3251e5aa54e42d74a6ae1e5e7b19649f589bafa8b2daa2469"},
    "fourier": {"old": [48, 134], "new": [48, 155], "old_sha256": "78191a6ecd99a1e1cc3cf835b250592aacf21613c6921f35cb38b7a77be719c2", "new_sha256": "d3d7da4a4006657cbb6344d0b190dc751646db291bf9afd466f5a01b475c331a"},
    "library-declarations": {"old": [261, 3434], "new": [261, 3847], "old_sha256": "aebf08417674ac89515afd5f202cee87755546caa08254dd960438ad09300d7c", "new_sha256": "cffb985132c780e356e96baf71102344b43936b4968676b5a46d16b367fb02dd"},
    "sequence": {"old": [66, 127], "new": [66, 141], "old_sha256": "db0b2883d191cc0837721ba6dbf9c2d61ebb13870f12817dd83492bb7b32d657", "new_sha256": "04044744d405b32c1dfa83e586ba87a3f1f00bab36020f180888cc1b64937f46"},
}


def command(*argv):
    return subprocess.check_output(argv, cwd=ROOT, text=True).strip()


def present_sources():
    raw = subprocess.check_output(
        ["git", "ls-files", "-z", "--cached", "--others", "--exclude-standard", "--", "*.lean"],
        cwd=ROOT,
    )
    return sorted({path for path in raw.decode("utf-8", "surrogateescape").split("\0") if path})


def consumer_corpus():
    files = []
    for base in (ROOT / "scripts", ROOT / "docs"):
        for path in base.rglob("*"):
            if (path.is_file() and path.suffix in {".py", ".json", ".md", ".toml", ".sh"}
                    and path != LAYOUT_PATH and path not in GENERATED_VIEWS
                    and "changes" not in path.parts):
                files.append(path)
    for relative in (
        "README.md", "AGENTS.md", "lakefile.toml", "lean-toolchain",
        "evidence/source-manifest.json", "evidence/ccc-control-soundness-source-manifest.json",
        "evidence/moebius-response-sources.json",
        "evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json",
    ):
        path = ROOT / relative
        if path.is_file():
            files.append(path)
    return {str(path.relative_to(ROOT)): path.read_text(errors="replace") for path in files}


def original_paths(layout):
    """Only this consolidation's role-bearing moves affect current operation state."""
    result = {}
    for entry in layout["migration"]:
        destinations = entry.get("mathematical_paths", [])
        if entry.get("operation") == "move" and entry.get("source_role") and len(destinations) == 1:
            result[destinations[0]["path"]] = entry["previous_path"]
    return result


def head_blobs():
    raw = subprocess.check_output(["git", "ls-tree", "-r", "-z", "HEAD"], cwd=ROOT)
    result = {}
    for record in raw.split(b"\0"):
        if not record:
            continue
        metadata, encoded = record.split(b"\t", 1)
        mode, kind, blob = metadata.split()
        if kind == b"blob":
            result[encoded.decode("utf-8", "surrogateescape")] = blob.decode("ascii")
    return result


def worktree_blob(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode("ascii") + b"\0" + data).hexdigest()


def receipt_replay_binding(layout, migration_verification):
    """Recover the exact per-source bytes covered by the retained replay.

    The migration receipt binds an earlier generated catalog.  Read that catalog
    only while its bytes still match the receipt, then persist the extracted
    source hashes in the layout.  A later refresh must not extend the old replay
    result to new or changed sources merely because the receipt says its former
    library set was complete.
    """
    if migration_verification is None:
        return None
    controls = layout.get("verification_controls", {})
    retained = controls.get("full_source_replay_binding")
    if isinstance(retained, dict):
        hashes = retained.get("source_hashes")
        if (retained.get("receipt") == str(MIGRATION_VERIFICATION.relative_to(ROOT))
                and isinstance(hashes, dict)
                and all(isinstance(path, str) and isinstance(digest, str)
                        and re.fullmatch(r"[0-9a-f]{64}", digest)
                        for path, digest in hashes.items())):
            return retained
    expected = migration_verification.get("bindings", {}).get(
        "generated_source_catalog_sha256")
    if not (isinstance(expected, str) and CATALOG_PATH.is_file()):
        return None
    catalog_bytes = CATALOG_PATH.read_bytes()
    if hashlib.sha256(catalog_bytes).hexdigest() != expected:
        return None
    catalog = json.loads(catalog_bytes)
    sources = catalog.get("sources")
    if not isinstance(sources, list):
        return None
    hashes = {}
    for source in sources:
        if not isinstance(source, dict) or source.get("source_role") != "library":
            continue
        path, digest = source.get("path"), source.get("sha256")
        if not (isinstance(path, str) and isinstance(digest, str)
                and re.fullmatch(r"[0-9a-f]{64}", digest)):
            return None
        hashes[path] = digest
    if not hashes:
        return None
    return {
        "receipt": str(MIGRATION_VERIFICATION.relative_to(ROOT)),
        "bound_catalog_sha256": expected,
        "source_count": len(hashes),
        "source_hashes": dict(sorted(hashes.items())),
        "scope": ("Historical per-source hashes from the receipt-bound catalog; "
                  "current status additionally requires exact local import-closure bytes."),
    }


def source_hash_digest(entries):
    mapping = {entry["path"]: entry["sha256"] for entry in entries}
    payload = json.dumps(mapping, ensure_ascii=True, sort_keys=True,
                         separators=(",", ":")).encode()
    return hashlib.sha256(payload).hexdigest()


def exact_candidate_intake(read_regular):
    """Return candidate-only records after validating their exact source bytes."""
    try:
        intake = json.loads(read_regular(ROOT, str(SOURCE_INTAKE.relative_to(ROOT))))
    except (OSError, UnicodeError, ValueError, json.JSONDecodeError) as error:
        raise SystemExit("invalid candidate source intake: " + str(error)) from error
    if intake.get("schema") != "mathematical-source-intake-v1":
        raise SystemExit("unsupported candidate source-intake schema")
    if intake.get("status") != "CANDIDATE_SOURCE_INTAKE_NOT_THEOREM_ACCEPTANCE":
        raise SystemExit("candidate source-intake status would broaden mathematical admission")
    records = intake.get("sources")
    if not isinstance(records, list) or intake.get("source_count") != len(records):
        raise SystemExit("candidate source-intake count/list mismatch")
    indexed = {}
    for position, entry in enumerate(records):
        if not isinstance(entry, dict) or not isinstance(entry.get("path"), str):
            raise SystemExit("candidate intake entry %d lacks a string path" % position)
        path = entry["path"]
        parts = PurePosixPath(path).parts
        if (PurePosixPath(path).is_absolute() or ".." in parts or ".git" in parts
                or len(parts) < 3 or parts[0] != "GRWTSK" or "Checks" in parts
                or not path.endswith(".lean")):
            raise SystemExit("invalid candidate-only source path: " + path)
        if path in indexed:
            raise SystemExit("duplicate candidate-only source path: " + path)
        digest, size = entry.get("sha256"), entry.get("bytes")
        if not isinstance(digest, str) or re.fullmatch(r"[0-9a-f]{64}", digest) is None:
            raise SystemExit("invalid candidate source SHA-256: " + path)
        if not isinstance(size, int) or isinstance(size, bool) or size < 0:
            raise SystemExit("invalid candidate source byte count: " + path)
        if entry.get("status") != CANDIDATE_STATUS:
            raise SystemExit("candidate source lost CANDIDATE_SOURCE_ONLY status: " + path)
        if entry.get("mathematical_admission") is not False:
            raise SystemExit("candidate source claims mathematical admission: " + path)
        if entry.get("public_release_eligible") is not False:
            raise SystemExit("candidate source claims public-release eligibility: " + path)
        indexed[path] = entry
    return indexed


def current_verification_binding(record, active, library):
    if record is None:
        return None
    if record.get("schema") != "grwtsk-lean-consolidation-rigor-receipt-v1":
        raise ValueError("unsupported current verification record schema")
    bindings = record.get("source_bindings")
    if not isinstance(bindings, dict) or bindings.get("canonicalization") != (
            "SHA-256 of UTF-8 canonical JSON object mapping path to source SHA-256; "
            "keys sorted, ensure_ascii=true, separators comma/colon"):
        raise ValueError("invalid current verification source-binding contract")
    for name, entries in (("all_active", active), ("library", library)):
        binding = bindings.get(name)
        if not isinstance(binding, dict) or binding.get("count") != len(entries):
            raise ValueError("current verification source count mismatch: " + name)
        if binding.get("sha256") != source_hash_digest(entries):
            raise ValueError("current verification source digest mismatch: " + name)
    replay = record.get("library_replay")
    if not isinstance(replay, dict) or replay.get("outcome") != "FAILED_AFTER_SOURCE_REPLAY":
        raise ValueError("current verification replay outcome is missing or malformed")
    if replay.get("library_sources_passed") != len(library):
        raise ValueError("current verification replay count mismatch")
    receipt_relative = replay.get("receipt")
    receipt_sha256 = replay.get("receipt_sha256")
    if not isinstance(receipt_relative, str) or not isinstance(receipt_sha256, str):
        raise ValueError("current verification replay receipt binding is missing")
    receipt_parts = PurePosixPath(receipt_relative).parts
    if (not receipt_parts or PurePosixPath(receipt_relative).is_absolute()
            or ".." in receipt_parts or "." in receipt_parts):
        raise ValueError("current verification replay receipt path is unsafe")
    receipt_path = ROOT / receipt_relative
    if receipt_path.is_symlink() or not receipt_path.is_file():
        raise ValueError("current verification replay receipt is unavailable")
    if hashlib.sha256(receipt_path.read_bytes()).hexdigest() != receipt_sha256:
        raise ValueError("current verification replay receipt digest mismatch")
    retained = json.loads(receipt_path.read_text())
    if (retained.get("status") != "FAILED"
            or retained.get("mode") != "all-project-replay"
            or retained.get("source_count") != len(library)):
        raise ValueError("current verification replay receipt has the wrong scope")
    library_paths = [entry["path"] for entry in library]
    library_modules = {entry["module"] for entry in library}
    snapshot = retained.get("snapshot")
    if (not isinstance(snapshot, dict)
            or snapshot.get("sources") != library_paths
            or snapshot.get("deleted_library_paths") != []):
        raise ValueError("current verification replay source inventory mismatch")
    snapshot_hashes = snapshot.get("sha256")
    if (not isinstance(snapshot_hashes, dict)
            or any(snapshot_hashes.get(entry["path"]) != entry["sha256"] for entry in library)):
        raise ValueError("current verification replay source bytes mismatch")
    module_order = retained.get("module_order")
    results = retained.get("results")
    if (not isinstance(module_order, list) or len(module_order) != len(library)
            or len(set(module_order)) != len(module_order)
            or set(module_order) != library_modules):
        raise ValueError("current verification replay module coverage mismatch")
    if (not isinstance(results, list) or len(results) != len(library) + 1
            or replay.get("source_result_count") != len(library)
            or replay.get("audit_result_count") != 1):
        raise ValueError("current verification replay result count mismatch")
    for module, result in zip(module_order, results[:len(library)]):
        if (not isinstance(result, dict) or result.get("name") != module
                or result.get("outcome") != "passed" or result.get("exit_code") != 0):
            raise ValueError("current verification source replay did not pass: " + module)
    audit_result = results[-1]
    if (not isinstance(audit_result, dict)
            or audit_result.get("name") != "AllProjectAudit"
            or audit_result.get("outcome") != "failed"
            or audit_result.get("exit_code") == 0):
        raise ValueError("current verification owned-declaration audit outcome mismatch")
    audit_log_relative = replay.get("audit_log")
    audit_log_sha256 = replay.get("audit_log_sha256")
    audit_findings = replay.get("audit_findings")
    if (not isinstance(audit_log_relative, str) or not isinstance(audit_log_sha256, str)
            or not isinstance(audit_findings, list) or not audit_findings
            or len(audit_findings) != len(set(audit_findings))):
        raise ValueError("current verification audit evidence binding is missing")
    audit_parts = PurePosixPath(audit_log_relative).parts
    if (not audit_parts or PurePosixPath(audit_log_relative).is_absolute()
            or ".." in audit_parts or "." in audit_parts):
        raise ValueError("current verification audit log path is unsafe")
    audit_log_path = ROOT / audit_log_relative
    if audit_log_path.is_symlink() or not audit_log_path.is_file():
        raise ValueError("current verification audit log is unavailable")
    observed_audit_sha256 = hashlib.sha256(audit_log_path.read_bytes()).hexdigest()
    if (observed_audit_sha256 != audit_log_sha256
            or audit_result.get("output_sha256") != observed_audit_sha256):
        raise ValueError("current verification audit log digest mismatch")
    observed_findings = re.findall(
        r"partial declaration: ([^,\]\s]+)", audit_log_path.read_text(errors="strict"))
    if observed_findings != audit_findings:
        raise ValueError("current verification audit finding inventory mismatch")
    environment = record.get("environment")
    if (not isinstance(environment, dict)
            or environment.get("lean_version") != "4.33.0"
            or environment.get("lean_commit") not in retained.get("lean_version", "")
            or retained.get("dependency_revisions", {}).get("mathlib")
               != environment.get("mathlib_revision")):
        raise ValueError("current verification environment binding mismatch")
    return record


def repository_state_facts():
    """Observe exceptional Git/filesystem states instead of hardcoding emptiness."""
    raw = subprocess.check_output(["git", "ls-files", "-z", "--stage"], cwd=ROOT)
    modes, conflicts = defaultdict(set), set()
    for item in raw.split(b"\0"):
        if not item:
            continue
        metadata, separator, encoded = item.partition(b"\t")
        fields = metadata.split()
        if not separator or len(fields) != 3:
            raise ValueError("malformed staged inventory")
        mode, _blob, stage = (field.decode("ascii") for field in fields)
        path = encoded.decode("utf-8", "surrogateescape")
        modes[path].add(mode)
        if stage != "0":
            conflicts.add(path)
    tracked_deletions, unsafe = [], []
    visible = present_sources()
    for path in visible:
        source = ROOT / path
        try:
            state = os.lstat(source)
        except FileNotFoundError:
            if path in modes:
                tracked_deletions.append(path)
            continue
        if stat.S_ISLNK(state.st_mode) or not stat.S_ISREG(state.st_mode):
            unsafe.append(path)
    submodules = sorted(path for path, values in modes.items() if "160000" in values)
    unsafe.extend(path for path, values in modes.items()
                  if values - {"100644", "100755", "160000"})
    return {
        "tracked_deletions": sorted(set(tracked_deletions)),
        "conflicts": sorted(conflicts),
        "unsafe_entries": sorted(set(unsafe)),
        "submodules": submodules,
    }


def preserve_import_normalization_followup(layout):
    """Add the reviewed post-move edit without rewriting historical moves."""
    identifier = "lean-import-command-normalization-2026-10-14"
    records = layout.setdefault("post_migration_transformations", [])
    if any(record.get("transformation_id") == identifier for record in records):
        return
    migration_by_target = {}
    for entry in layout.get("migration", []):
        destinations = entry.get("mathematical_paths", [])
        if len(destinations) == 1:
            migration_by_target[destinations[0].get("path")] = entry.get("previous_path")
    sources = []
    for path, (before, after, family) in sorted(IMPORT_NORMALIZATION.items()):
        sources.append({
            "path": path,
            "original_move_path": migration_by_target.get(path),
            "before_sha256": before,
            "after_sha256": after,
            "changed_region": IMPORT_RANGES[family],
        })
    records.append({
        "transformation_id": identifier,
        "operation": "normalize-malformed-multi-module-import-command",
        "source_count": len(sources),
        "source_region_semantics": ("The prefix and suffix outside changed_region are byte-identical. "
                                    "Within the region, one invalid combined import command was split "
                                    "into valid one-module import commands in the same order."),
        "declaration_effect": "none; import syntax only",
        "verification_scope": ("Source-region/hash correspondence and affected validation runners; "
                               "this transformation is not a new theorem acceptance."),
        "sources": sources,
    })


def main():
    layout = json.loads(LAYOUT_PATH.read_text())
    preserve_import_normalization_followup(layout)
    explicit_open_premises = layout.get("explicit_open_premises", {})
    if not isinstance(explicit_open_premises, dict):
        raise SystemExit("explicit_open_premises must be a path-to-string-list object")
    migration_verification = (json.loads(MIGRATION_VERIFICATION.read_text())
                              if MIGRATION_VERIFICATION.is_file() else None)
    current_verification = (json.loads(CURRENT_VERIFICATION.read_text())
                            if CURRENT_VERIFICATION.is_file() else None)
    replay_binding = receipt_replay_binding(layout, migration_verification)
    helpers = runpy.run_path(str(ROOT / "scripts/check_math_layout.py"))
    parse_imports = helpers["imports"]
    mask_lean = helpers["mask_lean"]
    classify = helpers["source_role"]
    candidate_records = exact_candidate_intake(helpers["read_regular"])
    candidate_paths = set(candidate_records)
    paths = present_sources()
    path_set = set(paths)
    absent_candidates = sorted(candidate_paths - path_set)
    if absent_candidates:
        raise SystemExit("candidate intake names absent Git-visible source(s): " +
                         ", ".join(absent_candidates))
    stale_premise_paths = sorted(set(explicit_open_premises) - (path_set - candidate_paths))
    if stale_premise_paths:
        raise SystemExit("explicit premise annotation names absent source(s): " +
                         ", ".join(stale_premise_paths))
    escaped = [path for path in paths if not (path == "GRWTSK.lean" or path.startswith("GRWTSK/"))]
    if escaped:
        raise SystemExit("maintained Lean outside canonical root: " + ", ".join(escaped))
    source_bytes = {path: helpers["read_regular"](ROOT, path) for path in paths}
    try:
        texts = {path: data.decode("utf-8") for path, data in source_bytes.items()}
    except UnicodeDecodeError as error:
        raise SystemExit("maintained Lean source is not UTF-8: " + str(error)) from error
    imports = {path: [module for module, _ in parse_imports(texts[path])] for path in paths}
    module_to_path = {path[:-5].replace("/", "."): path for path in paths}
    candidate_modules = {path[:-5].replace("/", ".") for path in candidate_paths}
    for path in sorted(path_set - candidate_paths):
        imported_candidates = sorted(set(imports[path]) & candidate_modules)
        if imported_candidates:
            raise SystemExit("active source imports candidate-only module: " + path + " -> " +
                             ", ".join(imported_candidates))
    reverse = defaultdict(list)
    for consumer, names in imports.items():
        for name in names:
            if name in module_to_path:
                reverse[module_to_path[name]].append(consumer)
    corpus = consumer_corpus()
    originals = original_paths(layout)
    blobs = head_blobs()
    active = []
    for path in sorted(path_set - candidate_paths):
        data, text = source_bytes[path], texts[path]
        sha256 = hashlib.sha256(data).hexdigest()
        role = classify(path)
        if role is None:
            raise SystemExit("unclassified maintained source: " + path)
        original = originals.get(path, path)
        blob = blobs.get(original, blobs.get(path))
        current_blob = worktree_blob(data)
        if original != path:
            state = ("tracked-renamed" if blob == current_blob else "tracked-renamed-modified") \
                if blob else "untracked-relocated"
        elif blob:
            state = "tracked-clean" if blob == current_blob else "tracked-modified"
        else:
            state = "untracked"
        parts = PurePosixPath(path).parts
        if path == "GRWTSK.lean":
            subject, object_name, source_root = "Library", "EntryPoint", "."
        else:
            subject, source_root = parts[1], "GRWTSK"
            stop = parts.index("Checks") if "Checks" in parts else len(parts) - 1
            object_name = "/".join(parts[2:stop]) or PurePosixPath(path).stem
        masked = mask_lean(text)
        declarations = []
        for match in DECLARATION.finditer(masked):
            if match.group(1) == "private":
                continue
            declarations.append({"kind": match.group(2), "name": match.group(3),
                                 "line": masked.count("\n", 0, match.start()) + 1})
        open_premises = [entry["name"] for entry in declarations if entry["kind"] == "axiom"]
        if re.search(r"\bsorry\b", masked):
            open_premises.append("contains-sorry-syntax")
        annotated_premises = explicit_open_premises.get(path, [])
        if (not isinstance(annotated_premises, list)
                or any(not isinstance(item, str) or not item.strip()
                       for item in annotated_premises)):
            raise SystemExit("invalid explicit premise annotation: " + path)
        open_premises.extend(item for item in annotated_premises
                             if item not in open_premises)
        if role == "negative-control":
            logical_status = "intentionally invalid control; rejection required"
        elif open_premises:
            logical_status = "source retains explicit unresolved premise(s)"
        else:
            logical_status = "statements and proof bodies preserved; relocation makes no new acceptance claim"
        module = path[:-5].replace("/", ".")
        consumers = sorted(name for name, content in corpus.items()
                           if path in content or module in content or original in content)
        family = sorted(name for name in consumers if name.startswith("scripts/check_") and
                        name not in {"scripts/check_math_layout.py", "scripts/check_math_trust.py"})
        if family:
            runner = "python3 -B " + family[0]
        elif role == "library":
            runner = "lake build GRWTSK; python3 -B scripts/check_math_trust.py"
        else:
            runner = "python3 -B scripts/run_lean_validation.py " + path
        verification = {
            "inventory": "observed-current-bytes",
            "layout": "not-run-after-inventory-refresh",
            "lean": "not-run-for-current-source-and-local-import-closure",
            "source_sha256": sha256,
        }
        active.append({
            "path": path, "original_path": original, "sha256": sha256, "git_blob": blob,
            "working_tree_state": state, "source_root": source_root, "module": module,
            "namespaces": sorted(set(NAMESPACE.findall(masked))),
            "public_declarations": declarations,
            "declaration_inventory_method": "source syntax; native owned-declaration census is authoritative",
            "imports": imports[path], "reverse_consumers": sorted(reverse[path]),
            "subject": subject, "object": object_name, "source_role": role,
            "target_path": path,
            "placement_rationale": ("Conventional public entry point." if path == "GRWTSK.lean" else
                                     f"{role} colocated with the mathematical {subject}/{object_name} object."),
            "operation": "move" if original != path else "keep",
            "logical_status": logical_status, "open_premises": open_premises,
            "verification": verification,
            "runner": runner, "other_consumers": consumers,
        })
    candidates = []
    for path in sorted(candidate_paths):
        data, text = source_bytes[path], texts[path]
        sha256 = hashlib.sha256(data).hexdigest()
        intake = candidate_records[path]
        if sha256 != intake["sha256"] or len(data) != intake["bytes"]:
            raise SystemExit("candidate source bytes differ from intake: " + path)
        blob = blobs.get(path)
        state = ("tracked-clean" if blob == worktree_blob(data) else "tracked-modified") \
            if blob else "untracked"
        parts = PurePosixPath(path).parts
        subject, source_root = parts[1], "GRWTSK"
        object_name = "/".join(parts[2:-1]) or PurePosixPath(path).stem
        masked = mask_lean(text)
        declarations = []
        for match in DECLARATION.finditer(masked):
            if match.group(1) == "private":
                continue
            declarations.append({"kind": match.group(2), "name": match.group(3),
                                 "line": masked.count("\n", 0, match.start()) + 1})
        record = dict(intake)
        record.update({
            "source_set": "candidate-evidence",
            "source_intake": str(SOURCE_INTAKE.relative_to(ROOT)),
            "git_blob": blob,
            "working_tree_state": state,
            "source_root": source_root,
            "module": path[:-5].replace("/", "."),
            "namespaces": sorted(set(NAMESPACE.findall(masked))),
            "public_declarations": declarations,
            "declaration_inventory_method": (
                "source syntax only; candidate has no theorem-admission or replay status"),
            "imports": imports[path],
            "reverse_consumers": sorted(reverse[path]),
            "subject": subject,
            "object": object_name,
            "target_path": path,
            "logical_status": (
                "candidate source only; exact custody does not establish formal correctness"),
        })
        candidates.append(record)
    library = [entry for entry in active if entry["source_role"] == "library"]
    current_binding = current_verification_binding(current_verification, active, library)
    active_by_path = {entry["path"]: entry for entry in active}
    current_module_paths = {entry["module"]: entry["path"] for entry in active}
    replay_hashes = replay_binding["source_hashes"] if replay_binding else {}
    replay_eligible = {
        entry["path"] for entry in library
        if replay_hashes.get(entry["path"]) == entry["sha256"]
    }
    changed = True
    while changed:
        changed = False
        for path in tuple(replay_eligible):
            entry = active_by_path[path]
            local_dependencies = {
                current_module_paths[module] for module in entry["imports"]
                if module in current_module_paths
            }
            if any(dependency not in replay_eligible for dependency in local_dependencies):
                replay_eligible.remove(path)
                changed = True
    for entry in active:
        if current_binding is not None:
            entry["verification"]["layout"] = "passed-current-layout-20261014"
            entry["verification"]["layout_binding"] = str(
                CURRENT_VERIFICATION.relative_to(ROOT))
    for entry in library:
        verification = entry["verification"]
        path = entry["path"]
        if current_binding is not None:
            replay = current_binding["library_replay"]
            verification["lean"] = replay["source_replay_status"]
            verification["replay_binding"] = str(CURRENT_VERIFICATION.relative_to(ROOT))
            verification["owned_declaration_audit"] = replay["owned_declaration_audit"]
        elif path in replay_eligible:
            verification["lean"] = "passed-trust-zero-fatal-warnings-20261014T002417Z"
            verification["replay_binding"] = str(MIGRATION_VERIFICATION.relative_to(ROOT))
            verification["owned_declaration_audit"] = (
                migration_verification.get("acceptance", {}).get(
                    "owned_declaration_axiom_audit", "not-run")
                if migration_verification else "not-run")
        elif path in replay_hashes and replay_hashes[path] == entry["sha256"]:
            verification["lean"] = "stale-transitive-local-source-snapshot"
        elif path in replay_hashes:
            verification["lean"] = "not-run-after-source-byte-change"
        else:
            verification["lean"] = "not-covered-by-retained-replay"
    layout["schema_version"] = 3
    layout["inventory_scope"] = (
        "Every present Git-tracked and nonignored untracked first-party Lean source, partitioned "
        "into active role-bearing sources and exact candidate-only evidence; ignored archives, "
        "dependencies and generated artifacts are excluded.")
    layout["source_roles"] = {
        "library": "Public mathematical source included in the GRWTSK umbrella and trust replay.",
        "positive-check": "Validation source required to elaborate successfully, separately from the library.",
        "negative-control": "Intentionally invalid source required to fail through an expected-failure harness.",
        "audit-driver": "Operational Lean audit compiled only by a dedicated verification entry point.",
        "historical-evidence": "Immutable ignored source snapshot outside active discovery.",
    }
    layout["historical_exceptions"] = {
        "active_outside_GRWTSK": ["GRWTSK.lean"],
        "ignored_archive": ".local/mobius-response/migration-archives",
        "archive_scope": (
            "Local retained migration evidence only; its availability is not a public "
            "reconstruction premise and it is outside active source discovery."
        ),
        "policy": "Historical Lean must be specifically indexed and immutable; no active exception is permitted.",
    }
    layout["active_sources"] = active
    layout["candidate_source_catalog"] = {
        "authoritative_intake": str(SOURCE_INTAKE.relative_to(ROOT)) + "#sources",
        "status": CANDIDATE_STATUS,
        "source_count": len(candidates),
        "admission_policy": (
            "Exact retained source evidence only; excluded from active roles, public umbrella, "
            "build/trust replay, and mathematical acceptance until separately reviewed."),
    }
    layout["candidate_sources"] = candidates
    layout["source_count"] = len(library)
    layout["source_hashes"] = {entry["path"]: entry["sha256"] for entry in library}
    layout["subjects"] = dict(sorted(Counter(entry["subject"] for entry in library
                                              if entry["subject"] != "Library").items()))
    layout["control_sources"] = {entry["path"]: entry["sha256"] for entry in active
                                 if entry["source_role"] != "library"}
    layout["verification_controls"]["python_layout_fixtures"] = 47
    if current_binding is not None:
        layout["verification_controls"]["full_source_replay_status"] = (
            current_binding["library_replay"]["source_replay_status"] + "; " +
            current_binding["library_replay"]["owned_declaration_audit"])
        layout["verification_controls"]["migration_verification_record"] = str(
            CURRENT_VERIFICATION.relative_to(ROOT))
    elif migration_verification is None:
        layout["verification_controls"]["full_source_replay_status"] = "NOT_RUN_AFTER_CONSOLIDATION"
        layout["verification_controls"].pop("migration_verification_record", None)
    else:
        layout["verification_controls"]["full_source_replay_status"] = (
            "289_LIBRARY_SOURCES_PASSED_TRUST_ZERO; "
            "OWNED_DECLARATION_AUDIT_FAILED_ON_18_PARTIAL_GENERATED_DECLARATIONS")
        layout["verification_controls"]["migration_verification_record"] = str(
            MIGRATION_VERIFICATION.relative_to(ROOT))
    layout["verification_controls"]["public_proof_acceptance_replaced"] = False
    if current_binding is not None:
        layout["verification_controls"]["full_source_replay_binding"] = {
            "receipt": str(CURRENT_VERIFICATION.relative_to(ROOT)),
            "source_count": len(library),
            "source_hashes_sha256": current_binding["source_bindings"]["library"]["sha256"],
            "scope": ("Current per-source hashes are the active library entries in this layout; "
                      "the receipt binds their canonical path/hash digest and the replay outcome."),
        }
    elif replay_binding is not None:
        layout["verification_controls"]["full_source_replay_binding"] = replay_binding
    else:
        layout["verification_controls"].pop("full_source_replay_binding", None)
    exceptional = repository_state_facts()
    layout["current_inventory"] = {
        "head": command("git", "rev-parse", "HEAD"), "lean_source_count": len(paths),
        "active_source_count": len(active), "candidate_source_count": len(candidates),
        "counts_by_role": dict(sorted(Counter(entry["source_role"] for entry in active).items())),
        "counts_by_subject": dict(sorted(Counter(entry["subject"] for entry in active).items())),
        "candidate_counts_by_status": dict(sorted(Counter(
            entry["status"] for entry in candidates).items())),
        "candidate_counts_by_subject": dict(sorted(Counter(
            entry["subject"] for entry in candidates).items())),
        **exceptional,
    }
    LAYOUT_PATH.write_text(json.dumps(layout, ensure_ascii=True, indent=2) + "\n")
    print(json.dumps({"present_lean_sources": len(paths), "active_sources": len(active),
                      "candidate_sources": len(candidates), "library_sources": len(library),
                      "roles": layout["current_inventory"]["counts_by_role"]}, sort_keys=True))


if __name__ == "__main__":
    main()
