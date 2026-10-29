# Analytic Derived Transport Heat Kernel Index Invariant If Supplied — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab86a4245307fac1e4d182cc6aafd68df048a74d` · SHA-256 `f240580b6aab335fc846f5363bd4299951f5cbdecab48fbeddb384b3832ce153`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b86c112dda4de1bb910bb57cc990ade792e22880a1870e6274b119333a595876 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticDerivedTransport/Variantf240580b6aab335fc846f5363bd4299951f5cbdecab48fbeddb384b3832ce153.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
