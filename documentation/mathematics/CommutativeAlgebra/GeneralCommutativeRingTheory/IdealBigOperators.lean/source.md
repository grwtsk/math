# Ideal Big Operators — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1f292757e8160216e778627c38d7e18363adb7e` · SHA-256 `fe66fe7023aaa39a72c15b22009a939db62057e724bff842f8bcba85503410d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Chris Hughes, Mario Carneiro
-/
import Mathlib.Algebra.Module.Submodule.Basic
import Mathlib.RingTheory.Ideal.Defs

/-!

# Big operators for ideals

This contains some results on the big operators `∑` and `∏` interacting with the `Ideal` type.
-/


universe u v w

variable {α : Type u} {β : Type v} {F : Type w}

namespace Ideal

variable [Semiring α] (I : Ideal α) {a b : α}

theorem sum_mem (I : Ideal α) {ι : Type*} {t : Finset ι} {f : ι → α} :
    (∀ c ∈ t, f c ∈ I) → (∑ i ∈ t, f i) ∈ I :=
  Submodule.sum_mem I

end Ideal

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e804dd9fd52f2179cbbb4cd76b4f8d51ddbde39489a34bf4455caf1f1e8ec782 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/BigOperators/Variantfe66fe7023aaa39a72c15b22009a939db62057e724bff842f8bcba85503410d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
