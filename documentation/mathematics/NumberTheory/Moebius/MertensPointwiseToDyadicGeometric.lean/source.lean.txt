/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #617. Direct stacked parent: draft PR #616 at
`771492a1d5d464f579d1a3c0147532ef182119ab`.
-/
import GRWTSK.NumberTheory.Moebius.MertensDyadicGeometricEnvelope
import Mathlib.Data.Nat.Cast.Order.Field

/-!
# Pointwise Mertens envelope to a dyadic geometric descendant envelope

The parent module leaves one proof-relevant adapter open:

`OrdinaryMertensSquareRootPlusEpsilonEnvelope`

must be converted into

`DyadicOrdinaryMertensGeometricEnvelope`.

For a requested target loss `delta > 0`, this module applies the pointwise
bound with

`epsilon = delta / 8`,

sets

`alpha = 1/2 + epsilon`,
`rho = (2^alpha)⁻¹ = 2^(-alpha)`,

and uses

`floor(b / 2^t) <= 2 X / 2^t`

for `X <= b < 2X`.

The factor `2^alpha` from the upper endpoint is retained explicitly.  Zero
descendants are treated separately before positive-base real-power identities
are used.

No pointwise Mertens estimate is proved.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Pointwise exponent used to leave room inside the parent `delta/4` scale. -/
def pointwiseMertensDyadicEpsilon
    (δ : ℝ) : ℝ :=
  δ / 8

/-- Total exponent `1/2 + epsilon` of the pointwise Mertens envelope. -/
def pointwiseMertensDyadicExponent
    (δ : ℝ) : ℝ :=
  1 / 2 + pointwiseMertensDyadicEpsilon δ

/-- Exact constant factor paid when the endpoint `b` is replaced by the upper
bound `2X`. -/
def pointwiseMertensDyadicConstantFactor
    (δ : ℝ) : ℝ :=
  (2 : ℝ) ^ pointwiseMertensDyadicExponent δ

/-- Geometric ratio along dyadic descendants. -/
def pointwiseMertensDyadicRatio
    (δ : ℝ) : ℝ :=
  (pointwiseMertensDyadicConstantFactor δ)⁻¹

/-- The ratio has the advertised negative-exponent presentation. -/
theorem pointwiseMertensDyadicRatio_eq_rpow_neg
    (δ : ℝ) :
    pointwiseMertensDyadicRatio δ =
      (2 : ℝ) ^ (-pointwiseMertensDyadicExponent δ) := by
  unfold pointwiseMertensDyadicRatio
    pointwiseMertensDyadicConstantFactor
  rw [Real.rpow_neg (by norm_num : 0 ≤ (2 : ℝ))]

/-- The dyadic exponent is positive for every positive target loss. -/
theorem pointwiseMertensDyadicExponent_pos
    {δ : ℝ} (hδ : 0 < δ) :
    0 < pointwiseMertensDyadicExponent δ := by
  unfold pointwiseMertensDyadicExponent
    pointwiseMertensDyadicEpsilon
  positivity

/-- The dyadic ratio is nonnegative. -/
theorem pointwiseMertensDyadicRatio_nonneg
    (δ : ℝ) :
    0 ≤ pointwiseMertensDyadicRatio δ := by
  unfold pointwiseMertensDyadicRatio
    pointwiseMertensDyadicConstantFactor
  positivity

/-- The dyadic ratio is strictly below one. -/
theorem pointwiseMertensDyadicRatio_lt_one
    {δ : ℝ} (hδ : 0 < δ) :
    pointwiseMertensDyadicRatio δ < 1 := by
  unfold pointwiseMertensDyadicRatio
    pointwiseMertensDyadicConstantFactor
  have hpow :
      1 < (2 : ℝ) ^ pointwiseMertensDyadicExponent δ :=
    Real.one_lt_rpow (by norm_num)
      (pointwiseMertensDyadicExponent_pos hδ)
  exact (inv_lt_one₀ (by positivity)).2 hpow

/-- Cast/floor comparison for any descendant bounded by `floor(b/2^t)`. -/
theorem cast_dyadicDescendant_le_upperModel
    {j b n t : ℕ}
    (hb : b < 2 ^ (j + 1))
    (hn : n ≤ b / 2 ^ t) :
    (n : ℝ) ≤
      (2 * (((2 ^ j : ℕ) : ℝ))) /
        (((2 ^ t : ℕ) : ℝ)) := by
  calc
    (n : ℝ) ≤ (((b / 2 ^ t : ℕ) : ℝ)) := by
      exact_mod_cast hn
    _ ≤ (b : ℝ) / (((2 ^ t : ℕ) : ℝ)) :=
      Nat.cast_div_le
    _ ≤ (((2 ^ (j + 1) : ℕ) : ℝ)) /
        (((2 ^ t : ℕ) : ℝ)) := by
      apply div_le_div_of_nonneg_right
      · exact_mod_cast (Nat.le_of_lt hb)
      · positivity
    _ = (2 * (((2 ^ j : ℕ) : ℝ))) /
        (((2 ^ t : ℕ) : ℝ)) := by
      norm_num [pow_succ, mul_comm]

/-- Positive-base equality combining the square-root and epsilon factors. -/
theorem sqrt_mul_rpow_eq_totalExponent
    {x δ : ℝ} (hx : 0 < x) :
    Real.sqrt x * x ^ pointwiseMertensDyadicEpsilon δ =
      x ^ pointwiseMertensDyadicExponent δ := by
  unfold pointwiseMertensDyadicExponent
  rw [Real.sqrt_eq_rpow, Real.rpow_add hx]

/-- Raising the dyadic real upper model to the total exponent produces the
explicit endpoint constant, scale exponent, and geometric ratio. -/
theorem upperModel_rpow_eq_geometric
    (j t : ℕ) {δ : ℝ} (hδ : 0 < δ) :
    (((2 * (((2 ^ j : ℕ) : ℝ))) /
        (((2 ^ t : ℕ) : ℝ))) ^
          pointwiseMertensDyadicExponent δ) =
      pointwiseMertensDyadicConstantFactor δ *
        ((((2 ^ j : ℕ) : ℝ)) ^
          pointwiseMertensDyadicExponent δ) *
        pointwiseMertensDyadicRatio δ ^ t := by
  let X : ℝ := (((2 ^ j : ℕ) : ℝ))
  let α : ℝ := pointwiseMertensDyadicExponent δ
  have hX : 0 < X := by
    dsimp [X]
    positivity
  have hα : 0 < α := by
    dsimp [α]
    exact pointwiseMertensDyadicExponent_pos hδ
  have hpowCommute :
      ((((2 : ℝ) ^ t) ^ α)) =
        (((2 : ℝ) ^ α) ^ t) := by
    rw [← Real.rpow_natCast]
    rw [← Real.rpow_mul (by norm_num : 0 ≤ (2 : ℝ))]
    rw [← Real.rpow_natCast]
    rw [← Real.rpow_mul (by norm_num : 0 ≤ (2 : ℝ))]
    congr 1
    ring
  change (2 * X / ((2 ^ t : ℕ) : ℝ)) ^ α =
    (2 : ℝ) ^ α * X ^ α * (((2 : ℝ) ^ α)⁻¹) ^ t
  push_cast
  rw [Real.div_rpow (by positivity) (by positivity)]
  rw [Real.mul_rpow (by norm_num) hX.le]
  rw [hpowCommute]
  rw [div_eq_mul_inv, inv_pow]

/-- The exponent used by the pointwise envelope fits inside the parent
`delta/4` scale. -/
theorem dyadic_totalExponent_le_parentScale
    (j : ℕ) {δ : ℝ} (hδ : 0 < δ) :
    ((((2 ^ j : ℕ) : ℝ)) ^
        pointwiseMertensDyadicExponent δ) ≤
      dyadicMertensSquareRootEpsilonScale j δ := by
  let X : ℝ := (((2 ^ j : ℕ) : ℝ))
  have hXpos : 0 < X := by
    dsimp [X]
    positivity
  have hXone : 1 ≤ X := by
    dsimp [X]
    exact_mod_cast Nat.one_le_iff_ne_zero.mpr (pow_ne_zero j (by omega : (2 : ℕ) ≠ 0))
  change X ^ (1 / 2 + δ / 8) ≤ Real.sqrt X * X ^ (δ / 4)
  rw [Real.sqrt_eq_rpow, ← Real.rpow_add hXpos]
  exact Real.rpow_le_rpow_of_exponent_le hXone (by linarith)

/-- One descendant-wise bound obtained from the pointwise ordinary-Mertens
envelope. -/
theorem ordinaryMertens_descendant_le_geometric
    {δ C : ℝ} (hδ : 0 < δ) (hC : 0 ≤ C)
    (hPoint :
      ∀ n : ℕ,
        |ordinaryMertensPrefix n| ≤
          C * Real.sqrt (n : ℝ) *
            ((n : ℝ) ^ pointwiseMertensDyadicEpsilon δ))
    {j b n t : ℕ}
    (hb : b < 2 ^ (j + 1))
    (hn : n ≤ b / 2 ^ t) :
    |ordinaryMertensPrefix n| ≤
      (C * pointwiseMertensDyadicConstantFactor δ) *
        dyadicMertensSquareRootEpsilonScale j δ *
        pointwiseMertensDyadicRatio δ ^ t := by
  by_cases hn0 : n = 0
  · subst n
    simp only [ordinaryMertensPrefix, Finset.Icc_eq_empty_of_lt (by omega : (0 : ℕ) < 1),
      Finset.sum_empty, abs_zero]
    exact mul_nonneg (mul_nonneg
      (mul_nonneg hC (by unfold pointwiseMertensDyadicConstantFactor; positivity))
      (dyadicMertensSquareRootEpsilonScale_nonneg j δ))
      (pow_nonneg (pointwiseMertensDyadicRatio_nonneg δ) t)
  · have hnpos : 0 < (n : ℝ) := by
      exact_mod_cast (Nat.pos_of_ne_zero hn0)
    have hnUpper := cast_dyadicDescendant_le_upperModel hb hn
    have hα :
        0 ≤ pointwiseMertensDyadicExponent δ :=
      (pointwiseMertensDyadicExponent_pos hδ).le
    calc
      |ordinaryMertensPrefix n| ≤
          C * Real.sqrt (n : ℝ) *
            ((n : ℝ) ^ pointwiseMertensDyadicEpsilon δ) :=
        hPoint n
      _ = C *
          ((n : ℝ) ^ pointwiseMertensDyadicExponent δ) := by
        rw [mul_assoc, sqrt_mul_rpow_eq_totalExponent hnpos]
      _ ≤ C *
          ((((2 * (((2 ^ j : ℕ) : ℝ))) /
              (((2 ^ t : ℕ) : ℝ))) ^
                pointwiseMertensDyadicExponent δ)) := by
        apply mul_le_mul_of_nonneg_left _ hC
        exact Real.rpow_le_rpow (by positivity) hnUpper hα
      _ = C *
          (pointwiseMertensDyadicConstantFactor δ *
            ((((2 ^ j : ℕ) : ℝ)) ^
              pointwiseMertensDyadicExponent δ) *
            pointwiseMertensDyadicRatio δ ^ t) := by
        rw [upperModel_rpow_eq_geometric j t hδ]
      _ ≤ C *
          (pointwiseMertensDyadicConstantFactor δ *
            dyadicMertensSquareRootEpsilonScale j δ *
            pointwiseMertensDyadicRatio δ ^ t) := by
        apply mul_le_mul_of_nonneg_left _ hC
        apply mul_le_mul_of_nonneg_right _ (pow_nonneg (pointwiseMertensDyadicRatio_nonneg δ) t)
        exact mul_le_mul_of_nonneg_left (dyadic_totalExponent_le_parentScale j hδ)
          (by unfold pointwiseMertensDyadicConstantFactor; positivity)
      _ = (C * pointwiseMertensDyadicConstantFactor δ) *
          dyadicMertensSquareRootEpsilonScale j δ *
          pointwiseMertensDyadicRatio δ ^ t := by
        ring

/-- A standard pointwise square-root-plus-epsilon Mertens envelope constructs
one uniform dyadic geometric descendant envelope. -/
theorem dyadicOrdinaryMertensGeometricEnvelope_of_pointwise
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope) :
    DyadicOrdinaryMertensGeometricEnvelope := by
  intro δ hδ
  obtain ⟨C, hC, hM⟩ :=
    hPoint (pointwiseMertensDyadicEpsilon δ)
      (by unfold pointwiseMertensDyadicEpsilon; positivity)
  refine ⟨
    C * pointwiseMertensDyadicConstantFactor δ,
    pointwiseMertensDyadicRatio δ,
    mul_nonneg hC (by
      unfold pointwiseMertensDyadicConstantFactor
      positivity),
    pointwiseMertensDyadicRatio_nonneg δ,
    pointwiseMertensDyadicRatio_lt_one hδ,
    ?_⟩
  intro j b hb t
  have hbUpper : b < 2 ^ (j + 1) :=
    (Finset.mem_Ico.mp hb).2
  constructor
  · exact ordinaryMertens_descendant_le_geometric
      hδ hC hM hbUpper le_rfl
  · apply ordinaryMertens_descendant_le_geometric
      hδ hC hM hbUpper
    exact Nat.div_le_div_right (Nat.div_le_self b 2)

/-- Constructed value of the proof-relevant adapter left open by PR #616. -/
def pointwiseMertensToDyadicGeometricAdapter :
    PointwiseMertensToDyadicGeometricAdapter where
  toGeometric :=
    dyadicOrdinaryMertensGeometricEnvelope_of_pointwise

/-- The standard pointwise Mertens envelope therefore supplies the parity
zero-mode square-root-energy premise. -/
theorem parityMertensSquareRootEnergy_of_pointwise
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope) :
    DyadicParityMertensSquareRootEnergy :=
  parityMertensSquareRootEnergy_of_geometricEnvelope
    (dyadicOrdinaryMertensGeometricEnvelope_of_pointwise hPoint)

/-- Together with the separate nonzero-frequency premise, the pointwise
Mertens envelope reaches the natural-scale congruence-L1 target. -/
theorem naturalScaleCongruenceL1_of_pointwiseMertens_and_nonzero
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hNonzero : DyadicNaturalScaleNonzeroParityFourierBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_geometricEnvelope_and_nonzero
    (dyadicOrdinaryMertensGeometricEnvelope_of_pointwise hPoint)
    hNonzero

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.cast_dyadicDescendant_le_upperModel
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicOrdinaryMertensGeometricEnvelope_of_pointwise
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.pointwiseMertensToDyadicGeometricAdapter
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleCongruenceL1_of_pointwiseMertens_and_nonzero
