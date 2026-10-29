# Complete source: GRWTSK.Algebra.LinearAlgebra.Prod.Variant1b8c92c8fcb07db7758c39e1158bbd519c650a972f06eb54699d68e36ee0410e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ede2bbb27b2cc45786ffb2df8dd2a0d31463c34a` · SHA-256 `1b8c92c8fcb07db7758c39e1158bbd519c650a972f06eb54699d68e36ee0410e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.LinearAlgebra.Prod
import Mathlib.RingTheory.Finiteness.Defs

/-!
# Finitely generated product (sub)modules

-/

open Function (Surjective)
open Finsupp

namespace Submodule

variable {R : Type*} {M : Type*} [Semiring R] [AddCommMonoid M] [Module R M]

open Set

variable {P : Type*} [AddCommMonoid P] [Module R P]

theorem FG.prod {sb : Submodule R M} {sc : Submodule R P} (hsb : sb.FG) (hsc : sc.FG) :
    (sb.prod sc).FG :=
  let ⟨tb, htb⟩ := fg_def.1 hsb
  let ⟨tc, htc⟩ := fg_def.1 hsc
  fg_def.2
    ⟨LinearMap.inl R M P '' tb ∪ LinearMap.inr R M P '' tc, (htb.1.image _).union (htc.1.image _),
      by rw [LinearMap.span_inl_union_inr, htb.2, htc.2]⟩

end Submodule

namespace Module

namespace Finite

variable {R M N : Type*}
variable [Semiring R] [AddCommMonoid M] [Module R M] [AddCommMonoid N] [Module R N]

instance prod [hM : Module.Finite R M] [hN : Module.Finite R N] : Module.Finite R (M × N) :=
  ⟨by
    rw [← Submodule.prod_top]
    exact hM.1.prod hN.1⟩

end Finite

end Module
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9cff879fc377c324bbdf85d96677934a753f8e33f83405648d635e31fc68fc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Prod/Variant1b8c92c8fcb07db7758c39e1158bbd519c650a972f06eb54699d68e36ee0410e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
