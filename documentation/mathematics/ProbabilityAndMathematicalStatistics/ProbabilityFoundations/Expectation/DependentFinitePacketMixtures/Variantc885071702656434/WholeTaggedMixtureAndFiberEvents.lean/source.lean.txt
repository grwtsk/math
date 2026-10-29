/-
WholeTaggedMixtureAndFiberEvents
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: c885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd
Organized SHA-256: 550a00ce7877c46919c5d8a7eae8da75efce7e0e204b2f6098e16cdc33c7165a
PMD: 510.8.010.020 expectation (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Whole heterogeneous mix retains the packet index in Sigma, exact outer hierarchical probabilities, every Fintype/DecidableEq parameter, sigma summation proofs and fiber-event membership. The omit [∀i,Fintype(Outcomes i)] in control remains attached intact to mem_fiberEvent, rather than weakening or adding a typeclass assumption. The exact original namespace BitMatrix.Spectral is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

import BitMatrix.Probability.Simplex
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic

import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FiniteOutcomeSpectralExpectations.Variantc885071702656434.WholePacketAndObservableLaws
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.FiniteAtomicSpectralEvents.Variantc885071702656434.EventValuesAndBounds

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

variable {Outcomes : I → Type*} [∀ i, Fintype (Outcomes i)]

/-- The finite direct-sum mixture.  Each outcome remains tagged by its packet
index, so repeated spectral values in different packets remain distinguishable.
-/
def mix (outer : SimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i)) :
    FinitePacket (Σ i, Outcomes i) where
  spectralValue outcome := (packets outcome.1).spectralValue outcome.2
  probability := SimplexPoint.hierarchical outer
    (fun i => (packets i).probability)

@[simp]
theorem mix_spectralValue (outer : SimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i)) (outcome : Σ i, Outcomes i) :
    (mix outer packets).spectralValue outcome =
      (packets outcome.1).spectralValue outcome.2 :=
  rfl

@[simp]
theorem mix_probability (outer : SimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i)) (outcome : Σ i, Outcomes i) :
    (mix outer packets).probability outcome =
      outer outcome.1 * (packets outcome.1).probability outcome.2 :=
  rfl

theorem mix_probability_normalized (outer : SimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i)) :
    ∑ outcome, (mix outer packets).probability outcome = 1 :=
  (mix outer packets).probability.normalized

/-- Observable linearity across a finite dependent direct sum. -/
theorem expectation_mix (outer : SimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (observable : (Σ i, Outcomes i) → ℝ) :
    (mix outer packets).expectation observable =
      ∑ i, outer i * (packets i).expectation
        (fun outcome => observable ⟨i, outcome⟩) := by
  unfold expectation
  rw [Fintype.sum_sigma]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro outcome _
  simp only [mix_probability]
  ring

/-- Spectral functional evaluation is the weighted sum of the packet
evaluations. -/
theorem spectralExpectation_mix (outer : SimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (observable : ℝ → ℝ) :
    (mix outer packets).spectralExpectation observable =
      ∑ i, outer i * (packets i).spectralExpectation observable := by
  rw [spectralExpectation, expectation_mix]
  rfl

/-- Atomic spectral-event evaluation is linear across the mixture. -/
theorem spectralEventProbability_mix (outer : SimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i)) (event : Set ℝ) :
    (mix outer packets).spectralEventProbability event =
      ∑ i, outer i * (packets i).spectralEventProbability event := by
  exact spectralExpectation_mix outer packets (event.indicator fun _ => 1)

/-- A family of fiber events as one event in the dependent direct sum. -/
def fiberEvent [∀ i, DecidableEq (Outcomes i)]
    (events : ∀ i, Finset (Outcomes i)) : Finset (Σ i, Outcomes i) :=
  Finset.univ.sigma events

omit [∀ i, Fintype (Outcomes i)] in
@[simp]
theorem mem_fiberEvent [∀ i, DecidableEq (Outcomes i)]
    (events : ∀ i, Finset (Outcomes i)) (outcome : Σ i, Outcomes i) :
    outcome ∈ fiberEvent events ↔ outcome.2 ∈ events outcome.1 := by
  simp [fiberEvent]

/-- Event evaluation commutes with the finite spectral mixture. -/
theorem eventProbability_mix [DecidableEq I]
    [∀ i, DecidableEq (Outcomes i)]
    (outer : SimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (events : ∀ i, Finset (Outcomes i)) :
    (mix outer packets).eventProbability (fiberEvent events) =
      ∑ i, outer i * (packets i).eventProbability (events i) := by
  classical
  unfold eventProbability fiberEvent
  rw [Finset.sum_sigma]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro outcome _
  simp only [mix_probability]

end FinitePacket

end BitMatrix.Spectral
