-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DirectedArc.Variantf857d1c58822708008ae5638b399787cdd5acff98858fa275e822fc6bf8af012","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f857d1c58822708008ae5638b399787cdd5acff98858fa275e822fc6bf8af012","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DirectedArc.Variantf857d1c58822708008ae5638b399787cdd5acff98858fa275e822fc6bf8af012","mathematical_subject":"Foundations.Unclassified","original_sha256":"f857d1c58822708008ae5638b399787cdd5acff98858fa275e822fc6bf8af012","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/DirectedArc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Circle
import Mathematics.Geometry.Orientation

/-!
# Directed circular arcs

An arc carries exact endpoint-membership witnesses and an intrinsic direction.
Display-axis configuration is deliberately absent.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DirectedArc.Variantf857d1c58822708008ae5638b399787cdd5acff98858fa275e822fc6bf8af012

namespace Mathematics.Geometry

/-- A directed arc on a positive-radius Euclidean circle. -/
structure DirectedArc where
  circle : PlaneCircle
  startPoint : PlanePoint
  endPoint : PlanePoint
  startOnCircle : circle.Contains startPoint
  endOnCircle : circle.Contains endPoint
  orientation : ArcOrientation

end Mathematics.Geometry
