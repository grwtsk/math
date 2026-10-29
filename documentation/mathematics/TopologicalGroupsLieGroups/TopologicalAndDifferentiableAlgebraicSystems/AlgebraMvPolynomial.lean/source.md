# Algebra Mv Polynomial — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b55c9a1fb2acafdd1e78b7915d2acff3b8e5a304` · SHA-256 `3a228dd0e0813d269d808444b26210183f6b26b2a8c2d605d25c41c1bff9c467`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Ruben Van de Velde. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ruben Van de Velde
-/

import Mathlib.Algebra.MvPolynomial.Eval
import Mathlib.Topology.Algebra.Ring.Basic

/-!
# Multivariate polynomials and continuity

In this file we prove the following lemma:

* `MvPolynomial.continuous_eval`: `MvPolynomial.eval` is continuous

## Tags

multivariate polynomial, continuity
-/

variable {X σ : Type*} [TopologicalSpace X] [CommSemiring X] [IsTopologicalSemiring X]
  (p : MvPolynomial σ X)

theorem MvPolynomial.continuous_eval : Continuous fun x ↦ eval x p := by
  continuity
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edfd962254b63f72ca3ea714ac780ea977f6d761e05cea3845a2c1c120c44dab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant3a228dd0e0813d269d808444b26210183f6b26b2a8c2d605d25c41c1bff9c467.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
