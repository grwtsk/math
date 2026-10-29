# Finset Builder — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dadd88cf2edeaa26707392d03246f157abd2a614` · SHA-256 `cd190e7bef3b4c6e23330e7ba74d8c99b452749abb9fe07e91af781ffbde89c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Order.Interval.Finset.Basic

/-!
# Examples of finset builder notation
-/

open Finset

variable {α : Type*} (p : α → Prop) [DecidablePred p]

/-! ## `Data.Finset.Basic` -/

example (s : Finset α) : {x ∈ s | p x} = s.filter p := rfl

/-! ## `Data.Fintype.Basic` -/

section Fintype
variable [Fintype α]

example : ({x | p x} : Finset α) = univ.filter p := rfl
example : ({x : α | p x} : Finset α) = univ.filter p := rfl

-- If the type of `s` (or the entire expression) is `Finset ?α`, elaborate as `Finset`;
-- otherwise as `Set`
example (s : Finset α) : {x ∈ s | p x} = s.filter p := rfl
example (s : Finset α) : ({x ∈ s | p x} : Set α) = setOf fun x => x ∈ s ∧ p x := rfl
example (s : Finset α) : {x ∈ (s : Set α) | p x} = setOf fun x => x ∈ s ∧ p x := rfl

-- elaborate as `Set` if no expected type present
example : {x | p x} = setOf p := rfl
example : {x : α | p x} = setOf p := rfl

variable [DecidableEq α]

example (s : Finset α) : {x ∉ s | p x} = sᶜ.filter p := rfl
example (a : α) : ({x ≠ a | p x} : Finset α) = ({a}ᶜ : Finset α).filter p := rfl

-- elaborate as `Set` if the `s` or the expected type is not `Finset ?α`
example (s : Set α) : {x ∉ s | p x} = setOf fun x => x ∉ s ∧ p x := rfl
example (a : α) : {x ≠ a | p x} = setOf fun x => x ≠ a ∧ p x := rfl

end Fintype

/-! ## `Order.Interval.Finset.Basic` -/

section LocallyFiniteOrderBot
variable [Preorder α] [LocallyFiniteOrderBot α]

example (a : α) : ({x ≤ a | p x} : Finset α) = (Iic a).filter p := rfl
example (a : α) : ({x < a | p x} : Finset α) = (Iio a).filter p := rfl

-- elaborate as `Set` if the expected type is not `Finset ?α`
example (a : α) : {x ≤ a | p x} = setOf fun x => x ≤ a ∧ p x := rfl
example (a : α) : {x < a | p x} = setOf fun x => x < a ∧ p x := rfl

end LocallyFiniteOrderBot

section LocallyFiniteOrderTop
variable [Preorder α] [LocallyFiniteOrderTop α]

example (a : α) : ({x ≥ a | p x} : Finset α) = (Ici a).filter p := rfl
example (a : α) : ({x > a | p x} : Finset α) = (Ioi a).filter p := rfl

-- elaborate as `Set` if the expected type is not `Finset ?α`
example (a : α) : {x ≥ a | p x} = setOf fun x => x ≥ a ∧ p x := rfl
example (a : α) : {x > a | p x} = setOf fun x => x > a ∧ p x := rfl

end LocallyFiniteOrderTop

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1feef8bd5cfafc6b9e2cd707bd5b5f05c1d03d81c072ff41d43ecfc39b34bc88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/FinsetBuilder/Variantcd190e7bef3b4c6e23330e7ba74d8c99b452749abb9fe07e91af781ffbde89c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
