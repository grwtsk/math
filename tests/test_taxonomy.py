from __future__ import annotations

import copy
import importlib.util
import io
import json
import random
import tempfile
import unittest
from contextlib import redirect_stderr, redirect_stdout
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("taxonomy", ROOT / "scripts/taxonomy.py")
taxonomy = importlib.util.module_from_spec(spec)
spec.loader.exec_module(taxonomy)


def fixture():
    return json.loads((ROOT / "examples/taxonomy.json").read_text())


class TaxonomyTests(unittest.TestCase):
    def reject(self, d):
        with self.assertRaises(taxonomy.ValidationError):
            taxonomy.normalize(d)

    def test_valid(self):
        n = taxonomy.normalize(fixture())
        self.assertEqual(n["nodes"][2]["address"], [1, 1])
        self.assertEqual(n["nodes"][4]["address"], [2, 1])

    def test_duplicate_id(self):
        d = fixture(); d["nodes"].append(copy.deepcopy(d["nodes"][1])); self.reject(d)

    def test_unknown_parent(self):
        d = fixture(); d["nodes"][1]["parent"] = "missing"; self.reject(d)

    def test_second_root(self):
        d = fixture(); d["nodes"][1]["parent"] = None; self.reject(d)

    def test_cycle(self):
        d = fixture(); d["nodes"][1]["parent"] = d["nodes"][2]["id"]; self.reject(d)

    def test_self_parent(self):
        d = fixture(); d["nodes"][1]["parent"] = d["nodes"][1]["id"]; self.reject(d)

    def test_missing_root(self):
        d = fixture(); d["root_id"] = "missing"; self.reject(d)

    def test_missing_parent_field(self):
        d = fixture(); del d["nodes"][1]["parent"]; self.reject(d)

    def test_duplicate_sibling_slot(self):
        d = fixture(); d["nodes"][3]["slot"] = 1; self.reject(d)

    def test_negative_slot(self):
        d = fixture(); d["nodes"][1]["slot"] = -1; self.reject(d)

    def test_boolean_slot_rejected(self):
        d = fixture(); d["nodes"][1]["slot"] = True; self.reject(d)

    def test_notation_not_float(self):
        d = fixture(); d["nodes"][2]["notation"] = "001.0100"
        n = taxonomy.normalize(d)
        self.assertEqual(n["nodes"][2]["original"]["notation"], "001.0100")
        d["nodes"][2]["notation"] = 1.1; self.reject(d)

    def test_metadata_preserved(self):
        d = fixture(); d["nodes"][2]["extension_marker"] = "opaque:unchanged"
        d["nodes"][2]["md5"] = "opaque-not-verified"
        n = taxonomy.normalize(d)
        self.assertEqual(n["nodes"][2]["original"], d["nodes"][2])
        self.assertEqual(n["original_document"], d)

    def test_input_not_mutated(self):
        d = fixture(); old = copy.deepcopy(d); taxonomy.normalize(d); self.assertEqual(d, old)

    def test_out_of_order_parent(self):
        d = fixture(); d["nodes"][1], d["nodes"][2] = d["nodes"][2], d["nodes"][1]
        n = taxonomy.normalize(d)
        self.assertEqual(n["nodes"][1]["address"], [1, 1])

    def test_unbounded_child_labels(self):
        d = fixture(); d["nodes"][1]["slot"] = 12345
        n = taxonomy.normalize(d); self.assertEqual(n["nodes"][2]["address"], [12345, 1])

    def test_append_only_accepts(self):
        old = fixture(); new = copy.deepcopy(old); new["revision"] = "2"
        new["nodes"].append({"id": "new", "parent": "demo-order", "notation": "3.1", "label": "New"})
        taxonomy.validate_extension(old, new)

    def test_append_only_rejects_change(self):
        old = fixture(); new = copy.deepcopy(old); new["nodes"][2]["label"] = "Changed"
        with self.assertRaises(taxonomy.ValidationError): taxonomy.validate_extension(old, new)

    def test_append_only_rejects_reordering(self):
        old = fixture(); new = copy.deepcopy(old); new["nodes"][1:3] = list(reversed(new["nodes"][1:3]))
        with self.assertRaises(taxonomy.ValidationError): taxonomy.validate_extension(old, new)

    def test_append_only_rejects_deletion(self):
        old = fixture(); new = copy.deepcopy(old); new["nodes"].pop()
        with self.assertRaises(taxonomy.ValidationError): taxonomy.validate_extension(old, new)

    def test_duplicate_json_key(self):
        with self.assertRaises(taxonomy.ValidationError): taxonomy.load_json(b'{"x":1,"x":2}')

    def test_nonfinite_json(self):
        with self.assertRaises(taxonomy.ValidationError): taxonomy.load_json(b'{"x":NaN}')

    def test_csv_adapter(self):
        raw = b'id,parent,code,label,marker\nr,null,ROOT,Root,keep\na,r,001.00,A,retain\n'
        d = taxonomy.import_csv(raw, taxonomy_id="demo", revision="1", root_id="r", id_column="id",
              parent_column="parent", notation_column="code", label_column="label")
        n = taxonomy.normalize(d)
        self.assertEqual(n["nodes"][1]["original"]["notation"], "001.00")
        self.assertEqual(n["nodes"][1]["original"]["original_csv_fields"]["marker"], "retain")

    def test_csv_bad_header(self):
        with self.assertRaises(taxonomy.ValidationError):
            taxonomy.import_csv(b'id,id\nx,x\n', taxonomy_id="d", revision="1", root_id="x",
                id_column="id", parent_column="id", notation_column="id", label_column="id")

    def test_lean_emission_deterministic(self):
        n = taxonomy.normalize(fixture()); a = taxonomy.emit_lean(n); b = taxonomy.emit_lean(n)
        self.assertEqual(a, b)
        self.assertIn("checkClosed_sound paths (by decide)", a)
        self.assertIn("immediate_parent_2", a)
        self.assertNotIn("sorry", a)

    def test_lean_namespace_injection_rejected(self):
        with self.assertRaises(taxonomy.ValidationError):
            taxonomy.emit_lean(taxonomy.normalize(fixture()), "X\naxiom bad : False")

    def test_lean_label_injection_encoded(self):
        d = fixture(); d["nodes"][1]["label"] = '\"\naxiom bad : False\n--'
        out = taxonomy.emit_lean(taxonomy.normalize(d))
        self.assertNotIn("axiom bad", out)
        self.assertIn("Char.ofNat", out)

    def test_surrogate_rejected(self):
        d = fixture(); d["nodes"][1]["label"] = "\ud800"; self.reject(d)

    def test_forged_normalized_address_rejected(self):
        n = taxonomy.normalize(fixture()); n["nodes"][2]["address"] = [999]
        with self.assertRaises(taxonomy.ValidationError): taxonomy.emit_lean(n)

    def test_expected_hash_failure(self):
        with tempfile.TemporaryDirectory() as tmp, redirect_stderr(io.StringIO()):
            code = taxonomy.main([str(ROOT / "examples/taxonomy.json"), "--output", str(Path(tmp)/"out"),
                                  "--expected-sha256", "0"*64])
            self.assertEqual(code, 2); self.assertFalse((Path(tmp)/"out").exists())

    def test_byte_snapshot_and_no_overwrite(self):
        with tempfile.TemporaryDirectory() as tmp, redirect_stdout(io.StringIO()), redirect_stderr(io.StringIO()):
            out = Path(tmp)/"out"; src = ROOT / "examples/taxonomy.json"
            self.assertEqual(taxonomy.main([str(src), "--output", str(out)]), 0)
            self.assertEqual(src.read_bytes(), (out/"input.snapshot").read_bytes())
            receipt = json.loads((out/"receipt.json").read_text())
            self.assertEqual(receipt["native_lean_replay"], "NOT_RUN")
            self.assertEqual(taxonomy.main([str(src), "--output", str(out)]), 2)

    def test_radix_ten(self):
        d = fixture(); d["radix"] = 10
        taxonomy.normalize(d)
        d["nodes"][1]["slot"] = 10; self.reject(d)

    def test_invalid_radix(self):
        d = fixture(); d["radix"] = True; self.reject(d)

    def test_taxonomy_identity_in_generated_lean(self):
        n = taxonomy.normalize(fixture()); code = taxonomy.emit_lean(n)
        identity = taxonomy.lean_string(n["taxonomy_id"])
        self.assertIn("def taxonomy : Taxonomy := ofPaths paths " + identity, code)

    def bindings_fixture(self):
        return json.loads((ROOT / "examples/source-bindings.json").read_text())

    def test_repository_binding_references(self):
        n = taxonomy.normalize(fixture()); b = self.bindings_fixture()
        taxonomy.validate_bindings(b, n)
        code = taxonomy.emit_catalogue(b, n)
        self.assertIn("abbrev Artifact := Fin 2", code)
        self.assertIn("primary := ![node2, node4]", code)
        self.assertNotIn("import OAI.", code)

    def test_unknown_primary_rejected(self):
        b = self.bindings_fixture(); b["assignments"][0]["primary_taxon_id"] = "absent"
        with self.assertRaises(taxonomy.ValidationError): taxonomy.validate_bindings(b, taxonomy.normalize(fixture()))

    def test_duplicate_primary_assignment_rejected(self):
        b = self.bindings_fixture(); b["assignments"].append(copy.deepcopy(b["assignments"][0]))
        with self.assertRaises(taxonomy.ValidationError): taxonomy.validate_bindings(b, taxonomy.normalize(fixture()))

    def test_source_revision_mismatch_rejected(self):
        b = self.bindings_fixture(); b["taxonomy_revision"] = "another"
        with self.assertRaises(taxonomy.ValidationError): taxonomy.validate_bindings(b, taxonomy.normalize(fixture()))

    def test_unknown_secondary_rejected(self):
        b = self.bindings_fixture(); b["assignments"][0]["secondary_taxon_ids"] = ["absent"]
        with self.assertRaises(taxonomy.ValidationError): taxonomy.validate_bindings(b, taxonomy.normalize(fixture()))

    def test_unpinned_commit_rejected(self):
        b = self.bindings_fixture(); b["assignments"][0]["source"]["commit"] = "main"
        with self.assertRaises(taxonomy.ValidationError): taxonomy.validate_bindings(b, taxonomy.normalize(fixture()))

    def test_random_trees_ancestry_and_lca(self):
        rng = random.Random(20261014)
        for case in range(150):
            count = rng.randrange(1, 50)
            parents = [None] + [rng.randrange(i) for i in range(1, count)]
            d = {"schema": taxonomy.SCHEMA, "taxonomy_id": "random", "revision": "1", "root_id": "n0",
                 "nodes": [{"id": f"n{i}", "parent": None if p is None else f"n{p}",
                            "notation": str(i), "label": f"Node {i}"} for i,p in enumerate(parents)]}
            n = taxonomy.normalize(d); addresses = [r["address"] for r in n["nodes"]]
            by_address = {tuple(a): i for i,a in enumerate(addresses)}
            def ancestors(i):
                chain=[]
                while i is not None:
                    chain.append(i); i=parents[i]
                return chain
            for a in range(count):
                aa = ancestors(a)
                for b in range(count):
                    bb = ancestors(b)
                    self.assertEqual(taxonomy.prefix(addresses[a], addresses[b]), a in bb)
                    lca = next(x for x in aa if x in bb)
                    actual = by_address[tuple(taxonomy.common_prefix(addresses[a], addresses[b]))]
                    self.assertEqual(actual, lca)

    def test_many_children_not_limited_to_ten(self):
        d = fixture(); d["nodes"] = d["nodes"][:1]
        for i in range(35):
            d["nodes"].append({"id": f"c{i}", "parent": "demo-root", "notation": f"0.{i}", "label": str(i)})
        self.assertEqual(len(taxonomy.normalize(d)["nodes"]), 36)


if __name__ == "__main__":
    unittest.main(verbosity=2)
