-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ActualPrimeLogErrorFixed.Variantc516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ActualPrimeLogErrorFixed.Variantc516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-proper-power-diagonal/author-evidence/author-diagonal-attempt02/SourceProperPowerDiagonal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceProperPowerMertens
import SourceDiagonalAbelReview

/-! The finite all-power bound applied to the actual complete physical diagonal.
The original beta, support, source normalization and prime comparison are reused. -/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ActualPrimeLogErrorFixed.Variantc516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d

set_option autoImplicit false
noncomputable section
namespace RH16ProperPowerDiagonal

open Finset Real ArithmeticFunction
open FormalResearch.RiemannHypothesis
open WeightedPrimeMertens WeightedPrimeAbel VaughanDiagonalAbelReview SourceDiagonalPrimeAbel SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateVaughanTranslationGate EstimateSourceMobiusKernel EstimateMertensAbel
open RH16ProperPowerCell RH16ProperPowerInventory RH16ProperPowerMertens

theorem actual_primeLogError_fixed (t : ℝ) (ht : 0 ≤ t) :
    |primeLogError t| ≤ Real.log 4 + 4 := by
  unfold primeLogError
  rw [primeLogPrefix_eq_sum]
  exact weightedPrime_logcutoff_fixed t ht

theorem powerTailBudget_antitone : AntitoneOn powerTailBudget (Set.Ici 1) := by
  have hd (x : ℝ) (hx : 1 ≤ x) :
      HasDerivAt powerTailBudget (-(Real.log x) / x ^ 2 - 1 / x ^ 3) x := by
    have hx0 : x ≠ 0 := by linarith
    have hxpos : 0 < x := by linarith
    convert (((Real.hasDerivAt_log hx0).add_const 1).div (hasDerivAt_id x) hx0).add
      ((hasDerivAt_const x (1 : ℝ)).div
        ((hasDerivAt_id x).pow 2 |>.const_mul 2) (by positivity)) using 1 <;>
      (first | rfl | (simp only [id_eq, Pi.pow_apply]; field_simp; ring))
  apply antitoneOn_of_hasDerivWithinAt_nonpos (convex_Ici 1)
  · intro x hx
    exact (hd x hx).continuousAt.continuousWithinAt
  · intro x hx
    exact (hd x (interior_subset hx)).hasDerivWithinAt
  · intro x hx
    have hx1 : 1 ≤ x := interior_subset hx
    have hl := Real.log_nonneg hx1
    have hx0 : 0 < x := by linarith
    have hneg : -(Real.log x) / x ^ 2 ≤ 0 := div_nonpos_of_nonpos_of_nonneg (by linarith) (sq_nonneg x)
    have hi : 0 ≤ 1 / x ^ 3 := by positivity
    linarith

theorem diagonal_coefficient_error_le_tail (A : ℝ) (hA : 1 ≤ A)
    (U m : ℕ) (hm : U < m) :
    |(if U < m.minFac then vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) -
      (if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0)| ≤
      (if U < m.minFac then properPowerCoefficient m / (m : ℝ) else 0) := by
  by_cases hb : U < m.minFac
  · simpa [hb] using diagonal_coefficient_error_le A hA U m hm
  · by_cases hp : m.Prime
    · exact False.elim (hb (by simpa [hp.minFac_eq] using hm))
    · simp [hb, hp]

/-- All small-base prime powers vanish in the exact diagonal; the full large-base
proper-power train has the same explicit finite budget. -/
theorem actual_diagonal_minus_prime_le_budget (A : ℝ) (hA : 1 ≤ A) :
    |typeTwoDiagonal A - retainedPrimeDiagonal A| ≤ powerTailBudget (vaughanCutoff A) := by
  have hU := vaughanCutoff_pos A hA
  have hsub : Ioc (vaughanCutoff A) (sourceKernelCutoff A) ⊆ Ioc 0 (sourceKernelCutoff A) := by
    intro m hm
    exact Finset.mem_Ioc.mpr ⟨lt_of_le_of_lt (Nat.zero_le _) (Finset.mem_Ioc.mp hm).1,
      (Finset.mem_Ioc.mp hm).2⟩
  have hf (m : ℕ) : 0 ≤ (if vaughanCutoff A < m.minFac then
      properPowerCoefficient m / (m : ℝ) else 0) := by
    split_ifs
    · exact div_nonneg (properPowerCoefficient_nonneg m) (by positivity)
    · rfl
  have hmass := Finset.sum_le_sum_of_subset_of_nonneg hsub (fun m _ _ => hf m)
  rw [← inventoryPrimeDiagonal_eq_retainedPrimeDiagonal A hA,
    typeTwoDiagonal_eq_longBase_sum A hA, inventoryPrimeDiagonal, Finset.sum_filter, Finset.sum_filter]
  have heq : (-∑ m ∈ Ioc (vaughanCutoff A) (sourceKernelCutoff A),
      if vaughanCutoff A < m.minFac then
        vonMangoldt m / (m : ℝ) * sourceCorrelation explicitSecondDerivative A (2 * Real.log m) else 0) -
      (-∑ m ∈ Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) =
      -(∑ m ∈ Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        ((if vaughanCutoff A < m.minFac then
          vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) -
        (if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0))) := by
    rw [Finset.sum_sub_distrib]
    unfold diagonalCorrelation
    ring
  rw [heq, abs_neg]
  calc
    _ ≤ ∑ m ∈ Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        |(if vaughanCutoff A < m.minFac then
          vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) -
        (if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        if vaughanCutoff A < m.minFac then properPowerCoefficient m / (m : ℝ) else 0 :=
      Finset.sum_le_sum fun m hm => diagonal_coefficient_error_le_tail A hA _ m (Finset.mem_Ioc.mp hm).1
    _ ≤ tailProperMass (vaughanCutoff A) (sourceKernelCutoff A) := hmass
    _ ≤ _ := tailProperMass_le_budget _ _ hU

/-- This removes the large-base proper-power remainder premise at every real tail scale. -/
theorem actual_diagonal_minus_prime_tail (Q A : ℝ) (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |typeTwoDiagonal A - retainedPrimeDiagonal A| ≤ powerTailBudget ⌊Q ^ 2⌋₊ := by
  have hA : 1 ≤ A := hQ.trans hQA
  have hQU : 1 ≤ ⌊Q ^ 2⌋₊ := (Nat.one_le_floor_iff _).mpr (by nlinarith)
  have hUA : ⌊Q ^ 2⌋₊ ≤ vaughanCutoff A := by
    unfold vaughanCutoff
    exact Nat.floor_mono (by nlinarith)
  exact (actual_diagonal_minus_prime_le_budget A hA).trans
    (powerTailBudget_antitone (by change (1 : ℝ) ≤ ⌊Q ^ 2⌋₊; exact_mod_cast hQU)
      (by change (1 : ℝ) ≤ vaughanCutoff A; exact_mod_cast vaughanCutoff_pos A hA)
      (by exact_mod_cast hUA))

end RH16ProperPowerDiagonal
