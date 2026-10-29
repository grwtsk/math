# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PWO.Variantef4d9284efd5a59f2f1acfb14fd6890a21e974972aa8c56dca647d3400222475

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9b90d67f0a8cbc69688edd763fd8c2efa723076` · SHA-256 `ef4d9284efd5a59f2f1acfb14fd6890a21e974972aa8c56dca647d3400222475`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
module

public import Mathlib.Order.Preorder.Finsupp
public import Mathlib.Order.WellQuasiOrder

/-!
# Partial well ordering on finsupps

This file contains the fact that finitely supported functions from a fintype are
partially well-ordered when the codomain is a linear order that is well ordered.
It is in a separate file for now so as to not add imports to the file `Order.WellFoundedSet`.

## Main statements

* `Finsupp.isPWO` - finitely supported functions from a fintype are partially well-ordered when
  the codomain is a linear order that is well ordered

## Tags

Dickson, order, partial well order
-/

public section
/-- A version of **Dickson's lemma**: `σ →₀ α` is well-quasi-ordered when `σ` is `Finite` and `α` is
well-quasi-ordered.
This version uses finsupps on a finite type as it is intended for use with `MVPowerSeries`.
-/
instance Finsupp.wellQuasiOrderedLE {α σ : Type*} [Zero α] [Preorder α] [WellQuasiOrderedLE α]
    [Finite σ] : WellQuasiOrderedLE (σ →₀ α) :=
  orderIsoFunOnFinite.wellQuasiOrderedLE_iff.2 inferInstance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74e358eb17a492c43cfd28808701e29e17086d0e75490f30be6c871ef667162b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PWO/Variantef4d9284efd5a59f2f1acfb14fd6890a21e974972aa8c56dca647d3400222475.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
