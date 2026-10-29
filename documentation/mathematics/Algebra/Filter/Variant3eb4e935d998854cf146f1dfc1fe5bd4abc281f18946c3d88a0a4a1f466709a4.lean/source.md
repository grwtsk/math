# Complete source: GRWTSK.Algebra.Filter.Variant3eb4e935d998854cf146f1dfc1fe5bd4abc281f18946c3d88a0a4a1f466709a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95540b392f9d3955c27b48fe9b742e5ec417670c` · SHA-256 `3eb4e935d998854cf146f1dfc1fe5bd4abc281f18946c3d88a0a4a1f466709a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Mario Carneiro, Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kevin Buzzard
-/
import Mathlib.Order.Filter.EventuallyConst
import Mathlib.RingTheory.Noetherian.Defs

/-!
# Noetherian modules and finiteness of chains

## Main results

Let `R` be a ring and let `M` be an `R`-module.

* `eventuallyConst_of_isNoetherian`: an ascending chain of submodules in a
  Noetherian module is eventually constant

## References

* [M. F. Atiyah and I. G. Macdonald, *Introduction to commutative algebra*][atiyah-macdonald]
* [P. Samuel, *Algebraic Theory of Numbers*][samuel1967]

## Tags

Noetherian, noetherian, Noetherian ring, Noetherian module, noetherian ring, noetherian module

-/


open Set Filter Pointwise

open IsNoetherian Submodule Function

section Semiring

variable {R M : Type*} [Semiring R] [AddCommMonoid M] [Module R M]

theorem eventuallyConst_of_isNoetherian [IsNoetherian R M] (f : ℕ →o Submodule R M) :
    atTop.EventuallyConst f := by
  simp_rw [eventuallyConst_atTop, eq_comm]
  exact (monotone_stabilizes_iff_noetherian.mpr inferInstance) f

end Semiring
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4224603f124d76ced7fd6d5d70ceae30cb4d8e80eabae64a2326b02b4d3e76f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Filter/Variant3eb4e935d998854cf146f1dfc1fe5bd4abc281f18946c3d88a0a4a1f466709a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
