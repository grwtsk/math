"""Finite synthetic controls. No theorem or human approval is inferred."""
import copy
import json
from pathlib import Path
import sys
import tempfile
import unittest
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'scripts'))
import taxonomy_expansion as e

F=Path(__file__).resolve().parents[1]/'examples/taxonomy-expansion'
class ExpansionTests(unittest.TestCase):
 def setUp(self):
  self.base=(F/'registry.json').read_bytes();self.delta=(F/'request.json').read_bytes();self.policy=(F/'policy.json').read_bytes()
 def build(self,delta=None,base=None,policy=None):
  return e.build(self.base if base is None else base,self.delta if delta is None else delta,self.policy if policy is None else policy)
 def mutate(self,fn):
  d=e.load(self.delta);fn(d);return e.canonical_bytes(d)
 def test_append_and_two_parents(self):
  result=self.build();b=e.load(self.base);c=e.load(result['candidate.registry.json'])
  self.assertEqual(c['domains'][:len(b['domains'])],b['domains'])
  self.assertEqual(c['domains'][-1]['parents'],['domain:algebra','domain:topology'])
 def test_exact_input_custody(self):
  result=self.build();self.assertEqual(result['input.registry.json'],self.base)
  self.assertEqual(result['input.request.json'],self.delta);self.assertEqual(result['input.policy.json'],self.policy)
 def test_every_assignment_stays_proposed(self):
  h=e.load(self.build()['candidate.handoff.json'])
  self.assertTrue(h['assignments']);self.assertTrue(all(a['review']=='PROPOSED' for a in h['assignments']))
 def test_no_admission(self):
  p=e.load(self.build()['proposal.json'])
  self.assertEqual(p['admission'],'NOT_ESTABLISHED');self.assertEqual(p['native_lean_replay'],'NOT_RUN')
 def test_stale_base_bytes(self):
  with self.assertRaisesRegex(ValueError,'STALE_BASE'):self.build(base=self.base+b' ')
 def test_changed_policy(self):
  with self.assertRaisesRegex(ValueError,'POLICY_IDENTITY'):self.build(policy=self.policy+b' ')
 def test_request_policy_change(self):
  with self.assertRaisesRegex(ValueError,'POLICY_CHANGE'):self.build(self.mutate(lambda d:d.update(policy_sha256='0'*64)))
 def test_replace_existing_domain_forbidden(self):
  old=e.load(self.base)['domains'][1]
  with self.assertRaisesRegex(ValueError,'DUPLICATE_ID'):self.build(self.mutate(lambda d:d['domains'].append(old)))
 def test_self_authorization_field(self):
  with self.assertRaisesRegex(ValueError,'CLOSED_GRAMMAR'):self.build(self.mutate(lambda d:d.update(approved=True)))
 def test_reclassification_field(self):
  with self.assertRaisesRegex(ValueError,'CLOSED_GRAMMAR'):self.build(self.mutate(lambda d:d.update(reclassify=[])))
 def test_cycle(self):
  def bad(d):d['domains'][0]['parents'].append(d['domains'][0]['id'])
  with self.assertRaisesRegex(ValueError,'CYCLE'):self.build(self.mutate(bad))
 def test_missing_parent(self):
  def bad(d):d['domains'][0]['parents'].append('missing')
  with self.assertRaisesRegex(ValueError,'UNRESOLVED_PARENT'):self.build(self.mutate(bad))
 def test_primary_must_be_actual_parent(self):
  def bad(d):d['domains'][0]['primary_parent']='domain:mathematics'
  with self.assertRaisesRegex(ValueError,'PRIMARY_PARENT'):self.build(self.mutate(bad))
 def test_duplicate_parent(self):
  def bad(d):d['domains'][0]['parents'].append('domain:algebra')
  with self.assertRaisesRegex(ValueError,'DUPLICATE'):self.build(self.mutate(bad))
 def test_bool_slot(self):
  def bad(d):d['domains'][0]['slot']=True
  with self.assertRaisesRegex(ValueError,'INVALID_SLOT'):self.build(self.mutate(bad))
 def test_facet_requires_existing_vocabulary(self):
  def bad(d):d['concepts'][0]['facets'].append('invented')
  with self.assertRaisesRegex(ValueError,'UNSUPPORTED_FACET'):self.build(self.mutate(bad))
 def test_source_binding_needs_context(self):
  def bad(d):d['bindings'][0]['environment_id']='main'
  with self.assertRaisesRegex(ValueError,'INVALID_DIGEST'):self.build(self.mutate(bad))
 def test_duplicate_binding_state_not_amplified(self):
  def bad(d):
   b=copy.deepcopy(d['bindings'][0]);b['id']='other';d['bindings'].append(b)
  with self.assertRaisesRegex(ValueError,'MULTIPLE_BINDINGS'):self.build(self.mutate(bad))
 def test_generated_lean_preserves_old_paths(self):
  source=self.build()['structural-obligations.lean'].decode()
  self.assertIn('ConservativeExtension.ofPathsAppend',source);self.assertIn('by decide',source)
  self.assertNotIn('sorry',source);self.assertNotIn('axiom ',source)
 def test_code_injection_is_encoded_as_data(self):
  def bad(d):d['concepts'][0]['definition']='"\naxiom injected : False\n'
  source=self.build(self.mutate(bad))['structural-obligations.lean'].decode()
  self.assertNotIn('axiom injected',source);self.assertIn('Char.ofNat',source)
 def test_duplicate_json_keys(self):
  with self.assertRaisesRegex(ValueError,'DUPLICATE_JSON'):e.load(b'{"x":1,"x":2}')
 def test_float_rejected(self):
  with self.assertRaisesRegex(ValueError,'NONINTEGER'):e.load(b'{"x":1.5}')
 def test_surrogates_rejected(self):
  with self.assertRaises(ValueError):e.load(b'"\\ud800"')
 def test_bounds(self):
  with self.assertRaisesRegex(ValueError,'RESOURCE_BOUNDED'):e.load(b' '*(e.LIMIT+1))
 def test_deterministic(self):self.assertEqual(self.build(),self.build())
 def test_exclusive_output(self):
  with tempfile.TemporaryDirectory() as td:
   out=Path(td)/'out';args=[str(F/'registry.json'),str(F/'request.json'),str(F/'policy.json'),'--out',str(out)]
   self.assertEqual(e.main(args),0);before=(out/'proposal.json').read_bytes()
   self.assertEqual(e.main(args),2);self.assertEqual((out/'proposal.json').read_bytes(),before)

if __name__=='__main__':unittest.main()
