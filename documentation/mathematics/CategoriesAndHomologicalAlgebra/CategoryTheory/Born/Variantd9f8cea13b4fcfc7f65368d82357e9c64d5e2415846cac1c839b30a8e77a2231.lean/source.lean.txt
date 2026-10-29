-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Born.Variante0dadbc8e2812c11862fe36a040372411707f4a03df61f453cef211260feaaa2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0dadbc8e2812c11862fe36a040372411707f4a03df61f453cef211260feaaa2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Born.Variante0dadbc8e2812c11862fe36a040372411707f4a03df61f453cef211260feaaa2","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e0dadbc8e2812c11862fe36a040372411707f4a03df61f453cef211260feaaa2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Category/Born.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.CategoryTheory.ConcreteCategory.Basic
public import Mathlib.Topology.Bornology.Hom
public import Mathlib.CategoryTheory.ConcreteCategory.Notation

/-!
# The category of bornologies

This defines `Born`, the category of bornologies.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Born.Variante0dadbc8e2812c11862fe36a040372411707f4a03df61f453cef211260feaaa2

public section


universe u

open CategoryTheory

/-- The category of bornologies. -/
structure Born where
  /-- Construct a bundled `Born` from a `Bornology`. -/
  of ::
  /-- The underlying bornology. -/
  carrier : Type*
  [str : Bornology carrier]

attribute [instance] Born.str

namespace Born

instance : CoeSort Born Type* :=
  ⟨carrier⟩

instance : Inhabited Born :=
  ⟨of PUnit⟩

instance : LargeCategory.{u} Born where
  Hom X Y := LocallyBoundedMap X Y
  id X := LocallyBoundedMap.id X
  comp f g := g.comp f

instance : ConcreteCategory Born (LocallyBoundedMap · ·) where
  hom f := f
  ofHom f := f

end Born

section Notation

open Lean.PrettyPrinter.Delaborator

/-- This prints `Born.of X` as `↧X`. -/
@[app_delab Born.of]
meta def Born.delabOf : Delab := CategoryTheory.delabOf

end Notation
