"""Replay the complete public sequence cohort at trust zero and audit stored families."""
from pathlib import Path
import datetime,hashlib,json,os,re,subprocess,time
ROOT=Path(__file__).resolve().parent.parent
NAMES=['BranchSequenceRealization','BranchFrequencyExistence','BranchSequenceReturn','Sequences']
FILES=['GRWTSK/NumberTheory/ContinuedFractions/ScheduledDenominators.lean', 'GRWTSK/NumberTheory/ContinuedFractions/FrequencyRealization.lean', 'GRWTSK/DynamicalSystems/Sequences/ApproximationReturn.lean']
AUDIT='checks/NumberTheory/ContinuedFractions/FrequencyRealization/Audit.lean'
INPUTS=FILES+[AUDIT,'scripts/check_sequence_realization.py','lean-toolchain','lakefile.toml','lake-manifest.json']
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
expected={rel:sha(ROOT/rel) for rel in INPUTS}
manifest=json.loads((ROOT/'lake-manifest.json').read_text())
assert (ROOT/'lean-toolchain').read_text().strip()=='leanprover/lean4:v4.33.0'
assert next(p['rev'] for p in manifest['packages'] if p['name']=='mathlib')=='db584cd6d46c92f209a44c0f1c829460d327499d'
stamp=datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%SZ')
OUT=ROOT/'.local/post-branch-formalization'/('sequence-check-'+stamp);OUT.mkdir(parents=True)
BUILD=OUT/'build';BUILD.mkdir()
lean=subprocess.check_output(['elan','which','lean'],cwd=ROOT,text=True).strip()
cache=subprocess.check_output(['lake','env','printenv','LEAN_PATH'],cwd=ROOT,text=True).strip()
env=dict(os.environ,LEAN_PATH=str(BUILD)+os.pathsep+cache,LEAN_NUM_THREADS='1',LEAN_IMPORT_WORKERS='1')
flags=['--trust=0','--threads=1','--memory=8192','-DwarningAsError=true','-Dlinter.mathlibStandardSet=true','-Dlinter.style.header=false']
record={'schema':'sequence-realization-trust-zero-replay-v1','completed':False,'status':'RUNNING','source_inputs':expected,'lean_binary_sha256':sha(Path(lean)),'dependency_revisions':{p['name']:p['rev'] for p in manifest['packages']},'checks':[],'rh_proved':False,'P04_status':'OPEN ARITHMETIC WITNESS','source_retired':False}
receipt=OUT/'receipt.json';receipt.write_text(json.dumps(record,indent=2)+'\n')
(Path(ROOT/'.local/post-branch-formalization/latest-sequence-check.txt')).write_text(str(OUT)+'\n')
try:
 for rel in INPUTS:assert sha(ROOT/rel)==expected[rel],rel
 for rel in FILES+[AUDIT]:
  cmd=[lean,*flags]
  if rel in FILES:
   output=BUILD/Path(rel).with_suffix('.olean');output.parent.mkdir(parents=True,exist_ok=True);cmd+=['-o',str(output)]
  cmd.append(str(ROOT/rel));log=OUT/(Path(rel).stem+'.log');start=time.monotonic()
  with log.open('wb') as f:p=subprocess.run(cmd,cwd=ROOT,env=env,stdout=f,stderr=subprocess.STDOUT)
  record['checks'].append({'path':rel,'exit_code':p.returncode,'seconds':time.monotonic()-start,'log_sha256':sha(log)})
  receipt.write_text(json.dumps(record,indent=2)+'\n');print(rel+': '+('PASS' if p.returncode==0 else 'FAIL'),flush=True)
  assert p.returncode==0,log
  for path,h in expected.items():assert sha(ROOT/path)==h,path
 log=(OUT/(Path(AUDIT).stem+'.log')).read_text()
 rows=[json.loads(x) for x in re.findall(r'SEQUENCE_DECL::(\{[^\n]+\})',log)]
 counts=re.findall(r'SEQUENCE_COUNT::(\d+)',log)
 assert len(counts)==1 and int(counts[0])==len(rows) and len(rows)==189
 assert len({r['name'] for r in rows})==len(rows)
 assert all(r['resolved_type_equal'] and r['resolved_body_equal'] and set(r['axioms'])<={'propext','Classical.choice','Quot.sound'} for r in rows)
 record.update(completed=True,status='PASS',stored_declarations_audited=len(rows),declarations=rows,source_inputs_unchanged=True,build_objects={str(p.relative_to(ROOT)):sha(p) for p in BUILD.rglob('*.olean*') if p.is_file()})
except BaseException as error:
 record.update(completed=True,status='FAIL',error=str(error));raise
finally:
 receipt.write_text(json.dumps(record,indent=2)+'\n')
 print('SEQUENCE_RECEIPT '+str(receipt),flush=True)
