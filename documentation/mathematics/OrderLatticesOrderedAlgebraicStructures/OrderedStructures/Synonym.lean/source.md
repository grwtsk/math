# Synonym — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1ae0a58d0074e9b708b27558d90ee809a8a1617` · SHA-256 `915523c0a111a475d67d2ef35a7e343de551f8ae6dc96ebebdc8ae569f618d9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Yaël Dillies
-/
import Mathlib.Algebra.Order.Group.Synonym
import Mathlib.Algebra.Ring.Defs

/-!
# Ring structure on the order type synonyms

Transfer algebraic instances from `R` to `Rᵒᵈ` and `Lex R`.
-/


variable {R : Type*}

/-! ### Order dual -/


instance [h : Distrib R] : Distrib Rᵒᵈ := h

instance [Mul R] [Add R] [h : LeftDistribClass R] : LeftDistribClass Rᵒᵈ := h

instance [Mul R] [Add R] [h : RightDistribClass R] : RightDistribClass Rᵒᵈ := h

instance [h : NonUnitalNonAssocSemiring R] : NonUnitalNonAssocSemiring Rᵒᵈ := h

instance [h : NonUnitalSemiring R] : NonUnitalSemiring Rᵒᵈ := h

instance [h : NonAssocSemiring R] : NonAssocSemiring Rᵒᵈ := h

instance [h : Semiring R] : Semiring Rᵒᵈ := h

instance [h : NonUnitalCommSemiring R] : NonUnitalCommSemiring Rᵒᵈ := h

instance [h : CommSemiring R] : CommSemiring Rᵒᵈ := h

instance [Mul R] [h : HasDistribNeg R] : HasDistribNeg Rᵒᵈ := h

instance [h : NonUnitalNonAssocRing R] : NonUnitalNonAssocRing Rᵒᵈ := h

instance [h : NonUnitalRing R] : NonUnitalRing Rᵒᵈ := h

instance [h : NonAssocRing R] : NonAssocRing Rᵒᵈ := h

instance [h : Ring R] : Ring Rᵒᵈ := h

instance [h : NonUnitalCommRing R] : NonUnitalCommRing Rᵒᵈ := h

instance [h : CommRing R] : CommRing Rᵒᵈ := h

instance [Ring R] [h : IsDomain R] : IsDomain Rᵒᵈ := h

/-! ### Lexicographical order -/


instance [h : Distrib R] : Distrib (Lex R) := h

instance [Mul R] [Add R] [h : LeftDistribClass R] : LeftDistribClass (Lex R) := h

instance [Mul R] [Add R] [h : RightDistribClass R] : RightDistribClass (Lex R) := h

instance [h : NonUnitalNonAssocSemiring R] : NonUnitalNonAssocSemiring (Lex R) := h

instance [h : NonUnitalSemiring R] : NonUnitalSemiring (Lex R) := h

instance [h : NonAssocSemiring R] : NonAssocSemiring (Lex R) := h

instance [h : Semiring R] : Semiring (Lex R) := h

instance [h : NonUnitalCommSemiring R] : NonUnitalCommSemiring (Lex R) := h

instance [h : CommSemiring R] : CommSemiring (Lex R) := h

instance [Mul R] [h : HasDistribNeg R] : HasDistribNeg (Lex R) := h

instance [h : NonUnitalNonAssocRing R] : NonUnitalNonAssocRing (Lex R) := h

instance [h : NonUnitalRing R] : NonUnitalRing (Lex R) := h

instance [h : NonAssocRing R] : NonAssocRing (Lex R) := h

instance [h : Ring R] : Ring (Lex R) := h

instance [h : NonUnitalCommRing R] : NonUnitalCommRing (Lex R) := h

instance [h : CommRing R] : CommRing (Lex R) := h

instance [Ring R] [h : IsDomain R] : IsDomain (Lex R) := h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=763b5b6a0e58bfe9484054898817b6b4ca4e269e2873ed7cb2a343cde7b10463 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Synonym/Variant915523c0a111a475d67d2ef35a7e343de551f8ae6dc96ebebdc8ae569f618d9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
