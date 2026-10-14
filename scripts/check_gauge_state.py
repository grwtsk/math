from pathlib import Path
import subprocess,json
P=Path(__file__).resolve().parents[1]
r=subprocess.run(['lake','env','lean','-j2','--trust=0','-DwarningAsError=true','GRWTSK/LinearAlgebra/GaugeState/Checks/Audit.lean'],cwd=P,capture_output=True,text=True,timeout=1800)
s=r.stdout+r.stderr
if r.returncode or s.count('GAUGE_STATE_CONTRACT::')!=3 or s.count('GAUGE_STATE_ORIGINAL::')!=1 or s.count('GAUGE_STATE_SYNTHETIC::')!=1:raise RuntimeError(s)
(P/'.local').mkdir(exist_ok=True)
(P/'.local/gauge-state-verification.json').write_text(json.dumps({'status':'NATIVE_KERNEL_AND_INTERFACE_CHECKS_PASSED','source_definitions':1,'source_theorems':1,'generated_equations':1,'actual_original_intrafamily_consumer_roles':1,'synthetic_wrappers':1,'rh_proved':False},indent=2)+'\n')
print('GAUGE_STATE_INTERFACE_PASSED')
