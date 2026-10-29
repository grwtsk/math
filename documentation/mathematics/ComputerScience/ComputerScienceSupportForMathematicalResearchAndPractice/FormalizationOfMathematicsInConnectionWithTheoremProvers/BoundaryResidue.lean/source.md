# Boundary Residue — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b7954c49587a50ffda1efddccf4cd69ba677df0` · SHA-256 `686f558800e722c71ce1da3d363e172f649680d800d97dfc1a9a2a9ae518804f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.InnerOuter

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure BoundaryResidue where
  treeNode : Nat
  innerCoeff : Nat -> Int
  bridgeCoeff : Nat -> Int
  outerCoeff : Nat -> Int
  targetCoeff : Nat -> Int

def BoundaryResidue.value (R : BoundaryResidue) (n : Nat) : Int :=
  R.targetCoeff n - R.innerCoeff n - R.bridgeCoeff n - R.outerCoeff n

def BoundaryResidue.resolvedAt (R : BoundaryResidue) (n : Nat) : Prop :=
  R.value n = 0

def BoundaryResidue.totalValue (R : BoundaryResidue) (n : Nat) : Int :=
  R.value n + R.value n

theorem boundaryResidue_zero_resolved
    (R : BoundaryResidue) (n : Nat)
    (h : R.targetCoeff n = R.innerCoeff n + R.bridgeCoeff n + R.outerCoeff n) :
    R.resolvedAt n := by
  unfold BoundaryResidue.resolvedAt BoundaryResidue.value
  omega

structure ModularMemoryForm where
  vertex : MemoryVertex
  k : Nat
  evenWeight : k % 2 = 0
  qCoeff : Nat -> Int

def ModularMemoryForm.boundarySymmetric
    (inner outer : ModularMemoryForm) : Prop :=
  inner.k = outer.k ∧
    inner.vertex.residueClass = outer.vertex.residueClass

end Think.RadoProjectedModularHeatflow.MemoryCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a577b05c190b0a43d1c8e8f2c5e0ac06a8f0de43d64fa0f507a5f11c2f8c603 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryResidue/Variant686f558800e722c71ce1da3d363e172f649680d800d97dfc1a9a2a9ae518804f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
