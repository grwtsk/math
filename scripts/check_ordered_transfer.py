from pathlib import Path
import subprocess,json
P=Path(__file__).resolve().parents[1]
r=subprocess.run(['lake','env','lean','-j1','--trust=0','-DwarningAsError=true','checks/LinearAlgebra/OrderedTransfer/Audit.lean'],cwd=P,capture_output=True,text=True,timeout=1800)
s=r.stdout+r.stderr
if r.returncode or s.count('ORDERED_TRANSFER_CONTRACT::')!=4 or s.count('ORDERED_TRANSFER_SYNTHETIC::')!=2 or s.count('ORDERED_TRANSFER_ORIGINAL::')!=1:raise RuntimeError(s)
(P/'.local').mkdir(exist_ok=True)
(P/'.local/ordered-transfer-verification.json').write_text(json.dumps({'status':'NATIVE_KERNEL_AND_INTERFACE_CHECKS_PASSED','definitions':1,'source_theorems':2,'stored_equation_helpers':1,'actual_original_intrafamily_consumer_roles':1,'synthetic_wrappers':2,'rh_proved':False},indent=2)+'\n')
print('ORDERED_TRANSFER_INTERFACE_PASSED')
