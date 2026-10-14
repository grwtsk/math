"""Exercise the actual source/environment gates against isolated tampered candidates.

This emits a new ignored observation instead of overwriting historical evidence.
It deliberately uses explicit exceptions rather than ``assert``, so optimized
Python executes the same acceptance boundary.
"""
import pathlib,json,subprocess,tempfile,shutil,hashlib,datetime,uuid,copy,sys
root=pathlib.Path(__file__).resolve().parent.parent
manifest=json.loads((root/"evidence/source-manifest.json").read_text())
layout=json.loads((root/"docs/math-layout.json").read_text())
fixture_files=set(manifest["files"])
fixture_files.update(entry["path"] for entry in layout["active_sources"])
fixture_files.add("evidence/source-manifest.json")
results=[]
for label,rel,mode in [("changed-source",next(p for p in manifest["files"] if p.endswith(".lean")),"change"),("toolchain-pin-drift","lean-toolchain","change"),("dependency-lock-drift","lake-manifest.json","change"),("symlink-source",next(p for p in manifest["files"] if p.endswith(".lean")),"symlink")]:
 with tempfile.TemporaryDirectory(prefix="input-control-",dir=root/".local") as temporary:
  fixture=pathlib.Path(temporary)
  for name in sorted(fixture_files):
   dst=fixture/name;dst.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(root/name,dst)
  # The repository manifest is a retained, now-stale binding.  Build a current
  # fixture-only binding so each hostile mutation is rejected for its own path,
  # without rewriting the retained repository evidence.
  fixture_manifest=copy.deepcopy(manifest)
  for name in fixture_manifest["files"]:
   fixture_manifest["files"][name]=hashlib.sha256((fixture/name).read_bytes()).hexdigest()
  (fixture/"evidence/source-manifest.json").write_text(json.dumps(fixture_manifest,indent=2)+"\n")
  subprocess.run(["git","init","-q"],cwd=fixture,check=True)
  subprocess.run(["git","add","-f","."],cwd=fixture,check=True)
  target=fixture/rel
  if mode=="change":target.write_bytes(target.read_bytes()+b"\nCHANGED")
  else:
   backup=target.with_suffix(".original");target.rename(backup);target.symlink_to(backup.name)
  if label=="changed-source":expected=(rel,"stale-source-catalog-hash")
  elif label=="symlink-source":expected=(rel,"source-unavailable")
  else:expected=("invalidated: "+rel,)
  for execution,flags in (("normal",["-B"]),("optimized",["-O","-B"])):
   p=subprocess.run([sys.executable,*flags,"scripts/check.py"],cwd=fixture,capture_output=True,text=True,timeout=30)
   diagnostic=p.stdout+p.stderr
   if not (p.returncode!=0 and all(token in diagnostic for token in expected)):
    raise RuntimeError("hostile input was not rejected by the intended manifest gate: "+label+"/"+execution+"\n"+diagnostic[-2000:])
   results.append(dict(name=label+"/"+execution,outcome="passed",effect="rejected by the intended source/environment gate before compiler invocation",target=rel))
receipt=dict(schema_version=2,
 input_manifest_sha256=hashlib.sha256((root/"evidence/source-manifest.json").read_bytes()).hexdigest(),
 checker_sha256=hashlib.sha256((root/"scripts/check.py").read_bytes()).hexdigest(),
 control_driver_sha256=hashlib.sha256(pathlib.Path(__file__).read_bytes()).hexdigest(),
 execution_state="COMPLETED",results=results)
run=(datetime.datetime.now(datetime.timezone.utc).strftime("%Y%m%dT%H%M%SZ")+"-"+uuid.uuid4().hex[:12])
destination=root/".local/input-controls"/run
destination.mkdir(parents=True)
(destination/"receipt.json").write_text(json.dumps(receipt,indent=2)+"\n")
print(json.dumps(dict(outcomes={r["name"]:r["outcome"] for r in results},
 receipt=str((destination/"receipt.json").relative_to(root)))))
