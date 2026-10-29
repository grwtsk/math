# Phase Sweeper Spec Vec2 Mod — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56cbc642b4f1cd9a6e4a0640ff5a295fbe1926c5` · SHA-256 `87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Shader.BijectiveSplit
import Folder.Cellular.Phase

/-!
# Folder.Shader.PhaseSweeperSpec

Radiation role: shader-spec
BinaryMatrix spine: This module specifies the runtime phase sweeper as arithmetic over visible and residual data, not as a BinaryMatrix proof engine.
Ontology:
- shader.phase_sweeper
- shader.bijective_split
Pivot role: none
Zero typology: shell
Contract boundary: proved
Composite stack role: phase
-/

namespace Folder
namespace Shader

structure Vec2Mod (m : Nat) where
  x : ZMod m
  y : ZMod m

def symplecticPhase
    {m : Nat}
    (P Q : Vec2Mod m) : ZMod m :=
  P.x * Q.y - P.y * Q.x

structure PhaseSweepInput (m : Nat) where
  P : Vec2Mod m
  Q : Vec2Mod m
  rawAsNat : Nat

structure PhaseSweepOutput where
  visible_phase : Nat
  residual_fiber : Nat
  quant_step : Nat

def phaseSweepSplit
    (raw step : Nat)
    (hstep : 0 < step) :
    PhaseSweepOutput :=
  let S := split raw step hstep
  {
    visible_phase := S.visible
    residual_fiber := S.residual
    quant_step := step
  }

def phaseSweepReconstruct
    (O : PhaseSweepOutput) : Nat :=
  O.visible_phase * O.quant_step + O.residual_fiber

theorem phaseSweep_split_reconstruct
    (raw step : Nat)
    (hstep : 0 < step) :
    phaseSweepReconstruct (phaseSweepSplit raw step hstep) = raw := by
  simpa [phaseSweepReconstruct, phaseSweepSplit, reconstruct, split]
    using reconstruct_split raw step hstep

end Shader
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b6098d0feca7e706022dfba6ed9ba00d987dd080c63cbfd9b528c4791cd7a0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
