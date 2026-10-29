# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatQuantizedTorsion.Varianteeb3d12bc014d7817aca1744f55f803904d9ea8100941c003a4ec0c1fd015309

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52d565bc09e384036b19960de0fa4ffe8caadb78` · SHA-256 `eeb3d12bc014d7817aca1744f55f803904d9ea8100941c003a4ec0c1fd015309`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Cellular.ShellCohomology

/-!
# Folder.Cellular.HeatQuantizedTorsion

Radiation role: phase-connection
BinaryMatrix spine: This module turns BinaryMatrix-radiated cell data into finite phase, scan, or connection data.
Ontology: cellular.heat_quantized_torsion
Pivot role: none
Zero typology: shell
Contract boundary: proved
Composite stack role: phase
-/


namespace Folder
namespace Cellular

structure HeatQuantizedShellTorsion
    (d k m : Nat) where
  field : CubeSpectralField d k
  heat : CubeHeatFlow d k
  time : NNReal
  quantizer : PhaseQuantizer m
  scan : ScanTwist d k m

namespace HeatQuantizedShellTorsion

def q
    (T : HeatQuantizedShellTorsion d k m) :
    Cochain0 d k m :=
  quantizedField T.quantizer (T.heat.heat T.time T.field)

def connection
    (T : HeatQuantizedShellTorsion d k m) :
    Cochain1 d k m :=
  phaseConnection T.q T.scan

def torsionClass
    (T : HeatQuantizedShellTorsion d k m) :
    ShellTorsionClass d k m :=
  ⟨T.connection⟩

theorem heatQuantizedShellTorsion_loop_eq_scan
    (T : HeatQuantizedShellTorsion d k m)
    (p : EdgePath d k x x) :
    pathIntegral T.connection p =
      pathIntegral T.scan.value p :=
  phaseConnection_loopIntegral_eq_scan T.q T.scan p

end HeatQuantizedShellTorsion

export HeatQuantizedShellTorsion
  (q connection torsionClass heatQuantizedShellTorsion_loop_eq_scan)

end Cellular
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b8f0cf04ef7a8f6d88ee30f5c71a2f6b9f60a06ada9dd866a1f94e4249c4eed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeatQuantizedTorsion/Varianteeb3d12bc014d7817aca1744f55f803904d9ea8100941c003a4ec0c1fd015309.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
