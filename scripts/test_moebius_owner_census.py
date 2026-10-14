#!/usr/bin/env python3
"""Python-only controls for owner census parsing; no Lean process is launched."""
from __future__ import annotations

import argparse
import ast
import hashlib
import json
import unittest
from pathlib import Path

import moebius_owner_census as census


MATH = "GRWTSK.NumberTheory.Moebius.Response"
AGGREGATE = "GRWTSK.Logic.Verification.ResponseLibrary"
OWNERS = [MATH, AGGREGATE]
HASHES = {owner: "a" * 64 for owner in OWNERS}


def declaration(name="DifferentNamespace.actualProof", owner=MATH, **changes):
    result = {
        "module": owner, "name": name, "kind": "theorem", "type": "True",
        "unsafe": False, "partial": False,
        "known_generated_runtime_helper": False,
        "runtime_helper_owner_source_sha256": "",
        "direct_value_reference_to_runtime_helper": False,
        "axioms": ["propext", "Classical.choice", "Quot.sound"],
    }
    result.update(changes)
    return result


def transcript(declarations=None, modules=None):
    declarations = [declaration()] if declarations is None else declarations
    if modules is None:
        modules = [{"module": owner, "declarations": sum(d["module"] == owner for d in declarations)}
                   for owner in OWNERS]
    records = ["info: MATH_TRUST_MODULE::" + json.dumps(module) for module in modules]
    records += ["info: MATH_TRUST_DECL::" + json.dumps(d) for d in declarations]
    records += ["info: MATH_TRUST_COUNT::" + str(len(declarations)),
                "info: MATH_TRUST_MODULE_COUNT::" + str(len(modules))]
    return "\n".join(records) + "\n"


class OwnerCensusControls(unittest.TestCase):
    def accept(self, text=None, **options):
        return census.validate_owner_census(transcript() if text is None else text,
                                           OWNERS, HASHES, **options)

    def reject(self, text, **options):
        with self.assertRaises((RuntimeError, KeyError, ValueError, TypeError)):
            self.accept(text, **options)

    def test_owner_selects_public_private_generated_outside_old_namespaces(self):
        rows = [declaration(), declaration("_private." + MATH + ".0.Unrelated.secret"),
                declaration("Other.patterned.eq_1"),
                declaration("Other.patterned.match_1", kind="definition")]
        result = self.accept(transcript(rows))
        self.assertEqual(result["declaration_count"], 4)
        self.assertEqual(result["zero_declaration_modules"], [AGGREGATE])

    def test_zero_declaration_aggregator_requires_own_row(self):
        self.reject(transcript(modules=[{"module": MATH, "declarations": 1}]))

    def test_unexpected_project_module_is_rejected(self):
        self.reject(transcript(modules=[{"module": MATH, "declarations": 1},
                                       {"module": AGGREGATE, "declarations": 0},
                                       {"module": "GRWTSK.Unexpected", "declarations": 0}]))

    def test_owner_mismatch_is_rejected(self):
        self.reject(transcript([declaration(owner="GRWTSK.Unexpected")]))

    def test_duplicate_modules_are_rejected(self):
        self.reject(transcript(modules=[{"module": MATH, "declarations": 1},
                                       {"module": MATH, "declarations": 0}]))

    def test_duplicate_declarations_are_rejected(self):
        self.reject(transcript([declaration(), declaration()]))

    def test_per_owner_totals_are_verified(self):
        self.reject(transcript(modules=[{"module": MATH, "declarations": 0},
                                       {"module": AGGREGATE, "declarations": 1}]))

    def test_boolean_module_count_is_rejected(self):
        self.reject(transcript(modules=[{"module": MATH, "declarations": True},
                                       {"module": AGGREGATE, "declarations": 0}]))

    def test_duplicate_totals_are_rejected(self):
        self.reject(transcript() + "MATH_TRUST_COUNT::1\n")

    def test_empty_census_is_rejected(self):
        self.reject(transcript([]))

    def test_malformed_unparsed_record_is_rejected(self):
        self.reject(transcript() + "MATH_TRUST_DECL::not-json\n")

    def test_unknown_marker_is_rejected(self):
        self.reject(transcript() + "MATH_TRUST_IGNORED::{}\n")

    def test_integer_boolean_flags_are_rejected(self):
        for field in ("unsafe", "partial", "known_generated_runtime_helper",
                      "direct_value_reference_to_runtime_helper"):
            with self.subTest(field=field):
                self.reject(transcript([declaration(**{field: 0})]))

    def test_unknown_declaration_fields_are_rejected(self):
        self.reject(transcript([declaration(unexamined_flag=True)]))

    def test_missing_keys_are_rejected_as_census_failure(self):
        row = declaration()
        del row["module"]
        with self.assertRaises(RuntimeError):
            self.accept(transcript([row], [{"module": MATH, "declarations": 1},
                                          {"module": AGGREGATE, "declarations": 0}]))

    def test_invalid_json_record_is_rejected_as_census_failure(self):
        with self.assertRaises(RuntimeError):
            self.accept(transcript().replace('"kind": "theorem"', '"kind": broken'))

    def test_unknown_kinds_are_rejected(self):
        self.reject(transcript([declaration(kind="safe-by-assertion")]))

    def test_duplicate_axioms_are_rejected(self):
        self.reject(transcript([declaration(axioms=["propext", "propext"])]))

    def test_transitive_sorry_axiom_is_rejected(self):
        self.reject(transcript([declaration(axioms=["sorryAx"])]))

    def test_custom_axiom_and_consuming_theorem_are_rejected(self):
        self.reject(transcript([declaration("Elsewhere.falseAxiom", kind="axiom"),
                                declaration("Elsewhere.consumes", axioms=["Elsewhere.falseAxiom"])]))

    def test_transitive_custom_axiom_without_axiom_row_is_rejected(self):
        self.reject(transcript([declaration(axioms=["Imported.fabricatedFalse"])]))

    def test_owned_unsafe_and_partial_are_rejected(self):
        self.reject(transcript([declaration(kind="definition", unsafe=True)]))
        self.reject(transcript([declaration(kind="definition", partial=True)]))

    def test_forged_generated_runtime_classification_is_rejected(self):
        self.reject(transcript([declaration(known_generated_runtime_helper=True)]))

    def test_coded_and_plain_unrelated_errors_are_rejected(self):
        self.reject(transcript() + "Audit.lean:1:0: error(lean.invalidField): unrelated syntax error\n")
        self.reject(transcript() + "Audit.lean:1:0: error: project trust audit failed: unrelated\n")

    def test_nonzero_exit_is_rejected_even_for_complete_good_records(self):
        self.reject(transcript(), returncode=1)

    def test_source_hash_coverage_is_exact(self):
        for hashes in ({MATH: "a" * 64}, {**HASHES, "GRWTSK.Unexpected": "a" * 64},
                       {MATH: "not-a-digest", AGGREGATE: "a" * 64}):
            with self.subTest(hashes=hashes), self.assertRaises(RuntimeError):
                census.validate_owner_census(transcript(), OWNERS, hashes)

    def test_runtime_exception_is_disabled_by_default(self):
        rows = [declaration(census.RUNTIME_NAME, owner=census.RUNTIME_OWNER,
                            kind="definition", unsafe=True,
                            known_generated_runtime_helper=True,
                            runtime_helper_owner_source_sha256=census.RUNTIME_SOURCE_SHA256)]
        text = transcript(rows, [{"module": census.RUNTIME_OWNER, "declarations": 1}])
        with self.assertRaises(RuntimeError):
            census.validate_owner_census(text, [census.RUNTIME_OWNER],
                                         {census.RUNTIME_OWNER: census.RUNTIME_SOURCE_SHA256})

    def test_exact_pinned_runtime_exception_requires_explicit_policy(self):
        rows = [declaration(census.RUNTIME_NAME, owner=census.RUNTIME_OWNER,
                            kind="definition", unsafe=True,
                            known_generated_runtime_helper=True,
                            runtime_helper_owner_source_sha256=census.RUNTIME_SOURCE_SHA256)]
        text = transcript(rows, [{"module": census.RUNTIME_OWNER, "declarations": 1}])
        result = census.validate_owner_census(text, [census.RUNTIME_OWNER],
                                             {census.RUNTIME_OWNER: census.RUNTIME_SOURCE_SHA256},
                                             allow_pinned_runtime=True)
        self.assertTrue(result["runtime_exception_enabled"])
        for digest in ("a" * 64, ""):
            with self.subTest(digest=digest), self.assertRaises(RuntimeError):
                census.validate_owner_census(text, [census.RUNTIME_OWNER],
                                             {census.RUNTIME_OWNER: digest}, allow_pinned_runtime=True)

    def test_theorem_direct_runtime_reference_is_rejected(self):
        self.reject(transcript([declaration(direct_value_reference_to_runtime_helper=True)]))

    def test_helper_body_hash_is_pinned(self):
        self.assertEqual(hashlib.sha256(census.helper_source()).hexdigest(), census.HELPER_SHA256)

    def test_generator_imports_full_owner_set_and_operational_helper(self):
        source = census.generate_audit_source(OWNERS)
        self.assertEqual(source.count("\n#audit_math_trust"), 1)
        for owner in OWNERS:
            self.assertIn("import " + owner + "\n", source)
        self.assertIn('import MoebiusResponseOwnerAudit\n', source)
        self.assertTrue(source.endswith('#audit_math_trust ""\n'))

    def test_generator_rejects_module_or_hash_injection(self):
        for owners in ([MATH, MATH], ["import Evil\n"], [], ["NonProject.Module"]):
            with self.subTest(owners=owners), self.assertRaises(RuntimeError):
                census.generate_audit_source(owners)
        with self.assertRaises(RuntimeError):
            census.generate_audit_source(OWNERS, helper_module="GRWTSK.HiddenHelper")
        with self.assertRaises(RuntimeError):
            census.generate_audit_source(OWNERS, runtime_owner_source_hash=census.RUNTIME_SOURCE_SHA256)


def generated_partial_records():
    """Synthetic metadata controls only; not declarations compiled by Lean."""
    rows = []
    for index, entry in enumerate(census.GENERATED_PARTIAL_PROFILE):
        typ = "Nat → Nat" + (" → Nat" if index % 2 else "")
        base = dict(owner=entry["owner"], kind="definition", type=typ,
                    runtime_helper_owner_source_sha256=entry["owner_source_sha256"])
        rows.append(declaration(entry["original"], **base))
        rows.append(declaration(entry["helper"], partial=True,
                                known_generated_runtime_helper=True, **base))
    return rows


def generated_partial_transcript(rows):
    return transcript(rows, [
        {"module": owner, "declarations": sum(row["module"] == owner for row in rows)}
        for owner in sorted(census.GENERATED_PARTIAL_OWNER_SHA256)
    ])


class GeneratedPartialProfileControls(unittest.TestCase):
    """Hostile pure fixtures for the new opt-in profile, with no native claims."""
    def accept(self, rows=None, hashes=None, **options):
        rows = generated_partial_records() if rows is None else rows
        options = {"allow_generated_partial_profile": True,
                   "generated_partial_profile_sha256": census.GENERATED_PARTIAL_PROFILE_SHA256,
                   **options}
        return census.validate_owner_census(
            generated_partial_transcript(rows), sorted(census.GENERATED_PARTIAL_OWNER_SHA256),
            census.GENERATED_PARTIAL_OWNER_SHA256 if hashes is None else hashes, **options)

    def reject(self, rows=None, **options):
        with self.assertRaises(RuntimeError):
            self.accept(rows, **options)

    def test_exact_fifteen_safe_original_pairs_accept_when_explicitly_enabled(self):
        result = self.accept()
        self.assertEqual(sum(row["known_generated_runtime_helper"] for row in result["declarations"]), 15)
        self.assertEqual(result["owned_module_count"], 9)
        self.assertTrue(result["generated_partial_profile_enabled"])
        self.assertTrue(result["runtime_exception_enabled"])
        self.assertEqual(result["generated_partial_profile_sha256"], census.GENERATED_PARTIAL_PROFILE_SHA256)
        self.assertIn("TYPE OR VALUE", result["unsafe_partial_reference_scope"])
        self.assertIn("not an arbitrary transitive", result["unsafe_partial_reference_scope"])

    def test_profile_descriptor_has_exact_entries_and_canonical_signature(self):
        descriptor = census.generated_partial_profile_descriptor()
        self.assertEqual(set(descriptor), {"kind", "profile_sha256", "entries"})
        self.assertEqual(descriptor["kind"], "pinned-lean-generated-partial-recursor-profile")
        self.assertEqual(len(descriptor["entries"]), 15)
        encoded = json.dumps(descriptor["entries"], sort_keys=True, separators=(",", ":")).encode()
        self.assertEqual(hashlib.sha256(encoded).hexdigest(), descriptor["profile_sha256"])
        descriptor["entries"][0]["helper"] = "untrusted"
        self.assertNotEqual(census.GENERATED_PARTIAL_PROFILE[0]["helper"], "untrusted")

    def test_partial_profile_is_rejected_by_default(self):
        rows = generated_partial_records()
        with self.assertRaises(RuntimeError):
            census.validate_owner_census(generated_partial_transcript(rows),
                census.GENERATED_PARTIAL_OWNER_SHA256, census.GENERATED_PARTIAL_OWNER_SHA256)

    def test_explicitly_disabled_profile_is_rejected(self):
        self.reject(allow_generated_partial_profile=False, generated_partial_profile_sha256="")

    def test_missing_or_changed_profile_signature_is_rejected(self):
        for signature in ("", "a" * 64, None, True):
            with self.subTest(signature=signature):
                self.reject(generated_partial_profile_sha256=signature)

    def test_profile_permission_while_disabled_is_rejected(self):
        self.reject(allow_generated_partial_profile=False)

    def test_integer_policy_flags_are_rejected(self):
        for field in ("allow_generated_partial_profile", "allow_pinned_runtime"):
            with self.subTest(field=field):
                self.reject(**{field: 1})

    def test_legacy_profile_cannot_be_combined_with_partial_profile(self):
        self.reject(allow_pinned_runtime=True)

    def test_each_owner_source_pin_is_independently_checked(self):
        for owner in census.GENERATED_PARTIAL_OWNER_SHA256:
            hashes = dict(census.GENERATED_PARTIAL_OWNER_SHA256)
            hashes[owner] = "a" * 64
            with self.subTest(owner=owner):
                self.reject(hashes=hashes)

    def test_each_native_permission_source_hash_is_checked(self):
        rows = generated_partial_records()
        for index in (0, 1, len(rows)-1):
            changed = [dict(row) for row in rows]
            changed[index]["runtime_helper_owner_source_sha256"] = "a" * 64
            with self.subTest(index=index):
                self.reject(changed)

    def test_wrong_helper_name_and_fake_suffix_do_not_qualify(self):
        rows = generated_partial_records()
        rows[1]["name"] = "Unrelated.claimed._unsafe_rec"
        self.reject(rows)
        rows = generated_partial_records()
        rows.append(declaration("Unrelated.fake._unsafe_rec",
            owner=census.GENERATED_PARTIAL_PROFILE[0]["owner"], kind="definition",
            partial=True, known_generated_runtime_helper=True,
            runtime_helper_owner_source_sha256=census.GENERATED_PARTIAL_PROFILE[0]["owner_source_sha256"]))
        self.reject(rows)

    def test_unlisted_partial_with_safe_original_is_rejected(self):
        rows = generated_partial_records()
        entry = census.GENERATED_PARTIAL_PROFILE[0]
        base = dict(owner=entry["owner"], kind="definition", type="Nat → Nat",
                    runtime_helper_owner_source_sha256=entry["owner_source_sha256"])
        rows.extend([declaration("Unrelated.custom", **base),
                     declaration("Unrelated.custom._unsafe_rec", partial=True, **base)])
        self.reject(rows)

    def test_wrong_helper_kind_is_rejected(self):
        for kind in ("opaque", "theorem", "axiom", "generated"):
            rows = generated_partial_records()
            rows[1]["kind"] = kind
            with self.subTest(kind=kind):
                self.reject(rows)

    def test_wrong_helper_flags_are_rejected(self):
        for unsafe, partial in ((True, True), (True, False), (False, False)):
            rows = generated_partial_records()
            rows[1].update(unsafe=unsafe, partial=partial)
            with self.subTest(unsafe=unsafe, partial=partial):
                self.reject(rows)

    def test_expected_helper_cannot_hide_bad_flags_by_clearing_classification(self):
        for changes in ({"partial": False}, {"kind": "opaque", "partial": False}):
            rows = generated_partial_records()
            rows[1].update(changes, known_generated_runtime_helper=False)
            with self.subTest(changes=changes):
                self.reject(rows)

    def test_wrong_helper_owner_is_rejected(self):
        rows = generated_partial_records()
        other = census.GENERATED_PARTIAL_PROFILE[1]
        rows[1].update(module=other["owner"],
                       runtime_helper_owner_source_sha256=other["owner_source_sha256"])
        self.reject(rows)

    def test_mismatched_original_type_is_rejected(self):
        rows = generated_partial_records()
        rows[0]["type"] = "Nat → Bool"
        self.reject(rows)

    def test_missing_paired_original_is_rejected(self):
        rows = generated_partial_records()
        del rows[0]
        self.reject(rows)

    def test_missing_expected_helper_is_rejected(self):
        rows = generated_partial_records()
        del rows[1]
        self.reject(rows)

    def test_original_wrong_exact_name_is_rejected(self):
        rows = generated_partial_records()
        rows[0]["name"] += "Different"
        self.reject(rows)

    def test_original_wrong_owner_is_rejected(self):
        rows = generated_partial_records()
        other = census.GENERATED_PARTIAL_PROFILE[1]
        rows[0].update(module=other["owner"],
                       runtime_helper_owner_source_sha256=other["owner_source_sha256"])
        self.reject(rows)

    def test_original_must_be_safe_nonpartial_definition(self):
        for changes in ({"kind": "theorem"}, {"kind": "opaque"}, {"unsafe": True},
                        {"partial": True}, {"known_generated_runtime_helper": True}):
            rows = generated_partial_records()
            rows[0].update(changes)
            with self.subTest(changes=changes):
                self.reject(rows)

    def test_original_runtime_reference_is_rejected(self):
        rows = generated_partial_records()
        rows[0]["direct_value_reference_to_runtime_helper"] = True
        self.reject(rows)

    def test_theorem_type_runtime_reference_flag_is_rejected(self):
        rows = generated_partial_records()
        entry = census.GENERATED_PARTIAL_PROFILE[0]
        rows.append(declaration("Unrelated.proofTypeUsesHelper", owner=entry["owner"],
            type=entry["helper"]+" 0 = 0", direct_value_reference_to_runtime_helper=True,
            runtime_helper_owner_source_sha256=entry["owner_source_sha256"]))
        self.reject(rows)

    def test_theorem_value_runtime_reference_flag_is_rejected(self):
        rows = generated_partial_records()
        entry = census.GENERATED_PARTIAL_PROFILE[0]
        rows.append(declaration("Unrelated.proofValueUsesHelper", owner=entry["owner"],
            direct_value_reference_to_runtime_helper=True,
            runtime_helper_owner_source_sha256=entry["owner_source_sha256"]))
        self.reject(rows)

    def test_helper_and_original_custom_axioms_are_rejected(self):
        for index in (0, 1):
            rows = generated_partial_records()
            rows[index]["axioms"] = ["Unrelated.customAxiom"]
            with self.subTest(index=index):
                self.reject(rows)

    def test_unrelated_unsafe_still_rejected(self):
        rows = generated_partial_records()
        entry = census.GENERATED_PARTIAL_PROFILE[0]
        rows.append(declaration("Unrelated.unsafeRuntime", owner=entry["owner"],
            kind="definition", unsafe=True,
            runtime_helper_owner_source_sha256=entry["owner_source_sha256"]))
        self.reject(rows)

    def test_each_native_boolean_and_exact_schema_is_checked(self):
        for field in ("unsafe", "partial", "known_generated_runtime_helper",
                      "direct_value_reference_to_runtime_helper"):
            rows = generated_partial_records()
            rows[1][field] = int(rows[1][field])
            with self.subTest(field=field):
                self.reject(rows)
        rows = generated_partial_records()
        rows[1]["unverified_compiler_attribute"] = True
        self.reject(rows)

    def test_native_helper_requires_structural_expr_and_exact_levels(self):
        source = census.helper_source().decode()
        self.assertIn("Expr.equal info.type original.type", source)
        self.assertIn("info.levelParams == original.levelParams", source)
        self.assertNotIn("info.type == original.type", source)
        self.assertIn("Compiler.mkUnsafeRecName entry.original == entry.helper", source)

    def test_native_and_python_exact_profile_tables_are_identical(self):
        import re
        source = census.helper_source().decode()
        pattern = (r"helper := `([^,\n]+),\s*original := `([^,\n]+),\s*"
                   r"owner := `([^,\n]+),\s*ownerSourceHash := \"([0-9a-f]{64})\"")
        actual = [dict(helper=h, original=o, owner=w, owner_source_sha256=s)
                  for h, o, w, s in re.findall(pattern, source)]
        self.assertEqual(actual, list(census.GENERATED_PARTIAL_PROFILE))
        self.assertIn('let acceptedProfile := "'+census.GENERATED_PARTIAL_PROFILE_SHA256+'"', source)

    def test_profile_wrapper_requires_all_owners_and_exact_permission(self):
        owners = sorted(census.GENERATED_PARTIAL_OWNER_SHA256)
        source = census.generate_audit_source(owners,
            generated_partial_profile_sha256=census.GENERATED_PARTIAL_PROFILE_SHA256)
        self.assertTrue(source.endswith('#audit_math_trust "" "'+
            census.GENERATED_PARTIAL_PROFILE_SHA256+'"\n'))
        for rejected in ("a" * 64, True, None):
            with self.subTest(rejected=rejected), self.assertRaises(RuntimeError):
                census.generate_audit_source(owners, generated_partial_profile_sha256=rejected)
        with self.assertRaises(RuntimeError):
            census.generate_audit_source(owners[:-1],
                generated_partial_profile_sha256=census.GENERATED_PARTIAL_PROFILE_SHA256)
        with self.assertRaises(RuntimeError):
            census.generate_audit_source(owners,
                generated_partial_profile_sha256=census.GENERATED_PARTIAL_PROFILE_SHA256,
                runtime_owner_source_hash=census.RUNTIME_SOURCE_SHA256)

    def test_missing_profile_owner_inventory_is_rejected(self):
        rows = generated_partial_records()
        missing = census.GENERATED_PARTIAL_PROFILE[-1]["owner"]
        rows = [row for row in rows if row["module"] != missing]
        owners = [owner for owner in census.GENERATED_PARTIAL_OWNER_SHA256 if owner != missing]
        hashes = {owner: census.GENERATED_PARTIAL_OWNER_SHA256[owner] for owner in owners}
        text = transcript(rows, [{"module": owner,
            "declarations": sum(row["module"] == owner for row in rows)} for owner in owners])
        with self.assertRaises(RuntimeError):
            census.validate_owner_census(text, owners, hashes,
                allow_generated_partial_profile=True,
                generated_partial_profile_sha256=census.GENERATED_PARTIAL_PROFILE_SHA256)

    def test_native_nonzero_exit_and_error_text_are_not_parser_acceptance(self):
        self.reject(returncode=1)
        text = generated_partial_transcript(generated_partial_records()) + "error: wrong elaboration\n"
        with self.assertRaises(RuntimeError):
            census.validate_owner_census(text, census.GENERATED_PARTIAL_OWNER_SHA256,
                census.GENERATED_PARTIAL_OWNER_SHA256, allow_generated_partial_profile=True,
                generated_partial_profile_sha256=census.GENERATED_PARTIAL_PROFILE_SHA256)


def reference_evidence(receipt_path: Path) -> dict:
    """Revalidate saved native controls without executing or importing their checker."""
    receipt = json.loads(receipt_path.read_text())
    if receipt["status"] != "LEAN_AUDIT_SELF_TEST_PASSED":
        raise RuntimeError("native reference controls did not pass")
    hashes = receipt["snapshot"]["sha256"]
    if hashes["scripts/check_math_trust.py"] != census.NATIVE_CHECKER_SHA256 or hashes[
        "GRWTSK/Logic/ProofChecking/Checks/OwnedDeclarationAudit.lean"] != census.NATIVE_OBSERVER_SHA256:
        raise RuntimeError("native receipt has a different observer or parser")
    observations = []
    for result in receipt["results"]:
        text_bytes = Path(result["diagnostic_log"]).read_bytes()
        digest = hashlib.sha256(text_bytes).hexdigest()
        if digest != result["output_sha256"]:
            raise RuntimeError("native saved diagnostic hash mismatch")
        module = "GRWTSK.Fixture." + {
            "positive": "Positive", "sorry": "Sorry", "custom-axiom": "CustomAxiom", "unsafe": "Unsafe"
        }[result["case"]]
        validation = census.validate_native_fixture_output(
            result["case"], result["stage"], text_bytes.decode(), result["exit_code"], module)
        if result["case"] == "positive" and result["stage"] == "audit":
            source_key = "lean-fixtures/positive/source/" + module.replace(".", "/") + ".lean"
            source_hash = receipt["fixture_input_sha256"][source_key]
            strict_positive = census.validate_owner_census(
                text_bytes.decode(), [module], {module: source_hash}, returncode=result["exit_code"])
            if strict_positive["declaration_count"] != len(validation["declarations"]):
                raise RuntimeError("strict owner adapter changed the saved positive census")
        observations.append({"name": result["name"], "log_sha256": digest,
                             "expected": validation["expected"]})
    if len(observations) != 9:
        raise RuntimeError("native reference did not contain all nine controlled commands")
    return {"status": "SAVED_NATIVE_CONTROLS_REPARSED", "receipt_sha256": hashlib.sha256(
        receipt_path.read_bytes()).hexdigest(), "observations": observations,
        "strict_adapter_positive_reparsed": True,
        "new_lean_commands": 0, "fresh_bundle_kernel_check": False}


def canonical_source_identity(native_root: Path) -> dict:
    native_parser = (native_root / "scripts/check_math_trust.py").read_bytes()
    native_observer = (native_root / "GRWTSK/Logic/ProofChecking/Checks/OwnedDeclarationAudit.lean").read_bytes()
    if hashlib.sha256(native_parser).hexdigest() != census.NATIVE_CHECKER_SHA256 or hashlib.sha256(
        native_observer).hexdigest() != census.NATIVE_OBSERVER_SHA256:
        raise RuntimeError("canonical audit source changed from native validated source")
    local_parser = Path(census.__file__).read_text()
    native_functions = {node.name: ast.get_source_segment(native_parser.decode(), node)
                        for node in ast.parse(native_parser).body if isinstance(node, ast.FunctionDef)}
    local_functions = {node.name: ast.get_source_segment(local_parser, node)
                       for node in ast.parse(local_parser).body if isinstance(node, ast.FunctionDef)}
    keys = ("census_records", "parse_census", "error_messages", "validate_native_fixture_output")
    if any(native_functions[key] != local_functions[key] for key in keys):
        raise RuntimeError("canonical core parser adaptation changed a function body")
    adapted = native_observer.removeprefix(b'import GRWTSK\n').removesuffix(b'\n#audit_math_trust ""\n')
    if hashlib.sha256(adapted).hexdigest() != census.LEGACY_HELPER_SHA256:
        raise RuntimeError("historical observer adaptation no longer matches its preserved pin")
    census.helper_source()
    return {"native_parser_sha256": census.NATIVE_CHECKER_SHA256,
            "native_observer_sha256": census.NATIVE_OBSERVER_SHA256,
            "helper_sha256": census.HELPER_SHA256, "core_functions_byte_identical": list(keys),
            "historical_observer_adaptation_sha256": census.LEGACY_HELPER_SHA256,
            "observer_body_byte_identical": False,
            "observer_extension": "optional exact 15-pair generated-partial profile; fresh native controls required"}


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--native-reference", type=Path, help="saved native self-test receipt, read only")
    parser.add_argument("--native-root", type=Path, help="canonical checker/helper source, read only")
    parser.add_argument("--output", type=Path, help="optional Python-control evidence JSON")
    args = parser.parse_args()
    suite = unittest.TestSuite([
        unittest.defaultTestLoader.loadTestsFromTestCase(OwnerCensusControls),
        unittest.defaultTestLoader.loadTestsFromTestCase(GeneratedPartialProfileControls),
    ])
    names = [test.id() for group in suite for test in group]
    result = unittest.TextTestRunner(verbosity=2).run(suite)
    if not result.wasSuccessful():
        raise SystemExit(1)
    evidence = {"status": "PYTHON_OWNER_CENSUS_CONTROLS_PASSED", "tests_run": result.testsRun,
                "tests": names, "new_lean_commands": 0, "fresh_bundle_kernel_check": False,
                "helper_sha256": census.HELPER_SHA256,
                "generated_partial_profile_sha256": census.GENERATED_PARTIAL_PROFILE_SHA256,
                "legacy_tests_run": 32,
                "native_profile_acceptance": "PENDING fresh native controls and full owner census",
                "parser_sha256": hashlib.sha256(Path(census.__file__).read_bytes()).hexdigest(),
                "controls_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    if args.native_root:
        evidence["canonical_source_identity"] = canonical_source_identity(args.native_root)
    if args.native_reference:
        evidence["saved_native_reference"] = reference_evidence(args.native_reference)
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(json.dumps(evidence, indent=2) + "\n")
    print(json.dumps(evidence, indent=2))
