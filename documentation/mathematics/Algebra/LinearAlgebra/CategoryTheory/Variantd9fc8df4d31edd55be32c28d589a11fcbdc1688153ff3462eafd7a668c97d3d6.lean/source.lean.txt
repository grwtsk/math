-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.QuadraticModuleCatCliffordAlgebra.Variant46e90b409ff16132ee5c4f3314e2a5eede21744b8c27ae415faa98536ec970b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46e90b409ff16132ee5c4f3314e2a5eede21744b8c27ae415faa98536ec970b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.QuadraticModuleCatCliffordAlgebra.Variant46e90b409ff16132ee5c4f3314e2a5eede21744b8c27ae415faa98536ec970b3","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"46e90b409ff16132ee5c4f3314e2a5eede21744b8c27ae415faa98536ec970b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/CliffordAlgebra/CategoryTheory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.LinearAlgebra.CliffordAlgebra.Basic
import Mathlib.LinearAlgebra.QuadraticForm.QuadraticModuleCat
import Mathlib.Algebra.Category.AlgCat.Basic

/-! # Category-theoretic interpretations of `CliffordAlgebra`

## Main definitions

* `QuadraticModuleCat.cliffordAlgebra`: the functor from quadratic modules to algebras
-/


namespace GRWTSK.Algebra.LinearAlgebra.QuadraticModuleCatCliffordAlgebra.Variant46e90b409ff16132ee5c4f3314e2a5eede21744b8c27ae415faa98536ec970b3

universe v u
open CategoryTheory

variable {R : Type u} [CommRing R]

/-- The "clifford algebra" functor, sending a quadratic `R`-module `V` to the clifford algebra on
`V`.

This is `CliffordAlgebra.map` through the lens of category theory. -/
@[simps]
def QuadraticModuleCat.cliffordAlgebra : QuadraticModuleCat.{u} R ⥤ AlgCat.{u} R where
  obj M := AlgCat.of R (CliffordAlgebra M.form)
  map {_M _N} f := AlgCat.ofHom <| CliffordAlgebra.map f.toIsometry
  map_id _M := by simp
  map_comp {_M _N _P} f g := by ext; simp
