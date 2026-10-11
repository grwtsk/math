#!/usr/bin/env python3
"""Pure regression controls for immutable dependency inputs; never starts Lean."""
import hashlib
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import check_moebius_response as checker
import moebius_response_inputs as inputs


class InputsTests(unittest.TestCase):
    def setUp(self):
        self.directory = tempfile.TemporaryDirectory(prefix="moebius-input-control-", dir="/private/tmp")
        self.root = Path(self.directory.name)
        self.base = self.root / "cache"
        self.base.mkdir()

    def tearDown(self):
        self.directory.cleanup()

    @staticmethod
    def reader(root, relative):
        return checker.read_regular(root, relative).data

    def test_snapshot_survives_source_edit_and_restore(self):
        source = self.base / "A.olean"
        source.write_bytes(b"original object")
        target = self.root / "frozen/A.olean"
        result = inputs.snapshot_file(self.base, "A.olean", target, self.reader)
        source.write_bytes(b"transient altered object")
        self.assertEqual(target.read_bytes(), b"original object")
        source.write_bytes(b"original object")
        self.assertEqual(result["sha256"], hashlib.sha256(target.read_bytes()).hexdigest())
        self.assertEqual(target.stat().st_mode & 0o777, 0o400)

    def test_clone_byte_change_is_rejected(self):
        source = self.base / "A.olean"
        source.write_bytes(b"original")
        def reader(root, relative):
            value = self.reader(root, relative)
            if root == self.base:
                source.write_bytes(b"changed while copying")
            return value
        with self.assertRaisesRegex(ValueError, "between stable read and immutable copy"):
            inputs.snapshot_file(self.base, "A.olean", self.root / "frozen/A.olean", reader)

    def test_internal_source_link_is_rejected(self):
        (self.base / "real").write_bytes(b"object")
        (self.base / "A.olean").symlink_to("real")
        with self.assertRaises((ValueError, OSError)):
            inputs.snapshot_file(self.base, "A.olean", self.root / "frozen/A.olean", self.reader)

    def test_parent_link_is_rejected(self):
        (self.base / "A.olean").write_bytes(b"object")
        (self.root / "link").symlink_to(self.base, target_is_directory=True)
        with self.assertRaises((ValueError, OSError)):
            inputs.snapshot_file(self.root / "link", "A.olean", self.root / "frozen/A.olean", self.reader)

    def test_linked_output_parent_is_rejected(self):
        (self.base / "A.olean").write_bytes(b"object")
        (self.root / "real-output").mkdir()
        (self.root / "frozen").symlink_to(self.root / "real-output", target_is_directory=True)
        with self.assertRaises((ValueError, OSError)):
            inputs.snapshot_file(self.base, "A.olean", self.root / "frozen/A.olean", self.reader)

    def test_object_inventory_has_all_importable_families(self):
        for suffix in inputs.OBJECT_SUFFIXES:
            (self.base / ("A" + suffix)).write_bytes(b"object")
        (self.base / "A.trace").write_bytes(b"not an import object")
        self.assertEqual(inputs.object_inventory(self.base), sorted("A" + s for s in inputs.OBJECT_SUFFIXES))

    def test_object_inventory_rejects_link(self):
        (self.base / "real").write_bytes(b"object")
        (self.base / "A.olean").symlink_to("real")
        with self.assertRaisesRegex(ValueError, "Linked"):
            inputs.object_inventory(self.base)

    def test_object_inventory_rejects_linked_directory(self):
        (self.base / "linked").symlink_to(self.root, target_is_directory=True)
        with self.assertRaisesRegex(ValueError, "Linked"):
            inputs.object_inventory(self.base)

    def test_existing_snapshot_is_rejected(self):
        (self.base / "A.olean").write_bytes(b"object")
        target = self.root / "frozen/A.olean"
        inputs.snapshot_file(self.base, "A.olean", target, self.reader)
        with self.assertRaisesRegex(ValueError, "existing"):
            inputs.snapshot_file(self.base, "A.olean", target, self.reader)

    def test_snapshot_membership_change_is_rejected(self):
        (self.base / "A.olean").write_bytes(b"object")
        target = self.root / "frozen/A.olean"
        value = inputs.snapshot_file(self.base, "A.olean", target, self.reader)
        record = {"immutable_object_families": {"frozen/A.olean": value}}
        inputs.verify_dependency_snapshot([target.parent], record, self.reader)
        (target.parent / "B.olean").write_bytes(b"new object")
        with self.assertRaisesRegex(ValueError, "membership drift"):
            inputs.verify_dependency_snapshot([target.parent], record, self.reader)

    def test_snapshot_directory_swap_and_restore_is_rejected(self):
        (self.base / "A.olean").write_bytes(b"object")
        target = self.root / "dependency-objects/cache/A.olean"
        value = inputs.snapshot_file(self.base, "A.olean", target, self.reader)
        frozen = target.parent
        root = frozen.parent
        observed = frozen.lstat()
        identity = [observed.st_dev, observed.st_ino, observed.st_mtime_ns,
                    observed.st_ctime_ns, observed.st_mode, observed.st_nlink]
        record = {"immutable_object_families": {"cache/A.olean": value},
                  "sealed_directory_identities": {"cache": identity}}
        inputs.verify_dependency_snapshot([frozen], record, self.reader)
        frozen.rename(root / "temporarily-renamed-cache")
        frozen.mkdir()
        (frozen / "A.olean").write_bytes(b"replacement object")
        (frozen / "A.olean").unlink()
        frozen.rmdir()
        (root / "temporarily-renamed-cache").rename(frozen)
        with self.assertRaisesRegex(ValueError, "directory identity drift"):
            inputs.verify_dependency_snapshot([frozen], record, self.reader)

    def test_native_lease_is_exclusive(self):
        lock = self.root / "replay.lock"
        lock.write_bytes(b"")
        with inputs.native_lease([lock]):
            with self.assertRaisesRegex(ValueError, "BUSY"):
                with inputs.native_lease([lock]):
                    self.fail("lease collision accepted")
        with inputs.native_lease([lock]):
            pass

    def test_native_lease_link_is_rejected(self):
        lock = self.root / "replay.lock"
        (self.root / "actual.lock").write_bytes(b"")
        lock.symlink_to("actual.lock")
        with self.assertRaises((ValueError, OSError)):
            with inputs.native_lease([lock]):
                self.fail("linked lease accepted")

    def test_busy_guard_rejects_native_job(self):
        with patch.object(inputs, "command", return_value="9999 /installed/bin/lean Child.lean"):
            with self.assertRaisesRegex(ValueError, "BUSY"):
                inputs.competing_native_jobs()

    def test_busy_guard_fails_closed(self):
        with patch.object(inputs, "command", side_effect=ValueError("ps unavailable")):
            with self.assertRaisesRegex(ValueError, "unavailable"):
                inputs.competing_native_jobs()


if __name__ == "__main__":
    unittest.main()
