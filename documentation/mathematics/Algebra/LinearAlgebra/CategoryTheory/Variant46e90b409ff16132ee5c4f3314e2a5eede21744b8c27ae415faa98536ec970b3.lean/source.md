# Complete source: GRWTSK.Algebra.LinearAlgebra.CategoryTheory.Variant46e90b409ff16132ee5c4f3314e2a5eede21744b8c27ae415faa98536ec970b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0685918dfcfad9ffe4d2ddc82f9e3c1820bf77d9` · SHA-256 `46e90b409ff16132ee5c4f3314e2a5eede21744b8c27ae415faa98536ec970b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.LinearAlgebra.CliffordAlgebra.Basic
import Mathlib.LinearAlgebra.QuadraticForm.QuadraticModuleCat
import Mathlib.Algebra.Category.AlgCat.Basic

/-! # Category-theoretic interpretations of `CliffordAlgebra`

## Main definitions

* `QuadraticModuleCat.cliffordAlgebra`: the functor from quadratic modules to algebras
-/

universe v u
open CategoryTheory

variable {R : Type u} [CommRing R]

/-- The "clifford algebra" functor, sending a quadratic `R`-module `V` to the clifford algebra on
`V`.

This is `CliffordAlgebra.map` through the lens of category theory. -/
@[simps]
def QuadraticModuleCat.cliffordAlgebra : QuadraticModuleCat.{u} R ⥤ AlgCat.{u} R where
  obj M := AlgCat.of R (CliffordAlgebra M.form)
  map {_M _N} f := AlgCat.ofHom <| CliffordAlgebra.map f.toIsometry
  map_id _M := by simp
  map_comp {_M _N _P} f g := by ext; simp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a555d72aca2fab2b1862eadac1ad2f617ee20cf7734113fe63db2699c4212d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CategoryTheory/Variant46e90b409ff16132ee5c4f3314e2a5eede21744b8c27ae415faa98536ec970b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
