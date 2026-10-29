-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.FilterTendstoIccExtend.Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.FilterTendstoIccExtend.Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac","mathematical_subject":"Topology.GeneralTopology","original_sha256":"34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Order/ProjIcc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Patrick Massot
-/
import Mathlib.Order.Interval.Set.ProjIcc
import Mathlib.Topology.Order.Basic

/-!
# Projection onto a closed interval

In this file we prove that the projection `Set.projIcc f a b h` is a quotient map, and use it
to show that `Set.IccExtend h f` is continuous if and only if `f` is continuous.
-/



namespace GRWTSK.Topology.GeneralTopology.FilterTendstoIccExtend.Variant34528feb252b61e75bbcc61d77c3ffa410ca641e3c473a0d5304ea6d74cd0fac

open Set Filter Topology

variable {α β γ : Type*} [LinearOrder α] {a b c : α} {h : a ≤ b}

protected theorem Filter.Tendsto.IccExtend (f : γ → Icc a b → β) {la : Filter α} {lb : Filter β}
    {lc : Filter γ} (hf : Tendsto (↿f) (lc ×ˢ la.map (projIcc a b h)) lb) :
    Tendsto (↿(IccExtend h ∘ f)) (lc ×ˢ la) lb :=
  hf.comp <| tendsto_id.prodMap tendsto_map

variable [TopologicalSpace α] [OrderTopology α] [TopologicalSpace β] [TopologicalSpace γ]

@[continuity]
theorem continuous_projIcc : Continuous (projIcc a b h) :=
  (continuous_const.max <| continuous_const.min continuous_id).subtype_mk _

theorem isQuotientMap_projIcc : IsQuotientMap (projIcc a b h) :=
  isQuotientMap_iff.2 ⟨projIcc_surjective h, fun s =>
    ⟨fun hs => hs.preimage continuous_projIcc, fun hs => ⟨_, hs, by ext; simp⟩⟩⟩

@[deprecated (since := "2024-10-22")]
alias quotientMap_projIcc := isQuotientMap_projIcc

@[simp]
theorem continuous_IccExtend_iff {f : Icc a b → β} : Continuous (IccExtend h f) ↔ Continuous f :=
  isQuotientMap_projIcc.continuous_iff.symm

/-- See Note [continuity lemma statement]. -/
protected theorem Continuous.IccExtend {f : γ → Icc a b → β} {g : γ → α} (hf : Continuous ↿f)
    (hg : Continuous g) : Continuous fun a => IccExtend h (f a) (g a) :=
  show Continuous (↿f ∘ fun x => (x, projIcc a b h (g x)))
  from hf.comp <| continuous_id.prodMk <| continuous_projIcc.comp hg

/-- A useful special case of `Continuous.IccExtend`. -/
@[continuity]
protected theorem Continuous.Icc_extend' {f : Icc a b → β} (hf : Continuous f) :
    Continuous (IccExtend h f) :=
  hf.comp continuous_projIcc

theorem ContinuousAt.IccExtend {x : γ} (f : γ → Icc a b → β) {g : γ → α}
    (hf : ContinuousAt (↿f) (x, projIcc a b h (g x))) (hg : ContinuousAt g x) :
    ContinuousAt (fun a => IccExtend h (f a) (g a)) x :=
  show ContinuousAt (↿f ∘ fun x => (x, projIcc a b h (g x))) x from
    ContinuousAt.comp hf <| continuousAt_id.prodMk <| continuous_projIcc.continuousAt.comp hg
