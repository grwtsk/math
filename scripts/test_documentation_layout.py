"""Hostile structural tests for the explicit documentation registry."""
from pathlib import Path
import copy
import json
import tempfile

ROOT = Path(__file__).resolve().parents[1]
LAYOUT = ROOT / "docs/reference/documentation-layout.json"


def require(condition, message):
    if not condition:
        raise ValueError(message)


def validate(root, data):
    require(data.get("schema_version") == 1, "unsupported schema")
    pages = data.get("registered_pages")
    require(isinstance(pages, list) and pages, "missing registered pages")
    require(len(pages) == len(set(pages)), "duplicate registered page")
    excluded = {row["path"] for row in data.get("historical_exclusions", [])}
    require(not (set(pages) & excluded), "historical page registered as current")
    for relative in pages + data.get("entry_points", []):
        path = root / relative
        require(path.is_file() and not path.is_symlink(), "missing or unsafe page: " + relative)
        require(root == path.resolve() or root in path.resolve().parents, "page escapes root: " + relative)
    for relative in excluded:
        require((root / relative).is_file(), "missing historical exclusion: " + relative)
    observed = {
        str(path.relative_to(root))
        for path in (root / "docs").rglob("*.md")
        if str(path.relative_to(root)) not in excluded
    }
    require(observed == set(pages), "documentation registry is incomplete or stale")
    for relative in data.get("structured_references", []):
        require((root / relative).is_file(), "missing structured reference: " + relative)
    generated = data.get("generated_pages", {})
    require(set(generated).issubset(set(pages)), "generated page is not registered")


def main():
    data = json.loads(LAYOUT.read_text())
    validate(ROOT, data)
    controls = 0
    for mutation in ("duplicate", "omit", "historical", "missing", "generated"):
        bad = copy.deepcopy(data)
        with tempfile.TemporaryDirectory(prefix="documentation-layout-") as temporary:
            fixture = Path(temporary)
            (fixture / "docs").mkdir()
            for relative in set(data["registered_pages"] + data["entry_points"] +
                                data["structured_references"] +
                                [row["path"] for row in data["historical_exclusions"]]):
                target = fixture / relative
                target.parent.mkdir(parents=True, exist_ok=True)
                target.write_text("fixture\n")
            if mutation == "duplicate":
                bad["registered_pages"].append(bad["registered_pages"][0])
            elif mutation == "omit":
                bad["registered_pages"].pop()
            elif mutation == "historical":
                bad["registered_pages"].append(bad["historical_exclusions"][0]["path"])
            elif mutation == "missing":
                bad["registered_pages"].append("docs/missing.md")
            else:
                bad["generated_pages"]["docs/unregistered.md"] = "fixture"
            try:
                validate(fixture, bad)
            except ValueError:
                controls += 1
            else:
                raise RuntimeError("hostile documentation fixture accepted: " + mutation)
    require(controls == 5, "hostile fixture count mismatch")
    print("documentation layout: %d pages and %d hostile controls passed" %
          (len(data["registered_pages"]), controls))


if __name__ == "__main__":
    main()
