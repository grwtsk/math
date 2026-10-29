# Derive Shrinkable Test — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2aa335821f9e5acde929261be6323f9773e14772` · SHA-256 `69917bca6e1d3f62f4f587cc84e1166a3f9e79ca87bf08f070e02394c922b4c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Plausible

open Plausible

namespace ShrinkableTests

-- Simple enum type
inductive Color where
  | Red | Green | Blue
  deriving Repr, Shrinkable

-- Binary tree (recursive, with non-recursive field)
inductive Tree where
  | Leaf : Tree
  | Node : Nat → Tree → Tree → Tree
  deriving Repr, Shrinkable

-- Parameterized type
inductive ShrinkList (α : Type) where
  | Nil : ShrinkList α
  | Cons : α → ShrinkList α → ShrinkList α
  deriving Repr, Shrinkable

-- Structure (single-constructor inductive)
structure Point where
  x : Nat
  y : Nat
  deriving Repr, Shrinkable

-- Nullary constructors shrink to []
/-- info: [] -/
#guard_msgs in
#eval Shrinkable.shrink Color.Red

/-- info: [] -/
#guard_msgs in
#eval Shrinkable.shrink Tree.Leaf

-- Shrinking a Node yields subterms (Leaf, Leaf) + argument shrinks (shrinking the Nat)
/--
info: [ShrinkableTests.Tree.Leaf,
 ShrinkableTests.Tree.Leaf,
 ShrinkableTests.Tree.Node 2 (ShrinkableTests.Tree.Leaf) (ShrinkableTests.Tree.Leaf),
 ShrinkableTests.Tree.Node 1 (ShrinkableTests.Tree.Leaf) (ShrinkableTests.Tree.Leaf),
 ShrinkableTests.Tree.Node 0 (ShrinkableTests.Tree.Leaf) (ShrinkableTests.Tree.Leaf)]
-/
#guard_msgs in
#eval Shrinkable.shrink (Tree.Node 5 Tree.Leaf Tree.Leaf)

-- Shrinking a parameterized list
/--
info: [ShrinkableTests.ShrinkList.Cons 1 (ShrinkableTests.ShrinkList.Nil),
 ShrinkableTests.ShrinkList.Cons 1 (ShrinkableTests.ShrinkList.Cons 1 (ShrinkableTests.ShrinkList.Nil)),
 ShrinkableTests.ShrinkList.Cons 0 (ShrinkableTests.ShrinkList.Cons 1 (ShrinkableTests.ShrinkList.Nil)),
 ShrinkableTests.ShrinkList.Cons 3 (ShrinkableTests.ShrinkList.Nil),
 ShrinkableTests.ShrinkList.Cons 3 (ShrinkableTests.ShrinkList.Cons 0 (ShrinkableTests.ShrinkList.Nil))]
-/
#guard_msgs in
#eval Shrinkable.shrink (ShrinkList.Cons 3 (ShrinkList.Cons 1 ShrinkList.Nil))

-- Shrinking a structure
/--
info: [{ x := 5, y := 20 },
 { x := 2, y := 20 },
 { x := 1, y := 20 },
 { x := 0, y := 20 },
 { x := 10, y := 10 },
 { x := 10, y := 5 },
 { x := 10, y := 2 },
 { x := 10, y := 1 },
 { x := 10, y := 0 }]
-/
#guard_msgs in
#eval Shrinkable.shrink (Point.mk 10 20)

inductive Vec : Nat → Type where
  | nil : Vec 0
  | cons (x : Nat) (xs : Vec n) : Vec (n + 1)

/-- error: Cannot derive instance of Shrinkable typeclass for indexed inductive type 'ShrinkableTests.Vec' -/
#guard_msgs in
deriving instance Shrinkable for Vec

end ShrinkableTests
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=898779ee290b7ad34e30eb16b7ead5e5155628ae5c1d2f6a2f9db6c7a308a980 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkableTest/Variant69917bca6e1d3f62f4f587cc84e1166a3f9e79ca87bf08f070e02394c922b4c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
