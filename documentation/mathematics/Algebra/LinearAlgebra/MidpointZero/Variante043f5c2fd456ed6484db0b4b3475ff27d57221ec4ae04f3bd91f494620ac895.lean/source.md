# Complete source: GRWTSK.Algebra.LinearAlgebra.MidpointZero.Variante043f5c2fd456ed6484db0b4b3475ff27d57221ec4ae04f3bd91f494620ac895

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d6c7e4ad6068b1930fe3b9987cbd1e245dbf334` · SHA-256 `e043f5c2fd456ed6484db0b4b3475ff27d57221ec4ae04f3bd91f494620ac895`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Algebra.CharP.Invertible
public import Mathlib.LinearAlgebra.AffineSpace.Midpoint

/-!
# Midpoint of a segment for characteristic zero

We collect lemmas that require that the underlying ring has characteristic zero.

## Tags

midpoint
-/

public section


open AffineMap AffineEquiv

theorem lineMap_inv_two {R : Type*} {V P : Type*} [DivisionRing R] [CharZero R] [AddCommGroup V]
    [Module R V] [AddTorsor V P] (a b : P) : lineMap a b (2⁻¹ : R) = midpoint R a b :=
  rfl

theorem lineMap_one_half {R : Type*} {V P : Type*} [DivisionRing R] [CharZero R] [AddCommGroup V]
    [Module R V] [AddTorsor V P] (a b : P) : lineMap a b (1 / 2 : R) = midpoint R a b := by
  rw [one_div, lineMap_inv_two]

theorem homothety_invOf_two {R : Type*} {V P : Type*} [CommRing R] [Invertible (2 : R)]
    [AddCommGroup V] [Module R V] [AddTorsor V P] (a b : P) :
    homothety a (⅟2 : R) b = midpoint R a b :=
  rfl

theorem homothety_inv_two {k : Type*} {V P : Type*} [Field k] [CharZero k] [AddCommGroup V]
    [Module k V] [AddTorsor V P] (a b : P) : homothety a (2⁻¹ : k) b = midpoint k a b :=
  rfl

theorem homothety_one_half {k : Type*} {V P : Type*} [Field k] [CharZero k] [AddCommGroup V]
    [Module k V] [AddTorsor V P] (a b : P) : homothety a (1 / 2 : k) b = midpoint k a b := by
  rw [one_div, homothety_inv_two]

@[simp]
theorem pi_midpoint_apply {k ι : Type*} {V : ι → Type*} {P : ι → Type*} [Ring k]
    [Invertible (2 : k)] [∀ i, AddCommGroup (V i)] [∀ i, Module k (V i)]
    [∀ i, AddTorsor (V i) (P i)] (f g : ∀ i, P i) (i : ι) :
    midpoint k f g i = midpoint k (f i) (g i) :=
  rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65efa020c4259c81aa2323545f529708c28f4cbe9387e801ead2e68a4d7fe57d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MidpointZero/Variante043f5c2fd456ed6484db0b4b3475ff27d57221ec4ae04f3bd91f494620ac895.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
