# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inhabit.Variant2ccb0aea0ded9ce46c2835c718a9f908d998605e7add8c0da9a8adb07547692a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `009ff821059760666f7501a1c0078b77059adf8b` · SHA-256 `2ccb0aea0ded9ce46c2835c718a9f908d998605e7add8c0da9a8adb07547692a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Inhabit

namespace InhabitTests

universe u

-- Most basic test (prop)
noncomputable example {p : Prop} [Nonempty p] : Inhabited p := by
  inhabit p
  assumption

-- Most basic test (nonprop)
noncomputable example {α : Type} [Nonempty α] : Inhabited α := by
  inhabit α
  assumption

-- Confirms inhabit can handle higher type universes
noncomputable example {α : Type 3} [Nonempty α] : Inhabited α := by
  inhabit α
  assumption

-- Confirms that inhabit can find Nonempty instances even if they're in the local context
noncomputable example {α : Type} : Nonempty α → Inhabited α := by
  intro nonempty_α
  inhabit α
  assumption

-- Confirms that inhabit assigns to the correct name when given one
noncomputable example {p : Prop} [Nonempty p] : Inhabited p := by
  inhabit p_inhabited : p
  exact p_inhabited

-- Test for the issue that required generalizing `nonempty_to_inhabited` to `Sort`.
section Unique

structure Unique (α : Sort u) extends Inhabited α where
  uniq : ∀ a : α, a = default

/-- Construct `unique` from `inhabited` and `subsingleton`. Making this an instance would create
a loop in the class inheritance graph. -/
abbrev Unique.mk' (α : Sort u) [h₁ : Inhabited α] [Subsingleton α] : Unique α :=
  { h₁ with uniq := fun _ => Subsingleton.elim _ _ }

noncomputable example {α : Sort u} [Subsingleton α] [Nonempty α] : Unique α := by
  inhabit α
  exact Unique.mk' α

end Unique

axiom α : Type
axiom a : α
instance : Nonempty α := Nonempty.intro a

-- Confirms that inhabit can find Nonempty instances that aren't in the local context
noncomputable example : Inhabited α := by
  inhabit α
  assumption

end InhabitTests
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8be57a5e9002288bd3e95a43c440286d1534c0437345805c596a79102e95f69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inhabit/Variant2ccb0aea0ded9ce46c2835c718a9f908d998605e7add8c0da9a8adb07547692a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
