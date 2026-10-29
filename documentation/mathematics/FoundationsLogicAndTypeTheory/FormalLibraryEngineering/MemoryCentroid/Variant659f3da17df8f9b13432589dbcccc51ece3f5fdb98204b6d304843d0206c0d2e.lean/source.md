# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MemoryCentroid.Variant659f3da17df8f9b13432589dbcccc51ece3f5fdb98204b6d304843d0206c0d2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3892107b82994a1211651e1150617694e4bb541d` · SHA-256 `659f3da17df8f9b13432589dbcccc51ece3f5fdb98204b6d304843d0206c0d2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.BoundaryCanonical

set_option autoImplicit false

namespace Think.Pipeline.Center.MemoryCentroid

structure MemoryCentroidState where
  coreTreeNode : Nat
  innerHeat : Int
  bridgeHeat : Int
  outerHeat : Int
  centroidDeclared : Bool
  normalizedLaplacianDeclared : Bool
deriving DecidableEq, Repr

def defaultMemoryCentroidState : MemoryCentroidState :=
  { coreTreeNode := 30
    innerHeat := 1
    bridgeHeat := 1
    outerHeat := 1
    centroidDeclared := true
    normalizedLaplacianDeclared := true }

def centroidReady (s : MemoryCentroidState) : Prop :=
  s.centroidDeclared = true ∧ s.normalizedLaplacianDeclared = true

theorem default_centroid_ready :
    centroidReady defaultMemoryCentroidState := by
  exact ⟨rfl, rfl⟩

end Think.Pipeline.Center.MemoryCentroid
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=113d00520be189962a09a812b9eac08eabaae9258afccce260aea5ec626518bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryCentroid/Variant659f3da17df8f9b13432589dbcccc51ece3f5fdb98204b6d304843d0206c0d2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
