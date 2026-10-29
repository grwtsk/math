-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ProjectivePresentation.Variantc4d68ddfdbb982f3ddf3aef5ab845736baa4562549ed8c191d0c7c3592c10f07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4d68ddfdbb982f3ddf3aef5ab845736baa4562549ed8c191d0c7c3592c10f07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ProjectivePresentation.Variantc4d68ddfdbb982f3ddf3aef5ab845736baa4562549ed8c191d0c7c3592c10f07","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c4d68ddfdbb982f3ddf3aef5ab845736baa4562549ed8c191d0c7c3592c10f07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Category/CompHaus/Projective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Topology.Category.CompHaus.Basic
import Mathlib.Topology.StoneCech
import Mathlib.CategoryTheory.Preadditive.Projective


namespace GRWTSK.Topology.GeneralTopology.ProjectivePresentation.Variantc4d68ddfdbb982f3ddf3aef5ab845736baa4562549ed8c191d0c7c3592c10f07

#align_import topology.category.CompHaus.projective from "leanprover-community/mathlib"@"829895f162a1f29d0133f4b3538f4cd1fb5bffd3"

/-!
# CompHaus has enough projectives

In this file we show that `CompHaus` has enough projectives.

## Main results

Let `X` be a compact Hausdorff space.

* `CompHaus.projective_ultrafilter`: the space `Ultrafilter X` is a projective object
* `CompHaus.projective_presentation`: the natural map `Ultrafilter X → X`
  is a projective presentation

## Reference

See [miraglia2006introduction] Chapter 21 for a proof that `CompHaus` has enough projectives.

-/


noncomputable section

open CategoryTheory Function

namespace CompHaus

attribute [local instance] ConcreteCategory.funLike

instance projective_ultrafilter (X : Type*) : Projective (of <| Ultrafilter X)
    where
  factors {Y Z} f g hg := by
    rw [epi_iff_surjective] at hg
    obtain ⟨g', hg'⟩ := hg.hasRightInverse
    let t : X → Y := g' ∘ f ∘ (pure : X → Ultrafilter X)
    let h : Ultrafilter X → Y := Ultrafilter.extend t
    have hh : Continuous h := continuous_ultrafilter_extend _
    use ⟨h, hh⟩
    apply Faithful.map_injective (F := forget CompHaus)
    simp only [Functor.map_comp, ContinuousMap.coe_mk, coe_comp]
    convert denseRange_pure.equalizer (g.continuous.comp hh) f.continuous _
    -- Porting note: We need to get the coercions to functions under control.
    -- The next two lines should not be needed.
    let g'' : ContinuousMap Y Z := g
    have : g'' ∘ g' = id := hg'.comp_eq_id
    rw [comp.assoc, ultrafilter_extend_extends, ← comp.assoc, this, comp.left_id]
set_option linter.uppercaseLean3 false in
#align CompHaus.projective_ultrafilter CompHaus.projective_ultrafilter

/-- For any compact Hausdorff space `X`,
  the natural map `Ultrafilter X → X` is a projective presentation. -/
def projectivePresentation (X : CompHaus) : ProjectivePresentation X where
  p := of <| Ultrafilter X
  f := ⟨_, continuous_ultrafilter_extend id⟩
  projective := CompHaus.projective_ultrafilter X
  epi :=
    ConcreteCategory.epi_of_surjective _ fun x =>
      ⟨(pure x : Ultrafilter X), congr_fun (ultrafilter_extend_extends (𝟙 X)) x⟩
set_option linter.uppercaseLean3 false in
#align CompHaus.projective_presentation CompHaus.projectivePresentation

instance : EnoughProjectives CompHaus where presentation X := ⟨projectivePresentation X⟩

end CompHaus
