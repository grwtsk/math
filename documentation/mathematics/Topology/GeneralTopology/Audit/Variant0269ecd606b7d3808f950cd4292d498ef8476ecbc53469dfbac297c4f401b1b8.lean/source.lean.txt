-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Lean.Variant8b580654547cb2ee7ebe7270e566f326ffe8d6eee3afc86aef788b493896e07c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b580654547cb2ee7ebe7270e566f326ffe8d6eee3afc86aef788b493896e07c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Lean.Variant8b580654547cb2ee7ebe7270e566f326ffe8d6eee3afc86aef788b493896e07c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8b580654547cb2ee7ebe7270e566f326ffe8d6eee3afc86aef788b493896e07c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/atlas-ghh-descent-20261007/artifacts/atlas-ghh/projective-circle/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import FormalResearch.PositiveAtlas.Grassmannian.PivotProjectiveCircle

namespace GRWTSK.Topology.GeneralTopology.Lean.Variant8b580654547cb2ee7ebe7270e566f326ffe8d6eee3afc86aef788b493896e07c

open Lean Elab Command
set_option pp.all true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
set_option pp.deepTerms true
set_option pp.maxSteps 100000000
run_cmd do
  let names : List Name := [
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.RealCircle,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstPivot,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.secondPivot,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstPivot_apply,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.secondPivot_apply,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.doubleAngle,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.doubleAngle_unit,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.doubleAngle_scale,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.fullRankFrame_denominator_pos,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.frameCircle,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.frameCircle_eq_of_rowSpace_eq,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleMap,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleMap_representedPlane,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleMap_normalizedPivotPlane,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.continuous_circleMap_normalizedPivotPlane,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.continuous_circleMap,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstPoint,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.secondPoint,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleMap_firstPoint,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleMap_secondPoint,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.normalized_frame_eq_first,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.normalized_frame_eq_second,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstPoint_secondPoint_cover,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstPoint_eq_secondPoint_inv,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstCircle_fst_ne_neg_one,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstCircle_coordinate,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstCircle_inverse,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleInverse,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleInverse_firstPoint,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleInverse_circleMap,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleMap_circleInverse,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleEquiv,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.continuous_firstPoint,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.continuous_secondPoint,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.bounded_chart_cover,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.compactSpace_intrinsicProjectiveLine,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleHomeomorph ]
  for name in names do
    let axioms ← collectAxioms name
    let record := Json.mkObj [("name", toJson name.toString),
      ("axioms", toJson (axioms.map Name.toString))]
    liftIO <| IO.println ("ATLAS_CIRCLE_EXPORT=" ++ record.compress)
    elabCommand (← `(command| #check $(mkIdent name)))
