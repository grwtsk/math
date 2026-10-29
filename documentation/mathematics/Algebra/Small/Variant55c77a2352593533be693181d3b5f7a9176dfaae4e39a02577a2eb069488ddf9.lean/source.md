# Complete source: GRWTSK.Algebra.Small.Variant55c77a2352593533be693181d3b5f7a9176dfaae4e39a02577a2eb069488ddf9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16024ce67e4b9a7e09baf8f5870967636451f61a` · SHA-256 `55c77a2352593533be693181d3b5f7a9176dfaae4e39a02577a2eb069488ddf9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios
-/
module

public import Mathlib.Algebra.Group.Pointwise.Set.Basic
public import Mathlib.Logic.Small.Set

/-!
# Small instances for pointwise operations
-/

public section

universe u

variable {α : Type*} (s t : Set α)

open scoped Pointwise

instance small_set_zero [Zero α] : Small.{u} (0 : Set α) := small_single _
instance small_set_one [One α] : Small.{u} (1 : Set α) := small_single _

instance small_neg [InvolutiveNeg α] [Small.{u} s] : Small.{u} (-s :) := by
  rw [← Set.image_neg_eq_neg]
  infer_instance

instance small_add [Add α] [Small.{u} s] [Small.{u} t] : Small.{u} (s + t) := small_image2 ..
instance small_sub [Sub α] [Small.{u} s] [Small.{u} t] : Small.{u} (s - t) := small_image2 ..
instance small_mul [Mul α] [Small.{u} s] [Small.{u} t] : Small.{u} (s * t) := small_image2 ..
instance small_div [Div α] [Small.{u} s] [Small.{u} t] : Small.{u} (s / t) := small_image2 ..
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=084348681a1b97e1d8b2e1a42e286f3f1ee29fb8542f6753c351c953fe5e60b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Small/Variant55c77a2352593533be693181d3b5f7a9176dfaae4e39a02577a2eb069488ddf9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
