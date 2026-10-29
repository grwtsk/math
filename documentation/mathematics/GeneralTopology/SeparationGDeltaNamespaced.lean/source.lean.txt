-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PerfectlyNormalSpace.Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PerfectlyNormalSpace.Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Separation/GDelta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Topology.Compactness.Lindelof
import Mathlib.Topology.Compactness.SigmaCompact
import Mathlib.Topology.Connected.TotallyDisconnected
import Mathlib.Topology.Inseparable
import Mathlib.Topology.Separation.Regular
import Mathlib.Topology.GDelta.Basic

/-!
# Separation properties of topological spaces.

## Main definitions

* `PerfectlyNormalSpace`: A perfectly normal space is a normal space such that
  closed sets are Gδ.
* `T6Space`: A T₆ space is a Perfectly normal T₁ space. T₆ implies T₅.

Note that `mathlib` adopts the modern convention that `m ≤ n` if and only if `T_m → T_n`, but
occasionally the literature swaps definitions for e.g. T₃ and regular.

-/


namespace GRWTSK.Topology.GeneralTopology.PerfectlyNormalSpace.Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76

open Function Set Filter Topology TopologicalSpace

universe u

variable {X : Type*} [TopologicalSpace X]

section Separation

theorem IsGδ.compl_singleton (x : X) [T1Space X] : IsGδ ({x}ᶜ : Set X) :=
  isOpen_compl_singleton.isGδ


theorem Set.Countable.isGδ_compl {s : Set X} [T1Space X] (hs : s.Countable) : IsGδ sᶜ := by
  rw [← biUnion_of_singleton s, compl_iUnion₂]
  exact .biInter hs fun x _ => .compl_singleton x

theorem Set.Finite.isGδ_compl {s : Set X} [T1Space X] (hs : s.Finite) : IsGδ sᶜ :=
  hs.countable.isGδ_compl

theorem Set.Subsingleton.isGδ_compl {s : Set X} [T1Space X] (hs : s.Subsingleton) : IsGδ sᶜ :=
  hs.finite.isGδ_compl

theorem Finset.isGδ_compl [T1Space X] (s : Finset X) : IsGδ (sᶜ : Set X) :=
  s.finite_toSet.isGδ_compl

protected theorem IsGδ.singleton [FirstCountableTopology X] [T1Space X] (x : X) :
    IsGδ ({x} : Set X) := by
  rcases (nhds_basis_opens x).exists_antitone_subbasis with ⟨U, hU, h_basis⟩
  rw [← biInter_basis_nhds h_basis.toHasBasis]
  exact .biInter (to_countable _) fun n _ => (hU n).2.isGδ


theorem Set.Finite.isGδ [FirstCountableTopology X] {s : Set X} [T1Space X] (hs : s.Finite) :
    IsGδ s :=
  Finite.induction_on _ hs .empty fun _ _ ↦ .union (.singleton _)


section PerfectlyNormal

/-- A topological space `X` is a *perfectly normal space* provided it is normal and
closed sets are Gδ. -/
class PerfectlyNormalSpace (X : Type u) [TopologicalSpace X] : Prop extends NormalSpace X where
    closed_gdelta : ∀ ⦃h : Set X⦄, IsClosed h → IsGδ h

/-- Lemma that allows the easy conclusion that perfectly normal spaces are completely normal. -/
theorem Disjoint.hasSeparatingCover_closed_gdelta_right {s t : Set X} [NormalSpace X]
    (st_dis : Disjoint s t) (t_cl : IsClosed t) (t_gd : IsGδ t) : HasSeparatingCover s t := by
  obtain ⟨T, T_open, T_count, T_int⟩ := t_gd
  rcases T.eq_empty_or_nonempty with rfl | T_nonempty
  · rw [T_int, sInter_empty] at st_dis
    rw [(s.disjoint_univ).mp st_dis]
    exact t.hasSeparatingCover_empty_left
  obtain ⟨g, g_surj⟩ := T_count.exists_surjective T_nonempty
  choose g' g'_open clt_sub_g' clg'_sub_g using fun n ↦ by
    apply normal_exists_closure_subset t_cl (T_open (g n).1 (g n).2)
    rw [T_int]
    exact sInter_subset_of_mem (g n).2
  have clg'_int : t = ⋂ i, closure (g' i) := by
    apply (subset_iInter fun n ↦ (clt_sub_g' n).trans subset_closure).antisymm
    rw [T_int]
    refine subset_sInter fun t tinT ↦ ?_
    obtain ⟨n, gn⟩ := g_surj ⟨t, tinT⟩
    refine iInter_subset_of_subset n <| (clg'_sub_g n).trans ?_
    rw [gn]
  use fun n ↦ (closure (g' n))ᶜ
  constructor
  · rw [← compl_iInter, subset_compl_comm, ← clg'_int]
    exact st_dis.subset_compl_left
  · refine fun n ↦ ⟨isOpen_compl_iff.mpr isClosed_closure, ?_⟩
    simp only [closure_compl, disjoint_compl_left_iff_subset]
    rw [← closure_eq_iff_isClosed.mpr t_cl] at clt_sub_g'
    exact subset_closure.trans <| (clt_sub_g' n).trans <| (g'_open n).subset_interior_closure

instance (priority := 100) PerfectlyNormalSpace.toCompletelyNormalSpace
    [PerfectlyNormalSpace X] : CompletelyNormalSpace X where
  completely_normal _ _ hd₁ hd₂ := separatedNhds_iff_disjoint.mp <|
    hasSeparatingCovers_iff_separatedNhds.mp
      ⟨(hd₂.hasSeparatingCover_closed_gdelta_right isClosed_closure <|
         closed_gdelta isClosed_closure).mono (fun ⦃_⦄ a ↦ a) subset_closure,
       ((Disjoint.symm hd₁).hasSeparatingCover_closed_gdelta_right isClosed_closure <|
         closed_gdelta isClosed_closure).mono (fun ⦃_⦄ a ↦ a) subset_closure⟩

/-- In a perfectly normal space, all closed sets are Gδ. -/
theorem IsClosed.isGδ [PerfectlyNormalSpace X] {s : Set X} (hs : IsClosed s) : IsGδ s :=
  PerfectlyNormalSpace.closed_gdelta hs

/-- A T₆ space is a perfectly normal T₁ space. -/
class T6Space (X : Type u) [TopologicalSpace X] : Prop extends T1Space X, PerfectlyNormalSpace X

-- see Note [lower instance priority]
/-- A `T₆` space is a `T₅` space. -/
instance (priority := 100) T6Space.toT5Space [T6Space X] : T5Space X where
  -- follows from type-class inference
end PerfectlyNormal

end Separation
