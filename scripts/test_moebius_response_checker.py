#!/usr/bin/env python3
"""Pure controls for immutable source binding and scoped-checker orchestration.

No Lean, Git, ps, or Python child is executed: every child process is mocked.
Integration fixtures use synthetic proof/cache bytes and a stub layout policy;
they establish rejection/orchestration behavior, never canonical policy or
kernel acceptance. Private fixtures and failure receipts are retained.
"""
from __future__ import annotations

import contextlib
import hashlib
import io
import json
import os
from pathlib import Path
import stat
import sys
import tempfile
import unittest
from unittest.mock import patch

sys.dont_write_bytecode = True
import check_moebius_response as checker

REPO = Path(__file__).resolve().parent.parent
TEMP_ROOT = Path("/private/tmp") if Path("/private/tmp").is_dir() else Path(tempfile.gettempdir()).resolve()
REVISION = "1" * 40
OWNERS = ["GRWTSK.Analysis.Exact", "GRWTSK.Logic.KernelAudit", "GRWTSK.Logic.Aggregate"]
MOCK_POLICY = b"SUBJECT_ROOTS = frozenset({'Analysis', 'Logic'})\nLEGACY_SEGMENTS = frozenset()\n"


class CheckerControls(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.base = TEMP_ROOT / ("moebius-checker-controls-" + checker.uuid.uuid4().hex)
        checker.make_directory(cls.base, exclusive=True)
        cls.records = []

    def setUp(self):
        self.root = self.base / self._testMethodName
        checker.make_directory(self.root, exclusive=True)
        self.no_children = patch.object(checker.subprocess, "Popen",
            side_effect=AssertionError("Unmocked child process is forbidden in a pure control"))
        self.no_children.start()
        self.addCleanup(self.no_children.stop)

    def test_source_and_parent_symlinks_rejected(self):
        checker.write_exclusive(self.root / "real.lean", b"import Lean\n")
        (self.root / "alias.lean").symlink_to("real.lean")
        for reader in (lambda: checker.stable_read(self.root / "alias.lean"),
                       lambda: checker.relative_file(self.root, "alias.lean")):
            with self.assertRaises(ValueError):
                reader()
        checker.write_exclusive(self.root / "real_dir/child.lean", b"import Lean\n")
        (self.root / "parent_alias").symlink_to("real_dir", target_is_directory=True)
        with self.assertRaises(ValueError):
            checker.stable_read(self.root / "parent_alias/child.lean")

    def test_linked_output_ancestry_and_receipt_rejected(self):
        checker.make_directory(self.root / "actual")
        (self.root / ".local").symlink_to("actual", target_is_directory=True)
        for writer in (lambda: checker.make_directory(self.root / ".local/checks"),
                       lambda: checker.write_exclusive(self.root / ".local/injected", b"bad")):
            with self.assertRaises(ValueError):
                writer()
        checker.write_exclusive(self.root / "original", b"unchanged")
        (self.root / "receipt.json").symlink_to("original")
        with self.assertRaises(ValueError):
            checker.atomic_json(self.root / "receipt.json", {"wrong": True})
        self.assertEqual((self.root / "original").read_bytes(), b"unchanged")

    def test_file_replaced_during_anchored_read_rejected(self):
        source = self.root / "source.lean"
        checker.write_exclusive(source, b"import Lean\n")
        actual_read, replaced = checker.os.read, False
        def replacing_read(descriptor, count):
            nonlocal replaced
            data = actual_read(descriptor, count)
            if data and not replaced:
                replaced = True
                checker.write_exclusive(self.root / "replacement", b"import Mathlib\n")
                os.replace(self.root / "replacement", source)
            return data
        with patch.object(checker.os, "read", replacing_read):
            with self.assertRaises(ValueError):
                checker.stable_read(source)

    def input_fixture(self):
        original = b"theorem a : 1 = 1 := rfl\n"
        source = self.root / "original.lean"
        checker.write_exclusive(source, original)
        frozen = self.root / "run/source"
        checker.make_directory(frozen)
        checker.make_directory(self.root / "run/logs")
        record = checker.freeze_input(checker.stable_read(source), frozen, "GRWTSK/Analysis/Exact.lean")
        return source, frozen, record

    def test_live_edit_restore_compiles_original_snapshot_and_rejects(self):
        source, frozen, record = self.input_fixture()
        receipt, observed = {"status": "running", "kernel_checked": False}, []
        runner = checker.CommandRunner(self.root / "run", frozen, receipt,
                                      lambda: checker.verify_input(record), {}, 10)
        control = self
        class FakeProcess:
            returncode, pid = 0, 999999
            def __init__(self, argv, **options):
                self.argv, self.options = argv, options
                initial = json.loads((control.root / "run/receipt.json").read_text())
                control.assertEqual(initial["commands"][-1]["status"], "running")
            def communicate(self, timeout=None):
                source.write_bytes(b"theorem a : 2 = 2 := rfl\n")
                observed.append((self.options["cwd"] / self.argv[-1]).read_bytes())
                source.write_bytes(record.original.data)
                return "", ""
            def wait(self, timeout=None):
                return self.returncode
        with patch.object(checker.subprocess, "Popen", FakeProcess):
            result = runner.run("edit-restore", ["mock-lean", record.logical_path],
                                {record.logical_path: checker.digest(record.original.data)})
        self.assertEqual(observed, [record.original.data])
        self.assertEqual(result["status"], "input-changed")
        self.assertFalse(result["postcheck_passed"])
        final = json.loads((self.root / "run/receipt.json").read_text())
        self.assertFalse(final["kernel_checked"])
        self.assertEqual(final["commands"][-1]["command_sha256"], result["command_sha256"])
        self.assertEqual(stat.S_IMODE(record.snapshot.path.stat().st_mode), 0o400)

    def test_snapshot_edit_restore_rejected(self):
        _, _, record = self.input_fixture()
        os.chmod(record.snapshot.path, 0o600)
        record.snapshot.path.write_bytes(b"transient changed statement")
        record.snapshot.path.write_bytes(record.original.data)
        os.chmod(record.snapshot.path, 0o400)
        with self.assertRaises(ValueError):
            checker.verify_input(record)

    def test_sealed_directory_swap_restore_rejected(self):
        _, frozen, record = self.input_fixture()
        sealed = checker.seal_frozen_source(frozen)
        replacement = frozen.parent / "replacement"
        checker.make_directory(replacement)
        checker.write_exclusive(replacement / record.logical_path,
                                b"theorem a : 2 = 2 := rfl\n", readonly=True)
        checker.seal_frozen_source(replacement)
        stored = frozen.parent / "stored"
        os.rename(frozen, stored)
        os.rename(replacement, frozen)
        observed = (frozen / record.logical_path).read_bytes()
        os.rename(frozen, replacement)
        os.rename(stored, frozen)
        self.assertNotEqual(observed, record.original.data)
        checker.verify_input(record)  # Final file/inode bytes were restored.
        with self.assertRaises(ValueError):
            checker.verify_sealed_source(frozen, sealed)

    def test_negative_oracle_requires_exact_single_source_error(self):
        relative = "MoebiusControls/ASBNP04_private.lean"
        name = "_private.MoebiusControls.ASBNP04_private.0.ASBNP04.hostileCustomAxiom"
        intended = f"{relative}:5:0: error: Unapproved axiom {name} in {name}\n"
        self.assertTrue(checker.strict_custom_axiom_diagnostic(intended, relative, "ASBNP04")[0])
        unrelated = [intended + "other.lean:7:0: error: unknown constant bad\n",
                     intended + "error: unrelated unknown constant\n",
                     intended + "other.lean:2:0: warning: deprecated command\n",
                     intended + "other.lean:2:0: error(lean.invalidField): Invalid field\n",
                     intended.replace(":5:0:", ":6:0:"),
                     intended.replace(relative, "other.lean"),
                     intended.replace("in " + name, "in ASBNP04.unrelated"),
                     "error: Unapproved axiom hostileCustomAxiom\nerror: unknown constant\n",
                     intended + "  error: failed to import module\n"]
        for text in unrelated:
            with self.subTest(text=text):
                self.assertFalse(checker.strict_custom_axiom_diagnostic(text, relative, "ASBNP04")[0])

    def test_timeout_stops_child_and_preserves_progress(self):
        frozen = self.root / "source"
        checker.make_directory(frozen)
        checker.make_directory(self.root / "logs")
        receipt = {"status": "running", "kernel_checked": False}
        runner = checker.CommandRunner(self.root, frozen, receipt, lambda: None, {}, 1)
        class FakeProcess:
            returncode, pid, calls = -9, 999999, 0
            def __init__(self, *args, **options):
                pass
            def communicate(self, timeout=None):
                self.calls += 1
                if self.calls == 1:
                    raise checker.subprocess.TimeoutExpired("mock", timeout)
                return "partial stdout\n", "partial stderr\n"
            def poll(self):
                return None if self.calls == 1 else self.returncode
            def wait(self, timeout=None):
                return self.returncode
        with patch.object(checker.subprocess, "Popen", FakeProcess), patch.object(checker.os, "killpg") as kill:
            result = runner.run("bounded-timeout", ["mock"], {})
            kill.assert_called_once()
        self.assertEqual(result["status"], "timed-out")
        self.assertIn("partial stdout", result["text"])
        final = json.loads((self.root / "receipt.json").read_text())
        self.assertEqual(final["status"], "timed-out")
        self.assertFalse(final["kernel_checked"])

    def integration_fixture(self):
        sources = {OWNERS[0]: b"import Mathlib\ntheorem a : 1 = 1 := rfl\n",
                   OWNERS[1]: b"import GRWTSK.Analysis.Exact\n",
                   OWNERS[2]: b"import GRWTSK.Logic.KernelAudit\n"}
        for name, data in sources.items():
            checker.write_exclusive(self.root / (name.replace(".", "/") + ".lean"), data)
        fixture_bytes = {".gitignore": b".local/\n", "lean-toolchain": b"leanprover/lean4:v4.33.0\n",
                         "lakefile.toml": f'rev = "{REVISION}"\n'.encode(),
                         "lake-manifest.json": json.dumps({"packages": [{"name": "mathlib", "rev": REVISION, "type": "git"}]}).encode(),
                         "scripts/check_math_layout.py": MOCK_POLICY}
        for relative in ("scripts/moebius_response_inputs.py", "scripts/moebius_owner_census.py",
                         "scripts/check_moebius_response.py", "checks/MoebiusResponseOwnerAudit.lean"):
            fixture_bytes[relative] = (REPO / relative).read_bytes()
        for relative, data in fixture_bytes.items():
            checker.write_exclusive(self.root / relative, data)
        packages, lean = self.root / "cache", self.root / "toolchain/bin/lean"
        checker.write_exclusive(packages / "mathlib/.lake/build/lib/lean/Mathlib.olean", b"mock object")
        checker.write_exclusive(self.root / "toolchain/lib/lean/Lean.olean", b"mock core object")
        checker.write_exclusive(lean, b"not an executable compiler; never invoked")
        os.chmod(lean, 0o700)
        assets = {relative: checker.digest(data) for relative, data in fixture_bytes.items()
                  if relative != ".gitignore" and not relative.endswith(".lean")}
        manifest = {"schema_version": 1,
            "modules": {name: {"path": name.replace(".", "/") + ".lean", "sha256": checker.digest(data),
                               "imports": checker.imports(data.decode())} for name, data in sources.items()},
            "audit_module": OWNERS[1], "aggregator_module": OWNERS[2],
            "lean_version": "Mock Lean 4.33.0", "lean_sha256": checker.digest(lean.read_bytes()),
            "package_anchors": [{"path": "mathlib/.lake/build/lib/lean/Mathlib.olean",
                                 "sha256": checker.digest(b"mock object")}],
            "assets": assets, "dependency_revisions": {"mathlib": REVISION},
            "dependency_lock_sha256": checker.digest(fixture_bytes["lake-manifest.json"]),
            "owner_census": {"helper_module": "MoebiusResponseOwnerAudit", "parser_asset": "scripts/moebius_owner_census.py",
                "runtime_exceptions_allowed": False, "helper": {"path": "checks/MoebiusResponseOwnerAudit.lean",
                    "sha256": checker.digest(fixture_bytes["checks/MoebiusResponseOwnerAudit.lean"]), "imports": ["Lean"]}}}
        checker.write_exclusive(self.root / "evidence/moebius-response-sources.json", json.dumps(manifest).encode())
        return packages, lean, sources

    @staticmethod
    def mock_census():
        declaration = {"module": OWNERS[0], "name": "a", "kind": "theorem", "type": "1 = 1", "unsafe": False,
            "partial": False, "known_generated_runtime_helper": False, "runtime_helper_owner_source_sha256": "",
            "direct_value_reference_to_runtime_helper": False, "axioms": []}
        lines = ["MATH_TRUST_DECL::" + json.dumps(declaration)]
        lines += ["MATH_TRUST_MODULE::" + json.dumps({"module": owner, "declarations": int(owner == OWNERS[0])})
                  for owner in OWNERS]
        return "\n".join(lines) + "\nMATH_TRUST_COUNT::1\nMATH_TRUST_MODULE_COUNT::3\n"

    def orchestration(self, variant="clean"):
        packages, lean, sources = self.integration_fixture()
        observed, control = [], self
        class FakeProcess:
            pid, returncode = 999999, 0
            def __init__(self, argv, **options):
                self.argv, self.options = argv, options
            def wait(self, timeout=None):
                return self.returncode
            def communicate(self, timeout=None):
                argv, stdout = self.argv, ""
                if argv[0] == "git":
                    if argv[1:] == ["rev-parse", "HEAD"]:
                        stdout = REVISION + "\n"
                    elif argv[1:] != ["status", "--porcelain=v1", "--untracked-files=no"]:
                        raise AssertionError("Unexpected mocked Git input: " + repr(argv))
                elif argv[0] == "ps":
                    control.assertEqual(argv, ["ps", "-axo", "pid=,args="])
                elif "--json" in argv:
                    control.assertEqual(argv[0], sys.executable)
                    control.assertEqual(argv[1], "-B")
                    control.assertTrue(Path(argv[2]).is_relative_to(control.root / ".local/checks"))
                    control.assertEqual(argv[-3:], ["--root", str(control.root), "--json"])
                    stdout = json.dumps({"status": "FAIL" if variant == "layout-failure" else "PASS", "report_only": False})
                    self.returncode = int(variant == "layout-failure")
                elif "--version" in argv:
                    control.assertEqual(argv, [str(lean), "--version"])
                    stdout = "Mock Lean 4.33.0\n"
                elif "--print-prefix" in argv:
                    control.assertEqual(argv, [str(lean), "--print-prefix"])
                    stdout = str(control.root / "toolchain") + "\n"
                elif argv[-1].endswith(".lean"):
                    control.assertEqual(argv[0], str(lean))
                    for required in ("--trust=0", "--memory=4096", "--threads=1", "-DwarningAsError=true"):
                        control.assertIn(required, argv)
                    snapshot = self.options["cwd"] / argv[-1]
                    control.assertTrue(snapshot.is_relative_to(control.root / ".local/checks"))
                    control.assertEqual(self.options["cwd"].stat().st_mode & 0o777, 0o500)
                    control.assertEqual(snapshot.stat().st_mode & 0o777, 0o400)
                    data = snapshot.read_bytes()
                    if argv[-1] == "GRWTSK/Analysis/Exact.lean":
                        original = control.root / "GRWTSK/Analysis/Exact.lean"
                        if variant == "source-edit-restore":
                            original.write_bytes(b"import Mathlib\ntheorem a : 2 = 2 := rfl\n")
                        observed.append(snapshot.read_bytes())
                        if variant == "source-edit-restore":
                            original.write_bytes(sources[OWNERS[0]])
                    if "-o" in argv:
                        artifact = Path(argv[argv.index("-o") + 1])
                        checker.write_exclusive(artifact, b"mock object " + checker.digest(data).encode())
                        checker.write_exclusive(Path(str(artifact) + ".private"), b"mock private object")
                    if argv[-1] == "GRWTSK/Logic/KernelAudit.lean":
                        stdout = "Kernel axiom audit passed for 1 declarations.\n"
                    elif argv[-1] == "MoebiusResponseOwnerCensus.lean":
                        stdout = control.mock_census()
                    elif argv[-1].startswith("MoebiusControls/"):
                        stem = Path(argv[-1]).stem
                        namespace, visibility = stem.rsplit("_", 1)
                        name = (f"_private.MoebiusControls.{stem}.0." if visibility == "private" else "") + namespace + ".hostileCustomAxiom"
                        stdout = f"{argv[-1]}:5:0: error: Unapproved axiom {name} in {name}\n"
                        self.returncode = 1
                        if variant == "extra-control-error":
                            stdout += "other.lean:2:0: error(lean.invalidField): unrelated failure\n"
                else:
                    raise AssertionError("Unexpected child command: " + repr(argv))
                return stdout, ""
        if variant == "lock-pin-drift":
            path = self.root / "evidence/moebius-response-sources.json"
            manifest = json.loads(path.read_text())
            manifest["dependency_lock_sha256"] = "0" * 64
            path.write_text(json.dumps(manifest))
        args = ["checker", "--root", str(self.root), "--lean", str(lean), "--packages", str(packages)]
        with patch.object(checker.subprocess, "Popen", FakeProcess), patch.object(sys, "argv", args), \
             contextlib.redirect_stdout(io.StringIO()), contextlib.redirect_stderr(io.StringIO()):
            outcome = checker.main()
        expected = int(variant != "clean")
        self.assertEqual(outcome, expected)
        receipts = list((self.root / ".local/checks").glob("*/receipt.json"))
        self.assertEqual(len(receipts), 1)
        receipt_path, receipt = receipts[0], json.loads(receipts[0].read_text())
        if variant == "clean":
            self.assertTrue(receipt["kernel_checked"])  # Classifier behavior under mocked processes only.
            self.assertIn("complete_owner_census", receipt)
            self.assertEqual(len(receipt["custom_axiom_negative_controls"]), 10)
            for module in receipt["checked_modules"]:
                self.assertEqual(set(module["artifact_families"]), {".olean", ".olean.private"})
            receipt.update(mocked_pipeline_reported_kernel_checked=True, kernel_checked=False,
                           status="pure-python-mocked-completion-no-kernel-claim", native_processes_mocked=True)
            checker.atomic_json(receipt_path, receipt)
        else:
            self.assertFalse(receipt["kernel_checked"])
            self.assertEqual(receipt["status"], "failed")
        if variant == "source-edit-restore":
            self.assertEqual(observed, [sources[OWNERS[0]]])
        self.records.append({"control": variant, "receipt": str(receipt_path), "native_invocations": 0, "git_invocations": 0})

    def test_mocked_full_orchestration(self):
        self.orchestration()

    def test_mocked_orchestration_rejects_unrelated_error(self):
        self.orchestration("extra-control-error")

    def test_mocked_orchestration_rejects_source_restore(self):
        self.orchestration("source-edit-restore")

    def test_mocked_orchestration_requires_fatal_layout(self):
        self.orchestration("layout-failure")

    def test_mocked_orchestration_rejects_lock_pin_and_absent_manifest(self):
        self.orchestration("lock-pin-drift")
        missing = self.root / "absent-manifest"
        checker.make_directory(missing)
        args = ["checker", "--root", str(missing), "--validate-only"]
        with patch.object(sys, "argv", args), contextlib.redirect_stderr(io.StringIO()):
            self.assertEqual(checker.main(), 1)
        self.assertFalse(list(missing.rglob("*.olean")))


class LifecycleControls(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.base = TEMP_ROOT / ("moebius-lifecycle-controls-" + checker.uuid.uuid4().hex)
        checker.make_directory(cls.base, exclusive=True)
        cls.records = []

    def setUp(self):
        self.root = self.base / self._testMethodName
        checker.make_directory(self.root, exclusive=True)
        self.no_children = patch.object(checker.subprocess, "Popen",
            side_effect=AssertionError("Unmocked child process is forbidden in a pure control"))
        self.no_children.start()
        self.addCleanup(self.no_children.stop)

    def run_recipe(self, recipe):
        state = self.root / recipe
        checker.make_directory(state / "source", exclusive=True)
        checker.make_directory(state / "logs", exclusive=True)
        receipt, events, control = {}, [], self
        class FakeChild:
            pid, returncode, calls = 987654, None, 0
            def __init__(self, argv, **options):
                events.append("spawn")
                if recipe == "spawn-failure":
                    raise OSError("original spawn failure")
            def communicate(self, timeout=None):
                self.calls += 1
                events.append("communicate")
                durable = json.loads((state / "receipt.json").read_text())
                control.assertEqual(durable["commands"][-1]["child_pid"], self.pid)
                if self.calls == 1:
                    if recipe == "normal":
                        self.returncode = 0
                        return "normal stdout\n", ""
                    if recipe in {"timeout", "timeout-parent-exited-group-alive"}:
                        if recipe == "timeout-parent-exited-group-alive":
                            self.returncode = 0
                        raise checker.subprocess.TimeoutExpired("mock", timeout)
                    if recipe == "interrupt":
                        raise KeyboardInterrupt
                    if recipe == "already-exited":
                        self.returncode = 0
                    raise OSError("original pipe failure")
                if recipe == "pipe-failure":
                    raise OSError("persistent pipe failure during cleanup")
                return "partial stdout\n", "partial stderr\n"
            def poll(self):
                events.append("poll")
                if recipe == "already-exited":
                    self.returncode = 0
                elif recipe == "exit-race":
                    self.returncode = 0
                    return None  # Exit occurs immediately after the observed running state.
                return self.returncode
            def wait(self, timeout=None):
                events.append("wait")
                control.assertLessEqual(timeout, 30)
                control.assertIsNotNone(self.returncode)
                return self.returncode
        child = []
        def spawn(argv, **options):
            process = FakeChild(argv, **options)
            child.append(process)
            return process
        def kill_group(pid, signal):
            events.append("killpg")
            control.assertEqual(pid, child[0].pid)
            if recipe in {"vanished-group", "exit-race", "already-exited"}:
                child[0].returncode = 0
                raise ProcessLookupError("mock process group already gone")
            if recipe != "timeout-parent-exited-group-alive":
                child[0].returncode = -9
        runner = checker.CommandRunner(state, state / "source", receipt, lambda: None, {}, 1)
        with patch.object(checker.subprocess, "Popen", spawn), patch.object(checker.os, "killpg", kill_group):
            if recipe == "interrupt":
                with self.assertRaises(KeyboardInterrupt):
                    runner.run(recipe, ["mock-lean"], {})
                result = receipt["commands"][-1]
                result["text"] = (state / result["log"]).read_text()
            else:
                result = runner.run(recipe, ["mock-lean"], {})
        durable = json.loads((state / "receipt.json").read_text())
        self.assertFalse(durable["kernel_checked"])
        if recipe == "spawn-failure":
            self.assertNotIn("child_pid", result)
            self.assertEqual(events, ["spawn"])
        else:
            self.assertTrue(result["child_reaped"])
            self.assertEqual(result["child_exit_code"], child[0].returncode)
            self.assertEqual(durable["commands"][-1]["child_pid"], child[0].pid)
            self.assertIn("wait", events)
            self.assertNotIn("cleanup_error", result)
        self.records.append({"control": recipe, "events": events, "receipt": str(state / "receipt.json"),
                             "native_invocations": 0, "git_invocations": 0})
        return result, events

    def test_pid_is_durable_before_communication(self):
        result, events = self.run_recipe("normal")
        self.assertEqual(result["status"], "completed")
        self.assertNotIn("killpg", events)

    def test_spawn_failure_does_not_signal_or_reap_uncreated_child(self):
        result, events = self.run_recipe("spawn-failure")
        self.assertEqual(result["status"], "failed")
        self.assertIn("original spawn failure", result["text"])

    def test_generic_pipe_failure_terminates_reaps_and_retains_original_error(self):
        result, events = self.run_recipe("pipe-failure")
        self.assertEqual(result["status"], "failed")
        self.assertIn("original pipe failure", result["text"])
        self.assertIn("persistent pipe failure", result["cleanup_output_error"])
        self.assertLess(events.index("killpg"), events.index("wait"))

    def test_timeout_terminates_reaps_and_preserves_partial_diagnostics(self):
        result, events = self.run_recipe("timeout")
        self.assertEqual(result["status"], "timed-out")
        self.assertIn("partial stdout", result["text"])
        self.assertIn("partial stderr", result["text"])
        self.assertIn("timed out", result["text"])
        self.assertEqual(events.count("killpg"), 1)

    def test_vanished_process_group_is_tolerated_and_child_is_reaped(self):
        result, events = self.run_recipe("vanished-group")
        self.assertEqual(result["status"], "failed")
        self.assertIn("original pipe failure", result["text"])
        self.assertEqual(result["child_exit_code"], 0)

    def test_exited_parent_does_not_skip_termination_of_live_group(self):
        result, events = self.run_recipe("timeout-parent-exited-group-alive")
        self.assertEqual(result["status"], "timed-out")
        self.assertEqual(result["child_exit_code"], 0)
        self.assertEqual(events.count("killpg"), 1)
        self.assertLess(events.index("killpg"), events.index("wait"))

    def test_interruption_is_reraised_after_child_cleanup_and_receipt(self):
        result, events = self.run_recipe("interrupt")
        self.assertEqual(result["status"], "interrupted")
        self.assertIn("Checker interrupted", result["text"])
        self.assertEqual(events.count("killpg"), 1)

    def test_child_exit_before_or_during_cleanup_is_reaped(self):
        for recipe in ("already-exited", "exit-race"):
            with self.subTest(recipe=recipe):
                result, events = self.run_recipe(recipe)
                self.assertEqual(result["status"], "failed")
                self.assertIn("original pipe failure", result["text"])
                self.assertEqual(result["child_exit_code"], 0)
                self.assertEqual(events.count("killpg"), 1)


def main():
    suite = unittest.TestSuite([unittest.defaultTestLoader.loadTestsFromTestCase(CheckerControls),
                               unittest.defaultTestLoader.loadTestsFromTestCase(LifecycleControls)])
    result = unittest.TextTestRunner(verbosity=2).run(suite)
    report = {"status": "pure-python-controls-passed" if result.wasSuccessful() else "pure-python-controls-failed",
        "tests_run": result.testsRun, "failures": len(result.failures), "errors": len(result.errors),
        "checker_sha256": hashlib.sha256((REPO / "scripts/check_moebius_response.py").read_bytes()).hexdigest(),
        "harness_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "kernel_checked": False, "native_invocations": 0, "git_invocations": 0,
        "scope": "Source-binding/oracle/mock-orchestration controls; synthetic sources/cache and stub policy supply no Lean or canonical admission evidence.",
        "preserved_receipts": CheckerControls.records + LifecycleControls.records,
        "failure_details": [{"test": str(test), "traceback": text} for test, text in result.failures + result.errors]}
    receipt = CheckerControls.base / "regressions.json"
    checker.atomic_json(receipt, report)
    print("Receipt:", receipt)
    return int(not result.wasSuccessful())


if __name__ == "__main__":
    raise SystemExit(main())
