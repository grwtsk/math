"""Adversarial controls from two actual frozen Lean diagnostic observations."""
import ast
import copy
import hashlib
import io
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import time
import types
import unittest
from contextlib import redirect_stdout
import rh_target_oracle as oracle

OBSERVED_DIAGNOSTICS = {'checks/Logic/Counterexamples/PositivityIsNotVanishing.lean': {'caption': '',
                                                                'data': 'unsolved goals\n⊢ False',
                                                                'endPos': {'column': 57, 'line': 4},
                                                                'fileName': 'checks/Logic/Counterexamples/PositivityIsNotVanishing.lean',
                                                                'isSilent': False,
                                                                'keepFullRange': False,
                                                                'kind': 'Tactic.unsolvedGoals',
                                                                'pos': {'column': 53, 'line': 3},
                                                                'severity': 'error'},
 'checks/NumberTheory/Zeta/Riemann/ExcludedTrivialZero.lean': {'caption': '',
                                                               'data': 'unsolved goals\n'
                                                                       'case refine_2\n'
                                                                       '⊢ False',
                                                               'endPos': {'column': 12, 'line': 6},
                                                               'fileName': 'checks/NumberTheory/Zeta/Riemann/ExcludedTrivialZero.lean',
                                                               'isSilent': False,
                                                               'keepFullRange': False,
                                                               'kind': 'Tactic.unsolvedGoals',
                                                               'pos': {'column': 2, 'line': 6},
                                                               'severity': 'error'}}

OBSERVED_SOURCES = {'checks/Logic/Counterexamples/PositivityIsNotVanishing.lean': 'import '
                                                               'GRWTSK.NumberTheory.Zeta.Riemann\n'
                                                               '-- This deliberately invalid '
                                                               'conclusion must be rejected using '
                                                               'the actual defect.\n'
                                                               'example : '
                                                               'GRWTSK.RiemannHypothesis.rhDefect '
                                                               '0 = 0 := by\n'
                                                               '  norm_num '
                                                               '[GRWTSK.RiemannHypothesis.rh_defect_eq_square]\n',
 'checks/NumberTheory/Zeta/Riemann/ExcludedTrivialZero.lean': 'import '
                                                              'GRWTSK.NumberTheory.Zeta.Riemann\n'
                                                              '-- This deliberately invalid '
                                                              'inference must be rejected by the '
                                                              'compiler.\n'
                                                              'example : '
                                                              'GRWTSK.RiemannHypothesis.NontrivialZetaZero '
                                                              '(-2) := by\n'
                                                              '  refine ⟨?_, ?_, ?_⟩\n'
                                                              '  · simpa using '
                                                              'riemannZeta_neg_two_mul_nat_add_one '
                                                              '0\n'
                                                              '  · norm_num\n'
                                                              '  · norm_num\n'}

OBSERVED_AUDIT = 'RH_DECL::{"axioms":["propext"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis","name":"GRWTSK.RiemannHypothesis.Target.Statement._proof_1","type":"(1 + 1).AtLeastTwo"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis","name":"GRWTSK.RiemannHypothesis.Target.statement_eq_mathlib","type":"GRWTSK.RiemannHypothesis.Target.Statement = RiemannHypothesis"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"definition","module":"GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis","name":"GRWTSK.RiemannHypothesis.Target.Statement","type":"Prop"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.Analysis.Complex.CriticalReflection","name":"GRWTSK.RiemannHypothesis.critical_reflection_involutive","type":"∀ (s : ℂ), GRWTSK.RiemannHypothesis.criticalReflection (GRWTSK.RiemannHypothesis.criticalReflection s) = s"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.Analysis.Complex.CriticalReflection","name":"GRWTSK.RiemannHypothesis.criticalReflection.eq_1","type":"∀ (s : ℂ), GRWTSK.RiemannHypothesis.criticalReflection s = 1 - star s"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"definition","module":"GRWTSK.Analysis.Complex.CriticalReflection","name":"GRWTSK.RiemannHypothesis.criticalReflection","type":"ℂ → ℂ"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"definition","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions","name":"GRWTSK.RiemannHypothesis.NontrivialZetaZero","type":"ℂ → Prop"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"definition","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions","name":"GRWTSK.RiemannHypothesis.zeroConjugate","type":"ℂ → ℂ"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"definition","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions","name":"GRWTSK.RiemannHypothesis.zeroReflect","type":"ℂ → ℂ"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"definition","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions","name":"GRWTSK.RiemannHypothesis.rhDefect","type":"ℂ → ℝ"}\nRH_DECL::{"axioms":["propext"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions","name":"GRWTSK.RiemannHypothesis.NontrivialZetaZero._proof_1","type":"(1 + 1).AtLeastTwo"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions","name":"GRWTSK.RiemannHypothesis.trivial_zero_is_excluded","type":"riemannZeta (-2) = 0 ∧ ¬GRWTSK.RiemannHypothesis.NontrivialZetaZero (-2)"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions","name":"GRWTSK.RiemannHypothesis.pole_is_excluded","type":"¬GRWTSK.RiemannHypothesis.NontrivialZetaZero 1"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect","name":"GRWTSK.RiemannHypothesis.defect_nonnegative_does_not_force_universal_vanishing","type":"(∀ (s : ℂ), 0 ≤ GRWTSK.RiemannHypothesis.rhDefect s) ∧ ¬∀ (s : ℂ), GRWTSK.RiemannHypothesis.rhDefect s = 0"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect","name":"GRWTSK.RiemannHypothesis.rh_defect_eq_zero_iff","type":"∀ (s : ℂ), GRWTSK.RiemannHypothesis.rhDefect s = 0 ↔ s.re = 1 / 2"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect","name":"GRWTSK.RiemannHypothesis.rh_defect_nonneg","type":"∀ (s : ℂ), 0 ≤ GRWTSK.RiemannHypothesis.rhDefect s"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect","name":"GRWTSK.RiemannHypothesis.rhDefect.eq_1","type":"∀ (s : ℂ), GRWTSK.RiemannHypothesis.rhDefect s = Complex.normSq (s - GRWTSK.RiemannHypothesis.criticalReflection s)"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect","name":"GRWTSK.RiemannHypothesis.rh_defect_eq_norm_sq","type":"∀ (s : ℂ), GRWTSK.RiemannHypothesis.rhDefect s = ‖s - GRWTSK.RiemannHypothesis.criticalReflection s‖ ^ 2"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect","name":"GRWTSK.RiemannHypothesis.rh_defect_eq_square","type":"∀ (s : ℂ), GRWTSK.RiemannHypothesis.rhDefect s = (2 * s.re - 1) ^ 2"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect","name":"GRWTSK.RiemannHypothesis.riemann_hypothesis_iff_defect_zero","type":"RiemannHypothesis ↔ ∀ (s : ℂ), GRWTSK.RiemannHypothesis.NontrivialZetaZero s → GRWTSK.RiemannHypothesis.rhDefect s = 0"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.zero_conjugate_reflect_commute","type":"∀ (s : ℂ),\\n  GRWTSK.RiemannHypothesis.zeroConjugate (GRWTSK.RiemannHypothesis.zeroReflect s) =\\n    GRWTSK.RiemannHypothesis.zeroReflect (GRWTSK.RiemannHypothesis.zeroConjugate s)"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.zero_reflect_involutive","type":"∀ (s : ℂ), GRWTSK.RiemannHypothesis.zeroReflect (GRWTSK.RiemannHypothesis.zeroReflect s) = s"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.nontrivial_zero_critical_reflection_iff","type":"∀ (s : ℂ),\\n  GRWTSK.RiemannHypothesis.NontrivialZetaZero (GRWTSK.RiemannHypothesis.criticalReflection s) ↔\\n    GRWTSK.RiemannHypothesis.NontrivialZetaZero s"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.NontrivialZetaZero.gamma_real_ne_zero","type":"∀ {s : ℂ}, GRWTSK.RiemannHypothesis.NontrivialZetaZero s → s.Gammaℝ ≠ 0"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.zero_conjugate_involutive","type":"∀ (s : ℂ), GRWTSK.RiemannHypothesis.zeroConjugate (GRWTSK.RiemannHypothesis.zeroConjugate s) = s"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.NontrivialZetaZero.critical_reflection","type":"∀ {s : ℂ},\\n  GRWTSK.RiemannHypothesis.NontrivialZetaZero s →\\n    GRWTSK.RiemannHypothesis.NontrivialZetaZero (GRWTSK.RiemannHypothesis.criticalReflection s)"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.nontrivial_zero_critical_reflection_iff._simp_1","type":"∀ (s : ℂ),\\n  GRWTSK.RiemannHypothesis.NontrivialZetaZero (GRWTSK.RiemannHypothesis.criticalReflection s) =\\n    GRWTSK.RiemannHypothesis.NontrivialZetaZero s"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.nontrivial_zero_reflect_iff._simp_1","type":"∀ (s : ℂ),\\n  GRWTSK.RiemannHypothesis.NontrivialZetaZero (GRWTSK.RiemannHypothesis.zeroReflect s) =\\n    GRWTSK.RiemannHypothesis.NontrivialZetaZero s"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.NontrivialZetaZero.conjugate","type":"∀ {s : ℂ},\\n  GRWTSK.RiemannHypothesis.NontrivialZetaZero s →\\n    GRWTSK.RiemannHypothesis.NontrivialZetaZero (GRWTSK.RiemannHypothesis.zeroConjugate s)"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.NontrivialZetaZero.mem_critical_strip","type":"∀ {s : ℂ}, GRWTSK.RiemannHypothesis.NontrivialZetaZero s → 0 < s.re ∧ s.re < 1"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect","type":"∀ {s : ℂ},\\n  GRWTSK.RiemannHypothesis.NontrivialZetaZero s →\\n    GRWTSK.RiemannHypothesis.NontrivialZetaZero (GRWTSK.RiemannHypothesis.zeroReflect s)"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.nontrivial_zero_conjugate_iff._simp_1","type":"∀ (s : ℂ),\\n  GRWTSK.RiemannHypothesis.NontrivialZetaZero (GRWTSK.RiemannHypothesis.zeroConjugate s) =\\n    GRWTSK.RiemannHypothesis.NontrivialZetaZero s"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.zeroReflect.eq_1","type":"∀ (s : ℂ), GRWTSK.RiemannHypothesis.zeroReflect s = 1 - s"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.critical_reflection_eq_composite","type":"∀ (s : ℂ),\\n  GRWTSK.RiemannHypothesis.criticalReflection s =\\n    GRWTSK.RiemannHypothesis.zeroReflect (GRWTSK.RiemannHypothesis.zeroConjugate s)"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.nontrivial_zero_conjugate_iff","type":"∀ (s : ℂ),\\n  GRWTSK.RiemannHypothesis.NontrivialZetaZero (GRWTSK.RiemannHypothesis.zeroConjugate s) ↔\\n    GRWTSK.RiemannHypothesis.NontrivialZetaZero s"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.zeroConjugate.eq_1","type":"∀ (s : ℂ), GRWTSK.RiemannHypothesis.zeroConjugate s = star s"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.nontrivial_zero_reflect_iff","type":"∀ (s : ℂ),\\n  GRWTSK.RiemannHypothesis.NontrivialZetaZero (GRWTSK.RiemannHypothesis.zeroReflect s) ↔\\n    GRWTSK.RiemannHypothesis.NontrivialZetaZero s"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry","name":"GRWTSK.RiemannHypothesis.NontrivialZetaZero.ne_zero","type":"∀ {s : ℂ}, GRWTSK.RiemannHypothesis.NontrivialZetaZero s → s ≠ 0"}\nRH_DECL::{"axioms":["propext","Classical.choice","Quot.sound"],"kind":"theorem","module":"GRWTSK.NumberTheory.Zeta.Riemann.DefectCriterion","name":"GRWTSK.RiemannHypothesis.Target.statement_iff_defect_zero","type":"GRWTSK.RiemannHypothesis.Target.Statement ↔\\n  ∀ (s : ℂ), GRWTSK.RiemannHypothesis.NontrivialZetaZero s → GRWTSK.RiemannHypothesis.rhDefect s = 0"}\nRH_COUNT::39\n'


class OracleTests(unittest.TestCase):
    fixture_count = 0

    def arguments(self, source):
        diagnostic = copy.deepcopy(OBSERVED_DIAGNOSTICS[source])
        path = Path("/qualified-inputs") / source
        diagnostic["fileName"] = str(path)
        return {"source": source, "source_path": path,
                "source_bytes": OBSERVED_SOURCES[source].encode("utf-8"),
                "returncode": 1, "stdout": json.dumps(diagnostic) + "\n",
                "stderr": "", "timed_out": False}

    def changed_message(self, arguments, change):
        diagnostic = json.loads(arguments["stdout"])
        change(diagnostic)
        return dict(arguments, stdout=json.dumps(diagnostic) + "\n")

    def rejected(self, arguments):
        type(self).fixture_count += 1
        with self.assertRaises(ValueError):
            oracle.validate_negative_result(**arguments)

    def test_actual_native_messages(self):
        for source in OBSERVED_DIAGNOSTICS:
            with self.subTest(source=source):
                arguments = self.arguments(source)
                type(self).fixture_count += 1
                result = oracle.validate_negative_result(**arguments)
                self.assertEqual(result["source_sha256"], hashlib.sha256(arguments["source_bytes"]).hexdigest())
                self.assertIn("⊢ False", result["goal"])

    def test_signals_timeout_exit_status_and_stderr(self):
        for source in OBSERVED_DIAGNOSTICS:
            original = self.arguments(source)
            for code in [0, 2, -9, True, None]:
                with self.subTest(source=source, code=code):
                    self.rejected(dict(original, returncode=code))
            for timed_out in [True, 0, None]:
                with self.subTest(source=source, timed_out=timed_out):
                    self.rejected(dict(original, timed_out=timed_out))
            for stderr in ["warning: unsolved goals", "\n", None]:
                with self.subTest(source=source, stderr=stderr):
                    self.rejected(dict(original, stderr=stderr))

    def test_extra_or_invalid_diagnostics(self):
        for source in OBSERVED_DIAGNOSTICS:
            original = self.arguments(source)
            wrong = dict(json.loads(original["stdout"]), severity="warning")
            for stdout in ["", "unsolved goals\n⊢ False\n", "{broken", "null\n", "[]\n",
                           original["stdout"] * 2, original["stdout"] + json.dumps(wrong) + "\n",
                           "unknown module\n" + original["stdout"], original["stdout"].encode()]:
                with self.subTest(source=source, stdout=stdout):
                    self.rejected(dict(original, stdout=stdout))
            duplicate = original["stdout"].strip()[:-1] + ', "kind": "Tactic.unsolvedGoals"}\n'
            self.rejected(dict(original, stdout=duplicate))

    def test_wrong_source_goal_range_or_error_kind(self):
        for source in OBSERVED_DIAGNOSTICS:
            original = self.arguments(source)
            changes = [
                lambda d: d.update(fileName="/foreign/" + Path(source).name),
                lambda d: d.update(severity="warning"),
                lambda d: d.update(isSilent=True),
                lambda d: d.update(isSilent=0),
                lambda d: d.update(kind="lean.unknownIdentifier"),
                lambda d: d.update(data="unsolved goals\n⊢ True"),
                lambda d: d.update(data="unknown identifier; unsolved goals\n⊢ False"),
                lambda d: d.update(caption="unexpected"),
                lambda d: d.update(keepFullRange=0),
                lambda d: d["pos"].update(line=d["pos"]["line"] + 1),
                lambda d: d["pos"].update(column=d["pos"]["column"] + 1),
                lambda d: d["endPos"].update(column=d["endPos"]["column"] + 1),
                lambda d: d.update(endPos=None),
                lambda d: d.pop("pos"),
                lambda d: d.pop("kind"),
                lambda d: d.pop("keepFullRange"),
            ]
            for i, change in enumerate(changes):
                with self.subTest(source=source, mutation=i):
                    self.rejected(self.changed_message(original, change))

    def test_unknown_or_nonfinite_negative_fields(self):
        for source in OBSERVED_DIAGNOSTICS:
            original = self.arguments(source)
            for extra in [{"extraMessages": [{"severity": "warning", "data": "unrelated"}]},
                          {"unexpected": float("nan")}, {"unexpected": 0}]:
                self.rejected(self.changed_message(original, lambda d: d.update(extra)))
            self.rejected(self.changed_message(original, lambda d: d.update(data=float("inf"))))

    def test_actual_positive_audit(self):
        rows = oracle.validate_positive_audit(OBSERVED_AUDIT)
        self.assertEqual(len(rows), 39)
        self.assertEqual(sum(".eq_" in row["name"] or "._proof_" in row["name"] or "._simp_" in row["name"] for row in rows), 9)
        type(self).fixture_count += 1

    def test_count_markers_and_positive_family_hostiles(self):
        for marker in ["RH_COUNT::390", "RH_COUNT::39suffix", "RH_COUNT::39\nRH_COUNT::38",
                       "RH_COUNT::39\nRH_COUNT::39", " RH_COUNT::39", "prefix RH_COUNT::39", ""]:
            with self.subTest(marker=marker):
                type(self).fixture_count += 1
                with self.assertRaises(ValueError):
                    oracle.validate_positive_audit(OBSERVED_AUDIT.replace("RH_COUNT::39", marker))
        lines = [line for line in OBSERVED_AUDIT.splitlines() if line.startswith("RH_DECL::")]
        rows = [json.loads(line[len("RH_DECL::"):]) for line in lines]
        def output(changed, count="RH_COUNT::39"):
            return "\n".join("RH_DECL::" + json.dumps(row) for row in changed) + "\n" + count + "\n"
        mutations = []
        mutations.append(rows[:-1])
        mutations.append(rows + [rows[0]])
        changed = copy.deepcopy(rows); changed[-1] = copy.deepcopy(rows[0]); mutations.append(changed)
        changed = copy.deepcopy(rows); changed[0]["name"] = "GRWTSK.Forged"; mutations.append(changed)
        changed = copy.deepcopy(rows); changed[0]["module"] = "GRWTSK.WrongOwner"; mutations.append(changed)
        changed = copy.deepcopy(rows); changed[0]["axioms"] = ["sorryAx"]; mutations.append(changed)
        changed = copy.deepcopy(rows); changed[0]["axioms"] = [True]; mutations.append(changed)
        changed = copy.deepcopy(rows); changed[0]["type"] = 0; mutations.append(changed)
        changed = copy.deepcopy(rows); changed[0]["unexpected"] = "warning"; mutations.append(changed)
        for kind in ["axiom", "unsafe", "unknown"]:
            changed = copy.deepcopy(rows); changed[0]["kind"] = kind; mutations.append(changed)
        for changed in mutations:
            type(self).fixture_count += 1
            with self.assertRaises(ValueError):oracle.validate_positive_audit(output(changed))
        changed = copy.deepcopy(rows); changed[0]["type"] += " RH_COUNT::39"
        type(self).fixture_count += 1
        with self.assertRaises(ValueError):oracle.validate_positive_audit(output(changed, count=""))
        for noise in ["warning: unrelated\n", "error(lean.invalidField): unrelated\n", "trace: unexpected\n"]:
            type(self).fixture_count += 1
            with self.assertRaises(ValueError):oracle.validate_positive_audit(OBSERVED_AUDIT + noise)
        duplicate_key = lines[0][:-1] + ', "name": "duplicate"}'
        type(self).fixture_count += 1
        with self.assertRaises(ValueError):
            oracle.validate_positive_audit("\n".join([duplicate_key] + lines[1:]) + "\nRH_COUNT::39\n")

    def test_changed_unqualified_or_mutable_sources(self):
        for source in OBSERVED_DIAGNOSTICS:
            original = self.arguments(source)
            self.rejected(dict(original, source_bytes=original["source_bytes"] + b"\n"))
            self.rejected(dict(original, source_bytes=bytearray(original["source_bytes"])))
            self.rejected(dict(original, source="checks/Unqualified.lean"))

    def test_unicode_and_multiline_native_ranges(self):
        results = {source: oracle.validate_negative_result(**self.arguments(source))
                   for source in OBSERVED_DIAGNOSTICS}
        excluded = next(value for source, value in results.items() if source.endswith("ExcludedTrivialZero.lean"))
        defect = next(value for source, value in results.items() if source.endswith("PositivityIsNotVanishing.lean"))
        self.assertEqual(excluded["source_span"], "· norm_num")
        self.assertEqual(defect["source_span"], "by\n  norm_num [GRWTSK.RiemannHypothesis.rh_defect_eq_square]")
        type(self).fixture_count += 2

    def test_driver_wiring_with_actual_message_semantics(self):
        # Compile only the candidate run function. No compiler, lake, public
        # receipt writer or source export is executed by these integration cases.
        driver = Path(__file__).with_name("check_rh_target.py")
        tree = ast.parse(driver.read_text())
        run_function = next(node for node in tree.body if isinstance(node, ast.FunctionDef) and node.name == "run")
        code = compile(ast.Module(body=[run_function], type_ignores=[]), str(driver), "exec")
        for source in OBSERVED_DIAGNOSTICS:
            for exit_code, extra, error in [(1, "", ""), (-9, "", ""), (1, "warning: wrong error\n", ""), (1, "", "unexpected stderr")]:
                with self.subTest(source=source, exit_code=exit_code, extra=extra, error=error):
                    with tempfile.TemporaryDirectory(prefix="rh-oracle-fixture-") as temporary:
                        root = Path(temporary)
                        path = root / source
                        path.parent.mkdir(parents=True)
                        path.write_bytes(OBSERVED_SOURCES[source].encode("utf-8"))
                        path.chmod(0o400)
                        diagnostic = copy.deepcopy(OBSERVED_DIAGNOSTICS[source])
                        diagnostic["fileName"] = str(path)
                        stdout = json.dumps(diagnostic) + "\n" + extra
                        def fake_run(argv, **kwargs):
                            self.assertEqual(argv[:6], ["pinned-lean", "--trust=0", "--memory=4096", "--threads=1", "-DwarningAsError=true", "--json"])
                            self.assertEqual(argv[-1], str(path))
                            return subprocess.CompletedProcess(argv, exit_code, stdout, error)
                        namespace = {"ROOT": root, "Path": Path, "hashlib": hashlib, "time": time,
                                     "lean": "pinned-lean", "env": {}, "results": [],
                                     "subprocess": types.SimpleNamespace(run=fake_run, TimeoutExpired=subprocess.TimeoutExpired),
                                     "validate_negative_result": oracle.validate_negative_result}
                        exec(code, namespace)
                        type(self).fixture_count += 1
                        with redirect_stdout(io.StringIO()):
                            if exit_code == 1 and not extra and not error:
                                namespace["run"](source, expected_failure=True)
                                self.assertEqual(namespace["results"][-1]["negative_validation"]["diagnostic"]["kind"], "Tactic.unsolvedGoals")
                            else:
                                with self.assertRaises(RuntimeError):namespace["run"](source, expected_failure=True)
                                self.assertEqual(namespace["results"][-1]["outcome"], "failed")


if __name__ == "__main__":
    suite = unittest.defaultTestLoader.loadTestsFromTestCase(OracleTests)
    result = unittest.TextTestRunner().run(suite)
    print(json.dumps({"schema": "actual-rh-oracle-adversarial-fixtures-v1", "tests_run": result.testsRun,
                      "fixtures": OracleTests.fixture_count, "python_optimized": not __debug__,
                      "passed": result.wasSuccessful(), "native_executed": False,
                      "fixture_origin": "Two actual frozen native diagnostic observations; filename only normalized for isolated integration."}))
    sys.exit(0 if result.wasSuccessful() else 1)
