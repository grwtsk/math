-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinCat.Variantb7d3aa96634b498c3075ff680df1937e25397f896bef9b2e26626385d9a6f2d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7d3aa96634b498c3075ff680df1937e25397f896bef9b2e26626385d9a6f2d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FinCat.Variantb7d3aa96634b498c3075ff680df1937e25397f896bef9b2e26626385d9a6f2d2","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b7d3aa96634b498c3075ff680df1937e25397f896bef9b2e26626385d9a6f2d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Knowledge/Category/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinCat.Variantb7d3aa96634b498c3075ff680df1937e25397f896bef9b2e26626385d9a6f2d2

namespace Think.Knowledge.Category

/-! Finite category and pullback skeleton for knowledge sheaf certificates. -/

structure FinCat where
  Obj : Type
  Hom : Obj → Obj → Type
  id : (U : Obj) → Hom U U
  comp : {U V W : Obj} → Hom U V → Hom V W → Hom U W

structure Pullback
  (C : FinCat) {V U W : C.Obj}
  (f : C.Hom U V) (g : C.Hom W V) where
  apex : C.Obj
  p₁ : C.Hom apex U
  p₂ : C.Hom apex W

end Think.Knowledge.Category
