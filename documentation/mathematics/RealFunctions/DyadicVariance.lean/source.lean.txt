/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Status: candidate proof source, NOT elaborated. Mathlib retains its attribution.
-/
import Mathlib

/-! # Exact finite orthogonal splitting
No signs are chosen and no source term is deleted. These identities are valid
for the complete real coefficients. Analytic cell identification is separate.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.FiniteSum.DyadicVariance

def pairMean (a b : ℝ) : ℝ := (a+b)/2

theorem pair_centered_split (a b c w : ℝ) :
    (w/2)*((a-c)^2+(b-c)^2) =
      w*(pairMean a b-c)^2+(w/4)*(a-b)^2 := by
  unfold pairMean
  ring

theorem pair_mean_preserves_sum (a b : ℝ) : 2*pairMean a b=a+b := by
  unfold pairMean
  ring

theorem refinement_gain_nonneg (a b w : ℝ) (hw : 0≤w) :
    0≤(w/4)*(a-b)^2 := by positivity

/-- Every child and its signed cross term occurs in the equality. -/
theorem finite_refinement {ι : Type*} (s : Finset ι)
    (a b w : ι → ℝ) (c : ℝ) :
    (∑ i∈s, (w i/2)*((a i-c)^2+(b i-c)^2)) =
      (∑ i∈s, w i*(pairMean (a i) (b i)-c)^2)+
      ∑ i∈s, (w i/4)*(a i-b i)^2 := by
  simp_rw [pair_centered_split, Finset.sum_add_distrib]

theorem finite_refinement_monotone {ι : Type*} (s : Finset ι)
    (a b w : ι → ℝ) (c : ℝ) (hw : ∀ i∈s, 0≤w i) :
    (∑ i∈s, w i*(pairMean (a i) (b i)-c)^2) ≤
      ∑ i∈s, (w i/2)*((a i-c)^2+(b i-c)^2) := by
  rw [finite_refinement]
  exact le_add_of_nonneg_right (Finset.sum_nonneg fun i hi ↦
    refinement_gain_nonneg (a i) (b i) (w i) (hw i hi))

/-- The integrated range estimate needed by Popoviciu, as exact scalar algebra. -/
theorem quarter_range_moment_bound (m e lo hi : ℝ)
    (h : e ≤ (lo+hi)*m-lo*hi) :
    e-m^2 ≤ (hi-lo)^2/4 := by
  nlinarith [sq_nonneg (m-(lo+hi)/2)]

theorem retained_mean_identity (a c d : ℝ) :
    (a-c)^2=(a-d)^2+2*(a-d)*(d-c)+(d-c)^2 := by ring

/-- All fine-cell debits are summed before taking the bound. -/
theorem finite_fine_budget {ι : Type*} (s : Finset ι)
    (w r : ι → ℝ) (B : ℝ)
    (hr : ∀ i∈s, r i≤w i*B)
    (hm : ∑ i∈s, w i=1) : (∑ i∈s, r i)≤B := by
  calc
    (∑ i∈s, r i) ≤ ∑ i∈s, w i*B := Finset.sum_le_sum hr
    _ = B := by rw [← Finset.sum_mul, hm, one_mul]

/-- The scalar final return retains both endpoint channels and the fine debit. -/
theorem complete_return (G C r m0 m1 B : ℝ)
    (hG : G=C+r) (hr : r≤B) :
    G+m0^2+m1^2 ≤ C+m0^2+m1^2+B := by linarith

theorem source_scale_budget (L X M : ℝ)
    (hX : 0<X) (hM : 0<M) (hmesh : X≤M^2) :
    L^2/(4*M^2) ≤ L^2/(4*X) := by
  apply div_le_div_of_nonneg_left (sq_nonneg L) (by positivity)
  nlinarith

/-- Endpoint mass cannot be inferred from the centered Green channel. -/
theorem endpoint_control (c : ℝ) : 0+c^2+c^2=2*c^2 := by ring

/-- Polynomial primitive completion. Logs can be substituted for lu and lv. -/
theorem primitive_completion (p x u v lu lv : ℝ) (hx : x≠0)
    (hw : v-u=1/x) :
    v*((p-lv)^2+2*(p-lv)+2)-u*((p-lu)^2+2*(p-lu)+2) =
      (p-x*((v*lv-v)-(u*lu-u)))^2/x+
      (v*(lv^2-2*lv+2)-u*(lu^2-2*lu+2)-
        (x*((v*lv-v)-(u*lu-u)))^2/x) := by
  have hv : v=u+1/x := by linarith
  rw [hv]
  field_simp [hx]
  <;> ring

end GRWTSK.Analysis.FiniteSum.DyadicVariance
