#!/usr/bin/env python3
"""Replay-boundary controls. No claim about Lean elaboration or global zeros."""
from collections import Counter
from pathlib import Path
import tempfile
import unittest
import replay_quartic_source as replay

class Inputs(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.text=(replay.ROOT/replay.PATCH).read_text()
        cls.audit=(replay.ROOT/replay.AUDIT).read_text()
        cls.modules=replay.extract_additions(cls.text)
    def test_pinned_sources(self):
        for name,sha in replay.PINS.items():
            self.assertEqual(replay.digest((replay.ROOT/name).read_bytes()),sha)
    def test_exact_inventory(self):
        out=replay.inventory(self.modules,self.audit)
        self.assertEqual(out['written_theorem_declarations'],53)
        self.assertEqual(out['candidate_modules'],8)
        self.assertIs(out['native_axiom_audit'],False)
    def test_duplicate_module(self):
        with self.assertRaises(ValueError):replay.extract_additions(self.text+self.text)
    def test_unsafe_path(self):
        bad=self.text.replace('GRWTSK/Algebra/Polynomial/QuadraticLift.lean','../QuadraticLift.lean')
        with self.assertRaises(ValueError):replay.extract_additions(bad)
    def test_modified_existing_file_rejected(self):
        with self.assertRaises(ValueError):replay.extract_additions(self.text.replace('--- /dev/null','--- a/existing',1))
    def test_hunk_not_full_addition(self):
        with self.assertRaises(ValueError):replay.extract_additions(self.text.replace('@@ -0,0','@@ -1,1',1))
    def test_truncated_payload(self):
        with self.assertRaises(ValueError):replay.extract_additions(self.text.rsplit('\n',3)[0])
    def test_absent_module(self):
        start=self.text.find('diff --git ',1)
        with self.assertRaises(ValueError):replay.extract_additions(self.text[start:])
    def test_duplicate_axiom_request(self):
        row=next(l for l in self.audit.splitlines() if l.startswith('#print axioms'))
        with self.assertRaises(ValueError):replay.inventory(self.modules,self.audit+row+'\n')
    def test_missing_axiom_request(self):
        row=next(l for l in self.audit.splitlines() if l.startswith('#print axioms'))
        with self.assertRaises(ValueError):replay.inventory(self.modules,self.audit.replace(row+'\n',''))
    def test_audit_imports_exact(self):
        row=next(l for l in self.audit.splitlines() if l.startswith('import '))
        with self.assertRaises(ValueError):replay.inventory(self.modules,self.audit+row+'\n')
    def test_no_write_to_candidate_paths(self):
        # Parsing returns bytes without applying a patch or installing candidates.
        self.assertTrue(all(isinstance(v,bytes) for v in self.modules.values()))
    def test_preserve_output_directory(self):
        with tempfile.TemporaryDirectory() as tmp:
            p=Path(tmp);(p/'keep').write_text('retained')
            with self.assertRaises(ValueError):replay.run_replay(p)
            self.assertEqual((p/'keep').read_text(),'retained')

class Certificates(unittest.TestCase):
    def test_key_order_irrelevant(self):
        self.assertTrue(replay.equal_records({'a':1,'b':2},{'b':2,'a':1}))
    def test_boolean_integer_not_interchangeable(self):
        self.assertFalse(replay.equal_records({'RH':False},{'RH':0}))
    def test_extra_claim_not_ignored(self):
        self.assertFalse(replay.equal_records({'x':1},{'x':1,'RH':True}))
    def test_changed_coefficient_rejected(self):
        self.assertFalse(replay.equal_records({'lo':'1/2'},{'lo':'1/3'}))
    def test_duplicate_keys_rejected(self):
        with tempfile.TemporaryDirectory() as tmp:
            p=Path(tmp)/'a.json';p.write_text('{"x":1,"x":2}')
            with self.assertRaises(ValueError):replay.read_json(p)
    def test_nonfinite_json_rejected(self):
        with tempfile.TemporaryDirectory() as tmp:
            p=Path(tmp)/'a.json';p.write_text('{"x":NaN}')
            with self.assertRaises(ValueError):replay.read_json(p)
    def test_stored_scope_is_finite(self):
        obj=replay.read_json(replay.ROOT/replay.REGIONS)
        self.assertEqual(len(obj['divisors']),3)
        for name in ('all_height_claim','new_region_claim','single_orbit_positivity_claim','native_lean_admission'):
            self.assertIs(obj[name],False)

if __name__=='__main__':unittest.main()
