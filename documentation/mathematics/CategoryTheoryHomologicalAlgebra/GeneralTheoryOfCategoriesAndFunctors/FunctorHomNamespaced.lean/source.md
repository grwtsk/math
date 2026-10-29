# Functor Hom Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `efc88b54d0980b209081026eb6d93cbe4e41eef7` · SHA-256 `df2c42e1be7ac24c4c57854a9ceae742a9c91606cea9994ea82c235bf5900b23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Hom.Variant6fc83ae30c846c0617c2649cd787574f82f5863d91e2b055ba15ecbd411c7220","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6fc83ae30c846c0617c2649cd787574f82f5863d91e2b055ba15ecbd411c7220","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Hom.Variant6fc83ae30c846c0617c2649cd787574f82f5863d91e2b055ba15ecbd411c7220","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6fc83ae30c846c0617c2649cd787574f82f5863d91e2b055ba15ecbd411c7220","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Functor/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Reid Barton. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Reid Barton, Kim Morrison
-/
import Mathlib.CategoryTheory.Products.Basic
import Mathlib.CategoryTheory.Types

/-!
The hom functor, sending `(X, Y)` to the type `X ⟶ Y`.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Hom.Variant6fc83ae30c846c0617c2649cd787574f82f5863d91e2b055ba15ecbd411c7220

universe v u

open Opposite

open CategoryTheory

namespace CategoryTheory.Functor

variable (C : Type u) [Category.{v} C]

/-- `Functor.hom` is the hom-pairing, sending `(X, Y)` to `X ⟶ Y`, contravariant in `X` and
covariant in `Y`. -/
@[simps]
def hom : Cᵒᵖ × C ⥤ Type v where
  obj p := unop p.1 ⟶ p.2
  map f h := f.1.unop ≫ h ≫ f.2

end CategoryTheory.Functor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ea2a367b0a9f031b4fa561a120c41e768e2a3acb676acd9e2fb433e38bfe295 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hom/Variant0dc2191ca5594ae988022efcd118bbeb6ba0692b578dcaac1cc72a07150fe84a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
