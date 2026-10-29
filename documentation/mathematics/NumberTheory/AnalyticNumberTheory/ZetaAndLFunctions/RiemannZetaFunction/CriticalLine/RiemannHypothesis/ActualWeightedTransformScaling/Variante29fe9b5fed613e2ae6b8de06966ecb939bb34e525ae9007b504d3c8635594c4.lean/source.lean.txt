import FormalResearch.RiemannHypothesis.Conversation.ActualWeightedTransformNorm

/-!
# Exact magnitude price at every positive input scale

The literal native transform keeps J(Z*exp(u)) and its unchanged full window.
The scale pullback retains the entire magnitude class. At every Z>0 the
matching-sign input attains exactly Z^a times the same actual weighted norm.
Thus the pointwise complete-class budget is equivalent to paying that exact
scaled norm. No arithmetic input or signed lower estimate is substituted.
Human exact Mellin input and scale direction: grwtsk contributors. Local scale
adapter: OpenAI Codex. Source and Mathlib identities retain their own origins.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualWeightedTransformScaling
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ActualWeightedTransformNorm MeasureTheory Set
noncomputable section
local notation "C" => sourceCorrelation Realization.explicitSecondDerivative

/-- The transform at in this module, with the following exact parameterization.

def transformAt (A : ℝ) (J : ℝ → ℝ) (Z : ℝ) : ℝ := ∫ u in (-2 * A)..(2 * A), C A u * Real.exp
(3 * u / 16) * J (Z * Real.exp u)
-/
def transformAt (A : ℝ) (J : ℝ → ℝ) (Z : ℝ) : ℝ :=
  ∫ u in (-2 * A)..(2 * A), C A u * Real.exp (3 * u / 16) * J (Z * Real.exp u)
/-- The pull input in this module, with the following exact parameterization.

def pullInput (a Z : ℝ) (J : ℝ → ℝ) (x : ℝ) : ℝ := J (Z * x) / Z ^ a
-/
def pullInput (a Z : ℝ) (J : ℝ → ℝ) (x : ℝ) : ℝ := J (Z * x) / Z ^ a
/-- The input at in this module, with the following exact parameterization.

def inputAt (A a Z x : ℝ) : ℝ := Z ^ a * matchedInput A a (x / Z)
-/
def inputAt (A a Z x : ℝ) : ℝ := Z ^ a * matchedInput A a (x / Z)

theorem scale_pullback_retains_magnitude_class {a Z : ℝ} (hZ : 0 < Z)
    (J : ℝ → ℝ) (hJ : ∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) :
    ∀ x : ℝ, 0 < x → |pullInput a Z J x| ≤ x ^ a := by
  intro x hx
  have hZa := Real.rpow_pos_of_pos hZ a
  unfold pullInput
  rw [abs_div, abs_of_pos hZa]
  calc
    _ ≤ (Z * x) ^ a / Z ^ a :=
      div_le_div_of_nonneg_right (hJ _ (mul_pos hZ hx)) hZa.le
    _ = x ^ a := by rw [Real.mul_rpow hZ.le hx.le]; field_simp

theorem exact_native_scale_pullback {Z : ℝ} (hZ : 0 < Z) (A a : ℝ) (J : ℝ → ℝ) :
    transformAt A J Z = Z ^ a * transform A (pullInput a Z J) := by
  have hZa := Real.rpow_pos_of_pos hZ a
  rw [transformAt, transform, ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro u _
  unfold pullInput
  field_simp

theorem matching_input_retains_class_at_every_scale {Z : ℝ} (hZ : 0 < Z) (A a : ℝ) :
    ∀ x : ℝ, 0 < x → |inputAt A a Z x| ≤ x ^ a := by
  intro x hx
  have hZa := Real.rpow_pos_of_pos hZ a
  unfold inputAt
  rw [abs_mul, abs_of_pos hZa]
  calc
    _ ≤ Z ^ a * (x / Z) ^ a :=
      mul_le_mul_of_nonneg_left
        (matching_input_keeps_the_complete_magnitude_bound A a (div_pos hx hZ)) hZa.le
    _ = x ^ a := by rw [Real.div_rpow hx.le hZ.le]; field_simp

theorem exact_scaled_matching_integrand {Z : ℝ} (hZ : 0 < Z) (A a u : ℝ) :
    C A u * Real.exp (3 * u / 16) * inputAt A a Z (Z * Real.exp u) =
      Z ^ a * (|C A u| * Real.exp ((a + 3 / 16) * u)) := by
  have heq : Z * Real.exp u / Z = Real.exp u := by field_simp
  unfold inputAt
  rw [heq]
  calc
    _ = Z ^ a * (C A u * Real.exp (3 * u / 16) * matchedInput A a (Real.exp u)) := by ring
    _ = _ := by rw [exact_matching_integrand]

theorem matching_input_attains_norm_at_every_positive_scale {Z : ℝ} (hZ : 0 < Z)
    (A a : ℝ) : transformAt A (inputAt A a Z) Z = Z ^ a * normPrice A (a + 3 / 16) := by
  unfold transformAt
  simp_rw [exact_scaled_matching_integrand hZ]
  rw [intervalIntegral.integral_const_mul]
  rfl

theorem actual_transform_triangle_at_every_positive_scale {A a Z : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) (J : ℝ → ℝ)
    (hJ : ∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) :
    |transformAt A J Z| ≤ Z ^ a * normPrice A (a + 3 / 16) := by
  rw [exact_native_scale_pullback hZ A a J, abs_mul,
    abs_of_pos (Real.rpow_pos_of_pos hZ a)]
  exact mul_le_mul_of_nonneg_left (actual_native_transform_triangle_bound hA
    (pullInput a Z J) (scale_pullback_retains_magnitude_class hZ J hJ))
    (Real.rpow_nonneg hZ.le a)

theorem exact_complete_input_class_budget_at_every_positive_scale {A a Z B : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) :
    (∀ J : ℝ → ℝ, (∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) → |transformAt A J Z| ≤ B) ↔
      Z ^ a * normPrice A (a + 3 / 16) ≤ B := by
  constructor
  · intro h
    have hm := h (inputAt A a Z) (matching_input_retains_class_at_every_scale hZ A a)
    rw [matching_input_attains_norm_at_every_positive_scale hZ,
      abs_of_nonneg (mul_nonneg (Real.rpow_nonneg hZ.le a)
        (full_native_norm_price_nonnegative hA _))] at hm
    exact hm
  · intro h J hJ
    exact (actual_transform_triangle_at_every_positive_scale hA hZ J hJ).trans h

end
end GRWTSK.RiemannHypothesis.Conversation.ActualWeightedTransformScaling
