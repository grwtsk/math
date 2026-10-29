-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContinuationQuasiIsomorphism.Variante7b2ccf990f2d8058ea7928ae661e128f51c0e493d377ed9a79dc53bfb287bf7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7b2ccf990f2d8058ea7928ae661e128f51c0e493d377ed9a79dc53bfb287bf7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ContinuationQuasiIsomorphism.Variante7b2ccf990f2d8058ea7928ae661e128f51c0e493d377ed9a79dc53bfb287bf7","mathematical_subject":"Foundations.Unclassified","original_sha256":"e7b2ccf990f2d8058ea7928ae661e128f51c0e493d377ed9a79dc53bfb287bf7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/ContinuationQuasiIsomorphism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.AnalyticContinuationMap
import Folder.DerivedSheaf.DerivedObject

/-!
# Folder.CanonicalPath.ContinuationQuasiIsomorphism

Radiation role: research-boundary
BinaryMatrix spine: This module records continuation quasi-isomorphism targets.
Ontology: canonical.continuation_quasi_iso
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-target
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContinuationQuasiIsomorphism.Variante7b2ccf990f2d8058ea7928ae661e128f51c0e493d377ed9a79dc53bfb287bf7

namespace Folder
namespace CanonicalPath

structure ContinuationQuasiIsomorphism
    (C : AnalyticContinuationMap) where
  quasiIso :
    DerivedSheaf.QuasiIsomorphism C.sourceComplex C.targetComplex
  continuationInducesCohomologyIso :
    quasiIso.inducesCohomologyIso
  sourceLabel : String

theorem continuation_quasi_iso_induces_cohomology_iso
    {C : AnalyticContinuationMap}
    (Q : ContinuationQuasiIsomorphism C) :
    Q.quasiIso.inducesCohomologyIso :=
  Q.continuationInducesCohomologyIso

end CanonicalPath
end Folder
