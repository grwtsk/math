/-
EventValuesAndBounds
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: c885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd
Organized SHA-256: 550a00ce7877c46919c5d8a7eae8da75efce7e0e204b2f6098e16cdc33c7165a
PMD: 510.8.010.010.040 distributions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- eventProbability retains DecidableEq and finite summation; spectralEventProbability is the exact noncomputable finite set-indicator expectation over arbitrary Set Real. Empty/universal/nonnegative laws do not assert a constructed Borel measure, countable-additivity theorem or operator-valued spectral measure. The exact original namespace BitMatrix.Spectral is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

import BitMatrix.Probability.Simplex
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic

import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FiniteOutcomeSpectralExpectations.Variantc885071702656434.WholePacketAndObservableLaws

/-!
# Finite spectral packets and simplex mixtures

This module gives the constructive, finite part of spectral transport.  A
packet consists of a finite spectrum together with a normalized nonnegative
mass on its outcomes.  Mixing packets uses an outer simplex point and retains
the packet index in a dependent sum.  It therefore models a finite direct-sum
mixture without asserting that the packets share an operator domain.

No declaration in this file constructs a spectral triple, a Dirac operator,
compact resolvent, bounded commutators, or metric recovery.
-/

namespace BitMatrix.Spectral

open scoped BigOperators
open BitMatrix.Probability

namespace FinitePacket

variable {I Outcome : Type*} [Fintype I] [Fintype Outcome]

/-- Probability of a finite event. -/
def eventProbability [DecidableEq Outcome]
    (packet : FinitePacket Outcome) (subset : Finset Outcome) : ℝ :=
  ∑ outcome ∈ subset, packet.probability outcome

/-- Atomic spectral probability of a set of real spectral values.  Because the
packet has finite support, this is a finite sum and requires no Borel or
operator-valued measure construction. -/
noncomputable def spectralEventProbability
    (packet : FinitePacket Outcome) (event : Set ℝ) : ℝ :=
  packet.spectralExpectation (event.indicator fun _ => 1)

@[simp]
theorem eventProbability_empty [DecidableEq Outcome]
    (packet : FinitePacket Outcome) :
    packet.eventProbability ∅ = 0 := by
  simp [eventProbability]

@[simp]
theorem eventProbability_univ [DecidableEq Outcome]
    (packet : FinitePacket Outcome) :
    packet.eventProbability Finset.univ = 1 := by
  simpa [eventProbability] using packet.probability.normalized

theorem eventProbability_nonnegative [DecidableEq Outcome]
    (packet : FinitePacket Outcome) (subset : Finset Outcome) :
    0 ≤ packet.eventProbability subset := by
  unfold eventProbability
  exact Finset.sum_nonneg fun outcome _ => packet.probability.nonnegative outcome

@[simp]
theorem spectralEventProbability_empty (packet : FinitePacket Outcome) :
    packet.spectralEventProbability ∅ = 0 := by
  simp [spectralEventProbability]

@[simp]
theorem spectralEventProbability_univ (packet : FinitePacket Outcome) :
    packet.spectralEventProbability Set.univ = 1 := by
  simp [spectralEventProbability]

theorem spectralEventProbability_nonnegative (packet : FinitePacket Outcome)
    (event : Set ℝ) : 0 ≤ packet.spectralEventProbability event := by
  classical
  apply packet.expectation_nonnegative
  intro outcome
  simp only [Set.indicator]
  split <;> positivity

/-! ## Heterogeneous direct-sum mixtures -/

end FinitePacket

end BitMatrix.Spectral
