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


def reference_evidence(receipt_path: Path) -> dict:
    """Revalidate saved native controls without executing or importing their checker."""
    receipt = json.loads(receipt_path.read_text())
    if receipt["status"] != "LEAN_AUDIT_SELF_TEST_PASSED":
        raise RuntimeError("native reference controls did not pass")
    hashes = receipt["snapshot"]["sha256"]
    if hashes["scripts/check_math_trust.py"] != census.NATIVE_CHECKER_SHA256 or hashes[
        "checks/MathTrustAudit.lean"] != census.NATIVE_OBSERVER_SHA256:
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
    native_observer = (native_root / "checks/MathTrustAudit.lean").read_bytes()
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
    if census.helper_source() != adapted:
        raise RuntimeError("canonical observer adaptation changed more than import/invocation")
    return {"native_parser_sha256": census.NATIVE_CHECKER_SHA256,
            "native_observer_sha256": census.NATIVE_OBSERVER_SHA256,
            "helper_sha256": census.HELPER_SHA256, "core_functions_byte_identical": list(keys),
            "observer_body_byte_identical": True}


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--native-reference", type=Path, help="saved native self-test receipt, read only")
    parser.add_argument("--native-root", type=Path, help="canonical checker/helper source, read only")
    parser.add_argument("--output", type=Path, help="optional Python-control evidence JSON")
    args = parser.parse_args()
    suite = unittest.defaultTestLoader.loadTestsFromTestCase(OwnerCensusControls)
    names = [test.id() for test in suite]
    result = unittest.TextTestRunner(verbosity=2).run(suite)
    if not result.wasSuccessful():
        raise SystemExit(1)
    evidence = {"status": "PYTHON_OWNER_CENSUS_CONTROLS_PASSED", "tests_run": result.testsRun,
                "tests": names, "new_lean_commands": 0, "fresh_bundle_kernel_check": False,
                "helper_sha256": census.HELPER_SHA256,
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
