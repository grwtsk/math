-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CertifiedInterval.Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CertifiedInterval.Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68","mathematical_subject":"Logic.Foundations","original_sha256":"a2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/TensorNetwork/Interval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.TensorNetwork.Observable

/-!
# Certified intervals and quantization boundaries

Intervals preserve ambiguity.  Crossing a threshold is certified only when the
complete enclosure lies strictly on one side.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CertifiedInterval.Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68

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
