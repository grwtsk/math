# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Interval.Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50b99d6bc7a1ffef49e5c5592c4388d534954719` · SHA-256 `a2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.TensorNetwork.Observable

/-!
# Certified intervals and quantization boundaries

Intervals preserve ambiguity.  Crossing a threshold is certified only when the
complete enclosure lies strictly on one side.
-/

namespace Mathematics.TensorNetwork

/-- Closed real interval with a proved order. -/
structure CertifiedInterval where
  lower : ℝ
  upper : ℝ
  ordered : lower ≤ upper

/-- Smallest possible absolute value represented by the interval. -/
noncomputable def CertifiedInterval.absmin
    (interval : CertifiedInterval) : ℝ :=
  if interval.lower ≤ 0 ∧ 0 ≤ interval.upper then
    0
  else
    min |interval.lower| |interval.upper|

theorem CertifiedInterval.absmin_nonnegative
    (interval : CertifiedInterval) :
    0 ≤ interval.absmin := by
  classical
  unfold CertifiedInterval.absmin
  split
  · exact le_rfl
  · exact le_min (abs_nonneg _) (abs_nonneg _)

/-- Three-way threshold result; ambiguity is not encoded as zero. -/
inductive QuantizedCoordinateState
  | stableZero
  | stableOne
  | ambiguous
  deriving DecidableEq, Repr

noncomputable def quantizeInterval
    (threshold : ℝ)
    (interval : CertifiedInterval) :
    QuantizedCoordinateState :=
  if interval.upper < threshold then
    .stableZero
  else if threshold < interval.lower then
    .stableOne
  else
    .ambiguous

/-- Sound interval for one normalized expectation and its complete error sum. -/
structure ExpectationIntervalCertificate
    (observable : HermitianObservable N D)
    (state : TensorState N D) where
  normalized : NormalizedStateCertificate state
  interval : CertifiedInterval
  representationError : ℝ
  normalizationError : ℝ
  canonicalError : ℝ
  contractionError : ℝ
  truncationError : ℝ
  observableError : ℝ
  semanticEncodingError : ℝ
  errors_nonnegative :
    0 ≤ representationError ∧
    0 ≤ normalizationError ∧
    0 ≤ canonicalError ∧
    0 ≤ contractionError ∧
    0 ≤ truncationError ∧
    0 ≤ observableError ∧
    0 ≤ semanticEncodingError
  expectationReal :
    (normalizedExpectation observable state).im = 0
  enclosed :
    interval.lower ≤
        (normalizedExpectation observable state).re ∧
      (normalizedExpectation observable state).re ≤
        interval.upper

/-- Exact enclosure outside a selected boundary band. -/
def OutsideBand
    (interval : CertifiedInterval)
    (threshold : ℝ) : Prop :=
  threshold ≤ interval.absmin

/-- Strict entry-band escape; equality remains on the conservative frontier. -/
def StrictlyOutsideBand
    (interval : CertifiedInterval)
    (threshold : ℝ) : Prop :=
  threshold < interval.absmin

end Mathematics.TensorNetwork
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b01be7ee4d3ed2458b599f07330b8454f87c3fa8b0bbfab734dfebeea038b601 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
