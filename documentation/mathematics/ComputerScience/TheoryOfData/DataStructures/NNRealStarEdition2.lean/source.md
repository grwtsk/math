# NNReal Star Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47c6a75c1784981cfcece7e08e8fae100d04f807` · SHA-256 `7816b94084a02da2c814e75ef7b2bd50326095132e02cf848724e7631cb32886`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Data.NNReal.Defs
import Mathlib.Data.Real.Star

/-!
# The non-negative real numbers are a `*`-ring, with the trivial `*`-structure
-/

assert_not_exists Finset

open scoped NNReal

instance : StarRing ℝ≥0 := starRingOfComm

instance : TrivialStar ℝ≥0 where
  star_trivial _ := rfl

instance : StarModule ℝ≥0 ℝ where
  star_smul := by simp only [star_trivial, eq_self_iff_true, forall_const]

instance {E : Type*} [AddCommMonoid E] [Star E] [Module ℝ E] [StarModule ℝ E] :
    StarModule ℝ≥0 E where
  star_smul _ := star_smul (_ : ℝ)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f5452e7bb46c8a6e2cf894d67e7c89b10411eff1969ea0f2b1d553b1e997eb1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Star/Variant7816b94084a02da2c814e75ef7b2bd50326095132e02cf848724e7631cb32886.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
