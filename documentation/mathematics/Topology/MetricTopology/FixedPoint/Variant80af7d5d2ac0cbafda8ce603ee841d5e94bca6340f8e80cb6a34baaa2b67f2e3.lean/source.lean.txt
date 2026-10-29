-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.HasFixedPoint.Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.HasFixedPoint.Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10","mathematical_subject":"Topology.MetricSpaces","original_sha256":"399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Fiber/FixedPoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Fiber.FixedPoint

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: fiber.fixed_point
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/



namespace GRWTSK.Topology.MetricTopology.HasFixedPoint.Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10

namespace Folder
namespace Fiber

structure HasFixedPoint (α : Type _) (F : α → α) where
  point : α
  fixed : F point = point

structure HasUniqueFixedPoint (α : Type _) (F : α → α) extends
    HasFixedPoint α F where
  unique : ∀ x, F x = x → x = point

structure ContractiveFixedPointContract
    (α : Type _) where
  dist : α → α → ℝ
  map : α → α
  point : α
  fixed : map point = point
  unique : ∀ x, map x = x → x = point

theorem fixed_point_is_fixed {α : Type _} {F : α → α}
    (h : HasFixedPoint α F) :
    F h.point = h.point :=
  h.fixed

theorem unique_fixed_point_eq {α : Type _} {F : α → α}
    (h : HasUniqueFixedPoint α F)
    {x : α}
    (hx : F x = x) :
    x = h.point :=
  h.unique x hx

end Fiber
end Folder
