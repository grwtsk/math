-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.OrientedContour.Variant73ff1017b6efd03d256fde17536c4f719da0b3e4121d7dfb8a9e7aa331e55b74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73ff1017b6efd03d256fde17536c4f719da0b3e4121d7dfb8a9e7aa331e55b74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.OrientedContour.Variant73ff1017b6efd03d256fde17536c4f719da0b3e4121d7dfb8a9e7aa331e55b74","mathematical_subject":"Topology.GeneralTopology","original_sha256":"73ff1017b6efd03d256fde17536c4f719da0b3e4121d7dfb8a9e7aa331e55b74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Cell.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.Cut

/-!
# Analytic cells and oriented contours

The interior is the zero-counting domain.  The closed carrier is used for
compact numerical enclosures and geometric envelopes.
-/


namespace GRWTSK.Topology.GeneralTopology.OrientedContour.Variant73ff1017b6efd03d256fde17536c4f719da0b3e4121d7dfb8a9e7aa331e55b74

namespace Mathematics.RHIsolation

structure OrientedContour where
  range : Set ℂ
  piecewiseSmooth : Prop
  piecewiseSmoothProof : piecewiseSmooth
  positivelyOriented : Prop
  positivelyOrientedProof : positivelyOriented

structure AnalyticCell where
  id : AnalyticCellId
  carrier : Set ℂ
  interior : Set ℂ
  compact_carrier : IsCompact carrier
  interior_open : IsOpen interior
  interior_subset : interior ⊆ carrier
  contour : OrientedContour
  contour_bounds_interior : Prop
  contour_bounds_interiorProof :
    contour_bounds_interior
  digest : CellDigest

def PairwiseDisjointInteriors
    {ι : Type*}
    (cell : ι → AnalyticCell) : Prop :=
  ∀ ⦃left right : ι⦄,
    left ≠ right →
    Disjoint (cell left).interior
      (cell right).interior

end Mathematics.RHIsolation
