-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AnalyticContinuationMap.Variant24e0bc88e8d9a24bad5fba9bd3ac383932d39ce506389cc56a282d5400a1f411","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24e0bc88e8d9a24bad5fba9bd3ac383932d39ce506389cc56a282d5400a1f411","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AnalyticContinuationMap.Variant24e0bc88e8d9a24bad5fba9bd3ac383932d39ce506389cc56a282d5400a1f411","mathematical_subject":"Foundations.Unclassified","original_sha256":"24e0bc88e8d9a24bad5fba9bd3ac383932d39ce506389cc56a282d5400a1f411","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/AnalyticContinuationMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.ResearchTopos.RodgersTaoHeat
import Folder.DerivedSheaf.SectionComplex

/-!
# Folder.CanonicalPath.AnalyticContinuationMap

Radiation role: research-boundary
BinaryMatrix spine: This module records analytic continuation maps, not BinaryMatrix heat.
Ontology: canonical.continuation_quasi_iso
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-target
Composite stack role: canonical-path
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AnalyticContinuationMap.Variant24e0bc88e8d9a24bad5fba9bd3ac383932d39ce506389cc56a282d5400a1f411

namespace Folder
namespace CanonicalPath

structure AnalyticContinuationMap where
  heatFamily : ResearchTopos.RodgersTaoHeatFamily
  sourceComplex : DerivedSheaf.SectionComplex
  targetComplex : DerivedSheaf.SectionComplex
  chainMapData : Type
  respectsDifferential : Prop
  respectsDifferential_certified : respectsDifferential
  compactnessFredholmEstimates : Prop
  compactnessFredholmEstimates_certified : compactnessFredholmEstimates
  sourceLabel : String

theorem continuation_map_respects_differential
    (C : AnalyticContinuationMap) :
    C.respectsDifferential :=
  C.respectsDifferential_certified

theorem continuation_map_has_estimates
    (C : AnalyticContinuationMap) :
    C.compactnessFredholmEstimates :=
  C.compactnessFredholmEstimates_certified

end CanonicalPath
end Folder
