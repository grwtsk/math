-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualClosedXiAtomKernel.Variantbc59c8bf8e90519c98f5ffc881fd27af6dab9bbb33b688a5fc046ec4883364bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc59c8bf8e90519c98f5ffc881fd27af6dab9bbb33b688a5fc046ec4883364bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualClosedXiAtomKernel.Variantbc59c8bf8e90519c98f5ffc881fd27af6dab9bbb33b688a5fc046ec4883364bc","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"bc59c8bf8e90519c98f5ffc881fd27af6dab9bbb33b688a5fc046ec4883364bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/dependencies/owner-source-captures/SourceActualXiClosedKernelHyperbola.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiHalfHyperbola

/-!
The actual closed psi boundary is combined with the critical-half inventory
before any triangle inequality. The resulting exact source kernel vanishes
at every touching upper atom; the signed mu quotient rows remain literal.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualClosedXiAtomKernel.Variantbc59c8bf8e90519c98f5ffc881fd27af6dab9bbb33b688a5fc046ec4883364bc

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiClosedKernelHyperbola
open ArithmeticFunction MeasureTheory Set
open scoped Interval
open SourceActualXiHalfHyperbola SourceActualXiHalfFiniteReadout RootActualXiTailPrimitive
open RH16ActualPsiNegativeBlock
noncomputable section

/-- The genuine joint closed-psi and critical-half atom weight. -/
def actualClosedXiAtomKernel (Y : ℝ) (n : ℕ) : ℝ :=
  1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt Y

/-- The full actual closed Mangoldt inventory with its psi boundary already combined. -/
def actualClosedMangoldtXiPair (Y : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 (Nat.floor Y), (vonMangoldt n : ℝ) * actualClosedXiAtomKernel Y n

/-- Complete signed mu-log product rows preserve the literal joint atom weight. -/
def actualClosedMobiusXiHyperbola (Y : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (Nat.floor Y), (moebius d : ℝ) *
    ∑ m ∈ Finset.Icc 1 (Nat.floor Y / d),
      Real.log (m : ℝ) * actualClosedXiAtomKernel Y (d * m)

private theorem ioc_zero_eq (N : ℕ) : Finset.Ioc 0 N = Finset.Icc 1 N := by
  ext n
  simp only [Finset.mem_Ioc, Finset.mem_Icc]
  omega

private theorem psi_eq_positive_prefix (Y : ℝ) :
    Chebyshev.psi Y = ∑ n ∈ Finset.Icc 1 (Nat.floor Y), (vonMangoldt n : ℝ) := by
  rw [Chebyshev.psi_eq_sum_Icc, Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
  simp only [ArithmeticFunction.map_zero, zero_add, ioc_zero_eq]

/-- The actual closed psi inventory has the full finite mu-log hyperbola. -/
theorem actualPsi_eq_moebius_log_hyperbola (Y : ℝ) :
    Chebyshev.psi Y = ∑ d ∈ Finset.Icc 1 (Nat.floor Y), (moebius d : ℝ) *
      ∑ m ∈ Finset.Icc 1 (Nat.floor Y / d), Real.log (m : ℝ) := by
  have hh := sum_Ioc_mul_eq_sum_sum (moebius : ArithmeticFunction ℝ)
    ArithmeticFunction.log (Nat.floor Y)
  simp only [moebius_mul_log_eq_vonMangoldt, log_apply, intCoe_apply, ioc_zero_eq] at hh
  rw [psi_eq_positive_prefix]
  exact hh

/-- The closed psi boundary remains exact before any estimate of a signed quotient row. -/
theorem actualClosedMangoldtXiPair_eq_half_sub_psi (Y : ℝ) :
    actualClosedMangoldtXiPair Y = actualMoebiusLogHalfHyperbola (Nat.floor Y) -
      Chebyshev.psi Y / Real.sqrt Y := by
  unfold actualClosedMangoldtXiPair actualClosedXiAtomKernel
  simp_rw [mul_sub, mul_one_div]
  rw [Finset.sum_sub_distrib, ← Finset.sum_div,
    actualMangoldtHalfPrefix_eq_hyperbola, ← psi_eq_positive_prefix]

/-- Both actual arithmetic terms combine into the same full signed product-weight hyperbola. -/
theorem actualClosedMangoldtXiPair_eq_joint_hyperbola (Y : ℝ) :
    actualClosedMangoldtXiPair Y = actualClosedMobiusXiHyperbola Y := by
  rw [actualClosedMangoldtXiPair_eq_half_sub_psi, actualPsi_eq_moebius_log_hyperbola]
  unfold actualMoebiusLogHalfHyperbola actualClosedMobiusXiHyperbola actualClosedXiAtomKernel
  rw [Finset.sum_div, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro d _
  rw [Finset.mul_sum, Finset.mul_sum, Finset.sum_div, ← Finset.sum_sub_distrib, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m _
  rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg _)]
  ring

/-- Every true closed upper product atom has exactly zero joint kernel, including prime powers. -/
theorem actualClosedXiAtomKernel_touching (n : ℕ) :
    actualClosedXiAtomKernel (n : ℝ) n = 0 := by
  simp [actualClosedXiAtomKernel]

/-- At an inclusive upper integer seam the new atom cancels rather than being dropped. -/
theorem actualClosedMangoldtXiPair_on_closed_cell {N : ℕ} {Y : ℝ}
    (hN : 1 ≤ N) (hY : (N : ℝ) ≤ Y) (hYs : Y ≤ (N + 1 : ℕ)) :
    actualClosedMangoldtXiPair Y =
      ∑ n ∈ Finset.Icc 1 N, (vonMangoldt n : ℝ) * actualClosedXiAtomKernel Y n := by
  by_cases hlt : Y < (N + 1 : ℕ)
  · have hY0 : 0 ≤ Y := (Nat.cast_nonneg N).trans hY
    have hf : Nat.floor Y = N := (Nat.floor_eq_iff hY0).2 ⟨hY, by exact_mod_cast hlt⟩
    simp only [actualClosedMangoldtXiPair, hf]
  · have he : Y = (N + 1 : ℕ) := by linarith
    subst Y
    unfold actualClosedMangoldtXiPair
    rw [Nat.floor_natCast, Finset.sum_Icc_succ_top (by omega)]
    rw [actualClosedXiAtomKernel_touching]
    simp

/-- The exact anchored F7 formula retains the combined arithmetic pair and both prescribed heads. -/
theorem actualAnchoredXiTailPrimitive_eq_closed_pair {t : ℝ} (ht : Real.log 7 ≤ t) :
    actualAnchoredXiTailPrimitive t =
      2 * (actualClosedMangoldtXiPair (Real.exp t) - actualClosedMangoldtXiPair 7) -
        2 * (Real.exp t + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) /
          Real.sqrt (Real.exp t) +
        2 * (7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt 7 := by
  rw [actualAnchoredXiTailPrimitive_eq_hyperbola ht,
    actualClosedMangoldtXiPair_eq_half_sub_psi,
    actualClosedMangoldtXiPair_eq_half_sub_psi]
  simp only [Nat.floor_ofNat]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiClosedKernelHyperbola
