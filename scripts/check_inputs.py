"""Exercise the actual source/environment gates against isolated tampered candidates.

This emits a new ignored observation instead of overwriting historical evidence.
It deliberately uses explicit exceptions rather than ``assert``, so optimized
Python executes the same acceptance boundary.
"""
import pathlib,json,subprocess,tempfile,shutil,hashlib,datetime,uuid,copy,sys
root=pathlib.Path(__file__).resolve().parent.parent
manifest=json.loads((root/"evidence/source-manifest.json").read_text())
layout=json.loads((root/"docs/math-layout.json").read_text())
legacy_inventory_path=root/"docs/reference/legacy-inventory.json"
documentation_layout_path=root/"docs/reference/documentation-layout.json"
legacy_inventory=json.loads(legacy_inventory_path.read_text())
documentation_layout=json.loads(documentation_layout_path.read_text())
unsafe_manifest_files=sorted(name for name in manifest["files"]
                             if (root/name).is_symlink() or
                             ((root/name).exists() and not (root/name).is_file()))
if unsafe_manifest_files:
 raise RuntimeError("retained manifest has unsafe present inputs: "+", ".join(unsafe_manifest_files))
missing_manifest_files=sorted(name for name in manifest["files"] if not (root/name).exists())
retired_manifest_files=sorted(manifest["documentation_membership_reconciliation"]["retired"])
if missing_manifest_files!=retired_manifest_files:
 raise RuntimeError("retained manifest missing-path set differs from its exact retired-documentation ledger")
if not set(retired_manifest_files)<=set(legacy_inventory["sources"]):
 raise RuntimeError("retired-documentation ledger is absent from the legacy inventory")
retired_sections=[entry for entry in legacy_inventory["sections"]
                  if entry["source"] in set(retired_manifest_files)]
if {entry["source"] for entry in retired_sections}!=set(retired_manifest_files):
 raise RuntimeError("retired documentation has no section-level provenance")
for section in retired_sections:
 disposition=documentation_layout["dispositions"].get(section["id"])
 if disposition is None:
  raise RuntimeError("retired documentation section lacks a disposition: "+section["id"])
 target=disposition.get("target")
 if target is not None:
  if target not in documentation_layout["pages"]:
   raise RuntimeError("retired documentation target is unregistered: "+target)
  target_path=root/target
  if target_path.is_symlink() or not target_path.is_file():
   raise RuntimeError("retired documentation target is unavailable or unsafe: "+target)
present_manifest_files=sorted(set(manifest["files"])-set(missing_manifest_files))
active_paths={entry["path"] for entry in layout["active_sources"]}
fixture_manifest_files=sorted(set(present_manifest_files)|active_paths)
if not active_paths<=set(fixture_manifest_files):
 raise RuntimeError("hostile fixture manifest omits active Lean sources")
for name in fixture_manifest_files:
 source=root/name
 if source.is_symlink() or not source.is_file():
  raise RuntimeError("hostile fixture input is unavailable or unsafe: "+name)
fixture_manifest_hashes={name:hashlib.sha256((root/name).read_bytes()).hexdigest()
                         for name in fixture_manifest_files}
fixture_manifest_sha256=hashlib.sha256(json.dumps(
 fixture_manifest_hashes,ensure_ascii=True,sort_keys=True,separators=(",",":")
).encode()).hexdigest()
fixture_files=set(fixture_manifest_files)
fixture_files.add("evidence/source-manifest.json")
results=[]
for label,rel,mode in [("changed-source",next(p for p in present_manifest_files if p.endswith(".lean")),"change"),("toolchain-pin-drift","lean-toolchain","change"),("dependency-lock-drift","lake-manifest.json","change"),("symlink-source",next(p for p in present_manifest_files if p.endswith(".lean")),"symlink")]:
 with tempfile.TemporaryDirectory(prefix="input-control-",dir=root/".local") as temporary:
  fixture=pathlib.Path(temporary)
  for name in sorted(fixture_files):
   source=root/name
   if source.is_symlink() or not source.is_file():
    raise RuntimeError("hostile fixture input changed or became unsafe: "+name)
   dst=fixture/name;dst.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(source,dst)
  # The repository manifest is a retained, now-stale binding.  Build a current
  # fixture-only binding so each hostile mutation is rejected for its own path,
  # without rewriting the retained repository evidence.
  fixture_manifest=copy.deepcopy(manifest)
  fixture_manifest["files"]={name:hashlib.sha256((fixture/name).read_bytes()).hexdigest()
                             for name in fixture_manifest_files}
  if fixture_manifest["files"]!=fixture_manifest_hashes:
   raise RuntimeError("hostile fixture bytes differ from the declared fixture manifest")
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
 math_layout_sha256=hashlib.sha256((root/"docs/math-layout.json").read_bytes()).hexdigest(),
 legacy_inventory_sha256=hashlib.sha256(legacy_inventory_path.read_bytes()).hexdigest(),
 documentation_layout_sha256=hashlib.sha256(documentation_layout_path.read_bytes()).hexdigest(),
 retained_manifest_missing_paths=missing_manifest_files,
 retained_manifest_missing_path_policy="missing paths must equal the exact documentation_membership_reconciliation.retired ledger",
 retained_manifest_present_file_count=len(present_manifest_files),
 added_active_source_count=len(active_paths-set(present_manifest_files)),
 active_source_count=len(active_paths),
 fixture_manifest_file_count=len(fixture_manifest_files),
 fixture_manifest_sha256=fixture_manifest_sha256,
 fixture_manifest_files=fixture_manifest_hashes,
 checker_sha256=hashlib.sha256((root/"scripts/check.py").read_bytes()).hexdigest(),
 control_driver_sha256=hashlib.sha256(pathlib.Path(__file__).read_bytes()).hexdigest(),
 execution_state="COMPLETED",results=results)
run=(datetime.datetime.now(datetime.timezone.utc).strftime("%Y%m%dT%H%M%SZ")+"-"+uuid.uuid4().hex[:12])
destination=root/".local/input-controls"/run
destination.mkdir(parents=True)
(destination/"receipt.json").write_text(json.dumps(receipt,indent=2)+"\n")
print(json.dumps(dict(outcomes={r["name"]:r["outcome"] for r in results},
 receipt=str((destination/"receipt.json").relative_to(root)))))
