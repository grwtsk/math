# Star Big Operators — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `359f9effa58528a8b582a562ea6f3c86bfba92ae` · SHA-256 `a407d63ba89013b9686094b95090ba28d60350732e2b039e8b3c252e95624fc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs

/-! # Big-operators lemmas about `star` algebraic operations

These results are kept separate from `Algebra.Star.Basic` to avoid it needing to import `Finset`.
-/


variable {R : Type*}

@[simp]
theorem star_prod [CommMonoid R] [StarMul R] {α : Type*} (s : Finset α) (f : α → R) :
    star (∏ x ∈ s, f x) = ∏ x ∈ s, star (f x) := map_prod (starMulAut : R ≃* R) _ _

@[simp]
theorem star_sum [AddCommMonoid R] [StarAddMonoid R] {α : Type*} (s : Finset α) (f : α → R) :
    star (∑ x ∈ s, f x) = ∑ x ∈ s, star (f x) := map_sum (starAddEquiv : R ≃+ R) _ _
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bfcb1a13f6937004e450d78a1c6609eca95cac17b1583e0fa93239e1ea2892d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/BigOperators/Varianta407d63ba89013b9686094b95090ba28d60350732e2b039e8b3c252e95624fc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
