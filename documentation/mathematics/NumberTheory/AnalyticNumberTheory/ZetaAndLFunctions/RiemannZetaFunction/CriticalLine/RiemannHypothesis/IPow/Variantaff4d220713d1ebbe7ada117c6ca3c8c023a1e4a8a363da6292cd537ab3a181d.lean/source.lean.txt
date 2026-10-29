-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Complex.Variante0169e707d241142a774ee3644fd21a064dfbd9d62a5ba00cc9204d35d55988c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0169e707d241142a774ee3644fd21a064dfbd9d62a5ba00cc9204d35d55988c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Complex.Variante0169e707d241142a774ee3644fd21a064dfbd9d62a5ba00cc9204d35d55988c","mathematical_subject":"Foundations.Unclassified","original_sha256":"e0169e707d241142a774ee3644fd21a064dfbd9d62a5ba00cc9204d35d55988c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Simproc/IPow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Basic.Complex.Basic

/-!
# Tests for `simp`-reduction about `I ^ _`.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Complex.Variante0169e707d241142a774ee3644fd21a064dfbd9d62a5ba00cc9204d35d55988c

open Complex

-- simp can reduce I ^ n for literal nats n, as well as literal ints n, but not for variables n.
example : I ^ 4 = 1 := by simp
example : I ^ 5 = I := by simp
example : I ^ 100 = 1 := by simp

example : I ^ 3 = -I := by simp

example : I ^ (4 : ℤ) = 1 := by simp
example : I ^ (5 : ℤ) = I := by simp
example : I ^ (-4 : ℤ) = 1 := by simp
example : I ^ (-5 : ℤ) = -I := by simp
example : I ^ (-6 : ℤ) = -1 := by simp
example : I ^ (-7 : ℤ) = I := by simp
example : I ^ (-100 : ℤ) = 1 := by simp

/-- error: `simp` made no progress -/
#guard_msgs in
example {n : ℕ} : I ^ n = I ^ (n % 4) := by simp

-- the appropriate simp only sequence can reduce I ^ n for literal nats n
example : I ^ 5 = I := by simp only [I_pow_eq_pow_mod', Nat.reduceMod, pow_one]
example : I ^ 6 = -1 := by simp only [I_pow_eq_pow_mod', Nat.reduceMod, I_sq]
example : I ^ 7 = -I := by simp only [I_pow_eq_pow_mod', Nat.reduceMod, I_pow_three]
example : I ^ 8 = 1 := by simp only [I_pow_eq_pow_mod', Nat.reduceMod, pow_zero]

-- the appropriate simp only sequence can reduce I ^ n for literal ints n
example : I ^ (5 : ℤ) = I := by
  simp only [zpow_ofNat, I_pow_eq_pow_mod', Nat.reduceMod, pow_one]

-- the appropriate simp only sequence can reduce I ^ (-n) for literal nats n
example : I ^ (-5 : ℤ) = -I := by
  simp only [Int.reduceNeg, zpow_neg, zpow_ofNat, I_pow_eq_pow_mod', Nat.reduceMod, pow_one, inv_I]
