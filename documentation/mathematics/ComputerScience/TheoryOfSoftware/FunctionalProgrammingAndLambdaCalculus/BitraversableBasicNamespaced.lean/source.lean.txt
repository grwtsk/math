-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bitraversable.Variantaaf6a64c2ccb999e4f27bf65c77b0e9c67f670866d4ffbe3f2a8e0773de03bb1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aaf6a64c2ccb999e4f27bf65c77b0e9c67f670866d4ffbe3f2a8e0773de03bb1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Bitraversable.Variantaaf6a64c2ccb999e4f27bf65c77b0e9c67f670866d4ffbe3f2a8e0773de03bb1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"aaf6a64c2ccb999e4f27bf65c77b0e9c67f670866d4ffbe3f2a8e0773de03bb1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Control/Bitraversable/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Control.Bifunctor
import Mathlib.Control.Traversable.Basic

/-!
# Bitraversable type class

Type class for traversing bifunctors.

Simple examples of `Bitraversable` are `Prod` and `Sum`. A more elaborate example is
to define an a-list as:

```
def AList (key val : Type) := List (key × val)
```

Then we can use `f : key → IO key'` and `g : val → IO val'` to manipulate the `AList`'s key
and value respectively with `Bitraverse f g : AList key val → IO (AList key' val')`.

## Main definitions

* `Bitraversable`: Bare typeclass to hold the `Bitraverse` function.
* `LawfulBitraversable`: Typeclass for the laws of the `Bitraverse` function. Similar to
  `LawfulTraversable`.

## References

The concepts and laws are taken from
<https://hackage.haskell.org/package/base-4.12.0.0/docs/Data-Bitraversable.html>

## Tags

traversable bitraversable iterator functor bifunctor applicative
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bitraversable.Variantaaf6a64c2ccb999e4f27bf65c77b0e9c67f670866d4ffbe3f2a8e0773de03bb1

universe u

/-- Lawless bitraversable bifunctor. This only holds data for the bimap and bitraverse. -/
class Bitraversable (t : Type u → Type u → Type u) extends Bifunctor t where
  bitraverse :
    ∀ {m : Type u → Type u} [Applicative m] {α α' β β'},
      (α → m α') → (β → m β') → t α β → m (t α' β')

export Bitraversable (bitraverse)

/-- A bitraversable functor commutes with all applicative functors. -/
def bisequence {t m} [Bitraversable t] [Applicative m] {α β} : t (m α) (m β) → m (t α β) :=
  bitraverse id id

open Functor

/-- Bifunctor. This typeclass asserts that a lawless bitraversable bifunctor is lawful. -/
class LawfulBitraversable (t : Type u → Type u → Type u) [Bitraversable t] : Prop
  extends LawfulBifunctor t where
  id_bitraverse : ∀ {α β} (x : t α β), (bitraverse pure pure x : Id _) = pure x
  comp_bitraverse :
    ∀ {F G} [Applicative F] [Applicative G] [LawfulApplicative F] [LawfulApplicative G]
      {α α' β β' γ γ'} (f : β → F γ) (f' : β' → F γ') (g : α → G β) (g' : α' → G β') (x : t α α'),
      bitraverse (Comp.mk ∘ map f ∘ g) (Comp.mk ∘ map f' ∘ g') x =
        Comp.mk (bitraverse f f' <$> bitraverse g g' x)
  bitraverse_eq_bimap_id :
    ∀ {α α' β β'} (f : α → β) (f' : α' → β') (x : t α α'),
      bitraverse (m := Id) (pure ∘ f) (pure ∘ f') x = pure (bimap f f' x)
  binaturality :
    ∀ {F G} [Applicative F] [Applicative G] [LawfulApplicative F] [LawfulApplicative G]
      (η : ApplicativeTransformation F G) {α α' β β'} (f : α → F β) (f' : α' → F β') (x : t α α'),
      η (bitraverse f f' x) = bitraverse (@η _ ∘ f) (@η _ ∘ f') x

export LawfulBitraversable (id_bitraverse comp_bitraverse bitraverse_eq_bimap_id)

open LawfulBitraversable

attribute [higher_order bitraverse_id_id] id_bitraverse

attribute [higher_order bitraverse_comp] comp_bitraverse

attribute [higher_order] binaturality bitraverse_eq_bimap_id

export LawfulBitraversable (bitraverse_id_id bitraverse_comp)
