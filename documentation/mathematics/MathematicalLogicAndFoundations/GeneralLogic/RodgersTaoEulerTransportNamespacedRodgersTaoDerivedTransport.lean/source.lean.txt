-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.RodgersTaoDerivedTransport.Variant6367f4c4d012d662a3adbe4409e1f25b38772154f133d50ac96426438d389843","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6367f4c4d012d662a3adbe4409e1f25b38772154f133d50ac96426438d389843","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.RodgersTaoDerivedTransport.Variant6367f4c4d012d662a3adbe4409e1f25b38772154f133d50ac96426438d389843","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"6367f4c4d012d662a3adbe4409e1f25b38772154f133d50ac96426438d389843","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/RodgersTaoEulerTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.ResearchTopos.RodgersTaoHeat
import Folder.DerivedSheaf.EulerTransport

/-!
# Folder.DerivedSheaf.RodgersTaoEulerTransport

Radiation role: research-boundary
BinaryMatrix spine: This module bridges external Rodgers-Tao heat data to derived transport contracts, not BinaryMatrix data.
Ontology: derived.rodgers_tao_transport
Pivot role: spectral
Zero typology: euler-invariance-contract
Contract boundary: contract
Composite stack role: derived-sheaf
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.RodgersTaoDerivedTransport.Variant6367f4c4d012d662a3adbe4409e1f25b38772154f133d50ac96426438d389843

namespace Folder
namespace DerivedSheaf

/--
A Rodgers-Tao flow interpreted as a derived transport between section
complexes.

This is a contract. It does not assert that the analytic Rodgers-Tao zero flow
automatically acts on section complexes.
-/
structure RodgersTaoDerivedTransport where
  heatFamily : ResearchTopos.RodgersTaoHeatFamily
  sourceComplex : SectionComplex
  targetComplex : SectionComplex
  eulerTransport :
    EulerPreservingTransport sourceComplex targetComplex
  flowRealizesDerivedTransport : Prop
  flowRealizesDerivedTransport_certified : flowRealizesDerivedTransport
  sourceLabel : String

theorem rodgers_tao_flow_realizes_derived_transport
    (T : RodgersTaoDerivedTransport) :
    T.flowRealizesDerivedTransport :=
  T.flowRealizesDerivedTransport_certified

theorem rodgers_tao_transport_preserves_euler_characteristic
    (T : RodgersTaoDerivedTransport) :
    T.eulerTransport.targetEuler.value =
      T.eulerTransport.sourceEuler.value :=
  euler_preserving_transport_value_eq T.eulerTransport

end DerivedSheaf
end Folder
