"""Exercise the actual manifest gate against isolated tampered candidates."""
import pathlib,json,subprocess,tempfile,shutil,hashlib
root=pathlib.Path(__file__).resolve().parent.parent
manifest=json.loads((root/"evidence/source-manifest.json").read_text())
results=[]
for label,rel,mode in [("changed-source",next(p for p in manifest["files"] if p.endswith(".lean")),"change"),("toolchain-pin-drift","lean-toolchain","change"),("dependency-lock-drift","lake-manifest.json","change"),("symlink-source",next(p for p in manifest["files"] if p.endswith(".lean")),"symlink")]:
 fixture=pathlib.Path(tempfile.mkdtemp(prefix="input-control-",dir=root/".local"))
 for name in list(manifest["files"])+["evidence/source-manifest.json"]:
  dst=fixture/name;dst.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(root/name,dst)
 target=fixture/rel
 if mode=="change":target.write_bytes(target.read_bytes()+b"\nCHANGED")
 else:
  backup=target.with_suffix(".original");target.rename(backup);target.symlink_to(backup.name)
 p=subprocess.run(["python3","scripts/check.py"],cwd=fixture,capture_output=True,text=True,timeout=30)
 assert p.returncode!=0 and "invalidated" in p.stderr,(label,p.stdout,p.stderr)
 results.append(dict(name=label,outcome="passed",effect="rejected before compiler invocation"))
(root/"evidence/input-controls.json").write_text(json.dumps(dict(schema_version=1,input_manifest_sha256=hashlib.sha256((root/"evidence/source-manifest.json").read_bytes()).hexdigest(),checker_sha256=hashlib.sha256((root/"scripts/check.py").read_bytes()).hexdigest(),results=results),indent=2)+"\n")
print(json.dumps({r["name"]:r["outcome"] for r in results}))
