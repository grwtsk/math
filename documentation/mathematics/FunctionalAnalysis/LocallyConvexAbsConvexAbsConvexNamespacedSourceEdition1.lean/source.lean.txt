-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.NhdsBasisAbsConvex.Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ConvexAnalysis.SourceCorpus.NhdsBasisAbsConvex.Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d","mathematical_subject":"Analysis.ConvexAnalysis","original_sha256":"bab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/LocallyConvex/AbsConvex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
import Mathlib.Analysis.LocallyConvex.BalancedCoreHull
import Mathlib.Analysis.LocallyConvex.WithSeminorms
import Mathlib.Analysis.Convex.Gauge


namespace GRWTSK.Analysis.FunctionalAnalysis.NhdsBasisAbsConvex.Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d

#align_import analysis.locally_convex.abs_convex from "leanprover-community/mathlib"@"f2ce6086713c78a7f880485f7917ea547a215982"

/-!
# Absolutely convex sets

A set is called absolutely convex or disked if it is convex and balanced.
The importance of absolutely convex sets comes from the fact that every locally convex
topological vector space has a basis consisting of absolutely convex sets.

## Main definitions

* `gaugeSeminormFamily`: the seminorm family induced by all open absolutely convex neighborhoods
of zero.

## Main statements

* `with_gaugeSeminormFamily`: the topology of a locally convex space is induced by the family
`gaugeSeminormFamily`.

## Todo

* Define the disked hull

## Tags

disks, convex, balanced
-/


open NormedField Set

open BigOperators NNReal Pointwise Topology

variable {𝕜 E F G ι : Type*}

section NontriviallyNormedField

variable (𝕜 E) {s : Set E}

variable [NontriviallyNormedField 𝕜] [AddCommGroup E] [Module 𝕜 E]

variable [Module ℝ E] [SMulCommClass ℝ 𝕜 E]

variable [TopologicalSpace E] [LocallyConvexSpace ℝ E] [ContinuousSMul 𝕜 E]

theorem nhds_basis_abs_convex :
    (𝓝 (0 : E)).HasBasis (fun s : Set E => s ∈ 𝓝 (0 : E) ∧ Balanced 𝕜 s ∧ Convex ℝ s) id := by
  refine'
    (LocallyConvexSpace.convex_basis_zero ℝ E).to_hasBasis (fun s hs => _) fun s hs =>
      ⟨s, ⟨hs.1, hs.2.2⟩, rfl.subset⟩
  refine' ⟨convexHull ℝ (balancedCore 𝕜 s), _, convexHull_min (balancedCore_subset s) hs.2⟩
  refine' ⟨Filter.mem_of_superset (balancedCore_mem_nhds_zero hs.1) (subset_convexHull ℝ _), _⟩
  refine' ⟨balanced_convexHull_of_balanced (balancedCore_balanced s), _⟩
  exact convex_convexHull ℝ (balancedCore 𝕜 s)
#align nhds_basis_abs_convex nhds_basis_abs_convex

variable [ContinuousSMul ℝ E] [TopologicalAddGroup E]

theorem nhds_basis_abs_convex_open :
    (𝓝 (0 : E)).HasBasis (fun s => (0 : E) ∈ s ∧ IsOpen s ∧ Balanced 𝕜 s ∧ Convex ℝ s) id := by
  refine' (nhds_basis_abs_convex 𝕜 E).to_hasBasis _ _
  · rintro s ⟨hs_nhds, hs_balanced, hs_convex⟩
    refine' ⟨interior s, _, interior_subset⟩
    exact
      ⟨mem_interior_iff_mem_nhds.mpr hs_nhds, isOpen_interior,
        hs_balanced.interior (mem_interior_iff_mem_nhds.mpr hs_nhds), hs_convex.interior⟩
  rintro s ⟨hs_zero, hs_open, hs_balanced, hs_convex⟩
  exact ⟨s, ⟨hs_open.mem_nhds hs_zero, hs_balanced, hs_convex⟩, rfl.subset⟩
#align nhds_basis_abs_convex_open nhds_basis_abs_convex_open

end NontriviallyNormedField

section AbsolutelyConvexSets

variable [TopologicalSpace E] [AddCommMonoid E] [Zero E] [SeminormedRing 𝕜]

variable [SMul 𝕜 E] [SMul ℝ E]

variable (𝕜 E)

/-- The type of absolutely convex open sets. -/
def AbsConvexOpenSets :=
  { s : Set E // (0 : E) ∈ s ∧ IsOpen s ∧ Balanced 𝕜 s ∧ Convex ℝ s }
#align abs_convex_open_sets AbsConvexOpenSets

noncomputable instance AbsConvexOpenSets.instCoeTC : CoeTC (AbsConvexOpenSets 𝕜 E) (Set E) :=
  ⟨Subtype.val⟩
#align abs_convex_open_sets.has_coe AbsConvexOpenSets.instCoeTC

namespace AbsConvexOpenSets

variable {𝕜 E}

theorem coe_zero_mem (s : AbsConvexOpenSets 𝕜 E) : (0 : E) ∈ (s : Set E) :=
  s.2.1
#align abs_convex_open_sets.coe_zero_mem AbsConvexOpenSets.coe_zero_mem

theorem coe_isOpen (s : AbsConvexOpenSets 𝕜 E) : IsOpen (s : Set E) :=
  s.2.2.1
#align abs_convex_open_sets.coe_is_open AbsConvexOpenSets.coe_isOpen

theorem coe_nhds (s : AbsConvexOpenSets 𝕜 E) : (s : Set E) ∈ 𝓝 (0 : E) :=
  s.coe_isOpen.mem_nhds s.coe_zero_mem
#align abs_convex_open_sets.coe_nhds AbsConvexOpenSets.coe_nhds

theorem coe_balanced (s : AbsConvexOpenSets 𝕜 E) : Balanced 𝕜 (s : Set E) :=
  s.2.2.2.1
#align abs_convex_open_sets.coe_balanced AbsConvexOpenSets.coe_balanced

theorem coe_convex (s : AbsConvexOpenSets 𝕜 E) : Convex ℝ (s : Set E) :=
  s.2.2.2.2
#align abs_convex_open_sets.coe_convex AbsConvexOpenSets.coe_convex

end AbsConvexOpenSets

instance AbsConvexOpenSets.instNonempty : Nonempty (AbsConvexOpenSets 𝕜 E) := by
  rw [← exists_true_iff_nonempty]
  dsimp only [AbsConvexOpenSets]
  rw [Subtype.exists]
  exact ⟨Set.univ, ⟨mem_univ 0, isOpen_univ, balanced_univ, convex_univ⟩, trivial⟩

end AbsolutelyConvexSets

variable [IsROrC 𝕜]

variable [AddCommGroup E] [TopologicalSpace E]

variable [Module 𝕜 E] [Module ℝ E] [IsScalarTower ℝ 𝕜 E]

variable [ContinuousSMul ℝ E]

variable (𝕜 E)

/-- The family of seminorms defined by the gauges of absolute convex open sets. -/
noncomputable def gaugeSeminormFamily : SeminormFamily 𝕜 E (AbsConvexOpenSets 𝕜 E) := fun s =>
  gaugeSeminorm s.coe_balanced s.coe_convex (absorbent_nhds_zero s.coe_nhds)
#align gauge_seminorm_family gaugeSeminormFamily

variable {𝕜 E}

theorem gaugeSeminormFamily_ball (s : AbsConvexOpenSets 𝕜 E) :
    (gaugeSeminormFamily 𝕜 E s).ball 0 1 = (s : Set E) := by
  dsimp only [gaugeSeminormFamily]
  rw [Seminorm.ball_zero_eq]
  simp_rw [gaugeSeminorm_toFun]
  exact gauge_lt_one_eq_self_of_open s.coe_convex s.coe_zero_mem s.coe_isOpen
#align gauge_seminorm_family_ball gaugeSeminormFamily_ball

variable [TopologicalAddGroup E] [ContinuousSMul 𝕜 E]

variable [SMulCommClass ℝ 𝕜 E] [LocallyConvexSpace ℝ E]

/-- The topology of a locally convex space is induced by the gauge seminorm family. -/
theorem with_gaugeSeminormFamily : WithSeminorms (gaugeSeminormFamily 𝕜 E) := by
  refine' SeminormFamily.withSeminorms_of_hasBasis _ _
  refine' (nhds_basis_abs_convex_open 𝕜 E).to_hasBasis (fun s hs => _) fun s hs => _
  · refine' ⟨s, ⟨_, rfl.subset⟩⟩
    convert(gaugeSeminormFamily _ _).basisSets_singleton_mem ⟨s, hs⟩ one_pos
    rw [gaugeSeminormFamily_ball, Subtype.coe_mk]
  refine' ⟨s, ⟨_, rfl.subset⟩⟩
  rw [SeminormFamily.basisSets_iff] at hs
  rcases hs with ⟨t, r, hr, rfl⟩
  rw [Seminorm.ball_finset_sup_eq_iInter _ _ _ hr]
  -- We have to show that the intersection contains zero, is open, balanced, and convex
  refine'
    ⟨mem_iInter₂.mpr fun _ _ => by simp [Seminorm.mem_ball_zero, hr],
      isOpen_biInter (t.finite_toSet) fun S _ => _,
      balanced_iInter₂ fun _ _ => Seminorm.balanced_ball_zero _ _,
      convex_iInter₂ fun _ _ => Seminorm.convex_ball _ _ _⟩
  -- The only nontrivial part is to show that the ball is open
  have hr' : r = ‖(r : 𝕜)‖ * 1 := by simp [abs_of_pos hr]
  have hr'' : (r : 𝕜) ≠ 0 := by simp [hr.ne']
  rw [hr', ← Seminorm.smul_ball_zero hr'', gaugeSeminormFamily_ball]
  exact S.coe_isOpen.smul₀ hr''
#align with_gauge_seminorm_family with_gaugeSeminormFamily
