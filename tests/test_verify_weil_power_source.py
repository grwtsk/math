import sys, json, tempfile, unittest
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1];sys.path.insert(0,str(ROOT/'scripts'))
import verify_weil_power_source as R

class ReplayControls(unittest.TestCase):
    def test_duplicate_json(self):
        with self.assertRaises(ValueError):R.decode('{"x":1,"x":2}')
    def test_nonfinite_json(self):
        for s in ('NaN','Infinity','-Infinity'):
            with self.assertRaises(ValueError):R.decode('{"x":'+s+'}')
    def test_empty_source(self):
        with self.assertRaises(ValueError):R.validate_source({})
    def test_boolean_not_number(self):
        x={'schema':'weil-prime-discrepancy-v1','profiles':[{}, {}, {}],'RH':0,'native_Lean':False,'uniform_source_lower_bound':False}
        with self.assertRaises(ValueError):R.validate_source(x)
    def test_promoted_status(self):
        x={'schema':'weil-prime-discrepancy-v1','profiles':[{}, {}, {}],'RH':True}
        with self.assertRaises(ValueError):R.validate_source(x)
    def test_missing_input(self):
        with tempfile.TemporaryDirectory() as d:
            with self.assertRaises(ValueError):R.check_inputs({'missing':{'bytes':1,'sha256':'x'}},Path(d))
    def test_altered_input(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d);(p/'x').write_bytes(b'bad')
            with self.assertRaises(ValueError):R.check_inputs({'x':{'bytes':3,'sha256':R.digest(b'yes')}},p)
    def test_path_escape(self):
        with self.assertRaises(ValueError):R.check_inputs({'../x':{}},Path('/tmp'))
    def test_absolute_path(self):
        with self.assertRaises(ValueError):R.check_inputs({'/tmp/x':{}},Path('/tmp'))
    def test_symlink_input(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d);(p/'a').write_bytes(b'x');(p/'b').symlink_to(p/'a')
            with self.assertRaises(ValueError):R.check_inputs({'b':{'bytes':1,'sha256':R.digest(b'x')}},p)
    def test_exact_input(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d);(p/'x').write_bytes(b'correct')
            R.check_inputs({'x':{'bytes':7,'sha256':R.digest(b'correct')}},p)
    def test_archive_verified_without_extraction(self):
        m=R.archive_members()
        self.assertIn('scripts/weil_compact_power.py',m)
        self.assertEqual(len([x for x in m if '/candidates/' in x]),2)

if __name__=='__main__':unittest.main()
