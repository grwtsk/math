import contextlib
import copy
import io
import json
from pathlib import Path
import sys
import tempfile
import unittest
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import taxonomy_handoff as h


def fixture():
    t = {'schema':'decimal-taxonomy/v1','taxonomy_id':'FIXTURE-NOT-PMD','revision':'1','root_id':'r','nodes':[
        {'id':'r','parent':None,'notation':'ROOT','label':'Root'},
        {'id':'a','parent':'r','slot':1,'notation':'001.0100','label':'Algebra'}]}
    a = {'schema':h.ASSIGNMENTS,'taxonomy_id':t['taxonomy_id'],'taxonomy_revision':'1','assignments':[
        {'record_id':'a'*64,'primary':'a','secondary':[],'review':'PROPOSED','rationale':'Synthetic fixture only'}]}
    return t,a


def build(t,a): return h.build(json.dumps(t).encode(),json.dumps(a).encode())


class HandoffTests(unittest.TestCase):
    def test_roundtrip(self):
        t,a=fixture(); x=build(t,a)
        self.assertEqual(x['nodes'][1]['address'],[1]); self.assertEqual(x['nodes'][1]['notation'],'001.0100')
        self.assertEqual(x['assignments'],a['assignments']); self.assertEqual(x['native_lean_replay'],'NOT_RUN')
    def test_revision(self):
        t,a=fixture(); a['taxonomy_revision']='2'
        with self.assertRaises(ValueError):build(t,a)
    def test_duplicate_identity(self):
        t,a=fixture(); a['assignments'].append(copy.deepcopy(a['assignments'][0]))
        with self.assertRaises(ValueError):build(t,a)
    def test_unknown_primary(self):
        t,a=fixture(); a['assignments'][0]['primary']='missing'
        with self.assertRaises(ValueError):build(t,a)
    def test_duplicate_secondary(self):
        t,a=fixture(); a['assignments'][0]['secondary']=['r','r']
        with self.assertRaises(ValueError):build(t,a)
    def test_no_review_promotion(self):
        t,a=fixture(); a['assignments'][0]['review']='PROVED'
        with self.assertRaises(ValueError):build(t,a)
    def test_closed_grammar(self):
        t,a=fixture(); a['proof_admission']=True
        with self.assertRaises(ValueError):build(t,a)
    def test_cli_exclusive(self):
        t,a=fixture()
        with tempfile.TemporaryDirectory() as tmp:
            p=Path(tmp);(p/'t.json').write_text(json.dumps(t));(p/'a.json').write_text(json.dumps(a))
            args=[str(p/'t.json'),str(p/'a.json'),'--out',str(p/'h.json')]
            with contextlib.redirect_stdout(io.StringIO()):self.assertEqual(h.main(args),0)
            with contextlib.redirect_stderr(io.StringIO()):self.assertEqual(h.main(args),2)


if __name__=='__main__':unittest.main()
