-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HalfTurn.Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HalfTurn.Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5","mathematical_subject":"Foundations.Unclassified","original_sha256":"38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/HalfTurn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.SquaredDistance

/-!
# Affine half-turn

The half-turn is expressed by canonical vector operations on the Euclidean
plane.  Involution and metric preservation are proved, not runtime assumptions.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HalfTurn.Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5

namespace Mathematics.Geometry

/-- The affine half-turn about a designated center. -/
def halfTurn (center point : PlanePoint) : PlanePoint :=
  (2 : ℝ) • center - point

@[simp] theorem halfTurn_involutive (center point : PlanePoint) :
    halfTurn center (halfTurn center point) = point := by
  ext coordinate
  simp [halfTurn]

theorem halfTurn_difference (center point : PlanePoint) :
    center - halfTurn center point = -(center - point) := by
  ext coordinate
  simp [halfTurn]
  ring

theorem halfTurn_preserves_centered_squaredDistance
    (center point : PlanePoint) :
    planeSquaredDistance center (halfTurn center point) =
      planeSquaredDistance center point := by
  simp only [planeSquaredDistance, halfTurn_difference]
  simp [norm_sub_rev]

end Mathematics.Geometry
