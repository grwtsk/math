-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SourceUnit.Variant86a5acdf0a0230cc7d491cd46bb64cabc040a264c22cd92dd578124691ecba31","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86a5acdf0a0230cc7d491cd46bb64cabc040a264c22cd92dd578124691ecba31","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SourceUnit.Variant86a5acdf0a0230cc7d491cd46bb64cabc040a264c22cd92dd578124691ecba31","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"86a5acdf0a0230cc7d491cd46bb64cabc040a264c22cd92dd578124691ecba31","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/ConcreteCategory/Alg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib


namespace GRWTSK.Algebra.SourceUnit.Variant86a5acdf0a0230cc7d491cd46bb64cabc040a264c22cd92dd578124691ecba31

universe v u

open CategoryTheory AlgCat

set_option maxHeartbeats 10000
set_option synthInstance.maxHeartbeats 2000

variable (R : Type u) [CommRing R]

/- We test if all the coercions and `map_add` lemmas trigger correctly. -/

example (X : Type u) [Ring X] [Algebra R X] : ⇑(𝟙 (of R X)) = id := by simp

example {X Y : Type v} [Ring X] [Algebra R X] [Ring Y] [Algebra R Y] (f : X →ₐ[R] Y) :
    ⇑(ofHom f) = ⇑f := by simp

example {X Y : Type v} [Ring X] [Algebra R X] [Ring Y] [Algebra R Y] (f : X →ₐ[R] Y)
    (x : X) : (ofHom f) x = f x := by simp

example {X Y Z : AlgCat R} (f : X ⟶ Y) (g : Y ⟶ Z) : ⇑(f ≫ g) = ⇑g ∘ ⇑f := by simp

example {X Y Z : Type v} [Ring X] [Algebra R X] [Ring Y] [Algebra R Y] [Ring Z]
    [Algebra R Z] (f : X →ₐ[R] Y) (g : Y →ₐ[R] Z) :
    ⇑(ofHom f ≫ ofHom g) = g ∘ f := by simp

example {X Y : Type v} [Ring X] [Algebra R X] [Ring Y] [Algebra R Y] {Z : AlgCat R}
    (f : X →ₐ[R] Y) (g : of R Y ⟶ Z) :
    ⇑(ofHom f ≫ g) = g ∘ f := by simp

example {X Y : AlgCat R} {Z : Type v} [Ring Z] [Algebra R Z] (f : X ⟶ Y) (g : Y ⟶ of R Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {Y Z : AlgCat R} {X : Type v} [Ring X] [Algebra R X] (f : of R X ⟶ Y) (g : Y ⟶ Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {X Y Z : AlgCat R} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) : (f ≫ g) x = g (f x) := by simp

example {X Y : AlgCat R} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by simp

example {X Y : AlgCat R} (e : X ≅ Y) (y : Y) : e.hom (e.inv y) = y := by simp

example (X : AlgCat R) : ⇑(𝟙 X) = id := by simp

example {M N : AlgCat.{v} R} (f : M ⟶ N) (x y : M) : f (x + y) = f x + f y := by
  simp

example {M N : AlgCat.{v} R} (f : M ⟶ N) : f 0 = 0 := by
  simp

example {M N : AlgCat.{v} R} (f : M ⟶ N) (r : R) (m : M) : f (r • m) = r • f m := by
  simp
