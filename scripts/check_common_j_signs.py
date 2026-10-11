"""Manifest-bound sign interface, native equations and proof-dependency audit."""
from pathlib import Path
import hashlib,json,os,subprocess
root=Path(__file__).resolve().parent.parent
manifest=json.loads((root/'evidence/source-manifest.json').read_text())
for relative,expected in manifest['files'].items():
    p=root/relative
    if p.is_symlink() or not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest()!=expected:
        raise RuntimeError('invalidated input: '+relative)
lean=subprocess.check_output(['elan','which','lean'],cwd=root,text=True).strip()
version=subprocess.check_output([lean,'--version'],text=True)
if '4.33.0' not in version or 'd8b18978322de05a8f3dba51ef03cf5461676c17' not in version:
    raise RuntimeError('invalidated compiler identity')
env=os.environ.copy();env.pop('LEAN_PATH',None);env.pop('LEAN_SRC_PATH',None)
r=subprocess.run(['lake','env',lean,'-j2','--trust=0','-DwarningAsError=true','checks/CommonJSignAudit.lean'],cwd=root,env=env,capture_output=True,text=True,timeout=600)
output=(r.stdout+r.stderr).replace(str(root),'<project>')
if r.returncode or output.count('COMMON_J_SIGN_DECL::')!=12 or output.count('COMMON_J_SIGN_REUSE::')!=4 or output.count('COMMON_J_SIGN_DERIVED::')!=1:
    raise RuntimeError(output)
print(json.dumps({'status':'SIGN_INTERFACE_NATIVE_EQUATION_AND_REUSE_CHECKED','source_roots':8,'logical_records':12,'shared_companion_records':1,'original_intra_family_consumer_roles':1,'distinct_external_original_consumers':0,'public_synthetic_consumers':2,'source_sha256':manifest['files']['GRWTSK/LinearAlgebra/CommonJ.lean'],'toolchain':'leanprover/lean4:v4.33.0','admission':'LOCAL_CANDIDATE'}))
print(output)
