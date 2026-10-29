-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Semigrp.Variantf77c99d90af477a67d6a90186992c77a4c13c0a5a1f8b24ac260baaced062eea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f77c99d90af477a67d6a90186992c77a4c13c0a5a1f8b24ac260baaced062eea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Semigrp.Variantf77c99d90af477a67d6a90186992c77a4c13c0a5a1f8b24ac260baaced062eea","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"f77c99d90af477a67d6a90186992c77a4c13c0a5a1f8b24ac260baaced062eea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/ConcreteCategory/Semigrp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Category.Semigrp.Basic


namespace GRWTSK.Algebra.UniversalAlgebra.Semigrp.Variantf77c99d90af477a67d6a90186992c77a4c13c0a5a1f8b24ac260baaced062eea

universe v u

open CategoryTheory Semigrp

set_option maxHeartbeats 10000
set_option synthInstance.maxHeartbeats 2000

/- We test if all the coercions and `map_mul` lemmas trigger correctly. -/

example (X : Type u) [Semigroup X] : ⇑(𝟙 (of X)) = id := by simp

example {X Y : Type u} [Semigroup X] [Semigroup Y] (f : X →ₙ* Y) :
    ⇑(ofHom f) = ⇑f := by simp

example {X Y : Type u} [Semigroup X] [Semigroup Y] (f : X →ₙ* Y)
    (x : X) : (ofHom f) x = f x := by simp

example {X Y Z : Semigrp} (f : X ⟶ Y) (g : Y ⟶ Z) : ⇑(f ≫ g) = ⇑g ∘ ⇑f := by simp

example {X Y Z : Type u} [Semigroup X] [Semigroup Y] [Semigroup Z]
    (f : X →ₙ* Y) (g : Y →ₙ* Z) :
    ⇑(ofHom f ≫ ofHom g) = g ∘ f := by simp

example {X Y : Type u} [Semigroup X] [Semigroup Y] {Z : Semigrp}
    (f : X →ₙ* Y) (g : of Y ⟶ Z) :
    ⇑(ofHom f ≫ g) = g ∘ f := by simp

example {X Y : Semigrp} {Z : Type u} [Semigroup Z] (f : X ⟶ Y) (g : Y ⟶ of Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {Y Z : Semigrp} {X : Type u} [Semigroup X] (f : of X ⟶ Y) (g : Y ⟶ Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {X Y Z : Semigrp} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) : (f ≫ g) x = g (f x) := by simp

example {X Y : Semigrp} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by simp

example {X Y : Semigrp} (e : X ≅ Y) (y : Y) : e.hom (e.inv y) = y := by simp

example (X : Semigrp) : ⇑(𝟙 X) = id := by simp

example {X : Type*} [Semigroup X] : ⇑(MulHom.id X) = id := by simp

example {M N : Semigrp} (f : M ⟶ N) (x y : M) : f (x * y) = f x * f y := by
  simp
