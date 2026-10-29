-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransportModelEulerInvariantIfSupplied.Variantf240580b6aab335fc846f5363bd4299951f5cbdecab48fbeddb384b3832ce153","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f240580b6aab335fc846f5363bd4299951f5cbdecab48fbeddb384b3832ce153","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TransportModelEulerInvariantIfSupplied.Variantf240580b6aab335fc846f5363bd4299951f5cbdecab48fbeddb384b3832ce153","mathematical_subject":"Foundations.Unclassified","original_sha256":"f240580b6aab335fc846f5363bd4299951f5cbdecab48fbeddb384b3832ce153","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CanonicalPath/AnalyticDerivedTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.AnalyticDerivedTransport
import Folder.CanonicalPath.HeatKernelTransportModel
import Folder.CanonicalPath.SuperconnectionTransportModel

/-!
# Folder.Theorem.CanonicalPath.AnalyticDerivedTransport

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports analytic-derived transport model facts.
Ontology: proof.canonical_path.analytic_transport
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransportModelEulerInvariantIfSupplied.Variantf240580b6aab335fc846f5363bd4299951f5cbdecab48fbeddb384b3832ce153

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem transport_model_euler_invariant_if_supplied
    (T : Folder.CanonicalPath.AnalyticDerivedTransportModel) :
    T.eulerInvariant :=
  Folder.CanonicalPath.transport_model_euler_invariant_if_supplied T

theorem transport_model_quasi_iso_if_supplied
    (T : Folder.CanonicalPath.AnalyticDerivedTransportModel) :
    T.quasiIsoConstructed :=
  Folder.CanonicalPath.transport_model_quasi_iso_if_supplied T

theorem heat_kernel_index_invariant_if_supplied
    (H : Folder.CanonicalPath.HeatKernelIndexModel) :
    H.indexInvariantUnderHeat :=
  Folder.CanonicalPath.heat_kernel_index_invariant_if_supplied H

theorem superconnection_family_index_invariant_if_supplied
    (S : Folder.CanonicalPath.SuperconnectionFamiliesIndexModel) :
    S.familyIndexInvariant :=
  Folder.CanonicalPath.superconnection_family_index_invariant_if_supplied S

end CanonicalPath
end Theorem
end Folder
