#!/usr/bin/env python3
"""Hostile structural controls for the cache method-facet adapter."""
import copy
import json
from pathlib import Path
import tempfile
import unittest

import cache_taxonomy as taxonomy


ROOT = Path(__file__).resolve().parents[1]


def load_fixture():
    return json.loads((ROOT / "cache/taxonomy.json").read_text(encoding="utf-8"))


def seal(document):
    document["revision"]["id"] = taxonomy.revision_identity(document)
    return document


def method(ident="method:test", family="01"):
    return {"id": ident, "label": "Synthetic test fixture; not a catalogue record",
            "primary_family": "method-family:" + family, "method_facets": [],
            "primary_home": {"subject": "Data", "object": "FiniteInventory"}}


def relation(kind, source, target, ident="relation:test"):
    return {"id": ident, "kind": kind, "category": taxonomy.RELATION_TYPES[kind][0],
            "source": source, "target": target, "evidence_refs": []}


class CacheTaxonomyTests(unittest.TestCase):
    def setUp(self):
        self.doc = load_fixture()

    def rejects(self, mutation, message=None):
        mutation(self.doc)
        seal(self.doc)
        if message:
            with self.assertRaisesRegex(taxonomy.TaxonomyError, message):
                taxonomy.validate_taxonomy(self.doc)
        else:
            with self.assertRaises(taxonomy.TaxonomyError):
                taxonomy.validate_taxonomy(self.doc)

    def add_method(self, ident="method:test"):
        self.doc["identity_inventory"]["status"] = "partial"
        self.doc["records"].append(method(ident))
        seal(self.doc)

    def test_declared_catalogue_is_honestly_incomplete(self):
        report = taxonomy.validate_taxonomy(self.doc, expected_current=None)
        self.assertEqual(report["family_count"], 16)
        self.assertEqual(report["declared_record_total"], 215)
        self.assertEqual(report["actual_record_count"], 0)
        self.assertFalse(report["identity_coverage"]["exact"])
        self.assertIsNone(report["identity_coverage"]["missing"])
        self.assertEqual(report["proof_acceptance"], "not-established")
        with self.assertRaisesRegex(taxonomy.TaxonomyError, "incomplete"):
            taxonomy.validate_taxonomy(self.doc, require_complete=True)

    def test_expected_family_count_is_not_a_free_total(self):
        self.rejects(lambda d: d.update(declared_record_total=216), "215")

    def test_fake_compensating_family_totals_rejected(self):
        def mutate(d):
            d["families"][0]["declared_records"] += 1
            d["families"][1]["declared_records"] -= 1
        self.rejects(mutate, "title/count")

    def test_duplicate_family_code(self):
        self.rejects(lambda d: d["families"][1].update(code="01"), "code")

    def test_duplicate_stable_id(self):
        self.rejects(lambda d: d["families"][1].update(id="method-family:01"), "duplicate stable")

    def test_same_cardinality_wrong_identity_is_not_exact_coverage(self):
        result = taxonomy.exact_coverage(["a", "b"], ["a", "c"])
        self.assertEqual(result, {"exact": False, "missing": ["b"], "unexpected": ["c"]})

    def test_duplicate_coverage_identity_is_not_a_set_shortcut(self):
        with self.assertRaisesRegex(taxonomy.TaxonomyError, "duplicates"):
            taxonomy.exact_coverage(["a", "b"], ["a", "a"])

    def test_unknown_inventory_cannot_disguise_fake_expected_ids(self):
        self.rejects(lambda d: d["identity_inventory"].update(expected_record_ids=["placeholder:1"]),
                     "fabricated")

    def test_complete_inventory_requires_actual_215_ids_and_family_counts(self):
        expected = []
        for code, _, count in taxonomy.CANONICAL_FAMILIES:
            for index in range(count):
                ident = "synthetic-fixture:%s:%s" % (code, index)
                expected.append(ident)
                self.doc["records"].append(method(ident, code))
        self.doc["identity_inventory"] = {"status": "provided", "expected_record_ids": expected}
        report = taxonomy.validate_taxonomy(seal(self.doc), require_complete=True)
        self.assertTrue(report["identity_coverage"]["exact"])
        self.assertEqual(report["proof_acceptance"], "not-established")
        self.doc["records"][-1]["id"] = "synthetic-fixture:substitution"
        with self.assertRaisesRegex(taxonomy.TaxonomyError, "identity coverage mismatch"):
            taxonomy.validate_taxonomy(seal(self.doc))

    def test_unprovided_means_no_fabricated_records(self):
        self.rejects(lambda d: d["records"].append(method()), "cannot contain")

    def test_unknown_schema(self):
        self.rejects(lambda d: d.update(schema="math-cache-taxonomy-v999"), "unknown")

    def test_unknown_fields_cannot_smuggle_proof_acceptance(self):
        self.rejects(lambda d: d.update(proof_acceptance="verified"), "extra")

    def test_boolean_is_not_an_integer_count(self):
        self.rejects(lambda d: d["families"][0].update(declared_records=True), "integer")

    def test_unknown_family_is_not_grandfathered(self):
        self.rejects(lambda d: d["families"][0].update(code="99", id="method-family:99"), "codes")

    def test_missing_family_same_total_is_not_coverage(self):
        self.rejects(lambda d: d["families"].pop(), "codes")

    def test_parent_must_exist(self):
        self.rejects(lambda d: d["relations"].append(relation("taxonomy-parent", "method-family:01",
                                                             "method-family:99")), "endpoints")

    def test_taxonomy_parent_cycle(self):
        self.doc["relations"].extend([
            relation("taxonomy-parent", "method-family:01", "method-family:02", "relation:first"),
            relation("taxonomy-parent", "method-family:02", "method-family:01", "relation:second")])
        with self.assertRaisesRegex(taxonomy.TaxonomyError, "cycle"):
            taxonomy.validate_taxonomy(seal(self.doc))

    def test_acyclic_parent_diamond_is_valid(self):
        pairs = [("01", "02"), ("01", "03"), ("02", "04"), ("03", "04")]
        self.doc["relations"].extend(relation("taxonomy-parent", "method-family:" + child,
                                            "method-family:" + parent, "relation:" + child + parent)
                                     for child, parent in pairs)
        taxonomy.validate_taxonomy(seal(self.doc))

    def test_alias_target_is_canonical_and_exists(self):
        self.rejects(lambda d: d["aliases"].append({"id": "alias:x", "target": "missing:x"}),
                     "target")

    def test_alias_cannot_shadow_real_identity(self):
        self.rejects(lambda d: d["aliases"].append({"id": "method-family:01",
                                                   "target": "method-family:02"}), "collision")

    def test_alias_cycle_is_not_a_canonical_target(self):
        self.rejects(lambda d: d["aliases"].extend([{"id": "alias:a", "target": "alias:b"},
                                                    {"id": "alias:b", "target": "alias:a"}]), "target")

    def test_relation_category_type_confusion(self):
        self.rejects(lambda d: d["relations"][0].update(category="formal-implication"), "type confusion")

    def test_relation_endpoint_type_confusion(self):
        self.rejects(lambda d: d["relations"].append(relation("dependency", "method-family:01",
                                                             "method-family:02")), "endpoints")

    def test_unknown_relation_kind(self):
        self.rejects(lambda d: d["relations"][0].update(kind="proof-by-reachability"), "unknown relation")

    def test_graph_edges_do_not_promote_acceptance(self):
        self.add_method("method:a")
        self.doc["records"].append(method("method:b"))
        self.doc["relations"].extend([relation("dependency", "method:a", "method:b", "relation:ab"),
                                       relation("dependency", "method:b", "method:a", "relation:ba")])
        report = taxonomy.validate_taxonomy(seal(self.doc))
        self.assertEqual(report["proof_acceptance"], "not-established")
        self.assertFalse(report["identity_coverage"]["exact"])

    def test_formal_implication_needs_source_and_cannot_self_admit(self):
        self.add_method("method:a")
        self.doc["records"].append(method("method:b"))
        edge = relation("formal-implication", "method:a", "method:b")
        edge.update(declaration="Example.test", claim_status="unreplayed")
        self.doc["relations"].append(edge)
        with self.assertRaisesRegex(taxonomy.TaxonomyError, "source binding"):
            taxonomy.validate_taxonomy(seal(self.doc))
        self.doc["sources"].append({"id": "source:fixture", "kind": "formal-source",
                                    "path": "GRWTSK/Logic/Example.lean", "sha256": "a" * 64})
        edge["evidence_refs"] = ["source:fixture"]
        report = taxonomy.validate_taxonomy(seal(self.doc))
        self.assertEqual(report["proof_acceptance"], "not-established")
        edge["claim_status"] = "verified"
        with self.assertRaisesRegex(taxonomy.TaxonomyError, "promote"):
            taxonomy.validate_taxonomy(seal(self.doc))

    def test_single_primary_home_separate_from_method_facets(self):
        self.add_method()
        self.doc["records"][0]["primary_home"] = [
            {"subject": "Analysis", "object": "FourierTransform"},
            {"subject": "NumberTheory", "object": "ZetaFunction"}]
        with self.assertRaisesRegex(taxonomy.TaxonomyError, "object"):
            taxonomy.validate_taxonomy(seal(self.doc))

    def test_campaign_subject_is_not_a_mathematical_home(self):
        self.add_method()
        self.rejects(lambda d: d["records"][0]["primary_home"].update(subject="ProofHorizon"),
                     "canonical mathematical subject")

    def test_home_path_traversal_is_rejected(self):
        self.add_method()
        self.rejects(lambda d: d["records"][0]["primary_home"].update(object="../Outside"),
                     "repository-relative")

    def test_campaign_label_cannot_move_into_object_component(self):
        self.add_method()
        self.rejects(lambda d: d["records"][0]["primary_home"].update(object="ProofHorizon/Records"),
                     "canonical mathematical subject")

    def test_benford_diagnostic_cannot_become_an_integrity_gate(self):
        self.rejects(lambda d: d["families"][2]["structural_use"].update(mode="admission-gate"),
                     "cannot promote")

    def test_unused_statistical_family_cannot_claim_implementation(self):
        self.rejects(lambda d: d["families"][2]["structural_use"].update(
            implementation="exact-structural-checks-only"), "cannot claim implementation")

    def test_primary_family_reference_integrity(self):
        self.add_method()
        self.rejects(lambda d: d["records"][0].update(primary_family="method-family:99"),
                     "primary family")

    def test_membership_must_agree_with_declared_facets(self):
        self.add_method()
        self.rejects(lambda d: d["relations"].append(relation("taxonomy-membership", "method:test",
                                                             "method-family:02")), "conflicts")

    def test_revision_content_identity_is_bound(self):
        self.doc["limitations"].append("New content without a new identity")
        with self.assertRaisesRegex(taxonomy.TaxonomyError, "identity mismatch"):
            taxonomy.validate_taxonomy(self.doc)

    def test_stale_expected_current_is_rejected(self):
        with self.assertRaisesRegex(taxonomy.TaxonomyError, "stale"):
            taxonomy.validate_taxonomy(self.doc, expected_current="a" * 64)

    def test_parent_and_expected_identity_cannot_disagree(self):
        self.rejects(lambda d: d["revision"].update(parent="a" * 64), "parent differs")

    def test_revision_transition_preserves_decisions_and_contributions(self):
        proposed = copy.deepcopy(self.doc)
        proposed["revision"].update(parent=self.doc["revision"]["id"],
                                     expected_current=self.doc["revision"]["id"])
        proposed["limitations"].append("New recorded limitation")
        report = taxonomy.validate_transition(self.doc, seal(proposed))
        self.assertEqual(report["proof_acceptance"], "not-established")
        proposed["decisions"][0]["rationale"] = "Rewritten history"
        with self.assertRaisesRegex(taxonomy.TaxonomyError, "historical decisions"):
            taxonomy.validate_transition(self.doc, seal(proposed))

    def test_failed_transition_retains_original_input(self):
        before = copy.deepcopy(self.doc)
        proposed = copy.deepcopy(self.doc)
        proposed["revision"].update(parent="b" * 64, expected_current="b" * 64)
        with self.assertRaisesRegex(taxonomy.TaxonomyError, "stale"):
            taxonomy.validate_transition(self.doc, seal(proposed))
        self.assertEqual(before, self.doc)

    def test_transition_cannot_erase_stable_method_id(self):
        self.add_method()
        proposed = copy.deepcopy(self.doc)
        proposed["revision"].update(parent=self.doc["revision"]["id"],
                                     expected_current=self.doc["revision"]["id"])
        proposed["records"] = []
        with self.assertRaisesRegex(taxonomy.TaxonomyError, "erased a stable"):
            taxonomy.validate_transition(self.doc, seal(proposed))

    def test_decision_premise_is_not_discharged_by_metadata(self):
        self.rejects(lambda d: d["decisions"][1]["premises"][0].update(status="proved"),
                     "cannot discharge")

    def test_contribution_boundaries_have_integrity(self):
        self.rejects(lambda d: d["contributions"][0]["decision_ids"].append("decision:missing"),
                     "dangling contribution")

    def test_design_reference_cannot_be_relabelled_current_replay(self):
        self.rejects(lambda d: d["design_antecedents"][0].update(binding="freshly-checked"),
                     "cannot assert acceptance")

    def test_duplicate_json_keys_are_not_silently_overwritten(self):
        with self.assertRaisesRegex(taxonomy.TaxonomyError, "duplicate JSON key"):
            json.loads('{"id": "first", "id": "second"}', object_pairs_hook=taxonomy._unique_json)

    def test_cli_checks_fixture_and_explicit_incompleteness(self):
        self.assertEqual(taxonomy.main(["check", str(ROOT / "cache/taxonomy.json"),
                                        "--expected-current", "NONE"]), 0)
        self.assertEqual(taxonomy.main(["check", str(ROOT / "cache/taxonomy.json"),
                                        "--require-complete"]), 1)

    def test_cli_unknown_schema_failure_preserves_file(self):
        self.doc["schema"] = "unknown"
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "bad.json"
            original = json.dumps(seal(self.doc)).encode()
            path.write_bytes(original)
            self.assertEqual(taxonomy.main(["check", str(path)]), 1)
            self.assertEqual(path.read_bytes(), original)

    def test_cli_transition_obeys_external_expected_current(self):
        proposed = copy.deepcopy(self.doc)
        proposed["revision"].update(parent=self.doc["revision"]["id"],
                                     expected_current=self.doc["revision"]["id"])
        with tempfile.TemporaryDirectory() as directory:
            previous_path = Path(directory) / "previous.json"
            proposed_path = Path(directory) / "proposed.json"
            previous_path.write_text(json.dumps(self.doc))
            proposed_path.write_text(json.dumps(seal(proposed)))
            self.assertEqual(taxonomy.main(["transition", str(proposed_path),
                                            "--previous", str(previous_path),
                                            "--expected-current", "b" * 64]), 1)


class OrderedHistoryTransitionTests(unittest.TestCase):
    """History order matters independently of identity-set preservation."""

    collections = ("decisions", "contributions", "aliases")

    @staticmethod
    def row(collection, suffix):
        ident = "history-fixture:" + collection + ":" + suffix
        if collection == "decisions":
            return {"id": ident, "statement": "Synthetic ordered history fixture",
                    "rationale": "Exercise literal sequence preservation",
                    "scope": "Tests only", "premises": [], "state": "recorded"}
        if collection == "contributions":
            return {"id": ident, "agent": "Synthetic fixture", "scope": "Tests only",
                    "paths": [], "decision_ids": [], "premise_ids": [],
                    "attribution": "Synthetic control; no mathematical contribution claim"}
        return {"id": ident, "target": "method-family:01"}

    def fixture(self, collection):
        previous = load_fixture()
        previous[collection].extend([self.row(collection, "first"),
                                     self.row(collection, "second")])
        seal(previous)
        taxonomy.validate_taxonomy(previous)
        proposed = copy.deepcopy(previous)
        proposed["revision"].update(parent=previous["revision"]["id"],
                                     expected_current=previous["revision"]["id"])
        return previous, proposed

    def rejects_for_each(self, mutation, diagnostic):
        for collection in self.collections:
            with self.subTest(collection=collection):
                previous, proposed = self.fixture(collection)
                untouched = copy.deepcopy(previous)
                mutation(proposed, collection)
                seal(proposed)
                # Input documents must be well formed individually; this
                # control specifically exercises the transition obligation.
                taxonomy.validate_taxonomy(proposed)
                with self.assertRaisesRegex(taxonomy.TaxonomyError, diagnostic):
                    taxonomy.validate_transition(previous, proposed)
                self.assertEqual(previous, untouched)

    def test_reorder_is_rejected_for_every_history_collection(self):
        def reorder(document, collection):
            document[collection][-2:] = reversed(document[collection][-2:])
        self.rejects_for_each(reorder, "ordered prefix")

    def test_insertion_before_old_history_is_rejected_for_every_collection(self):
        self.rejects_for_each(lambda document, collection: document[collection].insert(
            0, self.row(collection, "new")), "ordered prefix")

    def test_insertion_between_old_rows_is_rejected_for_every_collection(self):
        self.rejects_for_each(lambda document, collection: document[collection].insert(
            len(document[collection]) - 1, self.row(collection, "new")), "ordered prefix")

    def test_removal_is_rejected_for_every_history_collection(self):
        self.rejects_for_each(lambda document, collection: document[collection].pop(),
                              "erased or rewrote historical")

    def test_rewrite_is_rejected_for_every_history_collection(self):
        def rewrite(document, collection):
            key, value = (("rationale", "Rewritten rationale") if collection == "decisions"
                          else ("scope", "Rewritten contribution boundary")
                          if collection == "contributions" else ("target", "method-family:02"))
            document[collection][-1][key] = value
        self.rejects_for_each(rewrite, "erased or rewrote historical")

    def test_suffix_append_is_accepted_for_every_history_collection(self):
        for collection in self.collections:
            with self.subTest(collection=collection):
                previous, proposed = self.fixture(collection)
                untouched = copy.deepcopy(previous)
                proposed[collection].append(self.row(collection, "new"))
                report = taxonomy.validate_transition(previous, seal(proposed))
                self.assertEqual(report["proof_acceptance"], "not-established")
                self.assertEqual(previous, untouched)

    def test_python_numeric_equality_cannot_bypass_history_row_schemas(self):
        # Python considers True == 1 and 1 == 1.0. These otherwise equal
        # prefixes are outside the history-row schemas, which must reject
        # both inputs before the operational sequence comparison is used.
        for collection in self.collections:
            for left, right in ((True, 1), (1, 1.0)):
                with self.subTest(collection=collection, left=left, right=right):
                    previous, proposed = self.fixture(collection)
                    field = ("rationale" if collection == "decisions" else "scope"
                             if collection == "contributions" else "target")
                    previous[collection][-1][field] = left
                    proposed[collection][-1][field] = right
                    self.assertEqual(proposed[collection][:len(previous[collection])],
                                     previous[collection])
                    seal(previous)
                    proposed["revision"].update(parent=previous["revision"]["id"],
                                                 expected_current=previous["revision"]["id"])
                    seal(proposed)
                    for document in (previous, proposed):
                        with self.assertRaises(taxonomy.TaxonomyError):
                            taxonomy.validate_taxonomy(document)
                    with self.assertRaises(taxonomy.TaxonomyError):
                        taxonomy.validate_transition(previous, proposed)


if __name__ == "__main__":
    unittest.main()
