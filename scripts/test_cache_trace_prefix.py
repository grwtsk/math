"""Bounded hostile comparison controls; synthetic taxonomy never reaches disk."""
import contextlib
import copy
import io
import json
from pathlib import Path
import unittest
from unittest.mock import patch

import cache_trace_prefix as prefix
import cache_occurrences as traces
import cache_taxonomy as taxonomy
from test_cache_occurrences import SNAPSHOT, encoded, make_trace

ROOT = Path(__file__).resolve().parents[1]


class PrefixTests(unittest.TestCase):
    def setUp(self):
        self.taxonomy = json.loads((ROOT/'cache/taxonomy.json').read_bytes())
        self.taxonomy['identity_inventory']['status'] = 'partial'
        self.taxonomy['records'] = [
            {'id': 'method:fixture-'+v, 'label': 'synthetic control only',
             'primary_family': 'method-family:01', 'method_facets': [],
             'primary_home': {'subject': 'Data', 'object': 'FiniteInventory'}}
            for v in ('a','b','c')]
        self.taxonomy['relations'] += [
            {'id': 'relation:fixture-'+a+b, 'kind': 'dependency', 'category': 'dependency',
             'source': 'method:fixture-'+a, 'target': 'method:fixture-'+b, 'evidence_refs': []}
            for a,b in (('a','b'),('b','a'),('a','c'),('c','a'))]
        self.taxonomy['revision']['id'] = taxonomy.revision_identity(self.taxonomy)
        self.cycle, self.raw = self.trace(['ab','ba'])
        self.long, _ = self.trace(['ab','ba','ab','ba'])

    def trace(self, edges, root='method:fixture-a'):
        doc, raw = make_trace(self.taxonomy, ['relation:fixture-'+v for v in edges], root)
        if not edges:
            doc['relation_kind'] = 'dependency'
        return doc, raw

    def result(self, a=None, b=None):
        return prefix.compare(self.cycle if a is None else a,
                              self.long if b is None else b, self.raw, SNAPSHOT)

    def test_repeated_cycle_exact_prefix(self):
        self.assertTrue(self.result()['is_prefix'])
        self.assertEqual([s['index'] for s in self.long['steps']], [0,1,2,3])

    def test_empty_fixed_root_prefix(self):
        empty,_ = self.trace([])
        self.assertTrue(self.result(empty)['is_prefix'])
        self.assertFalse(self.result(self.cycle,empty)['is_prefix'])

    def test_reflexive_and_separate_document_identity(self):
        other = copy.deepcopy(self.cycle); other['id'] = 'occurrence-trace:separate-file'
        r = self.result(other,self.cycle)
        self.assertTrue(r['is_prefix']); self.assertNotEqual(r['prefix']['id'],r['target']['id'])

    def test_equal_endpoint_length_not_same_history(self):
        other,_ = self.trace(['ac','ca'])
        self.assertEqual(other['end'],self.cycle['end'])
        self.assertEqual(len(other['steps']),len(self.cycle['steps']))
        self.assertFalse(self.result(other,self.cycle)['is_prefix'])
        self.assertFalse(self.result(self.cycle,other)['is_prefix'])

    def test_longer_prefix_rejected_as_false(self):
        self.assertFalse(self.result(self.long,self.cycle)['is_prefix'])

    def test_different_valid_roots_rejected(self):
        other,_ = self.trace(['ba','ab'],'method:fixture-b')
        with self.assertRaisesRegex(traces.TraceError,'different fixed roots'):
            self.result(other)

    def test_different_valid_roles_rejected(self):
        empty,_ = self.trace([]); other=copy.deepcopy(empty);other['relation_kind']='communication'
        with self.assertRaisesRegex(traces.TraceError,'different relation roles'):
            self.result(empty,other)

    def test_both_documents_validated(self):
        for side in ('left','right'):
            a,b=copy.deepcopy(self.cycle),copy.deepcopy(self.long)
            (a if side=='left'else b)['proof_acceptance']='accepted'
            with self.subTest(side=side), self.assertRaisesRegex(traces.TraceError,'cannot assert'):
                self.result(a,b)

    def test_stale_snapshot_either_side(self):
        for side in ('left','right'):
            a,b=copy.deepcopy(self.cycle),copy.deepcopy(self.long)
            (a if side=='left'else b)['source_snapshot']='b'*64
            with self.subTest(side=side),self.assertRaisesRegex(traces.TraceError,'stale source'):
                self.result(a,b)

    def test_same_semantics_different_taxonomy_bytes_rejected(self):
        raw=json.dumps(self.taxonomy,separators=(',',':')).encode()
        with self.assertRaisesRegex(traces.TraceError,'byte/revision identity'):
            prefix.compare(self.cycle,self.long,raw,SNAPSHOT)

    def test_exact_edge_content_and_positions_required(self):
        mutations=[({'relation_sha256':'0'*64},'content drift'),({'index':False},'index mismatch'),
                   ({'source':'method:fixture-b'},'endpoint identity'),
                   ({'relation_id':'relation:fixture-ac'},'content drift')]
        for change,message in mutations:
            b=copy.deepcopy(self.long);b['steps'][0].update(change)
            with self.subTest(change=change),self.assertRaisesRegex(traces.TraceError,message):
                self.result(b=b)

    def test_broken_join_still_rejected(self):
        b,_=self.trace(['ab','ab'])
        with self.assertRaisesRegex(traces.TraceError,'broken endpoint join'):
            self.result(b=b)

    def test_role_direction_and_extra_authority_rejected(self):
        for change,message in [({'direction':'target-to-source'},'direction'),
                               ({'permission':True},'schema fields'),
                               ({'relation_kind':'authorization'},'unknown relation')]:
            b=copy.deepcopy(self.long);b.update(change)
            with self.subTest(change=change),self.assertRaisesRegex(traces.TraceError,message):self.result(b=b)

    def test_bounds_and_hostile_json_retained(self):
        b=copy.deepcopy(self.long);b['steps']*=traces.MAX_STEPS
        with self.assertRaisesRegex(traces.TraceError,'bounded ordered'):self.result(b=b)
        for raw in (b'{"steps":[],"steps":[]}',b'{"x":NaN}',b'\xff',b' '*(traces.MAX_BYTES+1)):
            with self.subTest(size=len(raw)),self.assertRaises(traces.TraceError):traces.unique_json(raw)

    def test_no_authority_fields_promoted(self):
        r=self.result()
        for key in ('proof_acceptance','lean_runtime_refinement','permission_implication'):
            self.assertEqual(r[key],'not-established')

    def run_cli(self, drift=None, explicit=False):
        a,b=self.cycle,self.long
        originals={'left.json':encoded(a),'right.json':encoded(b),'cache/taxonomy.json':self.raw}
        calls={}
        def read(root,name):
            calls[name]=calls.get(name,0)+1
            if drift==name and calls[name]>1:return originals[name]+b' '
            return originals[name]
        refs=iter([SNAPSHOT,'b'*64] if drift=='ref'else[SNAPSHOT,SNAPSHOT])
        args=['left.json','right.json']+(['--revision',SNAPSHOT]if explicit else[])
        with patch.object(prefix.cache_math,'physical_path',return_value=ROOT),patch.object(prefix.cache_math,'verify')as verify,patch.object(prefix.cache_math,'read_bytes',side_effect=read),patch.object(prefix.cache_math,'current',side_effect=lambda root:next(refs)),contextlib.redirect_stdout(io.StringIO())as out:
            prefix.main(args)
            verify.assert_called_once_with(ROOT,SNAPSHOT)
        return json.loads(out.getvalue())

    def test_cli_inputs_bound_separately(self):
        r=self.run_cli();self.assertTrue(r['is_prefix'])
        self.assertEqual([x['path']for x in r['inputs']],['left.json','right.json'])

    def test_cli_each_input_rechecked(self):
        for name in ('left.json','right.json','cache/taxonomy.json'):
            with self.subTest(name=name),self.assertRaisesRegex(traces.TraceError,'comparison input drift'):
                self.run_cli(drift=name)

    def test_cli_current_ref_drift_rejected(self):
        with self.assertRaisesRegex(traces.TraceError,'current snapshot drift'):self.run_cli(drift='ref')

    def test_cli_explicit_retained_revision(self):
        self.assertTrue(self.run_cli(explicit=True)['is_prefix'])


if __name__ == '__main__':
    unittest.main()
