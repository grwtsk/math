# Complete source: GRWTSK.Algebra.Fin.Varianta941364c703032a627f100dd92738eb072c472be58f217bfc01994e15526b5c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceb0eb9f933f0412bb88c83507aa6a34534c9ae8` · SHA-256 `a941364c703032a627f100dd92738eb072c472be58f217bfc01994e15526b5c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Algebra.Ring.Equiv
import Mathlib.Data.Fin.Tuple.Basic

/-!
# Rings and `Fin`

This file collects some basic results involving rings and the `Fin` type

## Main results

* `RingEquiv.piFinTwo`: The product over `Fin 2` of some rings is the cartesian product

-/


/-- The product over `Fin 2` of some rings is just the cartesian product of these rings. -/
@[simps]
def RingEquiv.piFinTwo (R : Fin 2 → Type*) [∀ i, Semiring (R i)] :
    (∀ i : Fin 2, R i) ≃+* R 0 × R 1 :=
  { piFinTwoEquiv R with
    toFun := piFinTwoEquiv R
    map_add' := fun _ _ => rfl
    map_mul' := fun _ _ => rfl }
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06500a3dd12875ddb7a814972d5ffbabf23e58bcc78c3095fc8404c0eb5d7edc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Fin/Varianta941364c703032a627f100dd92738eb072c472be58f217bfc01994e15526b5c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
