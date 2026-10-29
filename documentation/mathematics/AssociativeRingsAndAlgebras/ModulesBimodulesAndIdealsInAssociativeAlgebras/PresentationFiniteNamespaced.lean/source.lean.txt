-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Finite.Varianta05274fa2865cfb31f57d0a8d04c50ba957f0cee21e48b586bb11c276d68fb3d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a05274fa2865cfb31f57d0a8d04c50ba957f0cee21e48b586bb11c276d68fb3d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Finite.Varianta05274fa2865cfb31f57d0a8d04c50ba957f0cee21e48b586bb11c276d68fb3d","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"a05274fa2865cfb31f57d0a8d04c50ba957f0cee21e48b586bb11c276d68fb3d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/Presentation/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Module.Presentation.Basic
import Mathlib.Algebra.Module.FinitePresentation

/-!
# Characterization of finitely presented modules

A module is finitely presented (in the sense of `Module.FinitePresentation`) iff
it admits a presentation with finitely many generators and relations.

-/


namespace GRWTSK.Algebra.LinearAlgebra.Finite.Varianta05274fa2865cfb31f57d0a8d04c50ba957f0cee21e48b586bb11c276d68fb3d

universe w₀ w₁ v u

namespace Module

variable {A : Type u} [Ring A] {M : Type v} [AddCommGroup M] [Module A M]

namespace Presentation

variable (pres : Presentation A M)

lemma finite [Finite pres.G] :
    Module.Finite A M :=
  Finite.of_surjective _ pres.surjective_π

lemma finitePresentation [Finite pres.G] [Finite pres.R] :
    Module.FinitePresentation A M :=
  Module.finitePresentation_of_surjective _ pres.surjective_π (by
    rw [pres.ker_π]
    exact Submodule.fg_span (Set.finite_range _))

end Presentation

lemma finitePresentation_iff_exists_presentation :
    Module.FinitePresentation A M ↔
      ∃ (pres : Presentation.{w₀, w₁} A M), Finite pres.G ∧ Finite pres.R := by
  constructor
  · intro
    obtain ⟨G : Type w₀, _, var, hG⟩ :=
      Submodule.fg_iff_exists_finite_generating_family.1
        (finite_def.1 (inferInstanceAs (Module.Finite A M)))
    obtain ⟨R : Type w₁, _, relation, hR⟩ :=
      Submodule.fg_iff_exists_finite_generating_family.1
        (Module.FinitePresentation.fg_ker (Finsupp.linearCombination A var) (by
          rw [← LinearMap.range_eq_top, Finsupp.range_linearCombination, hG]))
    exact
     ⟨{ G := G
        R := R
        relation := relation
        var := var
        linearCombination_var_relation := fun r ↦ by
          rw [Submodule.ext_iff] at hR
          exact (hR _).1 (Submodule.subset_span ⟨_, rfl⟩)
        toIsPresentation := by
          rw [Relations.Solution.isPresentation_iff]
          exact ⟨hG, hR.symm⟩ },
        inferInstance, inferInstance⟩
  · rintro ⟨pres, _, _⟩
    exact pres.finitePresentation

end Module
