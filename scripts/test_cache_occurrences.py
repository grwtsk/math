"""Bounded hostile controls; synthetic rows are never written to the taxonomy."""
import copy
import json
from pathlib import Path
import unittest

import cache_occurrences as trace
import cache_taxonomy as taxonomy

ROOT = Path(__file__).resolve().parents[1]
SNAPSHOT = "a" * 64


def encoded(document):
    return (json.dumps(document, indent=2) + "\n").encode()


def make_trace(document, ids, root=None):
    relations = {r["id"]: r for r in document["relations"]}
    raw = encoded(document)
    first = relations[ids[0]] if ids else None
    start = root or (first["source"] if first else document["families"][0]["id"])
    steps = [{"index": i, "relation_id": ident,
              "relation_sha256": trace.relation_identity(relations[ident]),
              "source": relations[ident]["source"], "target": relations[ident]["target"]}
             for i, ident in enumerate(ids)]
    return {"schema": trace.SCHEMA, "id": "occurrence-trace:synthetic-test",
            "source_snapshot": SNAPSHOT, "taxonomy": {
                "id": document["id"], "revision": document["revision"]["id"],
                "sha256": trace.hashlib.sha256(raw).hexdigest()},
            "relation_kind": first["kind"] if first else "communication",
            "direction": "source-to-target", "root": start, "steps": steps,
            "end": steps[-1]["target"] if steps else start,
            "proof_acceptance": "not-established"}, raw


class OccurrenceTests(unittest.TestCase):
    def setUp(self):
        self.taxonomy = json.loads((ROOT / "cache/taxonomy.json").read_bytes())
        self.doc, self.raw = make_trace(self.taxonomy, [self.taxonomy["relations"][0]["id"]])

    def reject(self, mutation, message):
        mutation(self.doc)
        with self.assertRaisesRegex(trace.TraceError, message):
            trace.validate_trace(self.doc, self.raw, SNAPSHOT)

    def test_actual_communication_relation(self):
        result = trace.validate_trace(self.doc, self.raw, SNAPSHOT)
        self.assertEqual(result["step_count"], 1)
        self.assertEqual(result["occurrences"], self.doc["steps"])
        self.assertEqual(result["proof_acceptance"], "not-established")
        self.assertEqual(result["lean_runtime_refinement"], "not-established")

    def test_empty_trace_retains_fixed_root(self):
        doc, raw = make_trace(self.taxonomy, [])
        self.assertEqual(trace.validate_trace(doc, raw, SNAPSHOT)["end"], doc["root"])
        doc["end"] = self.taxonomy["families"][1]["id"]
        with self.assertRaisesRegex(trace.TraceError, "endpoint mismatch"):
            trace.validate_trace(doc, raw, SNAPSHOT)

    def test_repeated_edge_occurrences_keep_positions(self):
        # Two synthetic method rows and dependency cycle, separate from live taxonomy.
        t = copy.deepcopy(self.taxonomy)
        t["identity_inventory"]["status"] = "partial"
        t["records"] = [{"id": "method:synthetic-" + name, "label": "synthetic fixture only",
                         "primary_family": "method-family:01", "method_facets": [],
                         "primary_home": {"subject": "Data", "object": "FiniteInventory"}}
                        for name in ("a", "b")]
        t["relations"] += [{"id": "relation:synthetic-" + a, "kind": "dependency",
                            "category": "dependency", "source": "method:synthetic-" + a,
                            "target": "method:synthetic-" + b, "evidence_refs": []}
                           for a, b in (("a", "b"), ("b", "a"))]
        t["revision"]["id"] = taxonomy.revision_identity(t)
        ids = ["relation:synthetic-a", "relation:synthetic-b"] * 2
        doc, raw = make_trace(t, ids)
        result = trace.validate_trace(doc, raw, SNAPSHOT)
        self.assertEqual([r["relation_id"] for r in result["occurrences"]], ids)
        self.assertEqual([r["index"] for r in result["occurrences"]], [0, 1, 2, 3])
        self.assertEqual(result["root"], result["end"])

    def test_wrong_root(self):
        self.reject(lambda d: d.update(root=d["end"]), "wrong root")

    def test_broken_join(self):
        def change(d):
            second = dict(d["steps"][0], index=1)
            d["steps"].append(second)
        self.reject(change, "broken endpoint join")

    def test_endpoint_summary_cannot_replace_edge_identity(self):
        self.reject(lambda d: d["steps"][0].update(relation_id="relation:missing"), "dangling relation")

    def test_wrong_relation_content(self):
        self.reject(lambda d: d["steps"][0].update(relation_sha256="0" * 64), "content drift")

    def test_wrong_endpoint_tag(self):
        self.reject(lambda d: d["steps"][0].update(target=d["root"]), "endpoint identity")

    def test_index_boolean_is_not_zero(self):
        self.reject(lambda d: d["steps"][0].update(index=False), "index mismatch")

    def test_index_gap(self):
        self.reject(lambda d: d["steps"][0].update(index=1), "index mismatch")

    def test_stale_source_snapshot(self):
        self.reject(lambda d: d.update(source_snapshot="b" * 64), "stale source snapshot")

    def test_external_expected_snapshot_required(self):
        with self.assertRaisesRegex(trace.TraceError, "external expected"):
            trace.validate_trace(self.doc, self.raw, None)

    def test_taxonomy_semantic_equality_is_not_byte_identity(self):
        changed = json.dumps(self.taxonomy, separators=(",", ":")).encode()
        with self.assertRaisesRegex(trace.TraceError, "byte/revision identity"):
            trace.validate_trace(self.doc, changed, SNAPSHOT)

    def test_taxonomy_revision_mismatch(self):
        self.reject(lambda d: d["taxonomy"].update(revision="0" * 64), "byte/revision identity")

    def test_relation_rewrite_under_same_id_invalidates_occurrence(self):
        t = copy.deepcopy(self.taxonomy)
        t["relations"][0]["target"] = "task:synthetic-new-task"
        t["communications"].append({"id": "task:synthetic-new-task", "kind": "task",
                                     "path": "cache/coordination/tasks/synthetic.json"})
        t["revision"]["id"] = taxonomy.revision_identity(t)
        updated, raw = make_trace(t, [t["relations"][0]["id"]])
        self.doc["taxonomy"] = updated["taxonomy"]
        with self.assertRaisesRegex(trace.TraceError, "content drift"):
            trace.validate_trace(self.doc, raw, SNAPSHOT)

    def test_role_and_direction_not_interchangeable(self):
        for mutation, expected in (({"relation_kind": "dependency"}, "mixed relation"),
                                   ({"direction": "target-to-source"}, "direction"),
                                   ({"relation_kind": "authorization"}, "unknown relation")):
            with self.subTest(mutation=mutation):
                doc = dict(self.doc, **mutation)
                with self.assertRaisesRegex(trace.TraceError, expected):
                    trace.validate_trace(doc, self.raw, SNAPSHOT)

    def test_unknown_root(self):
        self.reject(lambda d: d.update(root="alias:unbound"), "canonical taxonomy entity")

    def test_proof_promotion_rejected(self):
        self.reject(lambda d: d.update(proof_acceptance="accepted"), "cannot assert")

    def test_extra_fields_rejected(self):
        self.reject(lambda d: d.update(permission=True), "schema fields")

    def test_step_bound(self):
        self.reject(lambda d: d.update(steps=[d["steps"][0]] * (trace.MAX_STEPS + 1)), "bounded ordered")

    def test_json_hostile_inputs(self):
        for raw in (b'{"x":1,"x":2}', b'{"x":NaN}', b'{"x":Infinity}',
                    b'{"x":1e999}', b'{"x":' + b'9' * 65 + b'}', b'\xff',
                    b' ' * (trace.MAX_BYTES + 1), b'[[[[['):
            with self.subTest(raw_length=len(raw)), self.assertRaises(trace.TraceError):
                trace.unique_json(raw)


if __name__ == "__main__":
    unittest.main()
