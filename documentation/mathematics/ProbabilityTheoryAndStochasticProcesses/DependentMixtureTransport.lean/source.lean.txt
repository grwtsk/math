/-
DependentMixtureTransport
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490
Organized SHA-256: 190c13df3b30cf3ecac19015578d72ecc0384df69929d4513eac1d96b3537812
PMD: 510.8.010.020 expectation (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- FamilyTurnCovariance retains every dependent outcome/Fintype parameter and a whole PacketEquiv per index. sumOutcomeEquiv, mixtureEquiv and reindexed spectral expectation keep the same turn, outer simplex and all field proofs; no operator domain or unitary conjugation theorem is supplied. The exact original namespace BitMatrix.Spectral is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

import BitMatrix.Spectral.FinitePacket
import Mathlib.Tactic

import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FinitePacketRelabeling.Variante26f45b6dc8c71cf.WholeEquivalenceAndExpectations

/-!
# Spectral realization and covariance capability boundaries

Finite packets have unconditional probability semantics.  General Hilbert
spaces, unbounded operators, trace-class states, functional calculus, and
unitary conjugacy require additional analytic evidence.  This module records
that evidence as explicit capabilities; it manufactures none of it.

In particular, these records are not spectral triples and contain no claims
about compact resolvent, bounded commutators, Connes distance, spinors, or a
Dirac operator induced by raster geometry.
-/

namespace BitMatrix.Spectral

open scoped BigOperators
open BitMatrix.Probability

/-! ## Finite turn covariance -/

/-- Exact finite packet covariance under a permutation of packet indices. -/
structure FamilyTurnCovariance
    {I : Type*} [Fintype I]
    {Outcomes : I → Type*} [∀ i, Fintype (Outcomes i)]
    (turn : I ≃ I)
    (packets : ∀ i, FinitePacket (Outcomes i)) where
  packetCovariant : ∀ i,
    PacketEquiv (packets i) (packets (turn i))

namespace FamilyTurnCovariance

variable {I : Type*} [Fintype I]
  {Outcomes : I → Type*} [∀ i, Fintype (Outcomes i)]
  {turn : I ≃ I} {packets : ∀ i, FinitePacket (Outcomes i)}

/-- Relabel the dependent direct-sum outcome by the turn and each packet's
exact outcome equivalence. -/
def sumOutcomeEquiv (covariance : FamilyTurnCovariance turn packets) :
    (Σ i, Outcomes i) ≃ (Σ i, Outcomes i) :=
  Equiv.sigmaCongr turn
    (fun i => (covariance.packetCovariant i).outcomeEquiv)

/-- Relabeling packets and simplex coordinates commutes with finite spectral
mixture. -/
def mixtureEquiv (covariance : FamilyTurnCovariance turn packets)
    (outer : SimplexPoint I) :
    PacketEquiv (FinitePacket.mix outer packets)
      (FinitePacket.mix (outer.reindex turn) packets) where
  outcomeEquiv := covariance.sumOutcomeEquiv
  spectralValue_preserved outcome := by
    change (packets (turn outcome.1)).spectralValue
        ((covariance.packetCovariant outcome.1).outcomeEquiv outcome.2) =
      (packets outcome.1).spectralValue outcome.2
    exact (covariance.packetCovariant outcome.1).spectralValue_preserved outcome.2
  probability_preserved outcome := by
    change outer (turn.symm (turn outcome.1)) *
        (packets (turn outcome.1)).probability
          ((covariance.packetCovariant outcome.1).outcomeEquiv outcome.2) =
      outer outcome.1 * (packets outcome.1).probability outcome.2
    rw [(covariance.packetCovariant outcome.1).probability_preserved]
    simp

/-- Turn transport preserves all spectral functional expectations when the
simplex weights are reindexed by the same turn. -/
theorem spectralExpectation_reindex
    (covariance : FamilyTurnCovariance turn packets)
    (outer : SimplexPoint I) (observable : ℝ → ℝ) :
    (FinitePacket.mix (outer.reindex turn) packets).spectralExpectation observable =
      (FinitePacket.mix outer packets).spectralExpectation observable :=
  (covariance.mixtureEquiv outer).spectralExpectation_preserved observable

end FamilyTurnCovariance

end BitMatrix.Spectral
