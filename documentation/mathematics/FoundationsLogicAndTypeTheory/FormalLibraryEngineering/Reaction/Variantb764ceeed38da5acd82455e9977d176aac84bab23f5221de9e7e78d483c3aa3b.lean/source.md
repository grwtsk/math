# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reaction.Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `830db30fafa058e475125e51dd52fcfad747f0a6` · SHA-256 `b764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Fabric.Simplicial

/-! # Composable reactions and strict local-patch boundaries -/

namespace Mathematics.Fabric

universe u v

structure Reaction (State : Type u) where
  apply : State → State

namespace Reaction

def identity : Reaction State := ⟨id⟩

def comp (after before : Reaction State) : Reaction State :=
  ⟨after.apply ∘ before.apply⟩

@[simp] theorem id_comp (reaction : Reaction State) :
    comp identity reaction = reaction := by
  cases reaction
  rfl

@[simp] theorem comp_id (reaction : Reaction State) :
    comp reaction identity = reaction := by
  cases reaction
  rfl

theorem comp_assoc (first second third : Reaction State) :
    comp (comp third second) first = comp third (comp second first) := by
  cases first
  cases second
  cases third
  rfl

end Reaction

/-- Local mutation is executable only with an exact boundary witness. -/
structure LocalPatch (State : Type u) (Boundary : Type v) where
  before : State
  after : State
  expectedBoundary : Boundary
  observedBoundary : Boundary
  boundaryValidated : observedBoundary = expectedBoundary
  globalExtensionCapability : Bool

end Mathematics.Fabric
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=efda460812f1189db2e5f1e88763a22b320ee05da6946db0c5270730374a432d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
