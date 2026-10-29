-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitMetricCertificate.Variant2b14810490b2993a4acffc87b9ab086e650edffa89a475943c64964e06479c42","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b14810490b2993a4acffc87b9ab086e650edffa89a475943c64964e06479c42","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LimitMetricCertificate.Variant2b14810490b2993a4acffc87b9ab086e650edffa89a475943c64964e06479c42","mathematical_subject":"Foundations.Unclassified","original_sha256":"2b14810490b2993a4acffc87b9ab086e650edffa89a475943c64964e06479c42","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Boundary/LimitMetric.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Boundary.LimitState

/-!
# Certified limit metric

Separation and completeness are supplied for the declared weighted metric;
they are not inferred from a schema containing weights.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitMetricCertificate.Variant2b14810490b2993a4acffc87b9ab086e650edffa89a475943c64964e06479c42

namespace Mathematics.StratifiedBoundary

structure LimitMetricCertificate (State : Type u) where
  distance : State → State → Nat
  cauchy : (Nat → State) → Prop
  converges : (Nat → State) → State → Prop
  separates :
    ∀ {left right},
      distance left right = 0 →
        left = right
  complete :
    ∀ sequence,
      cauchy sequence →
        ∃ limit,
          converges sequence limit
  summableWeightCertificateRef : String
  finiteProjectionContinuityRef : String

theorem limit_metric_separates
    {State : Type u}
    (certificate : LimitMetricCertificate State)
    {left right : State}
    (zeroDistance :
      certificate.distance left right = 0) :
    left = right :=
  certificate.separates zeroDistance

theorem limit_metric_complete
    {State : Type u}
    (certificate : LimitMetricCertificate State)
    (sequence : Nat → State)
    (isCauchy : certificate.cauchy sequence) :
    ∃ limit,
      certificate.converges sequence limit :=
  certificate.complete sequence isCauchy

end Mathematics.StratifiedBoundary
