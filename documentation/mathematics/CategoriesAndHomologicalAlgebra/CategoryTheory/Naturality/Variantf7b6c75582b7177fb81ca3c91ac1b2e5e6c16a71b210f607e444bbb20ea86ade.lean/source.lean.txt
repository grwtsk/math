-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Natural.Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Natural.Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Comparison/Naturality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Comparison.Construction
import Mathlib.CategoryTheory.NatTrans

/-!
# Natural comparisons

Functorial comparisons carry an actual natural transformation.  Naturality
and uniqueness are proof data; the word “canonical” alone supplies neither.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Natural.Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9

namespace DAF.Comparison

open CategoryTheory

universe u v

/-- A categorical comparison represented by a natural transformation. -/
structure Natural
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    (F G : Functor C D) where
  hom : NatTrans F G

namespace Natural

def id
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    (F : Functor C D) : Natural F F :=
  ⟨NatTrans.id F⟩

def comp
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    {F G H : Functor C D}
    (g : Natural G H) (f : Natural F G) : Natural F H :=
  ⟨f.hom.vcomp g.hom⟩

@[simp]
theorem id_hom
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    (F : Functor C D) : (id F).hom = NatTrans.id F :=
  rfl

@[simp]
theorem comp_hom
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    {F G H : Functor C D}
    (g : Natural G H) (f : Natural F G) :
    (g.comp f).hom = f.hom.vcomp g.hom :=
  rfl

end Natural

end DAF.Comparison
