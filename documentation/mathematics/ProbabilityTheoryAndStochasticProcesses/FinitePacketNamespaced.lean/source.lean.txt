-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FinitePacket.Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.FinitePacket.Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"c885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Spectral/FinitePacket.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Probability.Simplex
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic

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


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FinitePacket.Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd

namespace BitMatrix.Spectral

open scoped BigOperators
open BitMatrix.Probability

/-- Finite spectral data: a real spectral value and a probability mass on each
finite outcome.  The outcome type may retain eigenprojection multiplicity or
other provenance; equal real values are not quotient-identified. -/
structure FinitePacket (Outcome : Type*) [Fintype Outcome] where
  spectralValue : Outcome → ℝ
  probability : SimplexPoint Outcome

namespace FinitePacket

variable {I Outcome : Type*} [Fintype I] [Fintype Outcome]

/-- Expected value of an arbitrary real observable on packet outcomes. -/
def expectation (packet : FinitePacket Outcome)
    (observable : Outcome → ℝ) : ℝ :=
  ∑ outcome, packet.probability outcome * observable outcome

/-- Expected value of a function of the packet's real spectral value. -/
def spectralExpectation (packet : FinitePacket Outcome)
    (observable : ℝ → ℝ) : ℝ :=
  packet.expectation (fun outcome => observable (packet.spectralValue outcome))

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

theorem probability_nonnegative (packet : FinitePacket Outcome)
    (outcome : Outcome) : 0 ≤ packet.probability outcome :=
  packet.probability.nonnegative outcome

theorem probability_normalized (packet : FinitePacket Outcome) :
    ∑ outcome, packet.probability outcome = 1 :=
  packet.probability.normalized

@[simp]
theorem expectation_zero (packet : FinitePacket Outcome) :
    packet.expectation (fun _ => 0) = 0 := by
  simp [expectation]

@[simp]
theorem expectation_one (packet : FinitePacket Outcome) :
    packet.expectation (fun _ => 1) = 1 := by
  simpa [expectation] using packet.probability.normalized

theorem expectation_add (packet : FinitePacket Outcome)
    (left right : Outcome → ℝ) :
    packet.expectation (fun outcome => left outcome + right outcome) =
      packet.expectation left + packet.expectation right := by
  simp only [expectation, mul_add, Finset.sum_add_distrib]

theorem expectation_smul (packet : FinitePacket Outcome)
    (coefficient : ℝ) (observable : Outcome → ℝ) :
    packet.expectation (fun outcome => coefficient * observable outcome) =
      coefficient * packet.expectation observable := by
  unfold expectation
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro outcome _
  ring

theorem expectation_nonnegative (packet : FinitePacket Outcome)
    (observable : Outcome → ℝ) (nonnegative : ∀ outcome, 0 ≤ observable outcome) :
    0 ≤ packet.expectation observable := by
  exact Finset.sum_nonneg fun outcome _ =>
    mul_nonneg (packet.probability.nonnegative outcome) (nonnegative outcome)

@[simp]
theorem spectralExpectation_zero (packet : FinitePacket Outcome) :
    packet.spectralExpectation (fun _ => 0) = 0 :=
  packet.expectation_zero

@[simp]
theorem spectralExpectation_one (packet : FinitePacket Outcome) :
    packet.spectralExpectation (fun _ => 1) = 1 :=
  packet.expectation_one

theorem spectralExpectation_add (packet : FinitePacket Outcome)
    (left right : ℝ → ℝ) :
    packet.spectralExpectation (fun value => left value + right value) =
      packet.spectralExpectation left + packet.spectralExpectation right :=
  packet.expectation_add _ _

theorem spectralExpectation_smul (packet : FinitePacket Outcome)
    (coefficient : ℝ) (observable : ℝ → ℝ) :
    packet.spectralExpectation (fun value => coefficient * observable value) =
      coefficient * packet.spectralExpectation observable :=
  packet.expectation_smul _ _

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
