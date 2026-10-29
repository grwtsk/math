-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CircumcircleDatum.Variante7f434a4c6b21914a8fb8c3c6f7d6497b85e6f56194e0edba7075cb384a8f4f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7f434a4c6b21914a8fb8c3c6f7d6497b85e6f56194e0edba7075cb384a8f4f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.CircumcircleDatum.Variante7f434a4c6b21914a8fb8c3c6f7d6497b85e6f56194e0edba7075cb384a8f4f3","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"e7f434a4c6b21914a8fb8c3c6f7d6497b85e6f56194e0edba7075cb384a8f4f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Circumcircle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Circle
import Mathematics.Geometry.Primitive

/-!
# Circumcircle data

A circumcircle witness reuses the canonical triangle presentation and circle
carrier.  It asserts membership only; noncollinearity and uniqueness require
separate hypotheses.
-/


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CircumcircleDatum.Variante7f434a4c6b21914a8fb8c3c6f7d6497b85e6f56194e0edba7075cb384a8f4f3

namespace Mathematics.Geometry

/-- Three labeled points together with a circle containing all three. -/
structure CircumcircleDatum where
  triangle : Triangle PlanePoint
  circle : PlaneCircle
  firstOnCircle : circle.Contains triangle.first
  secondOnCircle : circle.Contains triangle.second
  thirdOnCircle : circle.Contains triangle.third

end Mathematics.Geometry
