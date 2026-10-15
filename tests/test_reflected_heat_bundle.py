#!/usr/bin/env python3
"""Failure-path tests for the pinned wrapper; no new arithmetic assertion."""
from pathlib import Path
import copy
import hashlib
import json
import sys
import tempfile
import unittest
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import verify_reflected_heat_bundle as b


class BundleGuards(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.root = Path(self.temp.name)
        (self.root / 'data.txt').write_bytes(b'source\n')
        self.inputs = {'data.txt': b.fingerprint(self.root / 'data.txt')}

    def tearDown(self):
        self.temp.cleanup()

    def core(self):
        return {'schema': 'screw-hodge-transfer-replay-v1', 'modes': ['normal'],
                'sympy': '1.14.0', 'tests_per_mode': 64, 'source_bindings': self.inputs,
                'finite_replay': 'PASSED', 'cross_precision_overlap': True,
                'independent_mobius_factorization_through': 4096,
                'continuum_proofs': 'WRITTEN_NOT_KERNEL_CHECKED',
                'new_Lean_admissions': 0, 'RH': False, 'new_zeta_zero_exclusion': False,
                'global_positive_boundary_approximation': False,
                'steps': [{'label': 'finite-tests', 'mode': 'normal', 'returncode': 0,
                           'stdout': '', 'stderr': 'Ran 64 tests in 1s\n\nOK\n'},
                          *[{'label': f'endpoint-{bits}', 'mode': 'normal', 'returncode': 0,
                             'stdout': '{"verified": true, "new_zeta_zero_exclusion": false}',
                             'stderr': ''} for bits in (160, 192)]]}

    def test_01_exact_inputs_pass(self):
        self.assertEqual(b.check_inputs(self.root, self.inputs), self.inputs)

    def test_02_changed_source_fails(self):
        (self.root / 'data.txt').write_bytes(b'altered')
        with self.assertRaises(b.VerificationError):
            b.check_inputs(self.root, self.inputs)

    def test_03_missing_source_fails(self):
        (self.root / 'data.txt').unlink()
        with self.assertRaises(b.VerificationError):
            b.check_inputs(self.root, self.inputs)

    def test_04_boolean_byte_count_fails(self):
        self.inputs['data.txt']['bytes'] = True
        with self.assertRaises(b.VerificationError):
            b.check_inputs(self.root, self.inputs)

    def test_05_bad_digest_fails(self):
        self.inputs['data.txt']['sha256'] = '0' * 63
        with self.assertRaises(b.VerificationError):
            b.check_inputs(self.root, self.inputs)

    def test_06_unknown_descriptor_field_fails(self):
        self.inputs['data.txt']['approved'] = True
        with self.assertRaises(b.VerificationError):
            b.check_inputs(self.root, self.inputs)

    def test_07_noncanonical_paths_fail(self):
        for name in ('/etc/passwd', '../data.txt', './data.txt', 'a//b', 'a/../data.txt', 'a\\b', ''):
            with self.subTest(name=name), self.assertRaises(b.VerificationError):
                b.safe_file(self.root, name)

    def test_08_symlink_file_fails(self):
        (self.root / 'link').symlink_to(self.root / 'data.txt')
        with self.assertRaises(b.VerificationError):
            b.safe_file(self.root, 'link')

    def test_09_symlink_directory_fails(self):
        (self.root / 'link').symlink_to(self.root, target_is_directory=True)
        with self.assertRaises(b.VerificationError):
            b.safe_file(self.root, 'link/data.txt')

    def test_10_duplicate_json_fails(self):
        for text in ('{"a":1,"a":2}', '{"a":{"x":1,"x":2}}'):
            with self.assertRaises(b.VerificationError):
                b.read_json(text)

    def test_11_nonfinite_json_fails(self):
        for value in ('NaN', 'Infinity', '-Infinity'):
            with self.assertRaises(b.VerificationError):
                b.read_json('{"x":' + value + '}')

    def test_12_resource_limit_fails(self):
        with patch.object(b, 'MAX_FILE_BYTES', 3):
            with self.assertRaises(b.VerificationError):
                b.fingerprint(self.root / 'data.txt')
            with self.assertRaises(b.VerificationError):
                b.read_json('{"x":1}')

    def test_13_pinset_digest_checked(self):
        path = self.root / b.PIN_PATH
        path.parent.mkdir(parents=True)
        path.write_text('{"schema":"invented"}')
        with self.assertRaisesRegex(b.VerificationError, 'pinset binding'):
            b.load_pinset(self.root)

    def test_14_pinned_schema_and_source_base_checked(self):
        path = self.root / b.PIN_PATH
        path.parent.mkdir(parents=True)
        raw = json.dumps({'schema': 'reflected-heat-replay-inputs-v1',
                          'base_commit': 'wrong', 'inputs': self.inputs}).encode()
        path.write_bytes(raw)
        with patch.object(b, 'PIN_SHA256', hashlib.sha256(raw).hexdigest()):
            with self.assertRaisesRegex(b.VerificationError, 'source base'):
                b.load_pinset(self.root)

    def test_15_complete_core_report_passes(self):
        b.validate_core_report(self.core(), 'normal', self.inputs)

    def test_16_mode_and_count_mismatch_fail(self):
        for key, value in (('modes', ['optimized']), ('tests_per_mode', 63), ('tests_per_mode', True), ('sympy', 'wrong')):
            report = self.core(); report[key] = value
            with self.assertRaises(b.VerificationError):
                b.validate_core_report(report, 'normal', self.inputs)

    def test_17_unsupported_statuses_fail(self):
        for key, value in [('RH', True), ('new_Lean_admissions', 1),
                           ('continuum_proofs', 'PROVED'), ('new_zeta_zero_exclusion', 0),
                           ('global_positive_boundary_approximation', None)]:
            report = self.core(); report[key] = value
            with self.assertRaises(b.VerificationError):
                b.validate_core_report(report, 'normal', self.inputs)

    def test_18_incomplete_or_duplicate_step_inventory_fails(self):
        for steps in ([], self.core()['steps'][:2], [self.core()['steps'][0]] * 3):
            report = self.core(); report['steps'] = steps
            with self.assertRaises(b.VerificationError):
                b.validate_core_report(report, 'normal', self.inputs)

    def test_19_failed_or_missing_log_fails(self):
        for change in ({'returncode': 1}, {'stderr': None}, {'returncode': False}):
            report = self.core(); report['steps'][0].update(change)
            with self.assertRaises(b.VerificationError):
                b.validate_core_report(report, 'normal', self.inputs)

    def test_20_test_summary_and_endpoint_flags_checked(self):
        report = self.core(); report['steps'][0]['stderr'] = 'Ran 0 tests\nOK'
        with self.assertRaises(b.VerificationError):
            b.validate_core_report(report, 'normal', self.inputs)
        report = self.core(); report['steps'][1]['stdout'] = '{"verified": 1, "new_zeta_zero_exclusion": false}'
        with self.assertRaises(b.VerificationError):
            b.validate_core_report(report, 'normal', self.inputs)

    def test_21_executed_source_bindings_checked(self):
        report = self.core(); report['source_bindings'] = {}
        with self.assertRaises(b.VerificationError):
            b.validate_core_report(report, 'normal', self.inputs)

    def test_22_source_check_does_not_execute_project_code(self):
        script = self.root / 'exploit.py'
        script.write_text('raise RuntimeError("must not execute")\n')
        pins = {'exploit.py': b.fingerprint(script)}
        self.assertEqual(b.check_inputs(self.root, pins), pins)

    def test_23_failure_retains_subprocess_output(self):
        child = b.subprocess.CompletedProcess([], 2, 'partial output', 'failure detail')
        steps = []
        with patch.object(b.subprocess, 'run', return_value=child):
            with self.assertRaises(b.VerificationError):
                b.execute('normal', 'failure', ['-c', 'pass'], steps)
        self.assertEqual(steps[0]['stdout'], 'partial output')
        self.assertEqual(steps[0]['stderr'], 'failure detail')
        self.assertEqual(steps[0]['returncode'], 2)

    def test_24_timeout_retains_partial_output(self):
        failure = b.subprocess.TimeoutExpired(['test'], 180, output=b'partial', stderr=b'timeout')
        steps = []
        with patch.object(b.subprocess, 'run', side_effect=failure):
            with self.assertRaises(b.VerificationError):
                b.execute('optimized', 'timeout', ['-c', 'pass'], steps)
        self.assertTrue(steps[0]['timeout'])
        self.assertEqual(steps[0]['stdout'], 'partial')
        self.assertIsNone(steps[0]['returncode'])


if __name__ == '__main__':
    unittest.main()
