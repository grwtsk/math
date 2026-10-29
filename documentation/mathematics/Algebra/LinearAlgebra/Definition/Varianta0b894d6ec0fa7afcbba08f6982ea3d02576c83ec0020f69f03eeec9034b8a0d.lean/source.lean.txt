-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FiniteSoninHorizonTransportedRange.Variantf9c524fa234959b76eb904e4caea7b9e77c12d3175cbe5f3703f4f7969dc8dee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9c524fa234959b76eb904e4caea7b9e77c12d3175cbe5f3703f4f7969dc8dee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FiniteSoninHorizonTransportedRange.Variantf9c524fa234959b76eb904e4caea7b9e77c12d3175cbe5f3703f4f7969dc8dee","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"f9c524fa234959b76eb904e4caea7b9e77c12d3175cbe5f3703f4f7969dc8dee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP1/TransportedRange/Definition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP1.SoninHorizon

/-!
# Transported-range primitive
-/


namespace GRWTSK.Algebra.LinearAlgebra.FiniteSoninHorizonTransportedRange.Variantf9c524fa234959b76eb904e4caea7b9e77c12d3175cbe5f3703f4f7969dc8dee

namespace Mathematics.SemiLocalDefect.SoninCore

def FiniteSoninHorizon.transportedRange
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    Submodule ℂ H.Ambient :=
  LinearMap.range
    (H.toTop S).toLinearMap

end Mathematics.SemiLocalDefect.SoninCore
