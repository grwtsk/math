-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"b2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Probability/Kernel/MeasurableIntegral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.Probability.Kernel.Basic


namespace GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68

#align_import probability.kernel.measurable_integral from "leanprover-community/mathlib"@"28b2a92f2996d28e580450863c130955de0ed398"

/-!
# Measurability of the integral against a kernel

The Lebesgue integral of a measurable function against a kernel is measurable. The Bochner integral
is strongly measurable.

## Main statements

* `Measurable.lintegral_kernel_prod_right`: the function `a ↦ ∫⁻ b, f a b ∂(κ a)` is measurable,
  for an s-finite kernel `κ : kernel α β` and a function `f : α → β → ℝ≥0∞` such that `uncurry f`
  is measurable.
* `MeasureTheory.StronglyMeasurable.integral_kernel_prod_right`: the function
  `a ↦ ∫ b, f a b ∂(κ a)` is measurable, for an s-finite kernel `κ : kernel α β` and a function
  `f : α → β → E` such that `uncurry f` is measurable.

-/


open MeasureTheory ProbabilityTheory Function Set Filter

open scoped MeasureTheory ENNReal Topology

variable {α β γ : Type*} {mα : MeasurableSpace α} {mβ : MeasurableSpace β} {mγ : MeasurableSpace γ}
  {κ : kernel α β} {η : kernel (α × β) γ} {a : α}

namespace ProbabilityTheory

namespace kernel

/-- This is an auxiliary lemma for `measurable_kernel_prod_mk_left`. -/
theorem measurable_kernel_prod_mk_left_of_finite {t : Set (α × β)} (ht : MeasurableSet t)
    (hκs : ∀ a, IsFiniteMeasure (κ a)) : Measurable fun a => κ a (Prod.mk a ⁻¹' t) := by
  -- `t` is a measurable set in the product `α × β`: we use that the product σ-algebra is generated
  -- by boxes to prove the result by induction.
  -- Porting note: added motive
  refine' MeasurableSpace.induction_on_inter
    (C := fun t => Measurable fun a => κ a (Prod.mk a ⁻¹' t))
    generateFrom_prod.symm isPiSystem_prod _ _ _ _ ht
  ·-- case `t = ∅`
    simp only [preimage_empty, measure_empty, measurable_const]
  · -- case of a box: `t = t₁ ×ˢ t₂` for measurable sets `t₁` and `t₂`
    intro t' ht'
    simp only [Set.mem_image2, Set.mem_setOf_eq, exists_and_left] at ht'
    obtain ⟨t₁, ht₁, t₂, ht₂, rfl⟩ := ht'
    classical
    simp_rw [mk_preimage_prod_right_eq_if]
    have h_eq_ite : (fun a => κ a (ite (a ∈ t₁) t₂ ∅)) = fun a => ite (a ∈ t₁) (κ a t₂) 0 := by
      ext1 a
      split_ifs
      exacts [rfl, measure_empty]
    rw [h_eq_ite]
    exact Measurable.ite ht₁ (kernel.measurable_coe κ ht₂) measurable_const
  · -- we assume that the result is true for `t` and we prove it for `tᶜ`
    intro t' ht' h_meas
    have h_eq_sdiff : ∀ a, Prod.mk a ⁻¹' t'ᶜ = Set.univ \ Prod.mk a ⁻¹' t' := by
      intro a
      ext1 b
      simp only [mem_compl_iff, mem_preimage, mem_diff, mem_univ, true_and_iff]
    simp_rw [h_eq_sdiff]
    have :
      (fun a => κ a (Set.univ \ Prod.mk a ⁻¹' t')) = fun a =>
        κ a Set.univ - κ a (Prod.mk a ⁻¹' t') := by
      ext1 a
      rw [← Set.diff_inter_self_eq_diff, Set.inter_univ, measure_diff (Set.subset_univ _)]
      · exact (@measurable_prod_mk_left α β _ _ a) ht'
      · exact measure_ne_top _ _
    rw [this]
    exact Measurable.sub (kernel.measurable_coe κ MeasurableSet.univ) h_meas
  · -- we assume that the result is true for a family of disjoint sets and prove it for their union
    intro f h_disj hf_meas hf
    have h_Union :
      (fun a => κ a (Prod.mk a ⁻¹' ⋃ i, f i)) = fun a => κ a (⋃ i, Prod.mk a ⁻¹' f i) := by
      ext1 a
      congr with b
      simp only [mem_iUnion, mem_preimage]
    rw [h_Union]
    have h_tsum :
      (fun a => κ a (⋃ i, Prod.mk a ⁻¹' f i)) = fun a => ∑' i, κ a (Prod.mk a ⁻¹' f i) := by
      ext1 a
      rw [measure_iUnion]
      · intro i j hij s hsi hsj b hbs
        have habi : {(a, b)} ⊆ f i := by rw [Set.singleton_subset_iff]; exact hsi hbs
        have habj : {(a, b)} ⊆ f j := by rw [Set.singleton_subset_iff]; exact hsj hbs
        simpa only [Set.bot_eq_empty, Set.le_eq_subset, Set.singleton_subset_iff,
          Set.mem_empty_iff_false] using h_disj hij habi habj
      · exact fun i => (@measurable_prod_mk_left α β _ _ a) (hf_meas i)
    rw [h_tsum]
    exact Measurable.ennreal_tsum hf
#align probability_theory.kernel.measurable_kernel_prod_mk_left_of_finite ProbabilityTheory.kernel.measurable_kernel_prod_mk_left_of_finite

theorem measurable_kernel_prod_mk_left [IsSFiniteKernel κ] {t : Set (α × β)}
    (ht : MeasurableSet t) : Measurable fun a => κ a (Prod.mk a ⁻¹' t) := by
  rw [← kernel.kernel_sum_seq κ]
  have : ∀ a, kernel.sum (kernel.seq κ) a (Prod.mk a ⁻¹' t) =
      ∑' n, kernel.seq κ n a (Prod.mk a ⁻¹' t) := fun a =>
    kernel.sum_apply' _ _ (measurable_prod_mk_left ht)
  simp_rw [this]
  refine' Measurable.ennreal_tsum fun n => _
  exact measurable_kernel_prod_mk_left_of_finite ht inferInstance
#align probability_theory.kernel.measurable_kernel_prod_mk_left ProbabilityTheory.kernel.measurable_kernel_prod_mk_left

theorem measurable_kernel_prod_mk_left' [IsSFiniteKernel η] {s : Set (β × γ)} (hs : MeasurableSet s)
    (a : α) : Measurable fun b => η (a, b) (Prod.mk b ⁻¹' s) := by
  have : ∀ b, Prod.mk b ⁻¹' s = {c | ((a, b), c) ∈ {p : (α × β) × γ | (p.1.2, p.2) ∈ s}} := by
    intro b; rfl
  simp_rw [this]
  refine' (measurable_kernel_prod_mk_left _).comp measurable_prod_mk_left
  exact (measurable_fst.snd.prod_mk measurable_snd) hs
#align probability_theory.kernel.measurable_kernel_prod_mk_left' ProbabilityTheory.kernel.measurable_kernel_prod_mk_left'

theorem measurable_kernel_prod_mk_right [IsSFiniteKernel κ] {s : Set (β × α)}
    (hs : MeasurableSet s) : Measurable fun y => κ y ((fun x => (x, y)) ⁻¹' s) :=
  measurable_kernel_prod_mk_left (measurableSet_swap_iff.mpr hs)
#align probability_theory.kernel.measurable_kernel_prod_mk_right ProbabilityTheory.kernel.measurable_kernel_prod_mk_right

end kernel

open ProbabilityTheory.kernel

section Lintegral

variable [IsSFiniteKernel κ] [IsSFiniteKernel η]

/-- Auxiliary lemma for `Measurable.lintegral_kernel_prod_right`. -/
theorem kernel.measurable_lintegral_indicator_const {t : Set (α × β)} (ht : MeasurableSet t)
    (c : ℝ≥0∞) : Measurable fun a => ∫⁻ b, t.indicator (Function.const (α × β) c) (a, b) ∂κ a := by
  -- Porting note: was originally by
  -- `simp_rw [lintegral_indicator_const_comp measurable_prod_mk_left ht _]`
  -- but this has no effect, so added the `conv` below
  conv =>
    congr
    ext
    erw [lintegral_indicator_const_comp measurable_prod_mk_left ht _]
  exact Measurable.const_mul (measurable_kernel_prod_mk_left ht) c
#align probability_theory.kernel.measurable_lintegral_indicator_const ProbabilityTheory.kernel.measurable_lintegral_indicator_const

/-- For an s-finite kernel `κ` and a function `f : α → β → ℝ≥0∞` which is measurable when seen as a
map from `α × β` (hypothesis `Measurable (uncurry f)`), the integral `a ↦ ∫⁻ b, f a b ∂(κ a)` is
measurable. -/
theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.lintegral_kernel_prod_right {f : α → β → ℝ≥0∞}
    (hf : Measurable (uncurry f)) : Measurable fun a => ∫⁻ b, f a b ∂κ a := by
  let F : ℕ → SimpleFunc (α × β) ℝ≥0∞ := SimpleFunc.eapprox (uncurry f)
  have h : ∀ a, ⨆ n, F n a = uncurry f a := SimpleFunc.iSup_eapprox_apply (uncurry f) hf
  simp only [Prod.forall, uncurry_apply_pair] at h
  simp_rw [← h]
  have : ∀ a, (∫⁻ b, ⨆ n, F n (a, b) ∂κ a) = ⨆ n, ∫⁻ b, F n (a, b) ∂κ a := by
    intro a
    rw [lintegral_iSup]
    · exact fun n => (F n).measurable.comp measurable_prod_mk_left
    · exact fun i j hij b => SimpleFunc.monotone_eapprox (uncurry f) hij _
  simp_rw [this]
  -- Porting note: trouble finding the induction motive
  -- refine' measurable_iSup fun n => SimpleFunc.induction _ _ (F n)
  refine' measurable_iSup fun n => _
  refine' SimpleFunc.induction
    (P := fun f => Measurable (fun (a : α) => ∫⁻ (b : β), f (a, b) ∂κ a)) _ _ (F n)
  · intro c t ht
    simp only [SimpleFunc.const_zero, SimpleFunc.coe_piecewise, SimpleFunc.coe_const,
      SimpleFunc.coe_zero, Set.piecewise_eq_indicator]
    exact kernel.measurable_lintegral_indicator_const (κ := κ) ht c
  · intro g₁ g₂ _ hm₁ hm₂
    simp only [SimpleFunc.coe_add, Pi.add_apply]
    have h_add :
      (fun a => ∫⁻ b, g₁ (a, b) + g₂ (a, b) ∂κ a) =
        (fun a => ∫⁻ b, g₁ (a, b) ∂κ a) + fun a => ∫⁻ b, g₂ (a, b) ∂κ a := by
      ext1 a
      rw [Pi.add_apply]
      -- Porting note: was `rw` (`Function.comp` reducibility)
      erw [lintegral_add_left (g₁.measurable.comp measurable_prod_mk_left)]
      simp_rw [Function.comp_apply]
    rw [h_add]
    exact Measurable.add hm₁ hm₂
#align measurable.lintegral_kernel_prod_right Measurable.lintegral_kernel_prod_right

theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.lintegral_kernel_prod_right' {f : α × β → ℝ≥0∞} (hf : Measurable f) :
    Measurable fun a => ∫⁻ b, f (a, b) ∂κ a := by
  refine' Measurable.lintegral_kernel_prod_right _
  have : (uncurry fun (a : α) (b : β) => f (a, b)) = f := by
    ext x; rw [← @Prod.mk.eta _ _ x, uncurry_apply_pair]
  rwa [this]
#align measurable.lintegral_kernel_prod_right' Measurable.lintegral_kernel_prod_right'

theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.lintegral_kernel_prod_right'' {f : β × γ → ℝ≥0∞} (hf : Measurable f) :
    Measurable fun x => ∫⁻ y, f (x, y) ∂η (a, x) := by
  -- Porting note: used `Prod.mk a` instead of `fun x => (a, x)` below
  change
    Measurable
      ((fun x => ∫⁻ y, (fun u : (α × β) × γ => f (u.1.2, u.2)) (x, y) ∂η x) ∘ Prod.mk a)
  -- Porting note: specified `κ`, `f`.
  refine' (Measurable.lintegral_kernel_prod_right' (κ := η)
    (f := (fun u ↦ f (u.fst.snd, u.snd))) _).comp measurable_prod_mk_left
  exact hf.comp (measurable_fst.snd.prod_mk measurable_snd)
#align measurable.lintegral_kernel_prod_right'' Measurable.lintegral_kernel_prod_right''

theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.set_lintegral_kernel_prod_right {f : α → β → ℝ≥0∞}
    (hf : Measurable (uncurry f)) {s : Set β} (hs : MeasurableSet s) :
    Measurable fun a => ∫⁻ b in s, f a b ∂κ a := by
  simp_rw [← lintegral_restrict κ hs]; exact hf.lintegral_kernel_prod_right
#align measurable.set_lintegral_kernel_prod_right Measurable.set_lintegral_kernel_prod_right

theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.lintegral_kernel_prod_left' {f : β × α → ℝ≥0∞} (hf : Measurable f) :
    Measurable fun y => ∫⁻ x, f (x, y) ∂κ y :=
  (measurable_swap_iff.mpr hf).lintegral_kernel_prod_right'
#align measurable.lintegral_kernel_prod_left' Measurable.lintegral_kernel_prod_left'

theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.lintegral_kernel_prod_left {f : β → α → ℝ≥0∞}
    (hf : Measurable (uncurry f)) : Measurable fun y => ∫⁻ x, f x y ∂κ y :=
  hf.lintegral_kernel_prod_left'
#align measurable.lintegral_kernel_prod_left Measurable.lintegral_kernel_prod_left

theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.set_lintegral_kernel_prod_left {f : β → α → ℝ≥0∞}
    (hf : Measurable (uncurry f)) {s : Set β} (hs : MeasurableSet s) :
    Measurable fun b => ∫⁻ a in s, f a b ∂κ b := by
  simp_rw [← lintegral_restrict κ hs]; exact hf.lintegral_kernel_prod_left
#align measurable.set_lintegral_kernel_prod_left Measurable.set_lintegral_kernel_prod_left

theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.lintegral_kernel {f : β → ℝ≥0∞} (hf : Measurable f) :
    Measurable fun a => ∫⁻ b, f b ∂κ a :=
  Measurable.lintegral_kernel_prod_right (hf.comp measurable_snd)
#align measurable.lintegral_kernel Measurable.lintegral_kernel

theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.set_lintegral_kernel {f : β → ℝ≥0∞} (hf : Measurable f) {s : Set β}
    (hs : MeasurableSet s) : Measurable fun a => ∫⁻ b in s, f b ∂κ a := by
  -- Porting note: was term mode proof (`Function.comp` reducibility)
  refine Measurable.set_lintegral_kernel_prod_right ?_ hs
  convert (hf.comp measurable_snd)
#align measurable.set_lintegral_kernel Measurable.set_lintegral_kernel

end Lintegral

variable {E : Type*} [NormedAddCommGroup E] [IsSFiniteKernel κ] [IsSFiniteKernel η]

theorem measurableSet_kernel_integrable ⦃f : α → β → E⦄ (hf : StronglyMeasurable (uncurry f)) :
    MeasurableSet {x | Integrable (f x) (κ x)} := by
  simp_rw [Integrable, hf.of_uncurry_left.aestronglyMeasurable, true_and_iff]
  exact measurableSet_lt (Measurable.lintegral_kernel_prod_right hf.ennnorm) measurable_const
#align probability_theory.measurable_set_kernel_integrable ProbabilityTheory.measurableSet_kernel_integrable

end ProbabilityTheory

open ProbabilityTheory ProbabilityTheory.kernel

namespace MeasureTheory

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E] [IsSFiniteKernel κ]
  [IsSFiniteKernel η]

theorem StronglyMeasurable.integral_kernel_prod_right ⦃f : α → β → E⦄
    (hf : StronglyMeasurable (uncurry f)) : StronglyMeasurable fun x => ∫ y, f x y ∂κ x := by
  classical
  borelize E
  haveI : TopologicalSpace.SeparableSpace (range (uncurry f) ∪ {0} : Set E) :=
    hf.separableSpace_range_union_singleton
  let s : ℕ → SimpleFunc (α × β) E :=
    SimpleFunc.approxOn _ hf.measurable (range (uncurry f) ∪ {0}) 0 (by simp)
  let s' : ℕ → α → SimpleFunc β E := fun n x => (s n).comp (Prod.mk x) measurable_prod_mk_left
  let f' : ℕ → α → E := fun n =>
    {x | Integrable (f x) (κ x)}.indicator fun x => (s' n x).integral (κ x)
  have hf' : ∀ n, StronglyMeasurable (f' n) := by
    intro n; refine' StronglyMeasurable.indicator _ (measurableSet_kernel_integrable hf)
    have : ∀ x, ((s' n x).range.filter fun x => x ≠ 0) ⊆ (s n).range := by
      intro x; refine' Finset.Subset.trans (Finset.filter_subset _ _) _; intro y
      simp_rw [SimpleFunc.mem_range]; rintro ⟨z, rfl⟩; exact ⟨(x, z), rfl⟩
    simp only [SimpleFunc.integral_eq_sum_of_subset (this _)]
    refine' Finset.stronglyMeasurable_sum _ fun x _ => _
    refine' (Measurable.ennreal_toReal _).stronglyMeasurable.smul_const _
    simp (config := { singlePass := true }) only [SimpleFunc.coe_comp, preimage_comp]
    apply kernel.measurable_kernel_prod_mk_left
    exact (s n).measurableSet_fiber x
  have h2f' : Tendsto f' atTop (𝓝 fun x : α => ∫ y : β, f x y ∂κ x) := by
    rw [tendsto_pi_nhds]; intro x
    by_cases hfx : Integrable (f x) (κ x)
    · have : ∀ n, Integrable (s' n x) (κ x) := by
        intro n; apply (hfx.norm.add hfx.norm).mono' (s' n x).aestronglyMeasurable
        apply eventually_of_forall; intro y
        simp_rw [SimpleFunc.coe_comp]; exact SimpleFunc.norm_approxOn_zero_le _ _ (x, y) n
      simp only [ hfx, SimpleFunc.integral_eq_integral _ (this _), indicator_of_mem,
        mem_setOf_eq]
      refine'
        tendsto_integral_of_dominated_convergence (fun y => ‖f x y‖ + ‖f x y‖)
          (fun n => (s' n x).aestronglyMeasurable) (hfx.norm.add hfx.norm) _ _
      · -- Porting note: was
        -- exact fun n => eventually_of_forall fun y =>
        --   SimpleFunc.norm_approxOn_zero_le _ _ (x, y) n
        exact fun n => eventually_of_forall fun y =>
          SimpleFunc.norm_approxOn_zero_le hf.measurable (by simp) (x, y) n
      · -- Porting note:
        -- refine' eventually_of_forall fun y => SimpleFunc.tendsto_approxOn _ _ _
        refine' eventually_of_forall fun y => SimpleFunc.tendsto_approxOn hf.measurable (by simp) _
        apply subset_closure
        simp [-uncurry_apply_pair]
    · simp [hfx, integral_undef]
  exact stronglyMeasurable_of_tendsto _ hf' h2f'
#align measure_theory.strongly_measurable.integral_kernel_prod_right MeasureTheory.StronglyMeasurable.integral_kernel_prod_right

theorem StronglyMeasurable.integral_kernel_prod_right' ⦃f : α × β → E⦄ (hf : StronglyMeasurable f) :
    StronglyMeasurable fun x => ∫ y, f (x, y) ∂κ x := by
  rw [← uncurry_curry f] at hf
  exact hf.integral_kernel_prod_right
#align measure_theory.strongly_measurable.integral_kernel_prod_right' MeasureTheory.StronglyMeasurable.integral_kernel_prod_right'

theorem StronglyMeasurable.integral_kernel_prod_right'' {f : β × γ → E}
    (hf : StronglyMeasurable f) : StronglyMeasurable fun x => ∫ y, f (x, y) ∂η (a, x) := by
  change
    StronglyMeasurable
      ((fun x => ∫ y, (fun u : (α × β) × γ => f (u.1.2, u.2)) (x, y) ∂η x) ∘ fun x => (a, x))
  refine' StronglyMeasurable.comp_measurable _ measurable_prod_mk_left
  -- Porting note: was (`Function.comp` reducibility)
  -- refine' MeasureTheory.StronglyMeasurable.integral_kernel_prod_right' _
  -- exact hf.comp_measurable (measurable_fst.snd.prod_mk measurable_snd)
  have := MeasureTheory.StronglyMeasurable.integral_kernel_prod_right' (κ := η)
    (hf.comp_measurable (measurable_fst.snd.prod_mk measurable_snd))
  simpa using this
#align measure_theory.strongly_measurable.integral_kernel_prod_right'' MeasureTheory.StronglyMeasurable.integral_kernel_prod_right''

theorem StronglyMeasurable.integral_kernel_prod_left ⦃f : β → α → E⦄
    (hf : StronglyMeasurable (uncurry f)) : StronglyMeasurable fun y => ∫ x, f x y ∂κ y :=
  (hf.comp_measurable measurable_swap).integral_kernel_prod_right'
#align measure_theory.strongly_measurable.integral_kernel_prod_left MeasureTheory.StronglyMeasurable.integral_kernel_prod_left

theorem StronglyMeasurable.integral_kernel_prod_left' ⦃f : β × α → E⦄ (hf : StronglyMeasurable f) :
    StronglyMeasurable fun y => ∫ x, f (x, y) ∂κ y :=
  (hf.comp_measurable measurable_swap).integral_kernel_prod_right'
#align measure_theory.strongly_measurable.integral_kernel_prod_left' MeasureTheory.StronglyMeasurable.integral_kernel_prod_left'

theorem StronglyMeasurable.integral_kernel_prod_left'' {f : γ × β → E} (hf : StronglyMeasurable f) :
    StronglyMeasurable fun y => ∫ x, f (x, y) ∂η (a, y) := by
  change
    StronglyMeasurable
      ((fun y => ∫ x, (fun u : γ × α × β => f (u.1, u.2.2)) (x, y) ∂η y) ∘ fun x => (a, x))
  refine' StronglyMeasurable.comp_measurable _ measurable_prod_mk_left
  -- Porting note: was (`Function.comp` reducibility)
  -- refine' MeasureTheory.StronglyMeasurable.integral_kernel_prod_left' _
  -- exact hf.comp_measurable (measurable_fst.prod_mk measurable_snd.snd)
  have := MeasureTheory.StronglyMeasurable.integral_kernel_prod_left' (κ := η)
    (hf.comp_measurable (measurable_fst.prod_mk measurable_snd.snd))
  simpa using this
#align measure_theory.strongly_measurable.integral_kernel_prod_left'' MeasureTheory.StronglyMeasurable.integral_kernel_prod_left''

end MeasureTheory
