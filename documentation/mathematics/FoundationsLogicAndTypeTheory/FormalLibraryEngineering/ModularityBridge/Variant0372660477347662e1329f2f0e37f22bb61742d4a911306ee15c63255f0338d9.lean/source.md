# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModularityBridge.Variant0372660477347662e1329f2f0e37f22bb61742d4a911306ee15c63255f0338d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e94317dd83910a63527e867d3c2b0ffc169ea56f` · SHA-256 `0372660477347662e1329f2f0e37f22bb61742d4a911306ee15c63255f0338d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Research.ModularityBridge

/-!
# Folder.Theorem.Research.ModularityBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports modularity-to-Hasse-Weil contract exposures.
Ontology: proof.research.modularity_bridge
Pivot role: arithmetic
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: research
-/

namespace Folder
namespace Theorem
namespace Research
namespace ModularityBridge

theorem hasse_weil_analytic_from_modularity
    (B : Folder.Research.ModularityBridge.ModularityToHasseWeilBridge)
    (h : B.modularity.associated) :
    B.hasseWeil.hasAnalyticContinuation :=
  Folder.Research.ModularityBridge.hasse_weil_analytic_from_modularity B h

theorem hasse_weil_functional_from_modularity
    (B : Folder.Research.ModularityBridge.ModularityToHasseWeilBridge)
    (h : B.modularity.associated) :
    B.hasseWeil.hasFunctionalEquation :=
  Folder.Research.ModularityBridge.hasse_weil_functional_from_modularity B h

end ModularityBridge
end Research
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e5ae6ca2ac63fecff55c1fb9deb19330cfdb31a77626194b1c0cc74c32f2074 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModularityBridge/Variant0372660477347662e1329f2f0e37f22bb61742d4a911306ee15c63255f0338d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
