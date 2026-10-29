import Folder.CanonicalPath.TransportInvariance

/-!
# Folder.Theorem.CanonicalPath.TransportInvariance

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports canonical-path transport facts, not BinaryMatrix dynamics.
Ontology: proof.canonical_path.transport_invariance
Pivot role: spectral
Zero typology: euler-invariance-contract
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem rodgers_tao_transport_is_quasi_isomorphism
    {M : Folder.DerivedSheaf.MellKTheory}
    (T : Folder.CanonicalPath.RodgersTaoKIndexTransport M) :
    T.transport.quasiIso.inducesCohomologyIso :=
  Folder.CanonicalPath.rodgers_tao_transport_is_quasi_isomorphism T

theorem rodgers_tao_transport_preserves_euler
    {M : Folder.DerivedSheaf.MellKTheory}
    (T : Folder.CanonicalPath.RodgersTaoKIndexTransport M) :
    T.transport.eulerTransport.targetEuler.value =
      T.transport.eulerTransport.sourceEuler.value :=
  Folder.CanonicalPath.rodgers_tao_transport_preserves_euler T

theorem rodgers_tao_transport_preserves_k_index
    {M : Folder.DerivedSheaf.MellKTheory}
    (T : Folder.CanonicalPath.RodgersTaoKIndexTransport M) :
    T.sourceIndex.indexClass.value =
      T.targetIndex.indexClass.value :=
  Folder.CanonicalPath.rodgers_tao_transport_preserves_k_index T

end CanonicalPath
end Theorem
end Folder
