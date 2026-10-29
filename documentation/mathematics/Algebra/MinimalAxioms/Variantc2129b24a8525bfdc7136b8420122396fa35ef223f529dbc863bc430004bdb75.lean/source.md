# Complete source: GRWTSK.Algebra.MinimalAxioms.Variantc2129b24a8525bfdc7136b8420122396fa35ef223f529dbc863bc430004bdb75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fb3529a49c4f8d8fc4683bbdb10b0f0a9af3900` · SHA-256 `c2129b24a8525bfdc7136b8420122396fa35ef223f529dbc863bc430004bdb75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
module

public import Mathlib.Algebra.Field.Defs
public import Mathlib.Algebra.Ring.MinimalAxioms

/-!
# Minimal Axioms for a Field

This file defines constructors to define a `Field` structure on a Type, while proving
a minimum number of equalities.

## Main Definitions

* `Field.ofMinimalAxioms`: Define a `Field` structure on a Type by proving a minimal set of axioms

-/

public section

universe u

/-- Define a `Field` structure on a Type by proving a minimal set of axioms.
Note that this uses the default definitions for `npow`, `nsmul`, `zsmul`, `div` and `sub`.
See note [reducible non-instances]. -/
abbrev Field.ofMinimalAxioms (K : Type u)
    [Add K] [Mul K] [Neg K] [Inv K] [Zero K] [One K]
    (add_assoc : ∀ a b c : K, a + b + c = a + (b + c))
    (zero_add : ∀ a : K, 0 + a = a)
    (neg_add_cancel : ∀ a : K, -a + a = 0)
    (mul_assoc : ∀ a b c : K, a * b * c = a * (b * c))
    (mul_comm : ∀ a b : K, a * b = b * a)
    (one_mul : ∀ a : K, 1 * a = a)
    (mul_inv_cancel : ∀ a : K, a ≠ 0 → a * a⁻¹ = 1)
    (inv_zero : (0 : K)⁻¹ = 0)
    (left_distrib : ∀ a b c : K, a * (b + c) = a * b + a * c)
    (exists_pair_ne : ∃ x y : K, x ≠ y) : Field K :=
  letI := CommRing.ofMinimalAxioms add_assoc zero_add
    neg_add_cancel mul_assoc mul_comm one_mul left_distrib
  { exists_pair_ne := exists_pair_ne
    mul_inv_cancel := mul_inv_cancel
    inv_zero := inv_zero
    nnqsmul := _
    nnqsmul_def := fun _ _ => rfl
    qsmul := _
    qsmul_def := fun _ _ => rfl }
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c95b9df9077a6533aa6093642e1144042d5c268088e3041e0e57524c3be52e5a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/MinimalAxioms/Variantc2129b24a8525bfdc7136b8420122396fa35ef223f529dbc863bc430004bdb75.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
