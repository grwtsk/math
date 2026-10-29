# Complete source: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointFiniteCyclicDictionary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04f0cb6f227f7166c94e5a6ebf188b9108007d7e` · SHA-256 `2b9fde7ee08ef17a16ff9ceefd1270932eb5addcda34e5b9b0a25666c7db022a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

The original endpoint coordinates are imported through their thin finite owner.
The identities and unweighted finite estimates below do not import or certify
the arithmetic endpoint stack or its all-scale cancellation condition.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointFiniteCyclicCore
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointCyclicCoordinates

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The isolated Fourier window is definitionally the legacy endpoint window. -/
theorem coreGrowingShiftEndpointFourierModulus_eq_finiteCyclic
    (j : ℕ) :
    coreGrowingShiftEndpointFourierModulus j =
      coreGrowingShiftEndpointFiniteCyclicFourierModulus j := by
  rfl

/-- The isolated doubled modulus is definitionally the legacy doubled modulus. -/
theorem coreGrowingShiftEndpointDoubledFourierModulus_eq_finiteCyclic
    (j : ℕ) :
    coreGrowingShiftEndpointDoubledFourierModulus j =
      coreGrowingShiftEndpointFiniteCyclicDoubledModulus j := by
  rfl

/-- Exact dictionary for the negative phase; the sign and argument order are
unchanged. -/
theorem coreGrowingShiftEndpointTransverseNatCharacter_eq_finiteCyclic
    (j n : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseNatCharacter j t n =
      coreGrowingShiftEndpointFiniteCyclicNegativePhase j n t := by
  rfl

/-- Exact dictionary for the positive-character multiplier. -/
theorem coreGrowingShiftEndpointTransverseMultiplier_eq_finiteCyclic
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseMultiplier j t =
      coreGrowingShiftEndpointFiniteCyclicMultiplier j t := by
  rfl

/-- Exact dictionary for circular distance. -/
theorem coreGrowingShiftEndpointTransverseCircularDistance_eq_finiteCyclic
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseCircularDistance j t =
      coreGrowingShiftEndpointFiniteCyclicDistance j t := by
  rfl

/-- The original Jordan scale satisfies the actual multiplier lower bound.
This specialization uses the unique original endpoint coordinate definitions. -/
theorem coreGrowingShiftEndpointTransverseMultiplier_norm_lowerBound_via_finiteCyclic
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseJordanLowerScale j t ≤
      ‖coreGrowingShiftEndpointTransverseMultiplier j t‖ := by
  simpa [coreGrowingShiftEndpointTransverseJordanLowerScale,
    coreGrowingShiftEndpointTransverseCircularDistance,
    coreGrowingShiftEndpointTransverseMultiplier,
    GRWTSK.NumberTheory.CharacterSums.finiteCyclicJordanLowerScale,
    GRWTSK.NumberTheory.CharacterSums.finiteCyclicCircularDistance] using
    GRWTSK.NumberTheory.CharacterSums.finiteCyclicJordanLowerScale_le_norm_stdAddChar_sub_one
      t

/-- Legacy endpoint inverse multiplier is supplied by the isolated
Mathlib-only finite cyclic theorem. -/
theorem coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_distance_via_finiteCyclic
    {j : ℕ}
    {t : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (ht : t ≠ 0) :
    ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (4 * (coreGrowingShiftEndpointTransverseCircularDistance j t : ℝ)) := by
  simpa [coreGrowingShiftEndpointTransverseMultiplier_eq_finiteCyclic,
    coreGrowingShiftEndpointTransverseCircularDistance_eq_finiteCyclic,
    coreGrowingShiftEndpointDoubledFourierModulus_eq_finiteCyclic] using
    coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_distance
      (j := j) ht

/-- Actual legacy endpoint interval estimate obtained through the isolated
finite cyclic supplier. -/
theorem coreGrowingShiftEndpointTransverseNatCharacter_Ico_norm_le_distance_via_finiteCyclic
    (j A B : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hA : 1 ≤ A)
    (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        coreGrowingShiftEndpointTransverseNatCharacter j t n‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 * (coreGrowingShiftEndpointTransverseCircularDistance j t : ℝ)) := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter_eq_finiteCyclic,
    coreGrowingShiftEndpointTransverseCircularDistance_eq_finiteCyclic,
    coreGrowingShiftEndpointDoubledFourierModulus_eq_finiteCyclic] using
    coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_distance
      j A B t hA ht

/-- Uniform legacy endpoint interval estimate beyond a circular cutoff. -/
theorem coreGrowingShiftEndpointTransverseNatCharacter_Ico_norm_le_regularCutoff_via_finiteCyclic
    (j A B L : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hA : 1 ≤ A)
    (ht : t ≠ 0)
    (hL : L < coreGrowingShiftEndpointTransverseCircularDistance j t) :
    ‖∑ n ∈ Finset.Ico A B,
        coreGrowingShiftEndpointTransverseNatCharacter j t n‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 * (((L + 1 : ℕ) : ℝ))) := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter_eq_finiteCyclic,
    coreGrowingShiftEndpointTransverseCircularDistance_eq_finiteCyclic,
    coreGrowingShiftEndpointDoubledFourierModulus_eq_finiteCyclic] using
    coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_regularCutoff
      j A B L t hA ht hL

/-- The legacy zero transverse fiber remains its exact cardinality. -/
theorem coreGrowingShiftEndpointTransverseNatCharacter_Ico_zero_via_finiteCyclic
    (j A B : ℕ) :
    (∑ n ∈ Finset.Ico A B,
      coreGrowingShiftEndpointTransverseNatCharacter j
        (0 : CoreGrowingShiftEndpointDoubledFourierIndex j) n) =
      ((Finset.Ico A B).card : ℂ) := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter_eq_finiteCyclic] using
    coreGrowingShiftEndpointFiniteCyclicInterval_zero j A B

/-- Exact legacy obstruction: coefficientwise norm-one control cannot transfer
unweighted interval cancellation. -/
theorem coreGrowingShiftEndpointTransverse_phaseMatchedWeights_via_finiteCyclic
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (S : Finset ℕ) :
    (∀ n : ℕ,
      ‖ZMod.stdAddChar
        ((n : CoreGrowingShiftEndpointDoubledFourierIndex j) * t)‖ = 1) ∧
      (∑ n ∈ S,
        ZMod.stdAddChar
            ((n : CoreGrowingShiftEndpointDoubledFourierIndex j) * t) *
          coreGrowingShiftEndpointTransverseNatCharacter j t n) =
        (S.card : ℂ) := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter_eq_finiteCyclic] using
    coreGrowingShiftEndpointFiniteCyclic_phaseMatchedWeights j t S

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82b944e99d1b00887dfb0fe99a1bd16c5a1387faa0494b2eb1c9b84cb4e5c160 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicDictionary.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
