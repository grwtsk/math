#!/usr/bin/env python3
"""Pure controls for source reconstruction; these never run Lean or create acceptance."""
from __future__ import annotations
import copy
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch
import sys
sys.dont_write_bytecode=True
import generate_moebius_response_manifest as gen


class MigrationFixture:
    def __init__(self,root):
        self.root=root; self.archived=[]; self.predictions={}
        self.canonical={'Old.Basic':['GRWTSK.Analysis.Basic'],'Old.Aggregate':['GRWTSK.Analysis.Basic']}
        self.flat={'Flat':'GRWTSK.NumberTheory.Moebius.Flat'}
        simple=[]
        for original,destination,data in [('GRWTSK.lean','GRWTSK.lean',b'import Old.Basic\n'),
            ('Old/Basic.lean','GRWTSK/Analysis/Basic.lean',b'def foundation : Nat := 0\n')]:
            self.archive(original,data,'library_or_control_preimage')
            output=gen.rewrite_declared_imports(data,self.canonical); self.add(destination,output)
            simple.append({'source':original,'destination':destination,'source_sha256':gen.checker.digest(data),'proposal_sha256':gen.checker.digest(output)})
        original='Old/Split.lean'; data=b'/- exact header -/\nnamespace Fixture\n\n/-- alpha -/\ndef alpha : Nat := 0\n\n/-- beta -/\ndef beta : Nat := 1\nend Fixture\n'
        self.archive(original,data,'library_or_control_preimage'); lines=data.splitlines(keepends=True)
        prefix=b''.join(lines[:3]); footer=lines[8]; parts=[]
        for path,bounds in [('GRWTSK/Analysis/First.lean',[4,6]),('GRWTSK/Analysis/Second.lean',[7,8])]:
            chunk=b''.join(lines[bounds[0]-1:bounds[1]]); output=prefix+chunk+footer; self.add(path,output)
            parts.append({'destination':path,'original_lines_inclusive':bounds,'canonical_declared_lines_inclusive':bounds,
                'exact_partition_sha256':gen.checker.digest(chunk),'canonical_declared_block_sha256':gen.checker.digest(chunk),'proposal_sha256':gen.checker.digest(output)})
        split={'source':original,'source_sha256':gen.checker.digest(data),'prefix_lines_inclusive':[1,3],'footer_lines_inclusive':[9,9],
               'prefix_sha256':gen.checker.digest(prefix),'footer_sha256':gen.checker.digest(footer),'partitions':parts}
        retired=b'import Old.Basic\n/- preserved historical remark -/\n'; self.archive('Old/Aggregate.lean',retired,'library_or_control_preimage')
        flat=b'import GRWTSK.Analysis.Basic\nnamespace Fixture\ndef flat : Nat := foundation\nend Fixture\n'; self.archive('flat/Flat.lean',flat,'frozen_flat_Lean_original')
        self.add(self.flat['Flat'].replace('.','/')+'.lean',flat)
        self.audit='GRWTSK.Logic.Verification.Final'; self.aggregator='GRWTSK.Logic.Verification.Library'
        allmodules=set(self.predictions)|{self.audit,self.aggregator}
        self.add(self.audit.replace('.','/')+'.lean',gen.late_audit_bytes(allmodules,self.audit,self.aggregator))
        self.add(self.aggregator.replace('.','/')+'.lean',('import '+self.audit+'\n').encode())
        self.archive_manifest=root/'.local/archive/archive-manifest.json'; self.write_manifest()
        self.receipt={'schema':'minimal-canonical-live-application/1','status':'APPLIED_STATIC_ONLY_NATIVE_ACCEPTANCE_PENDING',
            'archive_manifest':str(self.archive_manifest),'archive_manifest_sha256':gen.checker.sha256(self.archive_manifest),
            'archived_originals':self.archived,'canonical_original_module_map':self.canonical,'flat_original_module_map':self.flat,
            'simple_original_variant_provenance':simple,'exact_split_original_variant_provenance':[split],
            'retired_aggregate_provenance':[{'source':'Old/Aggregate.lean','source_sha256':gen.checker.digest(retired)}],
            'late_audit':{'module':self.audit},'aggregator':{'module':self.aggregator},'source_count':len(self.predictions),
            'files':[{'module':m,'source':m.replace('.','/')+'.lean','sha256':gen.checker.digest(b)} for m,b in sorted(self.predictions.items())],
            'module_map':{m:m.replace('.','/')+'.lean' for m in self.predictions}}
    def add(self,path,data):
        p=self.root/path; p.parent.mkdir(parents=True,exist_ok=True); p.write_bytes(data); self.predictions[path[:-5].replace('/','.')]=data
    def archive(self,original,data,kind):
        path='.local/archive/originals/'+original; p=self.root/path; p.parent.mkdir(parents=True,exist_ok=True); p.write_bytes(data)
        self.archived.append({'original_path':original,'archive_path':path,'sha256':gen.checker.digest(data),'kind':kind})
    def write_manifest(self):self.archive_manifest.write_text(json.dumps({'records':self.archived}))
    def incoming(self):
        commit='a'*40; extra='GRWTSK.NumberTheory.Extra'; extra_bytes=b'def incoming : Nat := 2\n'; self.add(extra.replace('.','/')+'.lean',extra_bytes)
        root_bytes=('import GRWTSK.Analysis.Basic\nimport '+extra+'\n').encode(); (self.root/'GRWTSK.lean').write_bytes(root_bytes)
        blobs={'GRWTSK.lean':root_bytes,extra.replace('.','/')+'.lean':extra_bytes}
        declared={'schema':'moebius-incoming-source-provenance/1','commit':commit,'modules':{
            extra:{'path':extra.replace('.','/')+'.lean','strategy':'incoming-exact','sha256':gen.checker.digest(extra_bytes),'incoming_sha256':gen.checker.digest(extra_bytes)},
            'GRWTSK':{'path':'GRWTSK.lean','strategy':'composed-root-imports','sha256':gen.checker.digest(root_bytes),
                'incoming_sha256':gen.checker.digest(root_bytes),'migration_sha256':gen.checker.digest(self.predictions['GRWTSK'])}}}
        return declared,lambda root,rev,path:blobs[path],blobs


class SourceControls(unittest.TestCase):
    def setUp(self):
        self.temp=tempfile.TemporaryDirectory(dir=Path(tempfile.gettempdir()).resolve()); self.root=Path(self.temp.name); self.f=MigrationFixture(self.root)
    def tearDown(self):self.temp.cleanup()
    def validate(self,receipt=None,**kwargs):return gen.validate_migration_sources(self.root,receipt or self.f.receipt,**kwargs)
    def test_complete_archived_reconstruction(self):
        records,provenance,watches,details=self.validate(); self.assertEqual(len(records),7); self.assertIn('GRWTSK',records)
        self.assertEqual(provenance['GRWTSK.Analysis.First']['kind'],'exact-contiguous-source-partition'); self.assertTrue(details['retired_aggregates'][0]['declaration_free_independently_verified'])
    def test_math_byte_mutation_rejected(self):
        p=self.root/'GRWTSK/Analysis/Basic.lean'; p.write_bytes(b'def foundation : Nat := 99\n')
        with self.assertRaisesRegex(ValueError,'Live source changed'):self.validate()
    def test_flat_sign_mutation_rejected(self):
        p=self.root/'GRWTSK/NumberTheory/Moebius/Flat.lean'; p.write_bytes(p.read_bytes().replace(b'foundation',b'-foundation'))
        with self.assertRaises(ValueError):self.validate()
    def test_added_module_undeclared(self):
        self.f.add('GRWTSK/Analysis/Unexpected.lean',b'def x : Nat := 0\n')
        with self.assertRaisesRegex(ValueError,'undeclared'):self.validate()
    def test_missing_owner_rejected(self):
        (self.root/'GRWTSK/Analysis/Basic.lean').unlink()
        with self.assertRaisesRegex(ValueError,'undeclared'):self.validate()
    def test_changed_archive_rejected(self):
        (self.root/self.f.archived[0]['archive_path']).write_bytes(b'import Changed\n')
        with self.assertRaisesRegex(ValueError,'archived original'):self.validate()
    def test_changed_archive_manifest_rejected(self):
        self.f.archive_manifest.write_bytes(b'{}')
        with self.assertRaisesRegex(ValueError,'manifest changed'):self.validate()
    def test_application_inventory_hash_mismatch(self):
        receipt=copy.deepcopy(self.f.receipt); receipt['files'][0]['sha256']='0'*64
        with self.assertRaisesRegex(ValueError,'recipe/hash'):self.validate(receipt)
    def test_partition_gap_rejected(self):
        receipt=copy.deepcopy(self.f.receipt); receipt['exact_split_original_variant_provenance'][0]['partitions'][1]['original_lines_inclusive'][0]=8
        with self.assertRaisesRegex(ValueError,'gap or overlap'):self.validate(receipt)
    def test_partition_overlap_rejected(self):
        receipt=copy.deepcopy(self.f.receipt); receipt['exact_split_original_variant_provenance'][0]['partitions'][1]['original_lines_inclusive'][0]=6
        with self.assertRaisesRegex(ValueError,'gap or overlap'):self.validate(receipt)
    def test_partition_wrapper_hash_rejected(self):
        receipt=copy.deepcopy(self.f.receipt); receipt['exact_split_original_variant_provenance'][0]['prefix_sha256']='0'*64
        with self.assertRaisesRegex(ValueError,'wrapper changed'):self.validate(receipt)
    def test_dropped_comment_rejected(self):
        p=self.root/'GRWTSK/Analysis/First.lean'; p.write_bytes(p.read_bytes().replace(b'/- exact header -/\n',b''))
        with self.assertRaises(ValueError):self.validate()
    def test_aggregator_mutation_rejected(self):
        (self.root/(self.f.aggregator.replace('.','/')+'.lean')).write_bytes(b'import GRWTSK\n')
        with self.assertRaises(ValueError):self.validate()
    def test_final_audit_call_mutation_rejected(self):
        p=self.root/(self.f.audit.replace('.','/')+'.lean'); p.write_bytes(p.read_bytes().replace(b'run_cmd P04Audit.check',b'run_cmd pure ()'))
        with self.assertRaises(ValueError):self.validate()
    def test_explicit_incoming_addition_and_root(self):
        declared,reader,_=self.f.incoming(); records,provenance,_,_=self.validate(incoming=declared,blob_reader=reader)
        self.assertEqual(len(records),8); self.assertFalse(provenance['GRWTSK']['native_acceptance'])
    def test_incoming_blob_mismatch(self):
        declared,reader,_=self.f.incoming(); declared['modules']['GRWTSK.NumberTheory.Extra']['incoming_sha256']='0'*64
        with self.assertRaisesRegex(ValueError,'committed source'):self.validate(incoming=declared,blob_reader=reader)
    def test_incoming_missing_declaration(self):
        declared,reader,_=self.f.incoming(); del declared['modules']['GRWTSK.NumberTheory.Extra']
        with self.assertRaisesRegex(ValueError,'exact physical'):self.validate(incoming=declared,blob_reader=reader)
    def test_root_hidden_definition_rejected(self):
        declared,reader,_=self.f.incoming(); p=self.root/'GRWTSK.lean'; p.write_bytes(p.read_bytes()+b'def injected : Nat := 0\n'); declared['modules']['GRWTSK']['sha256']=gen.checker.sha256(p)
        with self.assertRaisesRegex(ValueError,'declaration-free'):self.validate(incoming=declared,blob_reader=reader)
    def test_import_umbrella_rejects_inline_commands(self):
        for data in [b'import GRWTSK.Analysis.Basic def hidden : Nat := 1\n',
                     b'import GRWTSK.Analysis.Basic namespace Hidden\n',
                     b'import GRWTSK.Analysis.Basic; run_cmd pure ()\n']:
            self.assertFalse(gen.pure_import_umbrella(data))
    def test_import_umbrella_preserves_only_imports_and_comments(self):
        self.assertTrue(gen.pure_import_umbrella(b'/- definition words in a comment -/\nimport GRWTSK.Analysis.Basic -- theorem hidden\n\n'))
    def test_root_unrecorded_import_rejected(self):
        declared,reader,_=self.f.incoming(); p=self.root/'GRWTSK.lean'; p.write_bytes(p.read_bytes()+b'import GRWTSK.Analysis.First\n'); declared['modules']['GRWTSK']['sha256']=gen.checker.sha256(p)
        with self.assertRaisesRegex(ValueError,'exactly declared'):self.validate(incoming=declared,blob_reader=reader)
    def test_incoming_cannot_replace_existing_math(self):
        declared,reader,blobs=self.f.incoming(); p='GRWTSK/Analysis/Basic.lean'; data=b'def foundation : Nat := 9\n'; (self.root/p).write_bytes(data); blobs[p]=data
        declared['modules']['GRWTSK.Analysis.Basic']={'path':p,'strategy':'incoming-exact','sha256':gen.checker.digest(data),'incoming_sha256':gen.checker.digest(data)}
        with self.assertRaisesRegex(ValueError,'preserved mathematical'):self.validate(incoming=declared,blob_reader=reader)
    def test_graph_missing_import(self):
        with self.assertRaisesRegex(ValueError,'Unmanifested'):gen.verify_graph({'GRWTSK':{'path':'GRWTSK.lean','imports':['GRWTSK.Analysis.Missing']}})
    def test_graph_cycle(self):
        with self.assertRaisesRegex(ValueError,'cycle'):gen.verify_graph({'GRWTSK':{'path':'GRWTSK.lean','imports':['GRWTSK.Analysis.A']},'GRWTSK.Analysis.A':{'path':'GRWTSK/Analysis/A.lean','imports':['GRWTSK']}})
    def test_archived_data_remains_portable_provenance(self):
        records,provenance,_,details=self.validate(); gen.portable_manifest({'modules':records,'preservation_provenance':provenance,'details':details})
    def test_absolute_public_path_rejected(self):
        with self.assertRaisesRegex(ValueError,'Host absolute'):gen.portable_manifest({'nested':[{'path':'/Users/private/source'}]})
    def test_import_only_legacy_mode_preserves_strings_and_comments(self):
        data=b'import Old\n-- Old\ndef sample := "Old"\n'; out=gen.import_only_bytes(data,[{'source_import':'Old','export_import':'New.A New.B'}]); self.assertEqual(out,b'import New.A New.B\n-- Old\ndef sample := "Old"\n')
    def test_legacy_substitution_unused_rejected(self):
        with self.assertRaisesRegex(ValueError,'absent'):gen.import_only_bytes(b'import Old\n',[{'source_import':'Other','export_import':'New'}])
    def test_historical_runtime_identity_never_invokes_Lean(self):
        lean=self.root/'lean'; lean.write_bytes(b'compiler sentinel'); identity={'lean_version':'Lean historical sentinel','lean_sha256':gen.checker.sha256(lean)}
        with patch.object(gen.subprocess,'run',side_effect=AssertionError('Native execution forbidden')):
            self.assertEqual(gen.pinned_runtime_identity(lean,identity)[0],identity['lean_version'])
    def test_runtime_binary_drift_rejected(self):
        lean=self.root/'lean'; lean.write_bytes(b'changed')
        with self.assertRaisesRegex(ValueError,'Installed Lean bytes'):gen.pinned_runtime_identity(lean,{'lean_version':'Lean4','lean_sha256':'0'*64})
    def test_runtime_identity_missing_label_rejected(self):
        lean=self.root/'lean'; lean.write_bytes(b'compiler')
        with self.assertRaisesRegex(ValueError,'incomplete'):gen.pinned_runtime_identity(lean,{'lean_sha256':gen.checker.sha256(lean)})
    def test_umbrella_assets_are_immediate_not_recursive(self):
        (self.root/'README.md').write_bytes(b'root asset'); nested=self.root/'.local/ignored'; nested.mkdir(parents=True); (nested/'hidden.json').write_bytes(b'{}')
        assets=gen.checker.source_assets({self.root},umbrella_root=self.root)
        self.assertIn(self.root/'README.md',assets); self.assertNotIn(nested/'hidden.json',assets)
    def test_prepared_asset_snapshot_detects_new_immediate_asset(self):
        records,_,_,_=self.validate()
        with patch.object(gen,'REQUIRED_ASSETS',()):
            before=gen.prepared_assets(self.root,records)
            (self.root/'new-evidence.json').write_bytes(b'{}')
            self.assertNotEqual(before,gen.prepared_assets(self.root,records))
    def test_prepared_asset_snapshot_detects_changed_bytes(self):
        records,_,_,_=self.validate(); p=self.root/'README.md'; p.write_bytes(b'first')
        with patch.object(gen,'REQUIRED_ASSETS',()):
            before=gen.prepared_assets(self.root,records); p.write_bytes(b'second')
            self.assertNotEqual(before,gen.prepared_assets(self.root,records))
    def test_prepared_helper_is_separately_bound_and_rechecks_bytes(self):
        records,_,_,_=self.validate(); helper='GRWTSK/NumberTheory/Moebius/Checks/OwnerAudit.lean'
        p=self.root/helper; p.parent.mkdir(); p.write_bytes(b'import Lean\n')
        with patch.object(gen,'REQUIRED_ASSETS',()),patch.object(gen.owner_census,'HELPER_SHA256',gen.checker.sha256(p)):
            before=gen.owner_helper_contract(self.root)
            self.assertEqual(before['sha256'],gen.checker.sha256(p))
            self.assertNotIn(helper,gen.prepared_assets(self.root,records))
            p.write_bytes(b'import Lean\n-- changed\n')
            with self.assertRaisesRegex(ValueError,'helper source/import identity'):
                gen.owner_helper_contract(self.root)
    def test_anchor_snapshot_detects_hash_drift_without_native_execution(self):
        packages=self.root/'packages'; anchor=packages/'mathlib/.lake/build/lib/lean/Mathlib.olean'
        anchor.parent.mkdir(parents=True); anchor.write_bytes(b'pinned anchor')
        with patch.object(gen.subprocess,'run',side_effect=AssertionError('Native execution forbidden')):
            before=gen.compiled_mathlib_anchors(packages); anchor.write_bytes(b'changed anchor')
            self.assertNotEqual(before,gen.compiled_mathlib_anchors(packages))
    def test_anchor_snapshot_detects_added_cache(self):
        packages=self.root/'packages'; anchor=packages/'mathlib/.lake/build/lib/lean/Mathlib.olean'
        anchor.parent.mkdir(parents=True); anchor.write_bytes(b'first')
        before=gen.compiled_mathlib_anchors(packages)
        extra=packages/'other/.lake/build/lib/lean/Mathlib.olean'; extra.parent.mkdir(parents=True); extra.write_bytes(b'second')
        self.assertNotEqual(before,gen.compiled_mathlib_anchors(packages))
    def test_descriptor_is_explicit_and_closed(self):
        with self.assertRaises(ValueError):gen.checker.resolve_runtime_policy({'runtime_exceptions_allowed':True,'runtime_exception_policy':{}},vars(gen.owner_census),{})


    def composition_fixture(self):
        declared,reader,blobs=self.f.incoming()
        incoming_paths={m.replace('.','/')+'.lean' for m in self.f.predictions if m not in {self.f.audit,self.f.aggregator}}
        incoming_paths.add('GRWTSK/NumberTheory/Extra.lean')
        for path in incoming_paths:
            if path not in blobs:blobs[path]=(self.root/path).read_bytes()
        rootrow={'path':'GRWTSK.lean','stage2_sha256':gen.checker.digest(self.f.predictions['GRWTSK']),
                 'stage3_sha256':gen.checker.digest(blobs['GRWTSK.lean']),
                 'resolved_sha256':gen.checker.sha256(self.root/'GRWTSK.lean'),'additional_imports':[]}
        composition={'status':'resolved-source-composition-native-acceptance-pending','incoming_commit':declared['commit'],'rows':[rootrow]}
        return declared['commit'],composition,reader,lambda root,rev:incoming_paths
    def test_composition_receipt_builds_exact_scope(self):
        commit,composition,reader,tree=self.composition_fixture()
        incoming=gen.composition_incoming(self.root,self.f.receipt,commit,composition,blob_reader=reader,tree_reader=tree)
        records,_,_,_=self.validate(incoming=incoming,blob_reader=reader); self.assertEqual(len(records),8)
    def test_composition_stage_hash_drift_rejected(self):
        commit,composition,reader,tree=self.composition_fixture(); composition['rows'][0]['stage2_sha256']='0'*64
        with self.assertRaisesRegex(ValueError,'stage/live'):gen.composition_incoming(self.root,self.f.receipt,commit,composition,blob_reader=reader,tree_reader=tree)
    def test_composition_unreviewed_extra_owner_rejected(self):
        commit,composition,reader,tree=self.composition_fixture(); self.f.add('GRWTSK/NumberTheory/Rogue.lean',b'def rogue : Nat := 4\n')
        with self.assertRaisesRegex(ValueError,'exact migration/incoming union'):gen.composition_incoming(self.root,self.f.receipt,commit,composition,blob_reader=reader,tree_reader=tree)
    def test_composition_commit_mismatch_rejected(self):
        commit,composition,reader,tree=self.composition_fixture()
        with self.assertRaisesRegex(ValueError,'commit/composition'):gen.composition_incoming(self.root,self.f.receipt,'b'*40,composition,blob_reader=reader,tree_reader=tree)
    def test_composition_extra_import_ledger_drift_rejected(self):
        commit,composition,reader,tree=self.composition_fixture(); composition['rows'][0]['additional_imports']=['GRWTSK.Analysis.First']
        with self.assertRaisesRegex(ValueError,'exactly ordinary'):gen.composition_incoming(self.root,self.f.receipt,commit,composition,blob_reader=reader,tree_reader=tree)
    def test_migration_cli_wiring_never_runs_Lean(self):
        import io
        lean=self.root/'lean'; lean.write_bytes(b'compiler sentinel'); packages=self.root/'packages'; packages.mkdir()
        receipt=self.root/'receipt.json'; receipt.write_text(json.dumps(self.f.receipt)); identity=self.root/'identity.json'; identity.write_text(json.dumps({'lean_version':'historic','lean_sha256':gen.checker.sha256(lean)}))
        argv=['generator','--root',str(self.root),'--migration-receipt',str(receipt),'--pinned-runtime-receipt',str(identity),'--lean',str(lean),'--packages',str(packages)]
        with patch.object(sys,'argv',argv),patch.object(gen.subprocess,'run',side_effect=AssertionError('Native execution forbidden')),patch.object(gen,'migration_manifest',return_value={'generation_status':'prepared-only','kernel_checked':False}) as build,patch.object(sys,'stdout',io.StringIO()):
            self.assertEqual(gen.main(),0); self.assertIsNone(build.call_args.kwargs['runtime_policy'])

if __name__=='__main__':unittest.main()
