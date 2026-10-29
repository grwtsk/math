# Complete source: GRWTSK.Algebra.LinearAlgebra.Rank.Variant86fee3933b8dcdc394cdfeceb4c43b655a23d80ff926ceb52a1ff9973005cf59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbb68ee68736ca1dacc538aa99b8128a2372065a` · SHA-256 `86fee3933b8dcdc394cdfeceb4c43b655a23d80ff926ceb52a1ff9973005cf59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
import Mathlib.RingTheory.SimpleModule.Basic

/-!
# A module over a division ring is simple iff it has rank one
-/

theorem isSimpleModule_iff_finrank_eq_one {R M} [DivisionRing R] [AddCommGroup M] [Module R M] :
    IsSimpleModule R M ↔ Module.finrank R M = 1 :=
  ⟨fun h ↦ have := h.nontrivial; have ⟨v, hv⟩ := exists_ne (0 : M)
    (finrank_eq_one_iff_of_nonzero' v hv).mpr (IsSimpleModule.toSpanSingleton_surjective R hv),
  is_simple_module_of_finrank_eq_one⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=effb20891ea250e4c080ed21b71160695008d1a45b3e4fedebf32c97de94a0f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Rank/Variant86fee3933b8dcdc394cdfeceb4c43b655a23d80ff926ceb52a1ff9973005cf59.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
