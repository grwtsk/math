"""Pinned Lean source replay and audits. Run after: lake update; lake exe cache get <selected imports>."""
import hashlib,json,os,pathlib,re,subprocess,time
root=pathlib.Path(__file__).resolve().parent.parent
manifest=json.loads((root/"evidence/source-manifest.json").read_text())
input_manifest_sha256=hashlib.sha256((root/"evidence/source-manifest.json").read_bytes()).hexdigest()
for rel,expected in manifest["files"].items():
 p=root/rel
 assert p.is_file() and not p.is_symlink() and hashlib.sha256(p.read_bytes()).hexdigest()==expected,("invalidated",rel)
lean=subprocess.check_output(["elan","which","lean"],cwd=root,text=True).strip()
version=subprocess.check_output([lean,"--version"],text=True)
assert "4.33.0" in version and "d8b18978322de05a8f3dba51ef03cf5461676c17" in version
cache=os.environ.get("LEAN_PATH")
if not cache:
 cache=subprocess.check_output(["lake","env","printenv","LEAN_PATH"],cwd=root,text=True).strip()
build=root/".local/build";build.mkdir(parents=True,exist_ok=True)
env=dict(os.environ,LEAN_PATH=str(build)+":"+cache)
results=[]
def run(label,rel,expected=0,oracle=None):
 source=root/rel;argv=[lean,"--trust=0","--memory=2048","--threads=1"]
 if label.startswith("compile-"):
  target=build/pathlib.Path(rel).with_suffix(".olean");target.parent.mkdir(parents=True,exist_ok=True);argv+=["-o",str(target)]
 argv.append(str(source));t=time.monotonic()
 try:
  p=subprocess.run(argv,cwd=root,env=env,capture_output=True,text=True,timeout=600)
  output=(p.stdout+p.stderr).replace(str(root)+"/","")
  ok=(p.returncode==0 if expected==0 else p.returncode!=0) and (oracle is None or oracle(output))
  results.append(dict(name=label,outcome="passed" if ok else "failed",exit_code=p.returncode,seconds=time.monotonic()-t,source_sha256=hashlib.sha256(source.read_bytes()).hexdigest(),output=output))
  assert ok,results[-1]
  return output
 except subprocess.TimeoutExpired:
  results.append(dict(name=label,outcome="timed-out",seconds=time.monotonic()-t));raise
try:
 if manifest["profile"]=="least-natural-prime":
  run("compile-first-prime","GRWTSK/NumberTheory/FirstPrime.lean")
  run("compile-root","GRWTSK.lean")
  audit=run("prime-type-axioms-consumers","checks/PrimeAudit.lean",oracle=lambda s:"sorryAx" not in s and s.count("' depends on axioms:")==3)
  allowed={"propext","Classical.choice","Quot.sound"}
  for ax in re.findall(r"depends on axioms: \[(.*?)\]",audit):
   assert set(s.strip() for s in ax.split(","))<=allowed
  run("reject-prime-one","checks/PrimeOneFalse.lean",1,lambda s:"is false" in s)
  run("reject-lower-bound-three","checks/LowerBoundFalse.lean",1,lambda s:"Type mismatch" in s)
 else:
  prefix="GRWTSK/Combinatorics/GraphTheory/HadwigerNelson/"
  run("compile-moser-source",prefix+"MoserSource.lean")
  run("compile-moser",prefix+"Moser.lean")
  run("compile-root","GRWTSK.lean")
  output=run("31-declaration-audit","checks/DeclarationAudit.lean")
  expected=json.loads((root/"evidence/expected-declarations.json").read_text())
  for e in expected:
   segment=output.split("BEGIN::"+e["name"]+"\n",1)[1].split("\nEND::"+e["name"],1)[0]
   parts=segment.split("'"+e["name"]+"'")
   assert " ".join(parts[0].split())==" ".join(e["printed_type"].split()),("type mismatch",e["name"])
   axioms=re.search(r"depends on axioms: \[(.*?)\]",parts[1])
   observed=[] if "does not depend on any axioms" in parts[1] else [s.strip() for s in axioms[1].split(",")]
   assert sorted(observed)==sorted(e["axioms"]),("axiom mismatch",e["name"])
  run("moser-independent-consumers","checks/Consumers.lean")
  run("reject-wrong-four-color","checks/WrongColor.lean",1,lambda s:"is false" in s)
  sorry=run("sorry-compiles-but-audit-rejects","checks/SorryControl.lean",oracle=lambda s:"sorryAx" in s)
  results[-1]["audit_outcome"]="refuted-or-limited"
finally:
 (root/"evidence/check-results.json").write_text(json.dumps(dict(schema_version=1,input_manifest_sha256=input_manifest_sha256,lean_binary_sha256=hashlib.sha256(pathlib.Path(lean).read_bytes()).hexdigest(),toolchain_commit="d8b18978322de05a8f3dba51ef03cf5461676c17",dependency_revisions={p["name"]:p["rev"] for p in json.loads((root/"lake-manifest.json").read_text())["packages"]},dependency_mode="pinned dependency objects kernel-checked; selected source modules freshly elaborated",results=results),indent=2)+"\n")
print(json.dumps({r["name"]:r["outcome"] for r in results}))
