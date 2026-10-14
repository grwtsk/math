from pathlib import Path
import subprocess,json
P=Path(__file__).resolve().parents[1]
r=subprocess.run(['lake','env','lean','-j2','--trust=0','-DwarningAsError=true','GRWTSK/LinearAlgebra/CocycleProduct/Checks/Audit.lean'],cwd=P,capture_output=True,text=True,timeout=1800)
s=r.stdout+r.stderr
if r.returncode or s.count('COCYCLE_CONTRACT::')!=11 or s.count('COCYCLE_SYNTHETIC::')!=3 or s.count('COCYCLE_ORIGINAL::')!=5:raise RuntimeError(s)
(P/'.local').mkdir(exist_ok=True)
(P/'.local/cocycle-product-verification.json').write_text(json.dumps({'status':'NATIVE_KERNEL_AND_INTERFACE_CHECKS_PASSED','source_definitions':2,'source_theorems':5,'actual_original_intrafamily_consumer_roles':5,'synthetic_wrappers':3,'rh_proved':False},indent=2)+'\n')
print('COCYCLE_PRODUCT_INTERFACE_PASSED')
