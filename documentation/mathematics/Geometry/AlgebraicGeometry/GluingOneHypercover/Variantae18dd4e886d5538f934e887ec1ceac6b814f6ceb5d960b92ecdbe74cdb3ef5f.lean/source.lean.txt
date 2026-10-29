-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.OneHypercover.Variante597ae26695950a04ad336b9ea838663e95ef23f294927de6f117c10da195a81","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e597ae26695950a04ad336b9ea838663e95ef23f294927de6f117c10da195a81","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.OneHypercover.Variante597ae26695950a04ad336b9ea838663e95ef23f294927de6f117c10da195a81","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"e597ae26695950a04ad336b9ea838663e95ef23f294927de6f117c10da195a81","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicGeometry/GluingOneHypercover.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Calle Sönne, Joël Riou, Ravi Vakil
-/
import Mathlib.AlgebraicGeometry.Gluing
import Mathlib.AlgebraicGeometry.Sites.BigZariski
import Mathlib.CategoryTheory.Sites.OneHypercover

/-!
# The 1-hypercover of a glue data

In this file, given `D : Scheme.GlueData`, we construct a 1-hypercover
`D.openHypercover` of the scheme `D.glued` in the big Zariski site.
We use this 1-hypercover in order to define a constructor `D.sheafValGluedMk`
for sections over `D.glued` of a sheaf of types over the big Zariski site.

## Notes

This contribution was created as part of the AIM workshop
"Formalizing algebraic geometry" in June 2024.

-/


namespace GRWTSK.Geometry.AlgebraicGeometry.OneHypercover.Variante597ae26695950a04ad336b9ea838663e95ef23f294927de6f117c10da195a81

universe v u

open CategoryTheory Opposite Limits

namespace AlgebraicGeometry.Scheme.GlueData

variable (D : Scheme.GlueData.{u})

/-- The 1-hypercover of `D.glued` in the big Zariski site that is given by the
open cover `D.U` from the glue data `D`.
The "covering of the intersection of two such open subsets" is the trivial
covering given by `D.V`. -/
@[simps]
noncomputable def oneHypercover : Scheme.zariskiTopology.OneHypercover D.glued where
  I₀ := D.J
  X := D.U
  f := D.ι
  I₁ _ _ := PUnit
  Y i₁ i₂ _ := D.V (i₁, i₂)
  p₁ i₁ i₂ _ := D.f i₁ i₂
  p₂ i₁ i₂ _ := D.t i₁ i₂ ≫ D.f i₂ i₁
  w i₁ i₂ _ := by simp only [Category.assoc, Scheme.GlueData.glue_condition]
  mem₀ := by
    refine zariskiTopology.superset_covering ?_ (grothendieckTopology_cover D.openCover)
    rw [Sieve.generate_le_iff]
    rintro W _ ⟨i⟩
    exact ⟨_, 𝟙 _, _, ⟨i⟩, by simp; rfl⟩
  mem₁ i₁ i₂ W p₁ p₂ fac := by
    refine zariskiTopology.superset_covering (fun T g _ ↦ ?_) (zariskiTopology.top_mem _)
    have ⟨φ, h₁, h₂⟩ := PullbackCone.IsLimit.lift' (D.vPullbackConeIsLimit i₁ i₂)
      (g ≫ p₁) (g ≫ p₂) (by simpa using g ≫= fac)
    exact ⟨⟨⟩, φ, h₁.symm, h₂.symm⟩

section

variable {F : Sheaf Scheme.zariskiTopology (Type v)}
  (s : ∀ (j : D.J), F.val.obj (op (D.U j)))
  (h : ∀ (i j : D.J), F.val.map (D.f i j).op (s i) =
    F.val.map ((D.f j i).op ≫ (D.t i j).op) (s j))

/-- Constructor for sections over `D.glued` of a sheaf of types on the big Zariski site. -/
noncomputable def sheafValGluedMk : F.val.obj (op D.glued) :=
  Multifork.IsLimit.sectionsEquiv (D.oneHypercover.isLimitMultifork F)
    { val := s
      property := fun _ ↦ h _ _ }

@[simp]
lemma sheafValGluedMk_val (j : D.J) : F.val.map (D.ι j).op (D.sheafValGluedMk s h) = s j :=
  Multifork.IsLimit.sectionsEquiv_apply_val (D.oneHypercover.isLimitMultifork F) _ _

end

end AlgebraicGeometry.Scheme.GlueData
