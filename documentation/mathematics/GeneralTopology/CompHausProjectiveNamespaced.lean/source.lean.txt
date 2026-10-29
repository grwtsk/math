-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ProjectivePresentation.Variant13b9d7a654872009336d8c3d060cf125685608352d7f3c3dd8c3281af77653e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13b9d7a654872009336d8c3d060cf125685608352d7f3c3dd8c3281af77653e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ProjectivePresentation.Variant13b9d7a654872009336d8c3d060cf125685608352d7f3c3dd8c3281af77653e5","mathematical_subject":"Topology.GeneralTopology","original_sha256":"13b9d7a654872009336d8c3d060cf125685608352d7f3c3dd8c3281af77653e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/CompHaus/Projective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Topology.Category.CompHaus.Basic
import Mathlib.Topology.StoneCech
import Mathlib.CategoryTheory.Preadditive.Projective.Basic
import Mathlib.CategoryTheory.ConcreteCategory.EpiMono

/-!
# CompHaus has enough projectives

In this file we show that `CompHaus` has enough projectives.

## Main results

Let `X` be a compact Hausdorff space.

* `CompHaus.projective_ultrafilter`: the space `Ultrafilter X` is a projective object
* `CompHaus.projectivePresentation`: the natural map `Ultrafilter X → X`
  is a projective presentation

## Reference

See [miraglia2006introduction] Chapter 21 for a proof that `CompHaus` has enough projectives.

-/



namespace GRWTSK.Topology.GeneralTopology.ProjectivePresentation.Variant13b9d7a654872009336d8c3d060cf125685608352d7f3c3dd8c3281af77653e5

noncomputable section

open CategoryTheory Function

namespace CompHaus

instance projective_ultrafilter (X : Type*) : Projective (of <| Ultrafilter X) where
  factors {Y Z} f g hg := by
    rw [epi_iff_surjective] at hg
    obtain ⟨g', hg'⟩ := hg.hasRightInverse
    let t : X → Y := g' ∘ f ∘ (pure : X → Ultrafilter X)
    let h : Ultrafilter X → Y := Ultrafilter.extend t
    have hh : Continuous h := continuous_ultrafilter_extend _
    use CompHausLike.ofHom _ ⟨h, hh⟩
    apply ConcreteCategory.coe_ext
    have : g.hom ∘ g' = id := hg'.comp_eq_id
    convert denseRange_pure.equalizer (g.hom.continuous.comp hh) f.hom.continuous _
    -- This used to be `rw`, but we need `rw; rfl` after https://github.com/leanprover/lean4/pull/2644
    rw [comp_assoc, ultrafilter_extend_extends, ← comp_assoc, this, id_comp]
    rfl

/-- For any compact Hausdorff space `X`,
  the natural map `Ultrafilter X → X` is a projective presentation. -/
def projectivePresentation (X : CompHaus) : ProjectivePresentation X where
  p := of <| Ultrafilter X
  f := CompHausLike.ofHom _ ⟨_, continuous_ultrafilter_extend id⟩
  projective := CompHaus.projective_ultrafilter X
  epi :=
    ConcreteCategory.epi_of_surjective _ fun x =>
      ⟨(pure x : Ultrafilter X), congr_fun (ultrafilter_extend_extends (𝟙 X)) x⟩

instance : EnoughProjectives CompHaus where presentation X := ⟨projectivePresentation X⟩

end CompHaus
