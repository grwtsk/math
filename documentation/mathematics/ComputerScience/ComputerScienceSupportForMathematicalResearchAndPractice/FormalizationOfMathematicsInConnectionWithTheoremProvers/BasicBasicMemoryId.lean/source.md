# Basic Basic Memory Id — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3610b18a2512cba36f9d9c370823e6d982267162` · SHA-256 `b049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Pipeline.PhaseOrder

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected

abbrev MemoryId := Nat
abbrev RepoPtr := String
abbrev ConversationPtr := String
abbrev ToolPtr := String
abbrev WorkflowPtr := String

inductive TimeScope where
  | unavailable
  | instant (time : Nat)
  | interval (startTime endTime : Nat)
deriving DecidableEq, Repr

inductive SourcePointer where
  | repo (ptr : RepoPtr)
  | conversation (ptr : ConversationPtr)
  | tool (ptr : ToolPtr)
  | workflow (ptr : WorkflowPtr)
deriving DecidableEq, Repr

def SourcePointer.label : SourcePointer -> String
  | .repo ptr => ptr
  | .conversation ptr => ptr
  | .tool ptr => ptr
  | .workflow ptr => ptr

structure FiniteRunBounds where
  vertexBound : Nat
  edgeBound : Nat
  witnessBound : Nat
  timeBound : Nat
deriving DecidableEq, Repr

def defaultFiniteRunBounds : FiniteRunBounds :=
  { vertexBound := 512
    edgeBound := 2048
    witnessBound := 64
    timeBound := 4096 }

def preservedCenterIndex : Nat :=
  30

def preservedPhaseCount : Nat :=
  61

theorem preservedPhaseCount_matches_spine :
    Think.allPhaseIds.length = preservedPhaseCount := by
  rfl

theorem preservedCenterIndex_is_30 :
    preservedCenterIndex = 30 := by
  rfl

end Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6af78a210a08ece6449292c352d691887b397403bd48a19bedfe78098a7a97e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
