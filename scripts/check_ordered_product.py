"""Manifest-bound public interface and proof-dependency replay."""
from pathlib import Path
import hashlib, json, os, subprocess
root = Path(__file__).resolve().parent.parent
manifest = json.loads((root / "evidence/source-manifest.json").read_text())
for relative, expected in manifest["files"].items():
    source = root / relative
    if source.is_symlink() or not source.is_file() or hashlib.sha256(source.read_bytes()).hexdigest() != expected:
        raise RuntimeError("invalidated input: " + relative)
lean = subprocess.check_output(["elan", "which", "lean"], cwd=root, text=True).strip()
version = subprocess.check_output([lean, "--version"], text=True)
if "4.33.0" not in version or "d8b18978322de05a8f3dba51ef03cf5461676c17" not in version:
    raise RuntimeError("invalidated compiler identity")
env = os.environ.copy()
env.pop("LEAN_PATH", None)
env.pop("LEAN_SRC_PATH", None)
result = subprocess.run(["lake", "env", lean, "-j2", "--trust=0", "-DwarningAsError=true", "GRWTSK/Algebra/OrderedProduct/Checks/Audit.lean"], cwd=root, env=env, capture_output=True, text=True, timeout=600)
output = (result.stdout + result.stderr).replace(str(root), "<project>")
if result.returncode or output.count("ORDERED_PRODUCT_DECL::") != 18 or output.count("ORDERED_PRODUCT_CONSUMER::") != 2 or "ORDERED_PRODUCT_ROOTS::10" not in output:
    raise RuntimeError(output)
print(json.dumps({"status": "PUBLIC_INTERFACE_AND_CONSUMERS_CHECKED", "roots": 10, "generated_equations_and_helpers": 8, "public_consumers": 2, "source_sha256": manifest["files"]["GRWTSK/Algebra/OrderedProduct.lean"], "toolchain": "leanprover/lean4:v4.33.0", "dependency_revision": "db584cd6d46c92f209a44c0f1c829460d327499d", "admission": "LOCAL_CANDIDATE"}))
print(output)
