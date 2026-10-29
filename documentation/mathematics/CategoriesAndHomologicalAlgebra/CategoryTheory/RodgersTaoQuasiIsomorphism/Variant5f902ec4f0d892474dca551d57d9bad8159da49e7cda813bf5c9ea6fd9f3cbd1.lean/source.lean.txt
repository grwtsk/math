-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RodgersTaoQuasiIsomorphism.Variant315ed1dedd054c48e3100f83c7ea4886fd06bd518f924949097a13c99e01b3d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"315ed1dedd054c48e3100f83c7ea4886fd06bd518f924949097a13c99e01b3d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RodgersTaoQuasiIsomorphism.Variant315ed1dedd054c48e3100f83c7ea4886fd06bd518f924949097a13c99e01b3d4","mathematical_subject":"Foundations.Unclassified","original_sha256":"315ed1dedd054c48e3100f83c7ea4886fd06bd518f924949097a13c99e01b3d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/RodgersTaoQuasiIsomorphism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.DerivedObject
import Folder.DerivedSheaf.RodgersTaoEulerTransport
import Folder.ResearchTopos.RodgersTaoHeat

/-!
# Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism

Radiation role: research-boundary
BinaryMatrix spine: This module records Rodgers-Tao quasi-isomorphism bridge contracts, not BinaryMatrix data.
Ontology: derived.rodgers_tao_quasi_isomorphism
Pivot role: spectral
Zero typology: quasi-isomorphism-contract
Contract boundary: contract
Composite stack role: derived-sheaf
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RodgersTaoQuasiIsomorphism.Variant315ed1dedd054c48e3100f83c7ea4886fd06bd518f924949097a13c99e01b3d4

namespace Folder
namespace DerivedSheaf

/--
A chain-level realization of Rodgers-Tao heat flow as a transport between
section complexes.

This is the missing bridge. The analytic Rodgers-Tao flow does not
automatically act on Folder section complexes; the action is supplied here as
contract data.
-/
structure RodgersTaoQuasiIsomorphism where
  heatFamily : ResearchTopos.RodgersTaoHeatFamily
  sourceComplex : SectionComplex
  targetComplex : SectionComplex
  quasiIso : QuasiIsomorphism sourceComplex targetComplex
  flowRealizesQuasiIso : Prop
  flowRealizesQuasiIso_certified : flowRealizesQuasiIso
  sourceLabel : String

/--
Rodgers-Tao flow realizes a quasi-isomorphism of section complexes, provided
that realization is supplied as a bridge contract.
-/
theorem rodgers_tao_flow_is_quasi_isomorphism
    (T : RodgersTaoQuasiIsomorphism) :
    T.quasiIso.inducesCohomologyIso :=
  T.quasiIso.inducesCohomologyIso_certified

/--
The same theorem in object-returning form.
-/
theorem rodgers_tao_flow_has_quasi_isomorphism
    (T : RodgersTaoQuasiIsomorphism) :
    ∃ q : QuasiIsomorphism T.sourceComplex T.targetComplex,
      q.inducesCohomologyIso :=
  ⟨T.quasiIso, T.quasiIso.inducesCohomologyIso_certified⟩

/--
The analytic flow-to-derived-transport realization is also exposed separately.
-/
theorem rodgers_tao_flow_realizes_quasi_iso
    (T : RodgersTaoQuasiIsomorphism) :
    T.flowRealizesQuasiIso :=
  T.flowRealizesQuasiIso_certified

/--
A Rodgers-Tao derived transport that is both a quasi-isomorphism and
Euler-preserving.
-/
structure RodgersTaoIndexTransport extends RodgersTaoQuasiIsomorphism where
  eulerTransport :
    EulerPreservingTransport sourceComplex targetComplex

theorem rodgers_tao_index_transport_quasi_iso
    (T : RodgersTaoIndexTransport) :
    T.quasiIso.inducesCohomologyIso :=
  T.quasiIso.inducesCohomologyIso_certified

theorem rodgers_tao_index_transport_preserves_euler
    (T : RodgersTaoIndexTransport) :
    T.eulerTransport.targetEuler.value =
      T.eulerTransport.sourceEuler.value :=
  euler_preserving_transport_value_eq T.eulerTransport

end DerivedSheaf
end Folder
