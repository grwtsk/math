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
