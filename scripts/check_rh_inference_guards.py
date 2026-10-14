from pathlib import Path
import json,subprocess
P=Path(__file__).resolve().parents[1]
r=subprocess.run(['lake','env','lean','-j2','--trust=0','-DwarningAsError=true','GRWTSK/Logic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity.lean'],cwd=P,capture_output=True,text=True,timeout=180)
s=r.stdout+r.stderr
if r.returncode or s.count('RH_GUARD_CONTRACT::')!=32 or s.count('RH_GUARD_ORIGINAL_USE::')!=3 or s.count('RH_GUARD_SYNTHETIC_USE::')!=4:raise RuntimeError(s)
(P/'.local').mkdir(exist_ok=True)
(P/'.local/rh-inference-guards-verification.json').write_text(json.dumps({'status':'ALL_DECLARED_NATIVE_KERNEL_AND_DEPENDENCY_CHECKS_PASSED','source_theorems':4,'existing_dependency_contracts':28,'original_intrafamily_consumer_roles':3,'original_external_consumer_roles':0,'synthetic_guard_wrappers':4,'rh_proved':False},indent=2)+'\n')
print('RH_GUARD_INTERFACE_AND_CANONICAL_REUSE_PASSED')
