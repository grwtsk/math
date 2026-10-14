"""Manifest-bound real interval_reflection contracts, proof dependencies and hostile controls."""
from pathlib import Path
import hashlib,json,os,subprocess
root=Path(__file__).resolve().parent.parent;manifest=json.loads((root/'evidence/source-manifest.json').read_text())
for rel,expected in manifest['files'].items():
 p=root/rel
 if p.is_symlink() or not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest()!=expected:raise RuntimeError('invalidated input: '+rel)
lean=subprocess.check_output(['elan','which','lean'],cwd=root,text=True).strip();version=subprocess.check_output([lean,'--version'],text=True)
if '4.33.0' not in version or 'd8b18978322de05a8f3dba51ef03cf5461676c17' not in version:raise RuntimeError('invalidated compiler identity')
env=os.environ.copy();env.pop('LEAN_PATH',None);env.pop('LEAN_SRC_PATH',None)
r=subprocess.run(['lake','env',lean,'-j2','--trust=0','-DwarningAsError=true','GRWTSK/Analysis/IntervalIntegral/Reflection/Checks/Audit.lean'],cwd=root,env=env,capture_output=True,text=True,timeout=600);output=(r.stdout+r.stderr).replace(str(root),'<project>')
if r.returncode or output.count('INTERVAL_DECL::')!=14 or output.count('INTERVAL_ORIGINAL_REUSE::')!=10 or output.count('INTERVAL_SYNTHETIC_REUSE::')!=2:raise RuntimeError(output)
print(json.dumps({'status':'INTERVAL_CONTRACT_AND_PROOF_DEPENDENCIES_CHECKED','source_roots':14,'logical_records':19,'original_intra_family_proof_roles':10,'synthetic_public_wrappers':2,'source_sha256':manifest['files']['GRWTSK/Analysis/IntervalReflection.lean'],'admission':'LOCAL_CANDIDATE'}));print(output)
for name,expected in [('ExactEndpointsAndSignedSquares',0),('WrongEndpoint',1),('WrongSignedSector',1),('MissingSquareSectorIntegrability',1),('MissingParitySectorIntegrability',1),('ChangedMeasure',1)]:
 role='Positive' if expected==0 else 'Negative'
 r=subprocess.run(['lake','env',lean,'-j2','--trust=0','-DwarningAsError=true','GRWTSK/Analysis/IntervalIntegral/Reflection/Checks/'+role+'/'+name+'.lean'],cwd=root,env=env,capture_output=True,text=True,timeout=600);text=r.stdout+r.stderr
 if r.returncode!=expected or expected and not any(x in text for x in ['error:','error(lean.']):raise RuntimeError('interval_reflection hostile outcome mismatch: '+name+' '+text)
 print('INTERVAL_CONTROL::'+name+'::'+('PASSED'if expected==0 else 'REJECTED_CONTRACT_DRIFT'))
