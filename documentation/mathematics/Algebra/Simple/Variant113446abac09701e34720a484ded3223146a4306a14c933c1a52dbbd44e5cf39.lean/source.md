# Complete source: GRWTSK.Algebra.Simple.Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9f85be1110c2f138d6d6890ea0903d7a9a9af34` · SHA-256 `113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Pierre-Alexandre Bazin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Pierre-Alexandre Bazin, Kim Morrison
-/
import Mathlib.Algebra.Category.ModuleCat.Algebra
import Mathlib.Algebra.Category.ModuleCat.Subobject
import Mathlib.CategoryTheory.Simple
import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
import Mathlib.RingTheory.SimpleModule.Basic

/-!
# Simple objects in the category of `R`-modules

We prove simple modules are exactly simple objects in the category of `R`-modules.
-/


variable {R M : Type*} [Ring R] [AddCommGroup M] [Module R M]

open CategoryTheory ModuleCat

theorem simple_iff_isSimpleModule : Simple (of R M) ↔ IsSimpleModule R M :=
  (simple_iff_subobject_isSimpleOrder _).trans (subobjectModule (of R M)).isSimpleOrder_iff

theorem simple_iff_isSimpleModule' (M : ModuleCat R) : Simple M ↔ IsSimpleModule R M :=
  simple_iff_isSimpleModule

/-- A simple module is a simple object in the category of modules. -/
instance simple_of_isSimpleModule [IsSimpleModule R M] : Simple (of R M) :=
  simple_iff_isSimpleModule.mpr ‹_›

/-- A simple object in the category of modules is a simple module. -/
instance isSimpleModule_of_simple (M : ModuleCat R) [Simple M] : IsSimpleModule R M :=
  simple_iff_isSimpleModule.mp ‹_›

open Module

attribute [local instance] moduleOfAlgebraModule isScalarTower_of_algebra_moduleCat

/-- Any `k`-algebra module which is 1-dimensional over `k` is simple. -/
theorem simple_of_finrank_eq_one {k : Type*} [Field k] [Algebra k R] {V : ModuleCat R}
    (h : finrank k V = 1) : Simple V :=
  (simple_iff_isSimpleModule' V).mpr (is_simple_module_of_finrank_eq_one h)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1896020e24369c591ed1c82f05a14225ba90379e01e2d7cfed6bb81508d064b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
