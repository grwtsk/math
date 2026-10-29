# Order Krull Dimension Strict Series — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60eb76ac051aa3ba6b216bcae549255fb606bca7` · SHA-256 `a349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang, Fangming Li
-/

import Mathlib.Order.Monotone.Basic
import Mathlib.Order.CompleteLattice
import Mathlib.Order.WithBot
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Nat.Lattice
import Mathlib.Logic.Equiv.Fin

/-!
# Krull dimension of a preordered set

If `α` is a preordered set, then `krullDim α` is defined to be `sup {n | a₀ < a₁ < ... < aₙ}`.
In case that `α` is empty, then its Krull dimension is defined to be negative infinity; if the
length of all series `a₀ < a₁ < ... < aₙ` is unbounded, then its Krull dimension is defined to
be positive infinity.

For `a : α`, its height is defined to be the krull dimension of the subset `(-∞, a]` while its
coheight is defined to be the krull dimension of `[a, +∞)`.

## Implementation notes
Krull dimensions are defined to take value in `WithBot (WithTop ℕ)` so that `(-∞) + (+∞)` is
also negative infinity. This is because we want Krull dimensions to be additive with respect
to product of varieties so that `-∞` being the Krull dimension of empty variety is equal to
sum of `-∞` and the Krull dimension of any other varieties.
-/

variable (α : Type*) [Preorder α]

/--
For a preordered set `(α, <)`, a strict series of `α` of length `n` is a strictly monotonic function
`Fin (n + 1) → α`, i.e. `a₀ < a₁ < ... < aₙ` with `aᵢ : α`.
-/
structure StrictSeries where
  /-- the number of inequalities in the series -/
  length : ℕ
  /-- the underlying function of a strict series -/
  toFun : Fin (length + 1) → α
  /-- the underlying function should be strictly monotonic -/
  StrictMono : StrictMono toFun

namespace StrictSeries

instance : CoeFun (StrictSeries α) (fun x ↦ Fin (x.length + 1) → α) :=
  { coe := StrictSeries.toFun }

instance : Preorder (StrictSeries α) :=
  Preorder.lift StrictSeries.length

variable {α}

lemma le_def (x y : StrictSeries α) : x ≤ y ↔ x.length ≤ y.length :=
  Iff.rfl

lemma lt_def (x y : StrictSeries α) : x < y ↔ x.length < y.length :=
  Iff.rfl

/--
In a preordered set `α`, each term of `α` gives a strict series with the right most index to be 0.
-/
@[simps!] def singleton (a : α) : StrictSeries α :=
  { length := 0
    toFun := fun _ ↦ a
    StrictMono := fun _ _ h ↦ (ne_of_lt h $ @Subsingleton.elim _ subsingleton_fin_one _ _).elim }

instance [IsEmpty α] : IsEmpty (StrictSeries α) :=
  { false := fun x ↦ IsEmpty.false (x 0) }

instance [Inhabited α] : Inhabited (StrictSeries α) :=
  { default := singleton default }

instance [Nonempty α] : Nonempty (StrictSeries α) :=
  Nonempty.map singleton inferInstance

lemma top_len_unique [OrderTop (StrictSeries α)] (p : StrictSeries α) (hp : IsTop p) :
    p.length = (⊤ : StrictSeries α).length :=
  le_antisymm (@le_top (StrictSeries α) _ _ _) (hp ⊤)

lemma top_len_unique' (H1 H2 : OrderTop (StrictSeries α)) : H1.top.length = H2.top.length :=
  le_antisymm (H2.le_top H1.top) (H1.le_top H2.top)

end StrictSeries

/--
Krull dimension of a preordered set `α` is the supremum of the right most index of all strict
series of `α`. If there is no strict series `a₀ < a₁ < ... < aₙ` in `α`, then its Krull dimension
is defined to be negative infinity; if the length of `a₀ < a₁ < ... < aₙ` is unbounded, its Krull
dimension is defined to be positive infinity.
-/
noncomputable def krullDim : WithBot (WithTop ℕ) :=
  ⨆ (p : StrictSeries α), p.length

/--
Height of an element `a` of a preordered set `α` is the Krull dimension of the subset `(-∞, a]`
-/
noncomputable def height (a : α) : WithBot (WithTop ℕ) := krullDim (Set.Iic a)

/--
Coheight of an element `a` of a pre-ordered set `α` is the Krull dimension of the subset `[a, +∞)`
-/
noncomputable def coheight (a : α) : WithBot (WithTop ℕ) := krullDim (Set.Ici a)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb277ced53e50077a9b80aef21a1a3525cd2394feaa6e579ffc6233065f895e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
