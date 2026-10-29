-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrothendieckTopology.Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.GrothendieckTopology.Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Sites/Spaces.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Sites.Grothendieck
import Mathlib.CategoryTheory.Sites.Pretopology
import Mathlib.CategoryTheory.Limits.Lattice
import Mathlib.Topology.Sets.Opens

/-!
# Grothendieck topology on a topological space

Define the Grothendieck topology and the pretopology associated to a topological space, and show
that the pretopology induces the topology.

The covering (pre)sieves on `X` are those for which the union of domains contains `X`.

## Tags

site, Grothendieck topology, space

## References

* [nLab, *Grothendieck topology*](https://ncatlab.org/nlab/show/Grothendieck+topology)
* [S. MacLane, I. Moerdijk, *Sheaves in Geometry and Logic*][MM92]

## Implementation notes

We define the two separately, rather than defining the Grothendieck topology as that generated
by the pretopology for the purpose of having nice definitional properties for the sieves.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrothendieckTopology.Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144

universe u

namespace Opens

variable (T : Type u) [TopologicalSpace T]

open CategoryTheory TopologicalSpace CategoryTheory.Limits

/-- The Grothendieck topology associated to a topological space. -/
def grothendieckTopology : GrothendieckTopology (Opens T) where
  sieves X S := ∀ x ∈ X, ∃ (U : _) (f : U ⟶ X), S f ∧ x ∈ U
  top_mem' _ _ hx := ⟨_, 𝟙 _, trivial, hx⟩
  pullback_stable' X Y S f hf y hy := by
    rcases hf y (f.le hy) with ⟨U, g, hg, hU⟩
    refine ⟨U ⊓ Y, homOfLE inf_le_right, ?_, hU, hy⟩
    apply S.downward_closed hg (homOfLE inf_le_left)
  transitive' X S hS R hR x hx := by
    rcases hS x hx with ⟨U, f, hf, hU⟩
    rcases hR hf _ hU with ⟨V, g, hg, hV⟩
    exact ⟨_, g ≫ f, hg, hV⟩

/-- The Grothendieck pretopology associated to a topological space. -/
def pretopology : Pretopology (Opens T) where
  coverings X R := ∀ x ∈ X, ∃ (U : _) (f : U ⟶ X), R f ∧ x ∈ U
  has_isos _ _ f _ _ hx := ⟨_, _, Presieve.singleton_self _, (inv f).le hx⟩
  pullbacks X Y f S hS x hx := by
    rcases hS _ (f.le hx) with ⟨U, g, hg, hU⟩
    refine ⟨_, _, Presieve.pullbackArrows.mk _ _ hg, ?_⟩
    have : U ⊓ Y ≤ pullback g f :=
      leOfHom (pullback.lift (homOfLE inf_le_left) (homOfLE inf_le_right) rfl)
    apply this ⟨hU, hx⟩
  transitive X S Ti hS hTi x hx := by
    rcases hS x hx with ⟨U, f, hf, hU⟩
    rcases hTi f hf x hU with ⟨V, g, hg, hV⟩
    exact ⟨_, _, ⟨_, g, f, hf, hg, rfl⟩, hV⟩

/-- The pretopology associated to a space is the largest pretopology that
    generates the Grothendieck topology associated to the space. -/
@[simp]
theorem pretopology_ofGrothendieck :
    Pretopology.ofGrothendieck _ (Opens.grothendieckTopology T) = Opens.pretopology T := by
  apply le_antisymm
  · intro X R hR x hx
    rcases hR x hx with ⟨U, f, ⟨V, g₁, g₂, hg₂, _⟩, hU⟩
    exact ⟨V, g₂, hg₂, g₁.le hU⟩
  · intro X R hR x hx
    rcases hR x hx with ⟨U, f, hf, hU⟩
    exact ⟨U, f, Sieve.le_generate R U hf, hU⟩

/-- The pretopology associated to a space induces the Grothendieck topology associated to the space.
-/
@[simp]
theorem pretopology_toGrothendieck :
    Pretopology.toGrothendieck _ (Opens.pretopology T) = Opens.grothendieckTopology T := by
  rw [← pretopology_ofGrothendieck]
  apply (Pretopology.gi (Opens T)).l_u_eq

end Opens
