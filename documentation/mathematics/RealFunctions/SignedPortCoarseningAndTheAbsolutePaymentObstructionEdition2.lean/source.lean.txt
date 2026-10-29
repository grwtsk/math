import FormalResearch.RiemannHypothesis.Conversation.CenteredVaughan
import Mathlib.Analysis.Complex.Basic

/-!
# Signed port coarsening and the absolute-payment obstruction

Batch 16 and batch 17 retain joined signs across Vaughan ports. The finite
complex partition law below covers every map between finite port sets; its
real four-port consumer then applies to the literal balanced arithmetic
identity. A scalable cancellation witness shows why the reverse estimate
cannot follow from an exact decomposition alone.

Human programme and source direction: grwtsk contributors. Local finite
interfaces and Lean proofs: OpenAI Codex. ArithmeticFunction and norm laws
retain their upstream Mathlib identities. No arithmetic cancellation estimate
or pole-to-size inference is supplied.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.PortBudget

open scoped BigOperators ArithmeticFunction.Moebius ArithmeticFunction.zeta
noncomputable section

/-- The joined port in this module, with the following exact parameterization.

def joinedPort {ι κ : Type*} [Fintype ι] [DecidableEq κ] (group : ι → κ) (a : ι → ℂ) (j : κ) :
ℂ := ∑ i, if group i = j then a i else 0
-/
def joinedPort {ι κ : Type*} [Fintype ι] [DecidableEq κ]
    (group : ι → κ) (a : ι → ℂ) (j : κ) : ℂ :=
  ∑ i, if group i = j then a i else 0

theorem total_joined_eq {ι κ : Type*} [Fintype ι] [Fintype κ] [DecidableEq κ]
    (group : ι → κ) (a : ι → ℂ) : ∑ j, joinedPort group a j = ∑ i, a i := by
  unfold joinedPort
  rw [Finset.sum_comm]
  simp

theorem coarsening_budget_le {ι κ : Type*} [Fintype ι] [Fintype κ] [DecidableEq κ]
    (group : ι → κ) (a : ι → ℂ) :
    (∑ j, ‖joinedPort group a j‖) ≤ ∑ i, ‖a i‖ := by
  calc
    _ ≤ ∑ j, ∑ i, ‖if group i = j then a i else 0‖ := by
      exact Finset.sum_le_sum (fun j _ => norm_sum_le _ _)
    _ = ∑ i, ‖a i‖ := by simp_rw [apply_ite]; rw [Finset.sum_comm]; simp

theorem joined_source_budget {ι κ : Type*} [Fintype ι] [Fintype κ] [DecidableEq κ]
    (group : ι → κ) (a : ι → ℂ) :
    ‖∑ i, a i‖ ≤ ∑ j, ‖joinedPort group a j‖ := by
  rw [← total_joined_eq group a]
  exact norm_sum_le _ _

theorem two_join_budget (a b c d : ℝ) : |a + b| + |c + d| ≤ |a| + |b| + |c| + |d| := by
  have hab := abs_add_le a b
  have hcd := abs_add_le c d
  linarith

theorem four_port_source_budget (a b c d : ℝ) :
    |a + b + c + d| ≤ |a| + |b| + |c| + |d| := by
  calc
    _ ≤ |a + b| + |c + d| := by simpa [add_assoc] using abs_add_le (a + b) (c + d)
    _ ≤ _ := two_join_budget a b c d

theorem no_reverse_budget_constant (C : ℝ) :
    ∃ a b c d : ℝ, |a| + |b| + |c| + |d| > C * |a + b + c + d| := by
  refine ⟨1, -1, 0, 0, ?_⟩
  norm_num

theorem separated_budget_unbounded (R : ℝ) :
    ∃ a b c d : ℝ, a + b + c + d = 0 ∧ R < |a| + |b| + |c| + |d| := by
  refine ⟨|R| + 1, -(|R| + 1), 0, 0, by ring, ?_⟩
  have h := le_abs_self R
  rw [abs_neg, abs_of_nonneg (by positivity : 0 ≤ |R| + 1)]
  norm_num
  linarith [abs_nonneg R]

/-- The budget statement consumes the unchanged arithmetic-function identity. -/
theorem balanced_vaughan_source_budget (U V n : ℕ) (f r : ArithmeticFunction ℝ) :
    |f n| ≤ |CenteredVaughan.lowPart V f n| +
      |((CenteredVaughan.lowPart U μ - r) * (ζ * f)) n| +
      |(((CenteredVaughan.lowPart U μ - r) * CenteredVaughan.lowPart V f) * ζ) n| +
      |(((CenteredVaughan.highPart U μ + r) * ζ) * CenteredVaughan.highPart V f) n| := by
  have h := congrArg (fun g : ArithmeticFunction ℝ => g n)
    (CenteredVaughan.balanced_vaughan_identity U V f r)
  change f n = CenteredVaughan.lowPart V f n +
    ((CenteredVaughan.lowPart U μ - r) * (ζ * f)) n -
    (((CenteredVaughan.lowPart U μ - r) * CenteredVaughan.lowPart V f) * ζ) n +
    (((CenteredVaughan.highPart U μ + r) * ζ) * CenteredVaughan.highPart V f) n at h
  rw [h]
  simpa only [sub_eq_add_neg, abs_neg] using four_port_source_budget
    (CenteredVaughan.lowPart V f n)
    (((CenteredVaughan.lowPart U μ - r) * (ζ * f)) n)
    (-(((CenteredVaughan.lowPart U μ - r) * CenteredVaughan.lowPart V f) * ζ) n)
    ((((CenteredVaughan.highPart U μ + r) * ζ) * CenteredVaughan.highPart V f) n)

end
end GRWTSK.RiemannHypothesis.Conversation.PortBudget
