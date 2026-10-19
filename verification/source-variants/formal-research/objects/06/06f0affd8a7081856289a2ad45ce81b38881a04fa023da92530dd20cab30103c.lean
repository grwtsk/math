import FormalResearch.RiemannHypothesis.Conversation.TriangularDisjointBank

/-!
# Successive integer radii are an admissible disjoint source-pulse bank

The literal interval for M ends at M^2+2M=(M+1)^2-1. Choosing M_j=j+2
therefore retains pairwise disjoint complete inventories and the exact source
pulse shape, positive weights and all-real square-root counting bound.
This specialization does not use the source's optional superlinear growth
choice. Its coefficients remain generic positive counting weights.
Human source countermodel direction: grwtsk contributors. Local admissible
integer-radius specialization: OpenAI Codex. Existing source pulse definitions
and Mathlib order laws retain their identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularLinearBank
open TriangularDisjointBank TriangularCountingPulse
noncomputable section

def linearSize (j : ℕ) : ℕ := j + 2

theorem linear_size_sufficient (j : ℕ) : j + 2 ≤ linearSize j := le_rfl

theorem exact_successive_integer_pulse_gap (j : ℕ) :
    (linearSize j) ^ 2 + 2 * linearSize j + 1 = (linearSize (j + 1)) ^ 2 := by
  unfold linearSize
  ring

theorem linear_intervals_separated : Separated linearSize := by
  intro i j hij
  rcases lt_or_gt_of_ne hij with h | h
  · left
    unfold linearSize
    nlinarith
  · right
    unfold linearSize
    nlinarith

theorem linear_bank_retains_every_full_pulse (j n : ℕ)
    (hn : (linearSize j) ^ 2 ≤ n) (hnU : n ≤ (linearSize j) ^ 2 + 2 * linearSize j)
    (a : ℝ) : bankStorage linearSize a n = storage (linearSize j) a n :=
  bank_retains_complete_pulse linearSize linear_size_sufficient linear_intervals_separated
    j n hn hnU a

theorem linear_positive_counting_square_root_error :
    (∀ n : ℕ, 0 < bankWeight linearSize (1 / 2) n) ∧
      ∀ x : ℝ, 1 ≤ x → |count linearSize (1 / 2) x - x| ≤ (3 / 2) * Real.sqrt x := by
  constructor
  · intro n
    exact every_bank_weight_positive linearSize linear_size_sufficient n
      (by norm_num) (by norm_num)
  · intro x hx
    convert all_real_bank_counting_error linearSize linear_size_sufficient
      (a := (1 / 2 : ℝ)) (by norm_num) hx using 1; norm_num

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularLinearBank
