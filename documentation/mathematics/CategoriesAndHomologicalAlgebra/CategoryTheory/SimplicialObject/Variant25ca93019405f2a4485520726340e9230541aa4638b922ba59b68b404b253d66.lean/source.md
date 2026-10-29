# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SimplicialObject.Variant25ca93019405f2a4485520726340e9230541aa4638b922ba59b68b404b253d66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a46ade18908994789648c6268e8c0adfbdae977` · SHA-256 `25ca93019405f2a4485520726340e9230541aa4638b922ba59b68b404b253d66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.SimplicialObject.Basic
import Mathlib.CategoryTheory.Idempotents.FunctorCategories

/-!

# Idempotent completeness of categories of simplicial objects

In this file, we provide an instance expressing that `SimplicialObject C`
and `CosimplicialObject C` are idempotent complete categories when the
category `C` is.

-/


namespace CategoryTheory

namespace Idempotents

variable {C : Type*} [Category C] [IsIdempotentComplete C]

instance : IsIdempotentComplete (SimplicialObject C) :=
  Idempotents.functor_category_isIdempotentComplete _ _

instance : IsIdempotentComplete (CosimplicialObject C) :=
  Idempotents.functor_category_isIdempotentComplete _ _

end Idempotents

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1db37f50fabc7fa339cfb6603cdd7b9523e7dee59c286decb089a6b53c2226da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialObject/Variant25ca93019405f2a4485520726340e9230541aa4638b922ba59b68b404b253d66.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
