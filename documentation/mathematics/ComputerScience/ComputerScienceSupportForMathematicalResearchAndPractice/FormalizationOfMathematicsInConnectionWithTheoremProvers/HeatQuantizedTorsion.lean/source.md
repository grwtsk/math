# Heat Quantized Torsion — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28fcd8fb07a397dc5c2ef80d2e5938ca0ae0a9d4` · SHA-256 `182108dbec4724c76535a9a1358c9a744dd486086ffd3a41d4ff6045ec036877`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Cellular.HeatQuantizedTorsion

/-!
# Folder.Theorem.Cellular.HeatQuantizedTorsion

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.cellular.heat_quantized_torsion
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Cellular
namespace HeatQuantizedTorsion

theorem heatQuantizedShellTorsion_loop_eq_scan
    (T : Folder.Cellular.HeatQuantizedShellTorsion d k m)
    (p : Folder.Cellular.EdgePath d k x x) :
    Folder.Cellular.pathIntegral T.connection p =
      Folder.Cellular.pathIntegral T.scan.value p :=
  Folder.Cellular.heatQuantizedShellTorsion_loop_eq_scan T p

end HeatQuantizedTorsion
end Cellular
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=011860aab9b4d75b851a4679fbf26a25698edfad046fcc5df3daf077498cb63b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeatQuantizedTorsion/Variant182108dbec4724c76535a9a1358c9a744dd486086ffd3a41d4ff6045ec036877.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
