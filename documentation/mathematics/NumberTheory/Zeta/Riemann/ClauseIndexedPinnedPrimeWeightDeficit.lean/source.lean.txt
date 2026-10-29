/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightCanonicalDeficit
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeight
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Clause-indexed canonical deficits for pinned prime weights

Clause arity supplies only the numerical dyadic threshold.  One immutable
coefficient rule and the decay of its canonical deficit remain independently
required arithmetic premises.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EQUALITY_ONLY_CLAUSE_INDEXED_CANONICAL_DEFICIT /
COEFFICIENT_SOURCE_LAW_OPEN /
DESCENDED_CANONICAL_DEFICIT_OPEN /
NO_COMPLEXITY_TO_ZETA_TRANSFER / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.Logic.Satisfiability

/-- Clause-arity indexing for one immutable coefficient rule and its canonical
deficit criterion. -/
abbrev ClauseIndexedPinnedPrimeWeightDeficitCriterion
    (rule : PinnedPrimeWeightCoefficientRule)
    {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  PinnedPrimeWeightRuleDeficitCriterionAt rule
    (countedSuccessFraction polarity)

/-- A clause-indexed canonical-deficit supplier recovers the preceding pinned
prime-weight criterion. -/
theorem clauseIndexedPinnedPrimeWeightDeficit_to_pinnedCriterion
    {rule : PinnedPrimeWeightCoefficientRule}
    {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightDeficitCriterion rule polarity) :
    ClauseIndexedPinnedPrimeWeightCriterion polarity :=
  pinnedPrimeWeightRuleDeficitCriterion_to_pinnedCriterion hcriterion

/-- It consequently supplies the clause-indexed nonlinear recurrence. -/
theorem clauseIndexedPinnedPrimeWeightDeficit_to_recurrence
    {rule : PinnedPrimeWeightCoefficientRule}
    {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightDeficitCriterion rule polarity) :
    ClauseIndexedThetaRecurrence polarity :=
  clauseIndexedPinnedPrimeWeight_to_recurrence
    (clauseIndexedPinnedPrimeWeightDeficit_to_pinnedCriterion hcriterion)

/-- Equality-only one-step transport from a rule-deficit criterion at arity
`k+1` to the theta threshold indexed by arity `k`. -/
theorem clauseIndexedPinnedPrimeWeightDeficit_to_previous
    {k : ℕ}
    (rule : PinnedPrimeWeightCoefficientRule)
    (nextPolarity : ClausePolarity (k + 1))
    (currentPolarity : ClausePolarity k)
    (hlower :
      (3 : ℝ) / 4 ≤ countedSuccessFraction nextPolarity)
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightDeficitCriterion
        rule nextPolarity)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction nextPolarity)) :
    AllDyadicThetaAtThreshold
      (countedSuccessFraction currentPolarity) :=
  clauseIndexedRecurrence_to_previous
    nextPolarity currentPolarity hlower
    (clauseIndexedPinnedPrimeWeightDeficit_to_recurrence hcriterion)
    htheta

/-- Arity three names exactly the rule-deficit criterion at `7/8`. -/
theorem threeClauseIndexedPinnedPrimeWeightDeficitCriterion_iff
    (rule : PinnedPrimeWeightCoefficientRule)
    (polarity : ClausePolarity 3) :
    ClauseIndexedPinnedPrimeWeightDeficitCriterion rule polarity ↔
      PinnedPrimeWeightRuleDeficitCriterionAt rule ((7 : ℝ) / 8) := by
  unfold ClauseIndexedPinnedPrimeWeightDeficitCriterion
  rw [threeLiteralClauseThreshold]

/-- Arity two names exactly the rule-deficit criterion at `3/4`. -/
theorem twoClauseIndexedPinnedPrimeWeightDeficitCriterion_iff
    (rule : PinnedPrimeWeightCoefficientRule)
    (polarity : ClausePolarity 2) :
    ClauseIndexedPinnedPrimeWeightDeficitCriterion rule polarity ↔
      PinnedPrimeWeightRuleDeficitCriterionAt rule ((3 : ℝ) / 4) := by
  unfold ClauseIndexedPinnedPrimeWeightDeficitCriterion
  rw [twoLiteralClauseThreshold]

/-- Conditional two-step endpoint through two independently supplied immutable
coefficient rules.  The initial theta estimate and both canonical-deficit
criteria remain explicit theorem arguments. -/
theorem clauseIndexedPinnedPrimeWeightDeficitCriteria_to_rh
    (rule3 rule2 : PinnedPrimeWeightCoefficientRule)
    (polarity3 : ClausePolarity 3)
    (polarity2 : ClausePolarity 2)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction polarity3))
    (hcriterion3 :
      ClauseIndexedPinnedPrimeWeightDeficitCriterion
        rule3 polarity3)
    (hcriterion2 :
      ClauseIndexedPinnedPrimeWeightDeficitCriterion
        rule2 polarity2) :
    _root_.RiemannHypothesis := by
  apply clauseIndexedPinnedPrimeWeightCriteria_to_rh
    polarity3 polarity2 htheta
  · exact
      clauseIndexedPinnedPrimeWeightDeficit_to_pinnedCriterion
        hcriterion3
  · exact
      clauseIndexedPinnedPrimeWeightDeficit_to_pinnedCriterion
        hcriterion2

end GRWTSK.RiemannHypothesis
