#!/usr/bin/env python3
"""Hostile controls for reversible byte custody; these do not check Lean proofs."""
import copy
import json
import os
from pathlib import Path
import subprocess
import tempfile
import unittest
from unittest import mock

import cache_math as cache


class CacheControls(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.base = Path(self.temporary.name).resolve()
        self.root = self.base / "repo"
        self.root.mkdir()
        self.git("init", "-q", "-b", "main")
        self.git("config", "user.email", "cache-fixture@example.invalid")
        self.git("config", "user.name", "Cache fixture")
        self.put(".gitignore", ".lake/\nbuild/\ncache/\n")
        self.put("GRWTSK/Logic/Fixture/A.lean", "import Mathlib\n\ntheorem fixture_a : True := by trivial\n")
        self.put("GRWTSK/Logic/Fixture/B.lean", "import GRWTSK.Logic.Fixture.A\n\ntheorem fixture_b : True := by trivial\n")
        self.put("GRWTSK.lean", "import GRWTSK.Logic.Fixture.B\n")
        self.put("lean-toolchain", "leanprover/lean4:v4.33.0\n")
        self.put("lakefile.toml", 'name = "cachefixture"\n')
        self.put("lake-manifest.json", '{"packages":[]}\n')
        self.put("LICENSE", "fixture license\n")
        self.put("NOTICE", "fixture credit\n")
        self.put("LICENSES/Example.txt", "fixture upstream license\n")
        self.catalog()
        self.git("add", ".")
        self.git("commit", "-qm", "Fixture")

    def git(self, *args):
        return subprocess.run(["git", "-C", str(self.root), *args], check=True,
                              stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout

    def put(self, path, data):
        target = self.root / path
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(data.encode("utf-8") if isinstance(data, str) else data)

    def catalog(self, extra=None):
        paths = ["GRWTSK.lean", "GRWTSK/Logic/Fixture/A.lean", "GRWTSK/Logic/Fixture/B.lean"]
        rows = [{"path": p, "source_role": "library", "subject": "Logic", "object": "Fixture",
                 "sha256": cache.digest((self.root / p).read_bytes())} for p in paths]
        rows.extend(extra or [])
        self.put("docs/math-layout.json", json.dumps({"active_sources": rows, "candidate_sources": []}))

    def snapshot(self):
        return cache.snapshot(self.root)

    def manifest(self):
        return cache.verify(self.root)

    def test_roundtrip_byte_exact_context_and_path_occurrences(self):
        # Identical bytes share one object while remaining two path identities.
        self.put("GRWTSK/Logic/Fixture/C.lean", (self.root / "GRWTSK/Logic/Fixture/A.lean").read_bytes())
        expected = {p: cache.read_bytes(self.root, p) for p in cache.universe(self.root)}
        result = self.snapshot()
        manifest = cache.verify(self.root, live=True)
        self.assertEqual(result["source_count"], 4)
        a, c = [r for r in manifest["sources"] if r["path"].endswith(("/A.lean", "/C.lean"))]
        self.assertNotEqual(a["id"], c["id"])
        self.assertEqual(a["blob"], c["blob"])
        self.assertEqual(c["source_role"], "candidate-source-only")
        self.assertEqual(c["role_binding_status"], "uncataloged-candidate")
        destination = self.base / "expanded"
        expanded = cache.expand(self.root, destination)
        self.assertEqual(expanded["source_count"], 4)
        for path, raw in expected.items():
            self.assertEqual((destination / path).read_bytes(), raw)
        for entry in manifest["context_files"]:
            self.assertEqual((destination / entry["path"]).read_bytes(),
                             (self.root / entry["path"]).read_bytes())
        for entry in manifest["catalogs"]:
            self.assertEqual((destination / entry["path"]).read_bytes(),
                             (self.root / entry["path"]).read_bytes())
        self.assertEqual(expanded["catalog_file_count"], len(manifest["catalogs"]))
        self.assertEqual(cache.current(self.root), result["revision"])

    def test_scope_tracked_nonignored_untracked_only(self):
        self.put("GRWTSK/Logic/Fixture/Untracked.lean", "import Mathlib\n")
        for path in (".lake/GRWTSK/Outside.lean", "build/Outside.lean", "archive/Outside.lean"):
            self.put(path, "malformed source\n")
        self.put(".gitignore", ".lake/\nbuild/\ncache/\nGRWTSK/Logic/Fixture/Ignored.lean\n")
        self.put("GRWTSK/Logic/Fixture/Ignored.lean", "ignored\n")
        self.assertEqual(cache.universe(self.root), ["GRWTSK.lean", "GRWTSK/Logic/Fixture/A.lean",
                                                   "GRWTSK/Logic/Fixture/B.lean",
                                                   "GRWTSK/Logic/Fixture/Untracked.lean"])

    def test_empty_accidental_universe_rejected(self):
        for path in cache.universe(self.root):
            (self.root / path).unlink()
        self.git("add", "-u")
        with self.assertRaisesRegex(cache.CacheError, "empty source"):
            self.snapshot()
        self.assertIsNone(cache.current(self.root))

    def test_source_symlink_and_parent_symlink_rejected(self):
        target = self.root / "GRWTSK/Logic/Fixture/A.lean"
        target.unlink()
        target.symlink_to(self.root / "GRWTSK/Logic/Fixture/B.lean")
        with self.assertRaisesRegex(cache.CacheError, "unsafe"):
            self.snapshot()
        target.unlink()
        target.write_text("import Mathlib\n")
        directory = self.root / "GRWTSK/Logic/Fixture"
        moved = self.root / "GRWTSK/Logic/Moved"
        directory.rename(moved)
        directory.symlink_to(moved, target_is_directory=True)
        with self.assertRaisesRegex(cache.CacheError, "unsafe"):
            self.snapshot()

    def test_cache_object_and_cache_parent_symlinks_rejected(self):
        self.snapshot()
        row = self.manifest()["sources"][0]
        blob = self.root / cache.blob_path(row["blob"]["raw_sha256"])
        blob.unlink()
        blob.symlink_to(self.root / "NOTICE")
        with self.assertRaisesRegex(cache.CacheError, "unsafe"):
            cache.verify(self.root)
        blob.unlink()
        # A link for an entire cache subtree is also rejected.
        objects = self.root / "cache/objects"
        alternate = self.root / "cache/objects-original"
        objects.rename(alternate)
        objects.symlink_to(alternate, target_is_directory=True)
        with self.assertRaisesRegex(cache.CacheError, "unsafe"):
            cache.verify(self.root)

    def test_traversal_unsafe_paths_and_duplicate_json_keys(self):
        self.snapshot()
        original = self.manifest()
        for path in ("../escape.lean", "/absolute.lean", "GRWTSK/../escape.lean",
                     "GRWTSK//A.lean", "GRWTSK/./A.lean", "GRWTSK\\A.lean"):
            changed = copy.deepcopy(original)
            changed["sources"][0]["path"] = path
            with self.assertRaisesRegex(cache.CacheError, "unsafe"):
                cache.validate_manifest(self.root, changed)
        with self.assertRaisesRegex(cache.CacheError, "duplicate JSON"):
            cache.decoded(b'{"schema":1,"schema":2}')

    def test_corrupt_compressed_blob_and_bounded_decompression(self):
        self.snapshot()
        row = self.manifest()["sources"][0]
        blob = self.root / cache.blob_path(row["blob"]["raw_sha256"])
        original = blob.read_bytes()
        blob.write_bytes(original + b"trailing")
        with self.assertRaisesRegex(cache.CacheError, "compressed object corrupt"):
            cache.verify(self.root)
        blob.write_bytes(original)
        metadata = copy.deepcopy(row["blob"])
        metadata["raw_bytes"] = 0
        with self.assertRaisesRegex(cache.CacheError, "oversized|raw object corrupt"):
            cache.load_blob(self.root, metadata)
        metadata["raw_bytes"] = -1
        with self.assertRaisesRegex(cache.CacheError, "length"):
            cache.load_blob(self.root, metadata)

    def test_missing_identity_even_same_count_and_duplicate_identity(self):
        self.snapshot()
        manifest = self.manifest()
        changed = copy.deepcopy(manifest)
        changed["source_inventory"][0]["id"] = "source:missing-but-same-count"
        with self.assertRaisesRegex(cache.CacheError, "exact source identity"):
            cache.validate_manifest(self.root, changed)
        changed = copy.deepcopy(manifest)
        changed["sources"][1]["id"] = changed["sources"][0]["id"]
        with self.assertRaisesRegex(cache.CacheError, "identity"):
            cache.validate_manifest(self.root, changed)
        changed = copy.deepcopy(manifest)
        changed["sources"][1] = copy.deepcopy(changed["sources"][0])
        with self.assertRaisesRegex(cache.CacheError, "duplicate source path"):
            cache.validate_manifest(self.root, changed)

    def test_exact_dependency_edges_recomputed(self):
        self.snapshot()
        manifest = self.manifest()
        for field in ("dependencies", "imports"):
            changed = copy.deepcopy(manifest)
            changed["sources"][0][field] = []
            with self.assertRaisesRegex(cache.CacheError, "import|dependency"):
                cache.validate_manifest(self.root, changed)

    def test_changed_same_count_live_identity_set_detected(self):
        self.snapshot()
        (self.root / "GRWTSK/Logic/Fixture/A.lean").rename(self.root / "GRWTSK/Logic/Fixture/Z.lean")
        self.git("add", "GRWTSK")
        with self.assertRaisesRegex(cache.CacheError, "drift"):
            cache.verify(self.root, live=True)
        # Historical bytes remain verifiable despite live edits.
        self.assertEqual(cache.verify(self.root)["source_count"], 3)

    def test_source_drift_aborts_ref_keeps_failed_candidate(self):
        original = self.snapshot()["revision"]
        before_manifests = set((self.root / "cache/manifests").iterdir())
        self.put("GRWTSK/Logic/Fixture/A.lean", "import Mathlib\n-- before capture\n")
        with self.assertRaisesRegex(cache.CacheError, "drift"):
            cache.snapshot(self.root, expected=original, before_commit=lambda: self.put(
                "GRWTSK/Logic/Fixture/A.lean", "import Mathlib\n-- during snapshot\n"))
        self.assertEqual(cache.current(self.root), original)
        self.assertGreater(len(set((self.root / "cache/manifests").iterdir())), len(before_manifests))
        attempts = [json.loads(p.read_text()) for p in (self.root / "cache/attempts").iterdir()]
        self.assertTrue(any(a["status"] == "failed" and "drift" in a["error"] for a in attempts))

    def test_stale_expected_ref_and_concurrent_cas_preserved(self):
        original = self.snapshot()["revision"]
        with self.assertRaisesRegex(cache.CacheError, "stale expected"):
            cache.snapshot(self.root, expected="0" * 64)
        self.assertEqual(cache.current(self.root), original)
        competing = "f" * 64
        def concurrent_writer():
            self.put("cache/refs/current.json", cache.encoded({"schema": cache.REF_SCHEMA, "revision": competing}))
        with self.assertRaisesRegex(cache.CacheError, "stale current"):
            cache.snapshot(self.root, expected=original, before_commit=concurrent_writer)
        self.assertEqual(cache.current(self.root), competing)
        self.assertFalse((self.root / "cache/refs/write.lock").exists())

    def test_cycle_reverse_reachability_and_retained_history(self):
        self.put("GRWTSK/Logic/Fixture/A.lean", "import GRWTSK.Logic.Fixture.B\n")
        original = self.snapshot()["revision"]
        self.put("GRWTSK/Logic/Fixture/A.lean", "import GRWTSK.Logic.Fixture.B\n-- revision\n")
        result = cache.snapshot(self.root, expected=original, require_parent=True)
        self.assertEqual(result["revision_effect"]["changed_sources"], ["GRWTSK/Logic/Fixture/A.lean"])
        self.assertEqual(result["revision_effect"]["invalidated_sources"],
                         ["GRWTSK.lean", "GRWTSK/Logic/Fixture/A.lean", "GRWTSK/Logic/Fixture/B.lean"])
        self.assertEqual(self.manifest()["parent"], original)
        self.assertTrue((self.root / ("cache/refs/history/" + original + ".json")).is_file())
        cache.verify(self.root, original)

    def test_role_isolation_and_no_proof_status_promotion(self):
        path = "GRWTSK/Logic/Fixture/Checks/Negative/Invalid.lean"
        self.put(path, "import Mathlib\nexample : False := by trivial\n")
        self.catalog([{"path": path, "source_role": "negative-control", "subject": "Logic",
                       "object": "Fixture", "sha256": cache.digest((self.root / path).read_bytes())}])
        self.snapshot()
        manifest = self.manifest()
        row = next(r for r in manifest["sources"] if r["path"] == path)
        self.assertEqual(row["source_role"], "negative-control")
        for key, value in (("source_role", "library"), ("proof_status", "accepted"),
                           ("mathematical_acceptance", True)):
            changed = copy.deepcopy(manifest)
            next(r for r in changed["sources"] if r["path"] == path)[key] = value
            with self.assertRaisesRegex(cache.CacheError, "role/status"):
                cache.validate_manifest(self.root, changed)
        changed = copy.deepcopy(manifest)
        changed["proof_status"] = "accepted"
        with self.assertRaisesRegex(cache.CacheError, "promote proof"):
            cache.validate_manifest(self.root, changed)
        self.catalog([{"path": path, "source_role": "library"}])
        with self.assertRaisesRegex(cache.CacheError, "isolation"):
            self.snapshot()

    def test_no_source_execution(self):
        # Invalid and malicious-looking Lean syntax is merely preserved. Its
        # proof status remains unreplayed; no Lean/shell interpreter is run.
        marker = self.base / "should-not-exist"
        self.put("GRWTSK/Logic/Fixture/Malicious.lean", "#eval IO.FS.writeFile \"" + str(marker) + "\" \"bad\"\n")
        self.snapshot()
        self.assertFalse(marker.exists())
        self.assertTrue(all(r["proof_status"] == cache.PROOF and not r["mathematical_acceptance"]
                            for r in self.manifest()["sources"]))

    def test_expand_rejects_live_nonempty_symlink_and_concurrent_file(self):
        self.snapshot()
        for destination in (self.root, self.root / "reconstructed"):
            with self.assertRaisesRegex(cache.CacheError, "outside"):
                cache.expand(self.root, destination)
        destination = self.base / "nonempty"
        destination.mkdir()
        sentinel = destination / "preserve"
        sentinel.write_text("unchanged")
        with self.assertRaisesRegex(cache.CacheError, "not empty"):
            cache.expand(self.root, destination)
        self.assertEqual(sentinel.read_text(), "unchanged")
        link = self.base / "linked"
        link.symlink_to(destination, target_is_directory=True)
        with self.assertRaisesRegex(cache.CacheError, "symlink"):
            cache.expand(self.root, link)
        destination = self.base / "concurrent"
        original_writer = cache.immutable_write
        introduced = False
        def writer(root, path, raw, allow_identical=True):
            nonlocal introduced
            if root == destination and not introduced:
                introduced = True
                target = destination / path
                target.parent.mkdir(parents=True, exist_ok=True)
                target.write_bytes(b"concurrent editor bytes")
            return original_writer(root, path, raw, allow_identical)
        with mock.patch.object(cache, "immutable_write", side_effect=writer):
            with self.assertRaisesRegex(cache.CacheError, "already exists"):
                cache.expand(self.root, destination)
        self.assertTrue(any(p.read_bytes() == b"concurrent editor bytes" for p in destination.rglob("*") if p.is_file()))

    def test_missing_local_import_and_unsupported_import_syntax_rejected(self):
        self.put("GRWTSK/Logic/Fixture/A.lean", "import GRWTSK.Logic.Absent\n")
        with self.assertRaisesRegex(cache.CacheError, "missing selected local"):
            self.snapshot()
        with self.assertRaisesRegex(cache.CacheError, "unsupported import"):
            cache.imports("import GRWTSK.«escaped».A\n".encode())
        self.assertEqual(cache.imports(b'/- import Fake /- import Nested -/ -/\nimport Mathlib\n-- import Fake\ndef x := "import Fake"\n'), ["Mathlib"])

    def test_catalog_context_drift_and_hash_collision_guard(self):
        original = self.snapshot()["revision"]
        self.put("NOTICE", "updated attribution\n")
        self.assertTrue(cache.status(self.root)["context_drift"])
        with self.assertRaisesRegex(cache.CacheError, "drift"):
            cache.verify(self.root, live=True)
        self.assertEqual(cache.current(self.root), original)
        # Operational identities do not assume injectivity: existing unequal
        # bytes at a computed object path cause refusal, never replacement.
        with mock.patch.object(cache, "digest", return_value="a" * 64):
            cache.store_blob(self.root, b"first byte string")
            with self.assertRaisesRegex(cache.CacheError, "collision"):
                cache.store_blob(self.root, b"different byte string")

    def test_stale_catalog_values_preserved_as_findings(self):
        path = "GRWTSK/Logic/Fixture/A.lean"
        original = json.loads((self.root / "docs/math-layout.json").read_text())
        original["active_sources"][1]["sha256"] = "0" * 64
        original["active_sources"][1]["logical_status"] = "historical acceptance; does not bind these bytes"
        original["active_sources"][1]["verification"] = {"lean": "old-checked-status"}
        original["active_sources"].append({"path": "GRWTSK/Logic/Fixture/Absent.lean", "source_role": "library"})
        self.put("docs/math-layout.json", json.dumps(original))
        self.snapshot()
        manifest = self.manifest()
        row = next(r for r in manifest["sources"] if r["path"] == path)
        binding = row["role_bindings"][0]
        self.assertEqual(binding["recorded_source_sha256"], "0" * 64)
        self.assertEqual(binding["declared_verification"], {"lean": "old-checked-status"})
        self.assertEqual(binding["binding_freshness"], "stale-or-unbound")
        self.assertEqual(row["proof_status"], cache.PROOF)
        self.assertIn({"kind": "catalog-source-outside-current-universe",
                       "path": "GRWTSK/Logic/Fixture/Absent.lean"}, manifest["metadata_findings"])

    def test_containing_commit_changes_head_observation_not_byte_custody(self):
        result = self.snapshot()
        original_head = self.manifest()["observed_head"]
        self.git("add", "-f", "cache")
        self.git("commit", "-qm", "Store compact snapshot")
        self.assertNotEqual(self.git("rev-parse", "HEAD").decode().strip(), original_head)
        manifest = cache.verify(self.root, live=True)
        self.assertEqual(manifest["observed_head"], original_head)
        self.assertEqual(cache.current(self.root), result["revision"])
        status = cache.status(self.root)
        self.assertTrue(status["head_drift"])
        self.assertEqual(status["changed_sources"], [])
        self.assertEqual(status["invalidated_sources"], [])

    def test_context_change_invalidates_all_sources_without_promotion(self):
        before = self.snapshot()["revision"]
        self.put("lean-toolchain", "leanprover/lean4:changed\n")
        result = cache.snapshot(self.root, expected=before)
        effect = result["revision_effect"]
        self.assertEqual(effect["changed_sources"], [])
        self.assertEqual(effect["changed_context_files"], ["lean-toolchain"])
        self.assertEqual(effect["invalidated_sources"], cache.universe(self.root))
        self.assertEqual(self.manifest()["proof_status"], cache.PROOF)

    def test_pinned_header_modifiers_and_cross_line_whitespace(self):
        code = ("module\nprelude\npublic meta import all GRWTSK.Logic.Fixture.A\n"
                "meta import\n GRWTSK.Logic.Fixture.B\nimport Mathlib\n"
                "namespace Example\ndef x := True\nend Example\n")
        self.assertEqual(cache.imports(code.encode()),
                         ["GRWTSK.Logic.Fixture.A", "GRWTSK.Logic.Fixture.B", "Mathlib"])

    def test_unknown_schema_and_manifest_corruption(self):
        result = self.snapshot()
        manifest = self.manifest()
        changed = copy.deepcopy(manifest)
        changed["schema"] = "future-unrecognized-schema"
        with self.assertRaisesRegex(cache.CacheError, "unknown cache schema"):
            cache.validate_manifest(self.root, changed)
        path = self.root / cache.manifest_path(result["revision"])
        path.write_bytes(path.read_bytes() + b" ")
        with self.assertRaisesRegex(cache.CacheError, "identity mismatch"):
            cache.verify(self.root)


if __name__ == "__main__":
    unittest.main(verbosity=2)
