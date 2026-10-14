from pathlib import Path
import subprocess,json
P=Path(__file__).resolve().parents[1]
r=subprocess.run(['lake','env','lean','-j1','--trust=0','-DwarningAsError=true','GRWTSK/LinearAlgebra/JacobiTransfer/Checks/Audit.lean'],cwd=P,capture_output=True,text=True,timeout=1800)
s=r.stdout+r.stderr
if r.returncode or s.count('JACOBI_CONTRACT::')!=35 or s.count('JACOBI_SYNTHETIC::')!=3:raise RuntimeError(s)
(P/'.local').mkdir(exist_ok=True)
(P/'.local/jacobi-verification.json').write_text(json.dumps({'status':'NATIVE_KERNEL_AND_INTERFACE_CHECKS_PASSED','definitions':9,'source_theorems':17,'stored_equation_helpers':8,'separate_query_equations':1,'synthetic_wrappers':3,'rh_proved':False},indent=2)+'\n')
print('JACOBI_INTERFACE_PASSED')
