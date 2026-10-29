/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightDeficit
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightCanonicalDeficitControls

open GRWTSK.Logic.Satisfiability
open GRWTSK.RiemannHypothesis

/-- Canonical polarity used only to expose the numerical arity labels. -/
def positivePolarity (k : ℕ) : ClausePolarity k :=
  fun _ => true

/-- The arity-three canonical-deficit criterion retains the exact `7/8`
threshold for every fixed rule. -/
theorem concrete_three_clause_deficit_criterion
    (rule : PinnedPrimeWeightCoefficientRule) :
    ClauseIndexedPinnedPrimeWeightDeficitCriterion
        rule (positivePolarity 3) ↔
      PinnedPrimeWeightRuleDeficitCriterionAt rule ((7 : ℝ) / 8) :=
  threeClauseIndexedPinnedPrimeWeightDeficitCriterion_iff
    rule (positivePolarity 3)

/-- The arity-two canonical-deficit criterion retains the exact `3/4`
threshold for every fixed rule. -/
theorem concrete_two_clause_deficit_criterion
    (rule : PinnedPrimeWeightCoefficientRule) :
    ClauseIndexedPinnedPrimeWeightDeficitCriterion
        rule (positivePolarity 2) ↔
      PinnedPrimeWeightRuleDeficitCriterionAt rule ((3 : ℝ) / 4) :=
  twoClauseIndexedPinnedPrimeWeightDeficitCriterion_iff
    rule (positivePolarity 2)

/-- Algebraic coefficient obtained by inspecting the target theta amplitude.
This is deliberately hostile data, not an accepted arithmetic source rule. -/
def targetFittedPinnedPrimeCoefficient
    (X : ℕ) (v : ℝ) : ℝ :=
  (X : ℝ) * (|thetaError v| + 1) /
    (pinnedPrimeWeightedAmplitude X)^2

theorem targetFittedPinnedPrimeCoefficient_nonnegative
    (X : ℕ) (v : ℝ) :
    0 ≤ targetFittedPinnedPrimeCoefficient X v := by
  unfold targetFittedPinnedPrimeCoefficient
  exact div_nonneg
    (mul_nonneg (Nat.cast_nonneg _) (by positivity))
    (sq_nonneg _)

/-- Whenever the current weighted amplitude is nonzero, the target-fitted
coefficient reproduces the target amplitude exactly.  This is the prohibited
tautological fit that motivates the immutable source-rule boundary. -/
theorem targetFittedPinnedPrimeCoefficient_response_eq
    {X : ℕ} (hX : 0 < X)
    (hA : pinnedPrimeWeightedAmplitude X ≠ 0)
    (v : ℝ) :
    pinnedPrimeWeightResponseMagnitude X
        (targetFittedPinnedPrimeCoefficient X v) =
      |thetaError v| + 1 := by
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  have hc :
      0 ≤ targetFittedPinnedPrimeCoefficient X v :=
    targetFittedPinnedPrimeCoefficient_nonnegative X v
  unfold pinnedPrimeWeightResponseMagnitude
  rw [abs_of_nonneg (mul_nonneg hc (sq_nonneg _))]
  unfold targetFittedPinnedPrimeCoefficient
  field_simp [hXr.ne', hA] <;> ring

/-- The same target-fitted coefficient annihilates the canonical deficit. -/
theorem targetFittedPinnedPrimeCoefficient_deficit_zero
    {X : ℕ} (hX : 0 < X)
    (hA : pinnedPrimeWeightedAmplitude X ≠ 0)
    (v : ℝ) :
    pinnedPrimeWeightCanonicalDeficit X
        (targetFittedPinnedPrimeCoefficient X v) v = 0 := by
  apply pinnedPrimeWeightCanonicalDeficit_eq_zero_of_exact_fit
  exact targetFittedPinnedPrimeCoefficient_response_eq hX hA v

/-- Hostile global rule that inspects the target error.  It is a valid term of
the rule type but its source label explicitly marks it as inadmissible. -/
def hostileTargetFittedRule : PinnedPrimeWeightCoefficientRule where
  sourceIdentity := "HOSTILE: coefficient fitted from target thetaError"
  normalization := "X*(|thetaError(v)|+1)/A_X^2"
  invalidationKey := "target-dependent / reject as source-derived"
  coefficient := fun j v =>
    targetFittedPinnedPrimeCoefficient (dyadicScale j) v

/-- At every stage with nonzero weighted amplitude, the hostile fitted rule has
zero canonical deficit pointwise.  Zero deficit alone therefore cannot certify
a source-faithful arithmetic identity. -/
theorem hostileTargetFittedRule_deficit_zero
    (j : ℕ)
    (hA : pinnedPrimeWeightedAmplitude (dyadicScale j) ≠ 0)
    (v : ℝ) :
    pinnedPrimeWeightCanonicalDeficit
        (dyadicScale j)
        (hostileTargetFittedRule.coefficient j v) v = 0 := by
  simpa [hostileTargetFittedRule] using
    (targetFittedPinnedPrimeCoefficient_deficit_zero
      (dyadicScale_pos j) hA v)

/-- Proof obligations still required for an accepted coefficient rule. -/
def requiredCoefficientRuleObligations : List String :=
  ["one immutable coefficient term fixed before every epsilon and scale quantifier",
   "an exact arithmetic derivation of that coefficient from a declared source identity",
   "a scale-uniform bound for the source-derived coefficient on each next octave",
   "decay of the canonical minimal deficit at exponent Q(rho)+eta/2",
   "source revision, normalization, and invalidation binding"]

/-- Explicit nonimplication boundary. -/
def prohibitedPromotions : List String :=
  ["minimal residual definition -> residual decay theorem",
   "target-fitted coefficient -> source-derived coefficient",
   "metadata string -> arithmetic source proof",
   "coefficient fixed across scales -> coefficient uniformly bounded",
   "zero canonical deficit -> complete explicit-formula identity",
   "clause arity -> coefficient construction",
   "MAX-3SAT hardness -> canonical-deficit estimate",
   "conditional deficit endpoint -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightCanonicalDeficitControls
