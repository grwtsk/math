-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ExistsExtensionNormEq.Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.ExistsExtensionNormEq.Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"f4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/NormedSpace/HahnBanach/Extension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Heather Macbeth
-/
import Mathlib.Analysis.Convex.Cone.Basic
import Mathlib.Analysis.NormedSpace.IsROrC
import Mathlib.Analysis.NormedSpace.Extend
import Mathlib.Data.IsROrC.Lemmas


namespace GRWTSK.Analysis.FunctionalAnalysis.ExistsExtensionNormEq.Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4

#align_import analysis.normed_space.hahn_banach.extension from "leanprover-community/mathlib"@"915591b2bb3ea303648db07284a161a7f2a9e3d4"

/-!
# Extension Hahn-Banach theorem

In this file we prove the analytic Hahn-Banach theorem. For any continuous linear function on a
subspace, we can extend it to a function on the entire space without changing its norm.

We prove
* `Real.exists_extension_norm_eq`: Hahn-Banach theorem for continuous linear functions on normed
  spaces over `ℝ`.
* `exists_extension_norm_eq`: Hahn-Banach theorem for continuous linear functions on normed spaces
  over `ℝ` or `ℂ`.

In order to state and prove the corollaries uniformly, we prove the statements for a field `𝕜`
satisfying `IsROrC 𝕜`.

In this setting, `exists_dual_vector` states that, for any nonzero `x`, there exists a continuous
linear form `g` of norm `1` with `g x = ‖x‖` (where the norm has to be interpreted as an element
of `𝕜`).

-/


universe u v

namespace Real

variable {E : Type*} [SeminormedAddCommGroup E] [NormedSpace ℝ E]

/-- Hahn-Banach theorem for continuous linear functions over `ℝ`. -/
theorem exists_extension_norm_eq (p : Subspace ℝ E) (f : p →L[ℝ] ℝ) :
    ∃ g : E →L[ℝ] ℝ, (∀ x : p, g x = f x) ∧ ‖g‖ = ‖f‖ := by
  rcases exists_extension_of_le_sublinear ⟨p, f⟩ (fun x => ‖f‖ * ‖x‖)
      (fun c hc x => by simp only [norm_smul c x, Real.norm_eq_abs, abs_of_pos hc, mul_left_comm])
      (fun x y => by -- Porting note: placeholder filled here
        rw [← left_distrib]
        exact mul_le_mul_of_nonneg_left (norm_add_le x y) (@norm_nonneg _ _ f))
      fun x => le_trans (le_abs_self _) (f.le_op_norm _) with ⟨g, g_eq, g_le⟩
  set g' :=
    g.mkContinuous ‖f‖ fun x => abs_le.2 ⟨neg_le.1 <| g.map_neg x ▸ norm_neg x ▸ g_le (-x), g_le x⟩
  · refine' ⟨g', g_eq, _⟩
    · apply le_antisymm (g.mkContinuous_norm_le (norm_nonneg f) _)
      refine' f.op_norm_le_bound (norm_nonneg _) fun x => _
      dsimp at g_eq
      rw [← g_eq]
      apply g'.le_op_norm
#align real.exists_extension_norm_eq Real.exists_extension_norm_eq

end Real

section IsROrC

open IsROrC

variable {𝕜 : Type*} [IsROrC 𝕜] {F : Type*} [SeminormedAddCommGroup F] [NormedSpace 𝕜 F]

/-- Hahn-Banach theorem for continuous linear functions over `𝕜` satisfying `IsROrC 𝕜`. -/
theorem exists_extension_norm_eq (p : Subspace 𝕜 F) (f : p →L[𝕜] 𝕜) :
    ∃ g : F →L[𝕜] 𝕜, (∀ x : p, g x = f x) ∧ ‖g‖ = ‖f‖ := by
  letI : Module ℝ F := RestrictScalars.module ℝ 𝕜 F
  letI : IsScalarTower ℝ 𝕜 F := RestrictScalars.isScalarTower _ _ _
  letI : NormedSpace ℝ F := NormedSpace.restrictScalars _ 𝕜 _
  -- Let `fr: p →L[ℝ] ℝ` be the real part of `f`.
  let fr := reClm.comp (f.restrictScalars ℝ)
  -- Use the real version to get a norm-preserving extension of `fr`, which
  -- we'll call `g : F →L[ℝ] ℝ`.
  rcases Real.exists_extension_norm_eq (p.restrictScalars ℝ) fr with ⟨g, ⟨hextends, hnormeq⟩⟩
  -- Now `g` can be extended to the `F →L[𝕜] 𝕜` we need.
  refine' ⟨g.extendTo𝕜, _⟩
  -- It is an extension of `f`.
  have h : ∀ x : p, g.extendTo𝕜 x = f x := by
    intro x
    rw [ContinuousLinearMap.extendTo𝕜_apply, ← Submodule.coe_smul, hextends, hextends]
    have : (fr x : 𝕜) - I * ↑(fr (I • x)) = (re (f x) : 𝕜) - (I : 𝕜) * re (f ((I : 𝕜) • x)) := by
      rfl
    rw [this]
    apply ext
    · simp only [add_zero, Algebra.id.smul_eq_mul, I_re, ofReal_im, AddMonoidHom.map_add, zero_sub,
        I_im', zero_mul, ofReal_re, eq_self_iff_true, sub_zero, mul_neg, ofReal_neg,
        mul_re, mul_zero, sub_neg_eq_add, ContinuousLinearMap.map_smul]
    · simp only [Algebra.id.smul_eq_mul, I_re, ofReal_im, AddMonoidHom.map_add, zero_sub, I_im',
        zero_mul, ofReal_re, mul_neg, mul_im, zero_add, ofReal_neg, mul_re,
        sub_neg_eq_add, ContinuousLinearMap.map_smul]
  -- And we derive the equality of the norms by bounding on both sides.
  refine' ⟨h, le_antisymm _ _⟩
  · calc
      ‖g.extendTo𝕜‖ = ‖g‖ := g.norm_extendTo𝕜
      _ = ‖fr‖ := hnormeq
      _ ≤ ‖reClm‖ * ‖f‖ := (ContinuousLinearMap.op_norm_comp_le _ _)
      _ = ‖f‖ := by rw [reClm_norm, one_mul]
  · exact f.op_norm_le_bound g.extendTo𝕜.op_norm_nonneg fun x => h x ▸ g.extendTo𝕜.le_op_norm x
#align exists_extension_norm_eq exists_extension_norm_eq

end IsROrC

section DualVector

variable (𝕜 : Type v) [IsROrC 𝕜]

variable {E : Type u} [NormedAddCommGroup E] [NormedSpace 𝕜 E]

open ContinuousLinearEquiv Submodule

open Classical

theorem coord_norm' {x : E} (h : x ≠ 0) : ‖(‖x‖ : 𝕜) • coord 𝕜 x h‖ = 1 := by
  rw [norm_smul (x := coord 𝕜 x h), IsROrC.norm_coe_norm, coord_norm,
    mul_inv_cancel (mt norm_eq_zero.mp h)]
#align coord_norm' coord_norm'

/-- Corollary of Hahn-Banach. Given a nonzero element `x` of a normed space, there exists an
    element of the dual space, of norm `1`, whose value on `x` is `‖x‖`. -/
theorem exists_dual_vector (x : E) (h : x ≠ 0) : ∃ g : E →L[𝕜] 𝕜, ‖g‖ = 1 ∧ g x = ‖x‖ := by
  let p : Submodule 𝕜 E := 𝕜 ∙ x
  let f := (‖x‖ : 𝕜) • coord 𝕜 x h
  obtain ⟨g, hg⟩ := exists_extension_norm_eq p f
  refine' ⟨g, _, _⟩
  · rw [hg.2, coord_norm']
  · calc
      g x = g (⟨x, mem_span_singleton_self x⟩ : 𝕜 ∙ x) := by rw [coe_mk]
      _ = ((‖x‖ : 𝕜) • coord 𝕜 x h) (⟨x, mem_span_singleton_self x⟩ : 𝕜 ∙ x) := by rw [← hg.1]
      _ = ‖x‖ := by simp
#align exists_dual_vector exists_dual_vector

/-- Variant of Hahn-Banach, eliminating the hypothesis that `x` be nonzero, and choosing
    the dual element arbitrarily when `x = 0`. -/
theorem exists_dual_vector' [Nontrivial E] (x : E) : ∃ g : E →L[𝕜] 𝕜, ‖g‖ = 1 ∧ g x = ‖x‖ := by
  by_cases hx : x = 0
  · obtain ⟨y, hy⟩ := exists_ne (0 : E)
    obtain ⟨g, hg⟩ : ∃ g : E →L[𝕜] 𝕜, ‖g‖ = 1 ∧ g y = ‖y‖ := exists_dual_vector 𝕜 y hy
    refine' ⟨g, hg.left, _⟩
    simp [hx]
  · exact exists_dual_vector 𝕜 x hx
#align exists_dual_vector' exists_dual_vector'

/-- Variant of Hahn-Banach, eliminating the hypothesis that `x` be nonzero, but only ensuring that
    the dual element has norm at most `1` (this can not be improved for the trivial
    vector space). -/
theorem exists_dual_vector'' (x : E) : ∃ g : E →L[𝕜] 𝕜, ‖g‖ ≤ 1 ∧ g x = ‖x‖ := by
  by_cases hx : x = 0
  · refine' ⟨0, by simp, _⟩
    symm
    simp [hx]
  · rcases exists_dual_vector 𝕜 x hx with ⟨g, g_norm, g_eq⟩
    exact ⟨g, g_norm.le, g_eq⟩
#align exists_dual_vector'' exists_dual_vector''

end DualVector
