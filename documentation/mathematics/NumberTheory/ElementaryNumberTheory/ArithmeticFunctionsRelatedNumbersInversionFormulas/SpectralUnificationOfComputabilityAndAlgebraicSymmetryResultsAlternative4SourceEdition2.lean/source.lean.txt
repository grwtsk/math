import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedBetaScale

/-! # Exact unbalanced loss in the proved deterministic source variation consumer -/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateWeightedBetaBlockBudget

open ArithmeticFunction
open EstimateWeightedBetaKernel EstimateWeightedBetaAbel EstimateWeightedBetaInventory
open EstimateWeightedBetaVariation EstimateWeightedBetaScale EstimateBetaCentering
open EstimateTypeTwoLogBlocks EstimateVaughanSource EstimateBetaSourceRecombination
open EstimateMertensResidual

noncomputable section

/-- Elementary absolute prefix bookkeeping, not a weighted cancellation bound. -/
theorem betaPrefixBudget_le (U : ℕ) : betaPrefixBudget U ≤ (U : ℝ) := by
  unfold betaPrefixBudget
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 U, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro d hd
      exact_mod_cast (abs_moebius_le_one (n := d))
    _ = _ := by simp [Nat.card_Icc]

/-- The exact ceil-bin anchor is at least half its exponential lower endpoint. -/
theorem blockLower_ge_half_exp (A : ℝ) (j : ℕ) (hA : 1 ≤ A) :
    Real.exp (j : ℝ)/2 ≤ (blockLower A j : ℝ) := by
  have hU := vaughanCutoff_pos A hA
  have hce : 1 ≤ ⌈Real.exp (j : ℝ)⌉₊ := Nat.one_le_ceil_iff.mpr (Real.exp_pos _)
  have hL1 : (1 : ℝ) ≤ blockLower A j := by
    exact_mod_cast hU.trans (le_max_left _ _)
  have hLce : ((⌈Real.exp (j : ℝ)⌉₊-1 : ℕ) : ℝ) ≤ blockLower A j := by
    exact_mod_cast (le_max_right (vaughanCutoff A) (⌈Real.exp (j : ℝ)⌉₊-1))
  rw [Nat.cast_sub hce, Nat.cast_one] at hLce
  have he := Nat.le_ceil (Real.exp (j : ℝ))
  by_cases h : Real.exp (j : ℝ) ≤ 2 <;> linarith

/-- The actual bin anchor gives precisely the inverse half logarithmic scale. -/
theorem inv_sqrt_blockLower_le (A : ℝ) (j : ℕ) (hA : 1 ≤ A) :
    1/Real.sqrt (blockLower A j : ℝ) ≤ Real.sqrt 2/Real.exp ((j : ℝ)/2) := by
  have hL0 : 0 < (blockLower A j : ℝ) := by
    have h := blockLower_ge_half_exp A j hA
    linarith [Real.exp_pos (j : ℝ)]
  have hs : Real.exp ((j : ℝ)/2) ≤ Real.sqrt 2 * Real.sqrt (blockLower A j : ℝ) := by
    rw [Real.exp_half]
    rw [← Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 2)]
    apply Real.sqrt_le_sqrt
    linarith [blockLower_ge_half_exp A j hA]
  exact (div_le_div_iff₀ (Real.sqrt_pos.2 hL0) (Real.exp_pos _)).2 (by simpa using hs)

/-- Literal finite interval deterministic bound from the source regularity witness. -/
theorem weightedInterval_abs_le_coarse (A K : ℝ) (m U L H : ℕ) (hA : 1 ≤ A)
    (hm : 1 ≤ m) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) (hK : 1 ≤ K)
    (hSlope : ∀ t : ℝ, 0 ≤ t → |correlationSlope A t| ≤ K) :
    |weightedCenteredInterval A m U L H| ≤
      betaPrefixBudget U * (1+2*K)/(Real.sqrt (m : ℝ)*Real.sqrt (L : ℝ)) := by
  have hB : 0 ≤ betaPrefixBudget U := Finset.sum_nonneg (fun _ _ ↦ abs_nonneg _)
  refine (weightedCenteredInterval_abs_le_scaled_variation A m U L H
    hA hm hU hUL hLH).trans ?_
  have h := mul_le_mul_of_nonneg_left
    (sourceVariationCost_le A K m L H hA hm (by omega) hLH (by linarith) hSlope)
    (div_nonneg hB (Real.sqrt_nonneg (m : ℝ)))
  exact h.trans_eq (by ring)

/-- Deterministic deletion of n=m costs at most two finite variation pieces. -/
theorem centeredRow_abs_le_coarse (A K : ℝ) (m j : ℕ) (hA : 1 ≤ A) (hm : 1 ≤ m)
    (hK : 1 ≤ K) (hSlope : ∀ t : ℝ, 0 ≤ t → |correlationSlope A t| ≤ K) :
    |∑ n ∈ innerInventory A m j, centeredBeta (vaughanCutoff A) n *
      EstimatePlainKernel.sourcePlainWeight A ((m*n : ℕ) : ℝ)| ≤
    2 * Real.sqrt 2 * betaPrefixBudget (vaughanCutoff A) * (1+2*K) /
      (Real.sqrt (m : ℝ)*Real.exp ((j : ℝ)/2)) := by
  have hU := vaughanCutoff_pos A hA
  have hUL : vaughanCutoff A ≤ blockLower A j := le_max_left _ _
  have hLH : blockLower A j ≤ blockUpper A m j := le_max_left _ _
  have hl : blockLower A j ≤ leftUpper (blockLower A j) (blockUpper A m j) m :=
    le_max_left _ _
  have hr : rightLower (blockLower A j) (blockUpper A m j) m ≤ blockUpper A m j := by
    unfold rightLower; omega
  have hUr : vaughanCutoff A ≤ rightLower (blockLower A j) (blockUpper A m j) m :=
    hUL.trans (le_max_left _ _)
  have hlb := weightedInterval_abs_le_coarse A K m _ _ _ hA hm hU hUL hl hK hSlope
  have hrb := weightedInterval_abs_le_coarse A K m _ _ _ hA hm hU hUr hr hK hSlope
  have hL0 : 0 < (blockLower A j : ℝ) := by exact_mod_cast (by omega : 0 < blockLower A j)
  have hs : 1/Real.sqrt (rightLower (blockLower A j) (blockUpper A m j) m : ℝ) ≤
      1/Real.sqrt (blockLower A j : ℝ) := by
    apply one_div_le_one_div_of_le (Real.sqrt_pos.2 hL0)
    apply Real.sqrt_le_sqrt
    exact_mod_cast (le_max_left (blockLower A j) (min (blockUpper A m j) m))
  have hB : 0 ≤ betaPrefixBudget (vaughanCutoff A) :=
    Finset.sum_nonneg (fun _ _ ↦ abs_nonneg _)
  rw [centeredRow_eq_abel_split A m j hA hm,
    ← weightedCenteredInterval_eq_abel A m _ _ _ hA hm hU hUL hl,
    ← weightedCenteredInterval_eq_abel A m _ _ _ hA hm hU hUr hr]
  refine (abs_add_le _ _).trans ?_
  have he := mul_le_mul_of_nonneg_left (inv_sqrt_blockLower_le A j hA)
    (by positivity : 0 ≤ 2*betaPrefixBudget (vaughanCutoff A)*(1+2*K)/Real.sqrt (m : ℝ))
  have hsr := mul_le_mul_of_nonneg_left hs
    (by positivity : 0 ≤ betaPrefixBudget (vaughanCutoff A)*(1+2*K)/Real.sqrt (m : ℝ))
  simp only [div_eq_mul_inv, mul_inv_rev, one_mul] at hlb hrb he hsr ⊢
  nlinarith

/-- The positive outer Mangoldt norm retains the half-exponential long-block length. -/
theorem mangoldt_block_norm_le (A : ℝ) (i : ℕ) :
    (∑ m ∈ logLongInventory A i, vonMangoldt m/Real.sqrt (m : ℝ)) ≤
      Real.exp 1 * ((i : ℝ)+1) * Real.exp ((i : ℝ)/2) := by
  have hb (m : ℕ) (hm : m ∈ logLongInventory A i) :
      vonMangoldt m/Real.sqrt (m : ℝ) ≤ ((i : ℝ)+1)/Real.exp ((i : ℝ)/2) := by
    have hi := (Finset.mem_filter.mp hm).2
    have hl := Nat.lt_floor_add_one (Real.log (m : ℝ))
    rw [hi] at hl
    have hm1 : (1 : ℝ) ≤ m := by
      have h : 1 ≤ m := by have := (Finset.mem_Ioc.mp (Finset.mem_filter.mp hm).1).1; omega
      exact_mod_cast h
    have hm0 : 0 < (m : ℝ) := zero_lt_one.trans_le hm1
    have hlower := Nat.floor_le (Real.log_nonneg hm1)
    rw [hi] at hlower
    have hs : Real.exp ((i : ℝ)/2) ≤ Real.sqrt (m : ℝ) := by
      rw [Real.exp_half]
      apply Real.sqrt_le_sqrt
      simpa only [Real.exp_log hm0] using Real.exp_le_exp.mpr hlower
    exact div_le_div₀ (by positivity) (vonMangoldt_le_log.trans hl.le)
      (Real.exp_pos _) hs
  calc
    _ ≤ ∑ m ∈ logLongInventory A i, ((i : ℝ)+1)/Real.exp ((i : ℝ)/2) :=
      Finset.sum_le_sum hb
    _ = ((logLongInventory A i).card : ℝ) * (((i : ℝ)+1)/Real.exp ((i : ℝ)/2)) := by simp
    _ ≤ Real.exp ((i : ℝ)+1) * (((i : ℝ)+1)/Real.exp ((i : ℝ)/2)) :=
      mul_le_mul_of_nonneg_right (logLongInventory_card_le_exp A i) (by positivity)
    _ = _ := by
      have he : Real.exp ((i : ℝ)+1)/Real.exp ((i : ℝ)/2) =
          Real.exp 1 * Real.exp ((i : ℝ)/2) := by
        rw [← Real.exp_sub, ← Real.exp_add]
        congr 1
        ring
      calc
        _ = ((i : ℝ)+1) * (Real.exp ((i : ℝ)+1)/Real.exp ((i : ℝ)/2)) := by ring
        _ = _ := by rw [he]; ring

/-- Exact scalar budget produced by the preceding source regularity and prefix bounds. -/
def deterministicBlockBudget (A K : ℝ) (c : ℕ × ℕ) : ℝ :=
  2 * Real.sqrt 2 * Real.exp 1 * (vaughanCutoff A : ℝ) * (1+2*K) * ((c.1 : ℝ)+1) *
    Real.exp (((c.1 : ℝ)-(c.2 : ℝ))/2)

/-- The actual centered block is consumed by the explicit deterministic scalar budget. -/
theorem centeredTypeTwoLogBlock_abs_le_budget (A K : ℝ) (c : ℕ × ℕ) (hA : 1 ≤ A)
    (hK : 1 ≤ K) (hSlope : ∀ t : ℝ, 0 ≤ t → |correlationSlope A t| ≤ K) :
    |centeredTypeTwoLogBlock A c| ≤ deterministicBlockBudget A K c := by
  let T := 2 * Real.sqrt 2 * (vaughanCutoff A : ℝ) * (1+2*K) /
    Real.exp ((c.2 : ℝ)/2)
  have hT : 0 ≤ T := by dsimp [T]; positivity
  have hb (m : ℕ) (hm : m ∈ logLongInventory A c.1) :
      |∑ n ∈ innerInventory A m c.2, centeredBeta (vaughanCutoff A) n *
        EstimatePlainKernel.sourcePlainWeight A ((m*n : ℕ) : ℝ)| ≤ T/Real.sqrt (m : ℝ) := by
    have hm1 : 1 ≤ m := by
      have := (Finset.mem_Ioc.mp (Finset.mem_filter.mp hm).1).1
      omega
    have h := mul_le_mul_of_nonneg_right (betaPrefixBudget_le (vaughanCutoff A))
      (by positivity : 0 ≤ 2*Real.sqrt 2*(1+2*K)/
        (Real.sqrt (m : ℝ)*Real.exp ((c.2 : ℝ)/2)))
    refine (centeredRow_abs_le_coarse A K m c.2 hA hm1 hK hSlope).trans ?_
    dsimp only [T]
    convert h using 1 <;> ring
  rw [centeredTypeTwoLogBlock_eq_rows]
  calc
    _ ≤ ∑ m ∈ logLongInventory A c.1, |vonMangoldt m *
        (∑ n ∈ innerInventory A m c.2, centeredBeta (vaughanCutoff A) n *
          EstimatePlainKernel.sourcePlainWeight A ((m*n : ℕ) : ℝ))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ logLongInventory A c.1, T*(vonMangoldt m/Real.sqrt (m : ℝ)) := by
      apply Finset.sum_le_sum
      intro m hm
      rw [abs_mul, abs_of_nonneg vonMangoldt_nonneg]
      exact (mul_le_mul_of_nonneg_left (hb m hm) vonMangoldt_nonneg).trans_eq (by ring)
    _ = T * ∑ m ∈ logLongInventory A c.1, vonMangoldt m/Real.sqrt (m : ℝ) := by
      rw [Finset.mul_sum]
    _ ≤ T*(Real.exp 1*((c.1 : ℝ)+1)*Real.exp ((c.1 : ℝ)/2)) :=
      mul_le_mul_of_nonneg_left (mangoldt_block_norm_le A c.1) hT
    _ = deterministicBlockBudget A K c := by
      have he : Real.exp ((c.1 : ℝ)/2)/Real.exp ((c.2 : ℝ)/2) =
          Real.exp (((c.1 : ℝ)-(c.2 : ℝ))/2) := by
        rw [← Real.exp_sub]
        congr 1
        ring
      dsimp [T, deterministicBlockBudget]
      calc
        _ = (2*Real.sqrt 2*Real.exp 1*(vaughanCutoff A : ℝ)*(1+2*K)*((c.1 : ℝ)+1)) *
            (Real.exp ((c.1 : ℝ)/2)/Real.exp ((c.2 : ℝ)/2)) := by ring
        _ = _ := by rw [he]

/-- The exact residual consumer retains the entire source beta main ledger. -/
theorem mertensResidual_le_betaMain_add_budget (A K : ℝ) (hA : 1 ≤ A) (hK : 1 ≤ K)
    (hSlope : ∀ t : ℝ, 0 ≤ t → |correlationSlope A t| ≤ K) :
    mertensResidual A ≤ betaMainLedger A +
      ∑ c ∈ logCells A, deterministicBlockBudget A K c := by
  rw [mertensResidual_eq_centered_blocks_add_betaMain A hA]
  have hs : (∑ c ∈ logCells A, centeredTypeTwoLogBlock A c) ≤
      ∑ c ∈ logCells A, deterministicBlockBudget A K c := by
    apply Finset.sum_le_sum
    intro c hc
    exact (le_abs_self _).trans (centeredTypeTwoLogBlock_abs_le_budget A K c hA hK hSlope)
  linarith

/-- An admissible cell family exposing the unbalanced deterministic loss. -/
def unbalancedCell (A : ℝ) : ℕ × ℕ := (⌊A⌋₊, ⌈2*Real.log A⌉₊)

/-- The small logarithmic coordinate stays below half the source scale. -/
theorem unbalancedCell_second_le_half (A : ℝ) (hA : 64 ≤ A) :
    ((unbalancedCell A).2 : ℝ) ≤ A/2 := by
  have hA0 : 0 < A := by linarith
  have hlog16 : Real.log (16 : ℝ) ≤ 4 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    have he : Real.log (16 : ℝ) = 4*Real.log 2 := by
      have hh := Real.log_pow (2 : ℝ) 4
      norm_num only at hh
      exact hh
    rw [he]
    linarith
  have ht := Real.log_le_sub_one_of_pos (by positivity : 0 < A/16)
  rw [Real.log_div hA0.ne' (by norm_num : (16 : ℝ) ≠ 0)] at ht
  have hc := Nat.ceil_lt_add_one (by
    have := Real.log_nonneg (by linarith : 1 ≤ A)
    positivity : 0 ≤ 2*Real.log A)
  change (⌈2*Real.log A⌉₊ : ℝ) ≤ A/2
  linarith

/-- The loss family belongs to the actual finite source log-cell inventory. -/
theorem unbalancedCell_mem_logCells (A : ℝ) (hA : 64 ≤ A) :
    unbalancedCell A ∈ logCells A := by
  have ha : (⌊A⌋₊ : ℝ) ≤ A := Nat.floor_le (by linarith)
  have hj := unbalancedCell_second_le_half A hA
  have hs : (unbalancedCell A).1+(unbalancedCell A).2 ≤ logHeight A := by
    apply (Nat.le_floor_iff (by linarith : 0 ≤ 2*A)).2
    push_cast
    change (⌊A⌋₊ : ℝ) + (⌈2*Real.log A⌉₊ : ℝ) ≤ 2*A
    change (⌈2*Real.log A⌉₊ : ℝ) ≤ A/2 at hj
    linarith
  simp only [logCells, Finset.mem_filter, Finset.product_eq_sprod,
    Finset.mem_product, Finset.mem_Icc]
  exact ⟨⟨⟨Nat.zero_le _, by omega⟩, ⟨Nat.zero_le _, by omega⟩⟩, hs⟩

/-- Growth of the specified positive budget factor, not of the signed block. -/
theorem unbalanced_loss_factor_ge (A : ℝ) (hA : 64 ≤ A) :
    Real.exp (A/4-1/2) ≤
      Real.exp ((((unbalancedCell A).1 : ℝ)-((unbalancedCell A).2 : ℝ))/2) := by
  apply Real.exp_le_exp.mpr
  have ha := Nat.lt_floor_add_one A
  have hj := unbalancedCell_second_le_half A hA
  change (⌈2*Real.log A⌉₊ : ℝ) ≤ A/2 at hj
  change A/4-1/2 ≤ ((⌊A⌋₊ : ℝ)-(⌈2*Real.log A⌉₊ : ℝ))/2
  linarith

/-- The full positive budget, even with K=1, carries the exposed exponential loss. -/
theorem unbalanced_budget_ge (A K : ℝ) (hA : 64 ≤ A) (hK : 1 ≤ K) :
    Real.exp (A/4-1/2) ≤ deterministicBlockBudget A K (unbalancedCell A) := by
  have hs : (1 : ℝ) ≤ Real.sqrt 2 := Real.one_le_sqrt.mpr (by norm_num)
  have he : (1 : ℝ) ≤ Real.exp 1 := by
    calc
      1 = Real.exp 0 := Real.exp_zero.symm
      _ ≤ Real.exp 1 := Real.exp_le_exp.mpr (by norm_num)
  have hU : (1 : ℝ) ≤ vaughanCutoff A := by
    exact_mod_cast vaughanCutoff_pos A (by linarith : 1 ≤ A)
  have hc : 1 ≤ 2*Real.sqrt 2*Real.exp 1*(vaughanCutoff A : ℝ)*(1+2*K)*
      (((unbalancedCell A).1 : ℝ)+1) := by
    apply one_le_mul_of_one_le_of_one_le
    · apply one_le_mul_of_one_le_of_one_le
      · apply one_le_mul_of_one_le_of_one_le
        · apply one_le_mul_of_one_le_of_one_le
          · apply one_le_mul_of_one_le_of_one_le (by norm_num) hs
          · exact he
        · exact hU
      · linarith
    · have : (0 : ℝ) ≤ ((unbalancedCell A).1 : ℝ) := Nat.cast_nonneg _
      linarith
  refine (unbalanced_loss_factor_ge A hA).trans ?_
  unfold deterministicBlockBudget
  simpa only [one_mul] using mul_le_mul_of_nonneg_right hc
    (Real.exp_pos ((((unbalancedCell A).1 : ℝ)-((unbalancedCell A).2 : ℝ))/2)).le

/-- The complete positive log-cell budget inherits this loss from an admissible cell. -/
theorem summed_budget_ge (A K : ℝ) (hA : 64 ≤ A) (hK : 1 ≤ K) :
    Real.exp (A/4-1/2) ≤ ∑ c ∈ logCells A, deterministicBlockBudget A K c := by
  refine (unbalanced_budget_ge A K hA hK).trans ?_
  apply Finset.single_le_sum
  · intro c hc
    unfold deterministicBlockBudget
    positivity
  · exact unbalancedCell_mem_logCells A hA

/-- No constant tail bound exists for this positive budget, irrespective of the signed residual. -/
theorem summed_budget_unbounded (K D R : ℝ) (hK : 1 ≤ K) :
    ∃ A : ℝ, R ≤ A ∧ 64 ≤ A ∧
      D < ∑ c ∈ logCells A, deterministicBlockBudget A K c := by
  let A := max 64 (4*(|D|+|R|+1))
  have h64 : 64 ≤ A := le_max_left _ _
  have hsize : 4*(|D|+|R|+1) ≤ A := le_max_right _ _
  have hR : R ≤ A := by linarith [le_abs_self R, abs_nonneg D, abs_nonneg R]
  refine ⟨A, hR, h64, ?_⟩
  have he := Real.add_one_le_exp (A/4-1/2)
  have hD : D < Real.exp (A/4-1/2) := by
    linarith [le_abs_self D, abs_nonneg R]
  exact hD.trans_le (summed_budget_ge A K h64 hK)

end
end EstimateWeightedBetaBlockBudget
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
