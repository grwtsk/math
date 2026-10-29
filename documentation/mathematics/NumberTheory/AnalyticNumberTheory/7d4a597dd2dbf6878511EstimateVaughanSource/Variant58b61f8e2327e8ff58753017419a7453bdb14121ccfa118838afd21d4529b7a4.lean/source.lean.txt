-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SourceLowerLeSourceUpper.Variant7d4a597dd2dbf6878511a529ab580efe4cac6374c6982f02f0fa4b61578de7c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d4a597dd2dbf6878511a529ab580efe4cac6374c6982f02f0fa4b61578de7c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SourceLowerLeSourceUpper.Variant7d4a597dd2dbf6878511a529ab580efe4cac6374c6982f02f0fa4b61578de7c1","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"7d4a597dd2dbf6878511a529ab580efe4cac6374c6982f02f0fa4b61578de7c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/7d4a597dd2dbf6878511-EstimateVaughanSource.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePlainKernel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing

/-!
# Vaughan's identity for the unchanged signed source

The Type II term is defined independently as the complete finite signed
bilinear sum. The exact source support justifies completion of each inventory.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SourceLowerLeSourceUpper.Variant7d4a597dd2dbf6878511a529ab580efe4cac6374c6982f02f0fa4b61578de7c1

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateVaughanSource

open ArithmeticFunction
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity
open EstimatePlainKernel EstimateVaughanIdentity EstimateSourceMobiusKernel
open EstimateMobiusSplit EstimatePrimeSmoothDefect EstimateMertensAbel
open EstimateMertensResidual EstimateWeightedMobiusPairing PrimePowerDescent

noncomputable section

/-- The real lower cutoff lies inside the original positive source window. -/
theorem sourceLower_le_sourceUpper (A : ℝ) (hA : 1 ≤ A) :
    sourceLower A ≤ sourceUpper A := by
  have hA0 : 0 < A := by linarith
  have hlog := Real.log_le_sub_one_of_pos hA0
  unfold sourceLower sourceUpper
  calc
    A^2 = Real.exp (Real.log A + Real.log A) := by
      rw [Real.exp_add, Real.exp_log hA0, pow_two]
    _ ≤ Real.exp (2 * A) := Real.exp_le_exp.mpr (by linarith)

/-- Closed short-factor cutoff at the actual real scale. -/
def vaughanCutoff (A : ℝ) : ℕ := ⌊A^2⌋₊

/-- The short von Mangoldt sector. -/
def shortMangoldtSource (A : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (vaughanCutoff A), vonMangoldt m * sourcePlainWeight A m

/-- The short Möbius logarithmic-kernel sector. -/
def shortLogSource (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * sourceMobiusKernel A d

/-- The doubly short plain-kernel sector, subtracted in Vaughan's identity. -/
def shortPlainSource (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
    realMoebius d * vonMangoldt m * sourcePlainKernel A ((d*m : ℕ) : ℝ)

/-- The complete signed long-long sector, with its original product restriction. -/
def typeTwoSource (A : ℝ) : ℝ :=
  ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
    ∑ n ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter
      (fun n ↦ m*n ≤ sourceKernelCutoff A),
      vonMangoldt m * beta (vaughanCutoff A) n / Real.sqrt ((m*n : ℕ) : ℝ) *
        sourceCorrelation explicitSecondDerivative A (Real.log m + Real.log n)

theorem vaughanCutoff_pos (A : ℝ) (hA : 1 ≤ A) : 1 ≤ vaughanCutoff A := by
  apply (Nat.le_floor_iff (sq_nonneg A)).2
  norm_num only [Nat.cast_one]
  nlinarith

theorem vaughanCutoff_le_sourceKernelCutoff (A : ℝ) (hA : 1 ≤ A) :
    vaughanCutoff A ≤ sourceKernelCutoff A :=
  Nat.floor_mono (sourceLower_le_sourceUpper A hA)

theorem sqrt_vaughanCutoff_le (A : ℝ) (hA : 1 ≤ A) :
    Real.sqrt (vaughanCutoff A : ℝ) ≤ A := by
  apply (Real.sqrt_le_left (by linarith)).2
  exact Nat.floor_le (sq_nonneg A)

/-- The real plain weight agrees with the existing actual-source weight on positive integers. -/
theorem sourcePlainWeight_nat_eq (A : ℝ) (n : ℕ) (hn : 1 ≤ n) :
    sourcePlainWeight A n = closedPrimeWeight A n := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast hn
  dsimp [sourcePlainWeight, closedPrimeWeight, exponentialTest]
  rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hn0]
  ring

/-- The actual upper endpoint is zero; it is retained before inventory completion. -/
theorem sourcePlainWeight_upper_zero (A : ℝ) (hA : 1 ≤ A) :
    sourcePlainWeight A (Real.exp (2*A)) = 0 := by
  dsimp [sourcePlainWeight]
  rw [Real.log_exp, sourceCorrelation_eq_zero_of_two_mul_le_abs A _ (by linarith)
    (le_abs_self _), zero_div]

/-- Every integer beyond the actual closed inventory has zero source weight. -/
theorem sourcePlainWeight_zero_of_cutoff_lt (A : ℝ) (hA : 1 ≤ A)
    (n : ℕ) (hn : sourceKernelCutoff A < n) : sourcePlainWeight A n = 0 := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (Nat.zero_le _).trans_lt hn
  have hu : Real.exp (2*A) < (n : ℝ) := by
    apply lt_of_not_ge
    intro h
    exact (Nat.not_le.mpr hn) ((Nat.le_floor_iff (Real.exp_pos _).le).2 h)
  have hl : 2*A < Real.log n := (Real.lt_log_iff_exp_lt hn0).2 hu
  dsimp [sourcePlainWeight]
  rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A _ (by linarith)
    (hl.le.trans (le_abs_self _)), zero_div]

theorem sourceMobiusKernel_eq_plainWeight (A : ℝ) (d : ℕ) (hd : 1 ≤ d) :
    sourceMobiusKernel A d = ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
      Real.log k * sourcePlainWeight A ((d*k : ℕ) : ℝ) := by
  apply Finset.sum_congr rfl
  intro k hk
  have hk1 := (Finset.mem_Icc.mp hk).1
  have hp : 1 ≤ d*k := Nat.mul_pos hd hk1
  rw [sourcePlainWeight_nat_eq A (d*k) hp]
  simp only [sourceKernelTerm, closedPrimeWeight, Nat.cast_mul]

/-- Source-faithful rectangle completion of the signed bilinear term. -/
theorem typeTwoSource_eq_rectangle (A : ℝ) (hA : 1 ≤ A) :
    typeTwoSource A = ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
      vonMangoldt m * ∑ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        beta (vaughanCutoff A) n * sourcePlainWeight A ((m*n : ℕ) : ℝ) := by
  classical
  unfold typeTwoSource
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.mul_sum]
  have hm0 : (m : ℝ) ≠ 0 := by
    exact_mod_cast (by have := (Finset.mem_Ioc.mp hm).1; omega : m ≠ 0)
  calc
    _ = ∑ n ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter
        (fun n ↦ m*n ≤ sourceKernelCutoff A),
        vonMangoldt m * (beta (vaughanCutoff A) n * sourcePlainWeight A ((m*n : ℕ) : ℝ)) := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn0 : (n : ℝ) ≠ 0 := by
        have hnpos : 0 < n := (Nat.zero_le _).trans_lt
          (Finset.mem_Ioc.mp (Finset.mem_filter.mp hn).1).1
        exact_mod_cast hnpos.ne'
      dsimp [sourcePlainWeight]
      rw [Nat.cast_mul, Real.log_mul hm0 hn0]
      ring
    _ = _ := by
      apply Finset.sum_subset (Finset.filter_subset _ _)
      intro n hn hnot
      have hp : sourceKernelCutoff A < m*n := by
        by_contra h
        exact hnot (Finset.mem_filter.mpr ⟨hn, by omega⟩)
      rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m*n) hp, mul_zero, mul_zero]

/-- The original residual as a closed weight sum, including the zero unit atom. -/
theorem mertensResidual_eq_plainWeight_sum (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
      vonMangoldt n * sourcePlainWeight A n := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  calc
    closedPrimeMoment A = ∑ n ∈ Finset.Icc 2 (sourceKernelCutoff A),
        vonMangoldt n * sourcePlainWeight A n := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [sourcePlainWeight_nat_eq A n (by have := (Finset.mem_Icc.mp hn).1; omega)]
      rfl
    _ = _ := by
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Icc.mp hn).1; omega,
          (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnot
        have hn1 : n = 1 := by
          have h := Finset.mem_Icc.mp hn
          simp only [Finset.mem_Icc] at hnot
          omega
        subst n
        simp

/-- Exact decomposition of the unchanged residual; both Vaughan signs are retained. -/
theorem mertensResidual_eq_vaughan (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = shortMangoldtSource A + shortLogSource A - shortPlainSource A +
      typeTwoSource A := by
  rw [mertensResidual_eq_plainWeight_sum A hA]
  have hq := vaughanCutoff_le_sourceKernelCutoff A hA
  rw [finite_vaughan_sum _ _ _ hq hq (fun n ↦ sourcePlainWeight A n)
    (sourcePlainWeight_zero_of_cutoff_lt A hA), typeTwoSource_eq_rectangle A hA]
  unfold shortMangoldtSource shortLogSource shortPlainSource
  congr 2
  · congr 1
    apply Finset.sum_congr rfl
    intro d hd
    rw [sourceMobiusKernel_eq_plainWeight A d (Finset.mem_Icc.mp hd).1]
    rfl
  · apply Finset.sum_congr rfl
    intro d _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m _
    simp only [sourcePlainKernel, Finset.mul_sum, realMoebius, Nat.cast_mul, mul_assoc]

/-- The closing Type-II gate retains all three signed short counterterms. -/
theorem mertens_residual_tail_iff_signed_typeTwo_tail :
    MertensResidualTailUpperBound ↔
      ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
        ∀ A : ℝ, R ≤ A →
          typeTwoSource A ≤ D - shortMangoldtSource A - shortLogSource A +
            shortPlainSource A := by
  constructor
  · rintro ⟨D, hD, R, hR, htail⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hA
    have heq := mertensResidual_eq_vaughan A (hR.trans hA)
    have hb := htail A hA
    linarith
  · rintro ⟨D, hD, R, hR, htail⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hA
    have heq := mertensResidual_eq_vaughan A (hR.trans hA)
    have hb := htail A hA
    linarith

end

end EstimateVaughanSource
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
