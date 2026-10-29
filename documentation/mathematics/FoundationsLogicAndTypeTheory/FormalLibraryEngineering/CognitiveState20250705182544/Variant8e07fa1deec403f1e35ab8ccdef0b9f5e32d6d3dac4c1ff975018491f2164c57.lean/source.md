# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CognitiveState20250705182544.Variant8e07fa1deec403f1e35ab8ccdef0b9f5e32d6d3dac4c1ff975018491f2164c57

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bab0cc8569666a1e5d167607c604dff96936d41` · SHA-256 `8e07fa1deec403f1e35ab8ccdef0b9f5e32d6d3dac4c1ff975018491f2164c57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- lean/cognition/Core/CognitiveState.lean
import cognition.Core.CognitiveMode
import cognition.Core.FlowRegion

namespace Cognition.Core

/--
`CognitiveState` tracks the runtime mental posture of the user or agent.

This structure is pure and updated via `applyEvent`.
-/
structure CognitiveState where
  /-- High-level cognitive mode (focus, reflect, plan, etc.). -/
  mode : CognitiveMode
  /-- Flow region (underloaded, optimal, overloaded). -/
  flow : FlowRegion
  /-- Milliseconds since last input. -/
  pauseMs : Nat
  /-- Character length of the most recent prompt. -/
  lastPromptLen : Nat
  /-- Recent error count (e.g. backspaces). -/
  recentErrorCount : Nat
  /-- Valence score ∈ [-1.0, 1.0] representing affect polarity. -/
  valence : Float
  /-- Confidence score ∈ [0.0, 1.0] representing user certainty. -/
  confidence : Float
  deriving Repr, DecidableEq

/-- Default (neutral) state: Focus mode, Optimal flow, zeroed metrics. -/
def CognitiveState.default : CognitiveState :=
  {
    mode := CognitiveMode.focus,
    flow := FlowRegion.optimal,
    pauseMs := 0,
    lastPromptLen := 0,
    recentErrorCount := 0,
    valence := 0.0,
    confidence := 0.5
  }

instance : Inhabited CognitiveState := ⟨CognitiveState.default⟩

end Cognition.Core
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f8e6b8d00bf78424d9cb5e86b85f44400b1fb53067d4c41ba55c19d13fe15b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveState20250705182544/Variant8e07fa1deec403f1e35ab8ccdef0b9f5e32d6d3dac4c1ff975018491f2164c57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
