# Finite Set Source Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `633df5c02ef1ecfd10b58d62f9a3aefdac590c0a` · SHA-256 `d51e3ffb6f0d8426583658bc2dd134f7c357a73bff30ebade858501860f5d61d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Data.Fintype.EquivFin

/-!
# Lemmas about `Finite` and `Set`s

In this file we prove two lemmas about `Finite` and `Set`s.

## Tags

finiteness, finite sets
-/


open Set

universe u v w

variable {α : Type u} {β : Type v} {ι : Sort w}

theorem Finite.Set.finite_of_finite_image (s : Set α) {f : α → β} (h : s.InjOn f)
    [Finite (f '' s)] : Finite s :=
  Finite.of_equiv _ (Equiv.ofBijective _ h.bijOn_image.bijective).symm

theorem Finite.of_injective_finite_range {f : ι → α} (hf : Function.Injective f)
    [Finite (range f)] : Finite ι :=
  Finite.of_injective (Set.rangeFactorization f) (hf.codRestrict _)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36369ab6e587e3f28ee7e4fe334286800f8236a27315c8aeb88ed8547dfd7a10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantd51e3ffb6f0d8426583658bc2dd134f7c357a73bff30ebade858501860f5d61d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
