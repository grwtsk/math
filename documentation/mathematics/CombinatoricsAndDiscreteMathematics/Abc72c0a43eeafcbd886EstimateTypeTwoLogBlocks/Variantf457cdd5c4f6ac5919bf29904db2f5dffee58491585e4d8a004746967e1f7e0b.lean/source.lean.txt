-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.LogHeight.Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.LogHeight.Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"abc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/abc72c0a43eeafcbd886-EstimateTypeTwoLogBlocks.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanTranslationGate
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation

/-!
# A finite logarithmic partition of the actual off-diagonal Type-II sum

Only the source long indices are partitioned. The closed product support and
unequal-index restriction stay literal, and the four other signed terms stay outside.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.LogHeight.Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateTypeTwoLogBlocks

open ArithmeticFunction
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization EstimateVaughanSource EstimateVaughanIdentity EstimateSourceMobiusKernel
open EstimatePlainKernel EstimateVaughanTranslationGate EstimateSourceEdgeProfile
open EstimateSourceEdgeCorrelation

noncomputable section

/-- Integer logarithmic height of the unchanged source window. -/
def logHeight (A : ℝ) : ℕ := ⌊2 * A⌋₊

/-- The actual long-long off-diagonal triangle. -/
def longOffDiagonalPairs (A : ℝ) : Finset (ℕ × ℕ) :=
  ((Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).product
    (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A))).filter
      (fun p ↦ p.2 ≠ p.1 ∧ p.1*p.2 ≤ sourceKernelCutoff A)

/-- The canonical signed source term, with its original product weight. -/
def typeTwoPairTerm (A : ℝ) (p : ℕ × ℕ) : ℝ :=
  vonMangoldt p.1 * beta (vaughanCutoff A) p.2 *
    sourcePlainWeight A ((p.1*p.2 : ℕ) : ℝ)

/-- The two actual logarithmic index bins. -/
def logPairIndex (p : ℕ × ℕ) : ℕ × ℕ := (⌊Real.log p.1⌋₊, ⌊Real.log p.2⌋₊)

/-- One long inventory in a single unit logarithmic interval. -/
def logLongInventory (A : ℝ) (i : ℕ) : Finset ℕ :=
  (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter
    (fun n ↦ ⌊Real.log n⌋₊ = i)

/-- Only logarithmic rectangles compatible with the source's product support. -/
def logCells (A : ℝ) : Finset (ℕ × ℕ) :=
  ((Finset.Icc 0 (logHeight A)).product (Finset.Icc 0 (logHeight A))).filter
    (fun c ↦ c.1+c.2 ≤ logHeight A)

/-- A source rectangle retains both closed product and unequal-index restrictions. -/
def logBlockPairs (A : ℝ) (c : ℕ × ℕ) : Finset (ℕ × ℕ) :=
  (longOffDiagonalPairs A).filter (fun p ↦ logPairIndex p = c)

/-- The actual signed arithmetic block. -/
def logBlockSum (A : ℝ) (c : ℕ × ℕ) : ℝ :=
  ∑ p ∈ logBlockPairs A c, typeTwoPairTerm A p

/-- The square-root pair-count factor after the literal inverse square-root weights. -/
def blockPairDensity (A : ℝ) (c : ℕ × ℕ) : ℝ :=
  Real.sqrt ((logLongInventory A c.1).card * (logLongInventory A c.2).card : ℝ) /
    Real.exp (((c.1 : ℝ)+(c.2 : ℝ))/2)

/-- Product completion is reversed only by the already proved zero source weight. -/
theorem typeTwoOffDiagonal_eq_pair_sum (A : ℝ) (hA : 1 ≤ A) :
    typeTwoOffDiagonal A = ∑ p ∈ longOffDiagonalPairs A, typeTwoPairTerm A p := by
  classical
  unfold typeTwoOffDiagonal longOffDiagonalPairs typeTwoPairTerm
  simp only [Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hne : n ≠ m
  · by_cases hp : m*n ≤ sourceKernelCutoff A
    · rw [if_pos hne, if_pos ⟨hne, hp⟩]
    · have hz := sourcePlainWeight_zero_of_cutoff_lt A hA (m*n) (by omega)
      rw [if_pos hne, if_neg (fun h ↦ hp h.2), hz, mul_zero]
  · rw [if_neg hne, if_neg (fun h ↦ hne h.1)]

/-- The canonical term has exactly the stated inverse square-root coefficient factors. -/
theorem typeTwoPairTerm_eq_coefficients (A : ℝ) (p : ℕ × ℕ)
    (hp : p ∈ longOffDiagonalPairs A) :
    typeTwoPairTerm A p =
      (vonMangoldt p.1 / Real.sqrt (p.1 : ℝ)) *
        (beta (vaughanCutoff A) p.2 / Real.sqrt (p.2 : ℝ)) *
          sourceCorrelation explicitSecondDerivative A (Real.log p.1 + Real.log p.2) := by
  have hm := (Finset.mem_product.mp (Finset.mem_filter.mp hp).1).1
  have hn := (Finset.mem_product.mp (Finset.mem_filter.mp hp).1).2
  have hm0 : 0 < (p.1 : ℝ) := by
    exact_mod_cast (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hm).1
  have hn0 : 0 < (p.2 : ℝ) := by
    exact_mod_cast (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hn).1
  unfold typeTwoPairTerm sourcePlainWeight
  rw [Nat.cast_mul, Real.log_mul hm0.ne' hn0.ne', Real.sqrt_mul hm0.le]
  ring

/-- Every retained pair has the actual nonnegative product slack in [0,2A]. -/
theorem longPair_log_bounds (A : ℝ) (p : ℕ × ℕ)
    (hp : p ∈ longOffDiagonalPairs A) :
    0 ≤ Real.log (p.1 : ℝ) + Real.log (p.2 : ℝ) ∧
      Real.log (p.1 : ℝ) + Real.log (p.2 : ℝ) ≤ 2 * A := by
  have hm := (Finset.mem_product.mp (Finset.mem_filter.mp hp).1).1
  have hn := (Finset.mem_product.mp (Finset.mem_filter.mp hp).1).2
  have hm1 : 1 ≤ p.1 := by have := (Finset.mem_Ioc.mp hm).1; omega
  have hn1 : 1 ≤ p.2 := by have := (Finset.mem_Ioc.mp hn).1; omega
  have hmR : (1 : ℝ) ≤ p.1 := by exact_mod_cast hm1
  have hnR : (1 : ℝ) ≤ p.2 := by exact_mod_cast hn1
  refine ⟨add_nonneg (Real.log_nonneg hmR) (Real.log_nonneg hnR), ?_⟩
  have hc : ((p.1*p.2 : ℕ) : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast (Finset.mem_filter.mp hp).2.2
  have hprod : ((p.1*p.2 : ℕ) : ℝ) ≤ Real.exp (2 * A) :=
    hc.trans (Nat.floor_le (Real.exp_pos (2 * A)).le)
  have hp0 : 0 < ((p.1*p.2 : ℕ) : ℝ) := by
    rw [Nat.cast_mul]
    positivity
  have h := (Real.log_le_iff_le_exp hp0).2 hprod
  simpa only [Nat.cast_mul, Real.log_mul (by positivity : (p.1 : ℝ) ≠ 0)
    (by positivity : (p.2 : ℝ) ≠ 0)] using h

/-- Floor bins are all inside the finite source cell inventory. -/
theorem logPairIndex_mem_logCells (A : ℝ) (hA : 1 ≤ A) (p : ℕ × ℕ)
    (hp : p ∈ longOffDiagonalPairs A) : logPairIndex p ∈ logCells A := by
  have hm := (Finset.mem_product.mp (Finset.mem_filter.mp hp).1).1
  have hn := (Finset.mem_product.mp (Finset.mem_filter.mp hp).1).2
  have hm1 : (1 : ℝ) ≤ p.1 := by
    have h : 1 ≤ p.1 := by have := (Finset.mem_Ioc.mp hm).1; omega
    exact_mod_cast h
  have hn1 : (1 : ℝ) ≤ p.2 := by
    have h : 1 ≤ p.2 := by have := (Finset.mem_Ioc.mp hn).1; omega
    exact_mod_cast h
  have hs : ⌊Real.log (p.1 : ℝ)⌋₊ + ⌊Real.log (p.2 : ℝ)⌋₊ ≤ logHeight A := by
    apply (Nat.le_floor_iff (by linarith : 0 ≤ 2 * A)).2
    push_cast
    linarith [(Nat.floor_le (Real.log_nonneg hm1)),
      (Nat.floor_le (Real.log_nonneg hn1)), (longPair_log_bounds A p hp).2]
  simp only [logPairIndex, logCells, Finset.mem_filter, Finset.product_eq_sprod,
    Finset.mem_product, Finset.mem_Icc]
  exact ⟨⟨⟨Nat.zero_le _, by omega⟩, ⟨Nat.zero_le _, by omega⟩⟩, hs⟩

/-- Exact finite logarithmic rectangle decomposition of the unchanged off-diagonal. -/
theorem typeTwoOffDiagonal_eq_logBlocks (A : ℝ) (hA : 1 ≤ A) :
    typeTwoOffDiagonal A = ∑ c ∈ logCells A, logBlockSum A c := by
  rw [typeTwoOffDiagonal_eq_pair_sum A hA]
  exact (Finset.sum_fiberwise_of_maps_to (logPairIndex_mem_logCells A hA)
    (typeTwoPairTerm A)).symm

/-- The cell count factor follows from actual logarithmic interval lengths. -/
theorem logLongInventory_card_le_exp (A : ℝ) (i : ℕ) :
    ((logLongInventory A i).card : ℝ) ≤ Real.exp ((i : ℝ)+1) := by
  have hs : logLongInventory A i ⊆ Finset.Icc 1 ⌊Real.exp ((i : ℝ)+1)⌋₊ := by
    intro n hn
    have hN := (Finset.mem_filter.mp hn).1
    have hi := (Finset.mem_filter.mp hn).2
    have hn1 : 1 ≤ n := by have := (Finset.mem_Ioc.mp hN).1; omega
    have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
    refine Finset.mem_Icc.mpr ⟨hn1, ?_⟩
    apply (Nat.le_floor_iff (Real.exp_pos _).le).2
    have hl := Nat.lt_floor_add_one (Real.log (n : ℝ))
    rw [hi] at hl
    exact ((Real.log_le_iff_le_exp hn0).1 hl.le)
  have hc : (logLongInventory A i).card ≤ ⌊Real.exp ((i : ℝ)+1)⌋₊ := by
    simpa only [Nat.card_Icc, Nat.add_sub_cancel] using Finset.card_le_card hs
  have hcR : ((logLongInventory A i).card : ℝ) ≤ ⌊Real.exp ((i : ℝ)+1)⌋₊ := by
    exact_mod_cast hc
  exact hcR.trans (Nat.floor_le (Real.exp_pos _).le)

/-- Normalized square-root pair counts cost at most exp(1), independent of A and the cell. -/
theorem blockPairDensity_le_exp_one (A : ℝ) (c : ℕ × ℕ) :
    blockPairDensity A c ≤ Real.exp 1 := by
  unfold blockPairDensity
  apply (div_le_iff₀ (Real.exp_pos _)).2
  apply (Real.sqrt_le_left (by positivity)).2
  have he : (Real.exp 1 * Real.exp (((c.1 : ℝ)+(c.2 : ℝ))/2))^2 =
      Real.exp ((c.1 : ℝ)+1) * Real.exp ((c.2 : ℝ)+1) := by
    rw [← Real.exp_add, pow_two, ← Real.exp_add, ← Real.exp_add]
    congr 1
    ring
  rw [he]
  exact mul_le_mul (logLongInventory_card_le_exp A c.1) (logLongInventory_card_le_exp A c.2)
    (by positivity) (Real.exp_pos _).le

end
end EstimateTypeTwoLogBlocks
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
