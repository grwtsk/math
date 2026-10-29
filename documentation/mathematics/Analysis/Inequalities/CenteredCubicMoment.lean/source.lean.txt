import Mathlib.Data.Real.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.SimpRw
import Mathlib.Algebra.Order.Star.Real

/-!
Centered cubic moments of a nonnegative finite spectrum.
Spectral motivation: Guth--Maynard, New large value estimates for Dirichlet
polynomials, Lemma 4.2 (arXiv:2405.20552v2). The exact scalar identities below
are local derivations; no Dirichlet-polynomial result is assumed as an axiom.
The matrix spectral theorem adapter and the source residual bound are separate.
Research direction: grwtsk contributors. Kernel compilation is pending.
-/
noncomputable section
namespace GRWTSK.Analysis.CenteredCubicMoment
open scoped BigOperators

/-- The centered residual retains the mean rather than deleting it. -/
def residual {ι : Type*} (S : Finset ι) (x : ι → ℝ) (μ : ℝ) : ℝ :=
  (∑ i ∈ S, x i ^ 3) - (S.card : ℝ) * μ ^ 3

theorem pointwise_identity (x μ : ℝ) :
    (x-μ)^2*(x+2*μ) = x^3-3*μ^2*x+2*μ^3 := by ring

/-- The mean equation is explicit, including its cardinality normalization. -/
theorem residual_identity {ι : Type*} (S : Finset ι) (x : ι → ℝ) (μ : ℝ)
    (hmean : ∑ i ∈ S, x i = (S.card : ℝ)*μ) :
    residual S x μ = ∑ i ∈ S, (x i-μ)^2*(x i+2*μ) := by
  simp_rw [pointwise_identity]
  simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib,
    ← Finset.mul_sum, Finset.sum_const, nsmul_eq_mul]
  rw [hmean]
  unfold residual
  ring

theorem residual_nonnegative {ι : Type*} (S : Finset ι) (x : ι → ℝ) (μ : ℝ)
    (hmean : ∑ i ∈ S, x i = (S.card : ℝ)*μ)
    (hx : ∀ i ∈ S, 0 ≤ x i) (hμ : 0 ≤ μ) : 0 ≤ residual S x μ := by
  rw [residual_identity S x μ hmean]
  exact Finset.sum_nonneg (fun i hi => mul_nonneg (sq_nonneg _) (by linarith [hx i hi]))

theorem coordinate_contribution_le {ι : Type*} (S : Finset ι) (x : ι → ℝ) (μ : ℝ)
    (hmean : ∑ i ∈ S, x i = (S.card : ℝ)*μ)
    (hx : ∀ i ∈ S, 0 ≤ x i) (hμ : 0 ≤ μ) {i : ι} (hi : i ∈ S) :
    (x i-μ)^2*(x i+2*μ) ≤ residual S x μ := by
  rw [residual_identity S x μ hmean]
  exact Finset.single_le_sum
    (fun j hj => mul_nonneg (sq_nonneg (x j - μ))
      (show 0 ≤ x j + 2 * μ from by linarith [hx j hj])) hi

/-- A rational candidate upper bound can be checked without evaluating cube roots. -/
theorem coordinate_lt_of_residual {ι : Type*} (S : Finset ι) (x : ι → ℝ)
    (μ B : ℝ) (hmean : ∑ i ∈ S, x i = (S.card : ℝ)*μ)
    (hx : ∀ i ∈ S, 0 ≤ x i) (hμ : 0 ≤ μ) (hB : μ < B)
    (hr : residual S x μ < (B-μ)^2*(B+2*μ)) {i : ι} (hi : i ∈ S) : x i < B := by
  by_contra h
  have hxi : B ≤ x i := le_of_not_gt h
  have hs : (B-μ)^2 ≤ (x i-μ)^2 := by nlinarith
  have hp : (B-μ)^2*(B+2*μ) ≤ (x i-μ)^2*(x i+2*μ) :=
    mul_le_mul hs (by linarith) (by linarith) (sq_nonneg _)
  exact (not_lt_of_ge (hp.trans (coordinate_contribution_le S x μ hmean hx hμ hi))) hr

end GRWTSK.Analysis.CenteredCubicMoment
#print axioms GRWTSK.Analysis.CenteredCubicMoment.residual_identity
#print axioms GRWTSK.Analysis.CenteredCubicMoment.residual_nonnegative
#print axioms GRWTSK.Analysis.CenteredCubicMoment.coordinate_lt_of_residual
