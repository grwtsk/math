# Transport Invariance Rodgers Tao KIndex Transport — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d86eee5730e0789b37804e6aa42f959c1d4b0f3` · SHA-256 `86e54d8ac71cf257c088da45613d4a16c9b2c2424c1374e9d267ee2da05cc3f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.CanonicalPath.TransportInvariance

Radiation role: research-boundary
BinaryMatrix spine: This module names Rodgers-Tao transport invariance targets, not BinaryMatrix dynamics.
Ontology: canonical_path.transport_invariance
Pivot role: spectral
Zero typology: euler-invariance-contract
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
K-index invariance under a supplied Rodgers-Tao index transport.

The quasi-isomorphism and Euler preservation are inherited from
`RodgersTaoIndexTransport`; equality of K-index classes is an additional
contract field.
-/
structure RodgersTaoKIndexTransport
    (M : DerivedSheaf.MellKTheory) where
  sourceIndex : DerivedSheaf.KTheoryIndex M
  targetIndex : DerivedSheaf.KTheoryIndex M
  transport : DerivedSheaf.RodgersTaoIndexTransport
  kIndexPreserved :
    sourceIndex.indexClass.value = targetIndex.indexClass.value
  sourceLabel : String

theorem rodgers_tao_transport_is_quasi_isomorphism
    {M : DerivedSheaf.MellKTheory}
    (T : RodgersTaoKIndexTransport M) :
    T.transport.quasiIso.inducesCohomologyIso :=
  DerivedSheaf.rodgers_tao_index_transport_quasi_iso T.transport

theorem rodgers_tao_transport_preserves_euler
    {M : DerivedSheaf.MellKTheory}
    (T : RodgersTaoKIndexTransport M) :
    T.transport.eulerTransport.targetEuler.value =
      T.transport.eulerTransport.sourceEuler.value :=
  DerivedSheaf.rodgers_tao_index_transport_preserves_euler T.transport

theorem rodgers_tao_transport_preserves_k_index
    {M : DerivedSheaf.MellKTheory}
    (T : RodgersTaoKIndexTransport M) :
    T.sourceIndex.indexClass.value =
      T.targetIndex.indexClass.value :=
  T.kIndexPreserved

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8420547af0b036648e4e3ba714454a164ccb883ba6bf3816f9a9ecb6c1fe87fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TransportInvariance/Variant86e54d8ac71cf257c088da45613d4a16c9b2c2424c1374e9d267ee2da05cc3f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
