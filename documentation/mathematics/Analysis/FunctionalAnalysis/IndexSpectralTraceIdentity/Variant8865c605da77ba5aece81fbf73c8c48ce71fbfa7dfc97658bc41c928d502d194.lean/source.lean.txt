import Folder.CanonicalPath.IndexSpectralTraceIdentity

/-!
# Folder.Theorem.CanonicalPath.IndexSpectralTraceIdentity

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports trace-identity milestone facts.
Ontology: proof.canonical_path.trace_identity
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem explicit_formula_pairing_equality
    (E : Folder.CanonicalPath.ExplicitFormulaTraceIdentity) :
    E.pairingEquality :=
  Folder.CanonicalPath.explicit_formula_pairing_equality E

theorem index_spectral_trace_identity_validated
    (T : Folder.CanonicalPath.IndexSpectralTraceMilestone) :
    T.traceIdentityValidated :=
  Folder.CanonicalPath.index_spectral_trace_identity_validated T

theorem index_spectral_trace_identity_holds
    (T : Folder.CanonicalPath.IndexSpectralTraceIdentity) :
    T.traceIdentityHolds :=
  Folder.CanonicalPath.index_spectral_trace_identity_holds T

end CanonicalPath
end Theorem
end Folder
