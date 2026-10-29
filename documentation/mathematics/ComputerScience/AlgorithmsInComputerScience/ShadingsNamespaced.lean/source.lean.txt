-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Shading.Variant4b095fe0bda4e9d673c120dda0059e76ba18b48387bd78b1bf026a24daf324fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4b095fe0bda4e9d673c120dda0059e76ba18b48387bd78b1bf026a24daf324fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Shading.Variant4b095fe0bda4e9d673c120dda0059e76ba18b48387bd78b1bf026a24daf324fe","mathematical_subject":"Computation.DataStructures","original_sha256":"4b095fe0bda4e9d673c120dda0059e76ba18b48387bd78b1bf026a24daf324fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Geometry/Kakeya/Shadings.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Geometry.Kakeya.Tubes


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Shading.Variant4b095fe0bda4e9d673c120dda0059e76ba18b48387bd78b1bf026a24daf324fe

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Shading data on finite tube configurations.

What is certificate-gated:
Membership of a shading in the configuration is Prop-valued data.

What is not claimed:
No Kakeya estimate follows from a shading descriptor.
-/

/-- A shading carried by a tube configuration. -/
structure Shading
    (K : TubeConfiguration) where
  tubeId : Nat
  shadedSetLabel : String
  belongsToConfiguration : Prop
  belongsToConfigurationCertified : belongsToConfiguration
  boundary : List String

end Surface.Geometry.Kakeya
