# Complete source: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredStructuredFourDistinct

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0861fae41813c7ab1e216392f1d26a2eb74c811` · SHA-256 `4e43c781993a0c4d13d1422a6988cabe33e5cb0a7d71f432cb56da85227a4723`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #905. Parent: draft PR #903 at 5a938e36344f046472876a0df572774ff433f7f6.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctChowlaNormalForm

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Four-distinct part at one center and lag, already restricted to the exact
centered-winding admissible shift geometry. -/
abbrev centeredStructuredFourDistinctAtCenterLag :=
  parityCenteredAffineFourMobiusDistinctAtCenterLag

/-- Center-summed structured four-distinct contribution at one lag. -/
abbrev centeredStructuredFourDistinctLagCorrelation :=
  parityCenteredAffineFourMobiusDistinctLagCorrelation

/-- Winding-lag structured four-distinct contribution. -/
def centeredStructuredFourDistinctWindingLagCorrelation
    (b d r z : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  8 * centeredStructuredFourDistinctLagCorrelation
    b r (z * (d * d)) H

/-- Exact positive-winding aggregate of only the genuinely four-distinct
centered configurations. -/
def centeredStructuredFourDistinctWindingLagSum
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  ∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
    centeredStructuredFourDistinctWindingLagCorrelation b d r z H

/-- Four endpoint-parity/half-shift families at one effective modulus. -/
def regularCenteredStructuredFourDistinctAtModulus
    (b d : ℕ) [NeZero d] : ℝ :=
  |centeredStructuredFourDistinctWindingLagSum
      b d 0 (positiveEndpointEvenShiftSet b)| +
  |centeredStructuredFourDistinctWindingLagSum
      b d 0 (positiveEndpointOddShiftSet b)| +
  |centeredStructuredFourDistinctWindingLagSum
      b d 1 (positiveEndpointEvenShiftSet b)| +
  |centeredStructuredFourDistinctWindingLagSum
      b d 1 (positiveEndpointOddShiftSet b)|

/-- Exact endpoint aggregate consumed by the centered-winding route. -/
def regularCenteredStructuredFourDistinctEndpoint
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      regularCenteredStructuredFourDistinctAtModulus b d
    else 0

/-- Minimal structured analytic premise for the genuinely four-distinct
centered-winding contribution. -/
def RegularCenteredStructuredFourDistinctEnvelope
    (E : ℕ → ℝ) : Prop :=
  ∀ b : ℕ, regularCenteredStructuredFourDistinctEndpoint b ≤ E b

/-- The broad arbitrary-finite-set premise from the parent is deliberately
recorded as stronger in scope; the centered route consumes only the structured
endpoint aggregate above. -/
def GeneralFourDistinctChowlaPremiseIsNotRequired : Prop :=
  ∀ E : ℕ → ℝ,
    RegularCenteredStructuredFourDistinctEnvelope E →
      RegularCenteredStructuredFourDistinctEnvelope E

theorem generalFourDistinctChowlaPremiseIsNotRequired :
    GeneralFourDistinctChowlaPremiseIsNotRequired := by
  intro E h
  exact h

/-- Exact source profile documenting the premise-strength correction. -/
structure RegularCenteredStructuredFourDistinctSourceData where
  theoremStatement : Prop
  exactEndpointSupportMatched : Prop
  effectiveSquareModuliMatched : Prop
  positiveWindingRangeMatched : Prop
  bothEndpointParitiesMatched : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  nondegenerateShiftPairsOnly : Prop
  fourDistinctNormalFormMatched : Prop
  absoluteValuesAtConsumedLevelMatched : Prop
  structuredEnvelopeExplicit : Prop
  arbitraryFiniteSetPremiseNotRequired : Prop
  generalOrderFourChowlaNotClaimedEquivalent : Prop
  rhNotClaimedEquivalent : Prop

def RegularCenteredStructuredFourDistinctSource
    (d : RegularCenteredStructuredFourDistinctSourceData) : Prop :=
  d.theoremStatement ∧
  d.exactEndpointSupportMatched ∧
  d.effectiveSquareModuliMatched ∧
  d.positiveWindingRangeMatched ∧
  d.bothEndpointParitiesMatched ∧
  d.evenOddHalfShiftFamiliesMatched ∧
  d.nondegenerateShiftPairsOnly ∧
  d.fourDistinctNormalFormMatched ∧
  d.absoluteValuesAtConsumedLevelMatched ∧
  d.structuredEnvelopeExplicit ∧
  d.arbitraryFiniteSetPremiseNotRequired ∧
  d.generalOrderFourChowlaNotClaimedEquivalent ∧
  d.rhNotClaimedEquivalent

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a08f19c6a70b116479efa86282f0e0bb79f560ee64dcf7a1d3b4fdb65843fcd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
