# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.RodgersTaoEulerTransport.Variant9e9bcefbf5ee0c1247c8e1fc7b12ee653cbf66ee4cdd93bea9ca2d92d1971d7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d45648430807b80b57dc33758fb8b81ebc47770` · SHA-256 `9e9bcefbf5ee0c1247c8e1fc7b12ee653cbf66ee4cdd93bea9ca2d92d1971d7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.RodgersTaoEulerTransport

/-!
# Folder.Theorem.DerivedSheaf.RodgersTaoEulerTransport

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Rodgers-Tao derived transport facts, not BinaryMatrix data.
Ontology: derived.rodgers_tao_transport
Pivot role: spectral
Zero typology: euler-invariance-contract
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem rodgers_tao_flow_realizes_derived_transport
    (T : Folder.DerivedSheaf.RodgersTaoDerivedTransport) :
    T.flowRealizesDerivedTransport :=
  Folder.DerivedSheaf.rodgers_tao_flow_realizes_derived_transport T

theorem rodgers_tao_transport_preserves_euler_characteristic
    (T : Folder.DerivedSheaf.RodgersTaoDerivedTransport) :
    T.eulerTransport.targetEuler.value =
      T.eulerTransport.sourceEuler.value :=
  Folder.DerivedSheaf.rodgers_tao_transport_preserves_euler_characteristic T

end DerivedSheaf
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=387605c259202179d333b7c42227dcd9af75eeb642b6506e5fe1877c3a0fc709 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/RodgersTaoEulerTransport/Variant9e9bcefbf5ee0c1247c8e1fc7b12ee653cbf66ee4cdd93bea9ca2d92d1971d7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
