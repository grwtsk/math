# Regular Pow Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1e259ecea7808bf01d546673cf93cf021cda320` · SHA-256 `15c102219b22f8a4cfffadc24a8f998f9b600d0f4eda496be984dde472f4fe4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
module

public import Mathlib.Algebra.BigOperators.Group.Finset.Defs
public import Mathlib.Algebra.Regular.Basic

/-!
# Product of regular elements

## TODO

Move to `Mathlib/Algebra/BigOperators/Group/Finset/Basic.lean`?
-/

public section


variable {R : Type*} {a : R}

section CommMonoid

variable {ι R : Type*} [CommMonoid R] {s : Finset ι} {f : ι → R}

lemma IsLeftRegular.prod (h : ∀ i ∈ s, IsLeftRegular (f i)) :
    IsLeftRegular (∏ i ∈ s, f i) :=
  s.prod_induction _ _ (@IsLeftRegular.mul R _) isRegular_one.left h

lemma IsRightRegular.prod (h : ∀ i ∈ s, IsRightRegular (f i)) :
    IsRightRegular (∏ i ∈ s, f i) :=
  s.prod_induction _ _ (@IsRightRegular.mul R _) isRegular_one.right h

lemma IsRegular.prod (h : ∀ i ∈ s, IsRegular (f i)) :
    IsRegular (∏ i ∈ s, f i) :=
  ⟨IsLeftRegular.prod fun a ha ↦ (h a ha).left,
   IsRightRegular.prod fun a ha ↦ (h a ha).right⟩

end CommMonoid
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b3c9b2c410130a6f4c9052de2f871e9f07e27dda3a88c2a282cb9b543d5bd29 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Pow/Variant15c102219b22f8a4cfffadc24a8f998f9b600d0f4eda496be984dde472f4fe4f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
