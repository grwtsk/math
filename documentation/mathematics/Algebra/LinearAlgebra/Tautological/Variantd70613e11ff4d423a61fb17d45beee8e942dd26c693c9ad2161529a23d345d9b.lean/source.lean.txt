-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.TautologicalR.Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.TautologicalR.Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/Presentation/Tautological.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.Algebra.Module.Presentation.Basic

/-!
# The tautological presentation of a module

Given an `A`-module `M`, we provide its tautological presentation:
* there is a generator `[m]` for each `m : M`;
* the relations are `[m₁] + [m₂] - [m₁ + m₂] = 0` and `a • [m] - [a • m] = 0`.

-/


namespace GRWTSK.Algebra.LinearAlgebra.TautologicalR.Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5

universe w v u

namespace Module

variable (A : Type u) [Ring A] (M : Type v) [AddCommGroup M] [Module A M]

namespace Presentation

/-- The type which parametrizes the tautological relations in an `A`-module `M`. -/
inductive tautological.R
  | add (m₁ m₂ : M)
  | smul (a : A) (m : M)

/-- The system of equations corresponding to the tautological presentation of an `A`-module. -/
@[simps]
noncomputable def tautologicalRelations : Relations A where
  G := M
  R := tautological.R A M
  relation
    | .add m₁ m₂ => Finsupp.single m₁ 1 + Finsupp.single m₂ 1 - Finsupp.single (m₁ + m₂) 1
    | .smul a m => a • Finsupp.single m 1 - Finsupp.single (a • m) 1

variable {A M} in
/-- Solutions of `tautologicalRelations A M` in an `A`-module `N` identify to `M →ₗ[A] N`. -/
noncomputable def tautologicalRelationsSolutionEquiv {N : Type w} [AddCommGroup N] [Module A N] :
    (tautologicalRelations A M).Solution N ≃ (M →ₗ[A] N) where
  toFun s :=
    { toFun := s.var
      map_add' := fun m₁ m₂ ↦ by
        symm
        rw [← sub_eq_zero]
        simpa using s.linearCombination_var_relation (.add m₁ m₂)
      map_smul' := fun a m ↦ by
        symm
        rw [← sub_eq_zero]
        simpa using s.linearCombination_var_relation (.smul a m) }
  invFun f :=
    { var := f
      linearCombination_var_relation := by rintro (_ | _) <;> simp }
  left_inv _ := rfl
  right_inv _ := rfl

/-- The obvious solution of `tautologicalRelations A M` in the module `M`. -/
@[simps! var]
noncomputable def tautologicalSolution : (tautologicalRelations A M).Solution M :=
  tautologicalRelationsSolutionEquiv.symm .id

/-- Any `A`-module admits a tautological presentation by generators and relations. -/
noncomputable def tautologicalSolutionIsPresentationCore :
    Relations.Solution.IsPresentationCore.{w} (tautologicalSolution A M) where
  desc s := tautologicalRelationsSolutionEquiv s
  postcomp_desc _ := rfl
  postcomp_injective h := by
    ext m
    exact Relations.Solution.congr_var h m

lemma tautologicalSolution_isPresentation :
    (tautologicalSolution A M).IsPresentation :=
  (tautologicalSolutionIsPresentationCore A M).isPresentation

/-- The tautological presentation of any `A`-module `M` by generators and relations.
There is a generator `[m]` for any element `m : M`, and there are two types of relations:
* `[m₁] + [m₂] - [m₁ + m₂] = 0`
* `a • [m] - [a • m] = 0`. -/
@[simps!]
noncomputable def tautological : Presentation A M :=
  ofIsPresentation (tautologicalSolution_isPresentation A M)

end Presentation

end Module
