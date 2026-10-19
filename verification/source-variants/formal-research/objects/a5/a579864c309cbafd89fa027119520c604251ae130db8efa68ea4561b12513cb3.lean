import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTypeTwoLogBlocks

/-!
# The exact finite block strength required by a source-edge Type-II argument

The local block estimate below is an explicit conditional proposition, not an
asserted cancellation theorem. Its consumer keeps the actual diagonal and all
three short terms signed. The scalar upper budget measures this particular
majorization; it is not a lower bound on the residual or its off-diagonal part.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateTypeTwoBlockStrength

open FormalResearch.RiemannHypothesis.SourcePairing
open Realization EstimateVaughanSource EstimateVaughanTranslationGate EstimateMertensResidual
open EstimateSourceEdgeCorrelation EstimateTypeTwoLogBlocks

noncomputable section

/-- Maximum source endpoint slack in a unit logarithmic rectangle. -/
def cellSlack (A : ℝ) (c : ℕ × ℕ) : ℝ := 2*A-(c.1 : ℝ)-(c.2 : ℝ)

/-- The nonnegative source-edge scalar budget, before retaining inventory density. -/
def edgeBlockBudget (A : ℝ) : ℝ :=
  ∑ c ∈ logCells A, edgePolynomial (cellSlack A c) / A^9

/-- The same finite budget with the literal square-root inventory factors. -/
def densityBlockBudget (A : ℝ) : ℝ :=
  ∑ c ∈ logCells A, blockPairDensity A c * edgePolynomial (cellSlack A c) / A^9

/-- A local, unproved square-root block hypothesis exposing every scale factor. -/
def SquareRootLogBlockEstimate (K : ℝ) (p : ℕ) (R : ℝ) : Prop :=
  ∀ A : ℝ, R ≤ A → ∀ c ∈ logCells A,
    |logBlockSum A c| ≤ K * (1+2*A)^p * blockPairDensity A c *
      edgePolynomial (cellSlack A c) / A^9

/-- The slack range follows from the actual floor-height cell support. -/
theorem cellSlack_bounds (A : ℝ) (hA : 1 ≤ A) (c : ℕ × ℕ)
    (hc : c ∈ logCells A) : 0 ≤ cellSlack A c ∧ cellSlack A c ≤ 2*A := by
  have hsum := (Finset.mem_filter.mp hc).2
  have hr : (c.1 : ℝ)+(c.2 : ℝ) ≤ 2*A := by
    have hh : ((c.1+c.2 : ℕ) : ℝ) ≤ (logHeight A : ℝ) := by exact_mod_cast hsum
    have hh' : (c.1 : ℝ)+(c.2 : ℝ) ≤ (logHeight A : ℝ) := by
      simpa only [Nat.cast_add] using hh
    exact hh'.trans (Nat.floor_le (by linarith : 0 ≤ 2*A))
  unfold cellSlack
  constructor <;> linarith [Nat.cast_nonneg (α := ℝ) c.1, Nat.cast_nonneg (α := ℝ) c.2]

/-- The fixed edge polynomial is monotone on its nonnegative endpoint coordinate. -/
theorem edgePolynomial_mono {z w : ℝ} (hz : 0 ≤ z) (hzw : z ≤ w) :
    edgePolynomial z ≤ edgePolynomial w := by
  unfold edgePolynomial
  have hw : 0 ≤ w := hz.trans hzw
  gcongr

/-- Every actual pair in a cell has no greater endpoint slack than its cell. -/
theorem pairSlack_le_cellSlack (A : ℝ) (c p : ℕ × ℕ)
    (hp : p ∈ logBlockPairs A c) :
    2*A-Real.log (p.1 : ℝ)-Real.log (p.2 : ℝ) ≤ cellSlack A c := by
  have hlong := (Finset.mem_filter.mp hp).1
  have hidx := (Finset.mem_filter.mp hp).2
  have hm := (Finset.mem_product.mp (Finset.mem_filter.mp hlong).1).1
  have hn := (Finset.mem_product.mp (Finset.mem_filter.mp hlong).1).2
  have hm1 : (1 : ℝ) ≤ p.1 := by
    have h : 1 ≤ p.1 := by have := (Finset.mem_Ioc.mp hm).1; omega
    exact_mod_cast h
  have hn1 : (1 : ℝ) ≤ p.2 := by
    have h : 1 ≤ p.2 := by have := (Finset.mem_Ioc.mp hn).1; omega
    exact_mod_cast h
  have h1 := congrArg Prod.fst hidx
  have h2 := congrArg Prod.snd hidx
  change ⌊Real.log (p.1 : ℝ)⌋₊ = c.1 at h1
  change ⌊Real.log (p.2 : ℝ)⌋₊ = c.2 at h2
  have hf1 := Nat.floor_le (Real.log_nonneg hm1)
  have hf2 := Nat.floor_le (Real.log_nonneg hn1)
  rw [h1] at hf1
  rw [h2] at hf2
  unfold cellSlack
  linarith

/-- The local block hypothesis uses a majorant of the literal source correlation. -/
theorem pair_correlation_abs_le_cell (A : ℝ) (hA : 1 ≤ A) (c p : ℕ × ℕ)
    (hp : p ∈ logBlockPairs A c) :
    |sourceCorrelation explicitSecondDerivative A (Real.log p.1+Real.log p.2)| ≤
      edgePolynomial (cellSlack A c) / A^9 := by
  have hlong := (Finset.mem_filter.mp hp).1
  have hl := longPair_log_bounds A p hlong
  have hz : 0 ≤ 2*A-(Real.log (p.1 : ℝ)+Real.log (p.2 : ℝ)) := by linarith [hl.2]
  have hzA : 2*A-(Real.log (p.1 : ℝ)+Real.log (p.2 : ℝ)) ≤ 2*A := by
    linarith [hl.1]
  have h := sourceCorrelation_upper_edge_abs_le A _ hA hz hzA
  rw [sub_sub_cancel] at h
  refine h.trans (div_le_div_of_nonneg_right ?_ (by positivity))
  apply edgePolynomial_mono hz
  simpa only [sub_add_eq_sub_sub] using pairSlack_le_cellSlack A c p hp

/-- Inventory normalization bounds the retained-density budget by the scalar budget. -/
theorem densityBlockBudget_le (A : ℝ) (hA : 1 ≤ A) :
    densityBlockBudget A ≤ Real.exp 1 * edgeBlockBudget A := by
  rw [edgeBlockBudget, Finset.mul_sum]
  unfold densityBlockBudget
  apply Finset.sum_le_sum
  intro c hc
  have hz := (cellSlack_bounds A hA c hc).1
  have he : 0 ≤ edgePolynomial (cellSlack A c) := by unfold edgePolynomial; positivity
  calc
    _ ≤ Real.exp 1 * edgePolynomial (cellSlack A c) / A^9 :=
      div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_right (blockPairDensity_le_exp_one A c) he) (by positivity)
    _ = _ := by ring

/-- At source scale the edge polynomial has degree-nine bulk size. -/
theorem edgePolynomial_two_mul_le (A : ℝ) (hA : 1 ≤ A) :
    edgePolynomial (2*A) ≤ 44302336 * A^9 := by
  have hA0 : 0 ≤ A := by linarith
  have ha : (1 : ℝ) ≤ A^2 := by nlinarith
  unfold edgePolynomial
  calc
    _ ≤ 512 * (2*A)^5 * (52*A^2)^2 := by gcongr; nlinarith
    _ = _ := by ring

/-- Only quadratically many unit logarithmic cells can meet the source triangle. -/
theorem logCells_card_le (A : ℝ) (hA : 1 ≤ A) :
    ((logCells A).card : ℝ) ≤ 9*A^2 := by
  have hc : (logCells A).card ≤ (logHeight A+1)^2 := by
    unfold logCells
    refine (Finset.card_filter_le _ _).trans ?_
    simp only [Finset.product_eq_sprod, Finset.card_product, Nat.card_Icc, Nat.sub_zero]
    exact le_of_eq (by ring)
  have hcR : ((logCells A).card : ℝ) ≤ ((logHeight A : ℝ)+1)^2 := by
    exact_mod_cast hc
  have hh := Nat.floor_le (by linarith : 0 ≤ 2*A)
  change (logHeight A : ℝ) ≤ 2*A at hh
  have hn : (0 : ℝ) ≤ logHeight A := Nat.cast_nonneg _
  calc
    _ ≤ ((logHeight A : ℝ)+1)^2 := hcR
    _ ≤ (2*A+1)^2 := by nlinarith
    _ ≤ 9*A^2 := by nlinarith

/-- This specified absolute block majorization has a quadratic scalar upper budget. -/
theorem edgeBlockBudget_le (A : ℝ) (hA : 1 ≤ A) :
    edgeBlockBudget A ≤ 398721024*A^2 := by
  have hA0 : 0 < A := by linarith
  have hb (c : ℕ × ℕ) (hc : c ∈ logCells A) :
      edgePolynomial (cellSlack A c) / A^9 ≤ 44302336 := by
    apply (div_le_iff₀ (pow_pos hA0 9)).2
    exact (edgePolynomial_mono (cellSlack_bounds A hA c hc).1
      (cellSlack_bounds A hA c hc).2).trans (edgePolynomial_two_mul_le A hA)
  calc
    _ ≤ ∑ c ∈ logCells A, (44302336 : ℝ) := Finset.sum_le_sum hb
    _ = ((logCells A).card : ℝ)*44302336 := by simp
    _ ≤ 398721024*A^2 := by nlinarith [logCells_card_le A hA]

/-- This scalar majorant has an actual quadratic lower budget, not residual growth. -/
theorem edgeBlockBudget_ge (A : ℝ) (hA : 1 ≤ A) :
    32*A^2 ≤ edgeBlockBudget A := by
  have hA0 : 0 < A := by linarith
  let L := ⌊A/4⌋₊
  let S := (Finset.Icc 0 L).product (Finset.Icc 0 L)
  have hL : (L : ℝ) ≤ A/4 := Nat.floor_le (by positivity)
  have hS (c : ℕ × ℕ) (hc : c ∈ S) :
      c ∈ logCells A ∧ A ≤ cellSlack A c := by
    obtain ⟨hi, hj⟩ := Finset.mem_product.mp hc
    have hiR : (c.1 : ℝ) ≤ L := by exact_mod_cast (Finset.mem_Icc.mp hi).2
    have hjR : (c.2 : ℝ) ≤ L := by exact_mod_cast (Finset.mem_Icc.mp hj).2
    have hsum : c.1+c.2 ≤ logHeight A := by
      apply (Nat.le_floor_iff (by linarith : 0 ≤ 2*A)).2
      push_cast
      linarith
    constructor
    · simp only [logCells, Finset.mem_filter, Finset.product_eq_sprod,
        Finset.mem_product, Finset.mem_Icc]
      exact ⟨⟨⟨Nat.zero_le _, by omega⟩, ⟨Nat.zero_le _, by omega⟩⟩, hsum⟩
    · unfold cellSlack
      linarith
  have hb (c : ℕ × ℕ) (hc : c ∈ S) :
      (512 : ℝ) ≤ edgePolynomial (cellSlack A c) / A^9 := by
    apply (le_div_iff₀ (pow_pos hA0 9)).2
    have hz : 0 ≤ cellSlack A c := hA0.le.trans (hS c hc).2
    have hp : A^9 ≤ (cellSlack A c)^9 := by gcongr; exact (hS c hc).2
    have he : 512*(cellSlack A c)^9 ≤ edgePolynomial (cellSlack A c) := by
      unfold edgePolynomial
      nlinarith [pow_nonneg hz 5, sq_nonneg (cellSlack A c)]
    exact (mul_le_mul_of_nonneg_left hp (by norm_num)).trans he
  have hs : S ⊆ logCells A := fun c hc ↦ (hS c hc).1
  have hcard : (A/4)^2 ≤ ((S.card : ℕ) : ℝ) := by
    have hl := (Nat.lt_floor_add_one (A/4)).le
    change A/4 ≤ (L : ℝ)+1 at hl
    have hn : (0 : ℝ) ≤ L := Nat.cast_nonneg _
    simp only [S, Finset.product_eq_sprod, Finset.card_product, Nat.card_Icc,
      Nat.sub_zero, Nat.cast_mul, Nat.cast_add, Nat.cast_one]
    nlinarith
  calc
    _ ≤ (S.card : ℝ)*512 := by nlinarith
    _ = ∑ c ∈ S, (512 : ℝ) := by simp
    _ ≤ ∑ c ∈ S, edgePolynomial (cellSlack A c) / A^9 := Finset.sum_le_sum hb
    _ ≤ edgeBlockBudget A := by
      unfold edgeBlockBudget
      apply Finset.sum_le_sum_of_subset_of_nonneg hs
      intro c hc _
      have hz := (cellSlack_bounds A hA c hc).1
      unfold edgePolynomial
      positivity

/-- Conditional finite consumer, prior to discarding any source density factor. -/
theorem typeTwoOffDiagonal_le_of_blocks (K R A : ℝ) (p : ℕ) (hR : 1 ≤ R)
    (hB : SquareRootLogBlockEstimate K p R) (hRA : R ≤ A) :
    typeTwoOffDiagonal A ≤ K * (1+2*A)^p * densityBlockBudget A := by
  have hA := hR.trans hRA
  rw [typeTwoOffDiagonal_eq_logBlocks A hA, densityBlockBudget, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro c hc
  exact (le_abs_self _).trans (by simpa only [mul_div_assoc, mul_assoc] using hB A hRA c hc)

/-- The complete signed source consumer keeps the actual diagonal and short terms. -/
theorem mertensResidual_le_of_blocks (K R A : ℝ) (p : ℕ) (hR : 1 ≤ R)
    (hB : SquareRootLogBlockEstimate K p R) (hRA : R ≤ A) :
    mertensResidual A ≤ typeTwoDiagonal A + shortMangoldtSource A + shortLogSource A -
      shortPlainSource A + K * (1+2*A)^p * densityBlockBudget A := by
  rw [mertensResidual_eq_coupledOffDiagonalRemainder A (hR.trans hRA)]
  unfold coupledOffDiagonalRemainder
  linarith [typeTwoOffDiagonal_le_of_blocks K R A p hR hB hRA]

/-- The coarser scale audit leaves A^(p+2), with all signed counterterms retained. -/
theorem mertensResidual_le_coarse_block_budget (K R A : ℝ) (p : ℕ) (hK : 0 ≤ K)
    (hR : 1 ≤ R) (hB : SquareRootLogBlockEstimate K p R) (hRA : R ≤ A) :
    mertensResidual A ≤ typeTwoDiagonal A + shortMangoldtSource A + shortLogSource A -
      shortPlainSource A + 398721024 * Real.exp 1 * K * 3^p * A^(p+2) := by
  have hA := hR.trans hRA
  have hA0 : 0 ≤ A := by linarith
  have hp : (1+2*A)^p ≤ (3*A)^p := by gcongr; linarith
  have hd := (densityBlockBudget_le A hA).trans
    (mul_le_mul_of_nonneg_left (edgeBlockBudget_le A hA) (Real.exp_pos 1).le)
  have he : K * (1+2*A)^p * densityBlockBudget A ≤
      398721024 * Real.exp 1 * K * 3^p * A^(p+2) := by
    calc
      _ ≤ K * (1+2*A)^p * (Real.exp 1 * (398721024*A^2)) :=
        mul_le_mul_of_nonneg_left hd (by positivity)
      _ ≤ K * (3*A)^p * (Real.exp 1 * (398721024*A^2)) := by gcongr
      _ = _ := by rw [mul_pow, pow_add]; ring
  exact (mertensResidual_le_of_blocks K R A p hR hB hRA).trans (by linarith)

end
end EstimateTypeTwoBlockStrength
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
