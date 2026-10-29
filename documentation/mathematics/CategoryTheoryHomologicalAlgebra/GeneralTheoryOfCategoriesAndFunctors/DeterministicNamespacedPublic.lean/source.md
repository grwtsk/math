# Deterministic Namespaced Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8db7ad5d8981e8a83c69d0ce77d6261327d8f128` · SHA-256 `70be15007e40d60b7e700cdd87d4807af09cdf432b70e77c08bdaaa6642ed179`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Deterministic.Variantad084070e388f0332e189b9f4a3be1c88d46c9e96e083a69e87c13c1f48559c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad084070e388f0332e189b9f4a3be1c88d46c9e96e083a69e87c13c1f48559c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Deterministic.Variantad084070e388f0332e189b9f4a3be1c88d46c9e96e083a69e87c13c1f48559c1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ad084070e388f0332e189b9f4a3be1c88d46c9e96e083a69e87c13c1f48559c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/CopyDiscardCategory/Deterministic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jacob Reinhold. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jacob Reinhold
-/
module

public import Mathlib.CategoryTheory.CopyDiscardCategory.Basic

/-!
# Deterministic Morphisms in Copy-Discard Categories

Morphisms that preserve the copy operation perfectly.

A morphism `f : X → Y` is deterministic if copying then applying `f` to both copies equals applying
`f` then copying: `f ≫ Δ[Y] = Δ[X] ≫ (f ⊗ f)`.

In probabilistic settings, these are morphisms without randomness. In cartesian categories, all
morphisms are deterministic.

## Main definitions

* `Deterministic` - Type class for morphisms that preserve copying

## Main results

* Identity morphisms are deterministic
* Composition of deterministic morphisms is deterministic

## Tags

deterministic, copy-discard category, comonoid morphism
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Deterministic.Variantad084070e388f0332e189b9f4a3be1c88d46c9e96e083a69e87c13c1f48559c1

public section

universe v u

namespace CategoryTheory

open MonoidalCategory ComonObj

variable {C : Type u} [Category.{v} C] [MonoidalCategory.{v} C] [CopyDiscardCategory.{v} C]

/-- A morphism is deterministic if it preserves the comonoid structure.

In probabilistic contexts, these are morphisms without randomness. -/
abbrev Deterministic {X Y : C} (f : X ⟶ Y) := IsComonHom f

namespace Deterministic

variable {X Y : C}

/-- Deterministic morphisms commute with copying. -/
lemma copy_natural (f : X ⟶ Y) [Deterministic f] : f ≫ Δ[Y] = Δ[X] ≫ (f ⊗ₘ f) :=
  IsComonHom.hom_comul f

/-- Deterministic morphisms commute with discarding. -/
lemma discard_natural (f : X ⟶ Y) [Deterministic f] : f ≫ ε[Y] = ε[X] :=
  IsComonHom.hom_counit f

end Deterministic

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8154b07472d0a27c997d34cfee848191e0c995a50327f8271088e6ea9e9f7b21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Deterministic/Variant2aee4bbfe2e1160cf4d91fb03a435869b4e237ebb14bc73566add0abc6ac2f14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
