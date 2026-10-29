-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntervalIntegrable.Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntervalIntegrable.Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175","mathematical_subject":"Analysis.Integration","original_sha256":"37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/MeasureTheory/Integral/IntervalIntegral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury G. Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury G. Kudryashov, Patrick Massot, Sébastien Gouëzel
-/
import Mathlib.Data.Set.Intervals.Disjoint
import Mathlib.MeasureTheory.Integral.SetIntegral
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntervalIntegrable.Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175

#align_import measure_theory.integral.interval_integral from "leanprover-community/mathlib"@"fd5edc43dc4f10b85abfe544b88f82cf13c5f844"

/-!
# Integral over an interval

In this file we define `∫ x in a..b, f x ∂μ` to be `∫ x in Ioc a b, f x ∂μ` if `a ≤ b` and
`-∫ x in Ioc b a, f x ∂μ` if `b ≤ a`.

## Implementation notes

### Avoiding `if`, `min`, and `max`

In order to avoid `if`s in the definition, we define `IntervalIntegrable f μ a b` as
`integrable_on f (Ioc a b) μ ∧ integrable_on f (Ioc b a) μ`. For any `a`, `b` one of these
intervals is empty and the other coincides with `Set.uIoc a b = Set.Ioc (min a b) (max a b)`.

Similarly, we define `∫ x in a..b, f x ∂μ` to be `∫ x in Ioc a b, f x ∂μ - ∫ x in Ioc b a, f x ∂μ`.
Again, for any `a`, `b` one of these integrals is zero, and the other gives the expected result.

This way some properties can be translated from integrals over sets without dealing with
the cases `a ≤ b` and `b ≤ a` separately.

### Choice of the interval

We use integral over `Set.uIoc a b = Set.Ioc (min a b) (max a b)` instead of one of the other
three possible intervals with the same endpoints for two reasons:

* this way `∫ x in a..b, f x ∂μ + ∫ x in b..c, f x ∂μ = ∫ x in a..c, f x ∂μ` holds whenever
  `f` is integrable on each interval; in particular, it works even if the measure `μ` has an atom
  at `b`; this rules out `Set.Ioo` and `Set.Icc` intervals;
* with this definition for a probability measure `μ`, the integral `∫ x in a..b, 1 ∂μ` equals
  the difference $F_μ(b)-F_μ(a)$, where $F_μ(a)=μ(-∞, a]$ is the
  [cumulative distribution function](https://en.wikipedia.org/wiki/Cumulative_distribution_function)
  of `μ`.

## Tags

integral
-/


noncomputable section

open TopologicalSpace (SecondCountableTopology)

open MeasureTheory Set Classical Filter Function

open scoped Classical Topology Filter ENNReal BigOperators Interval NNReal

variable {ι 𝕜 E F A : Type*} [NormedAddCommGroup E]

/-!
### Integrability on an interval
-/


/-- A function `f` is called *interval integrable* with respect to a measure `μ` on an unordered
interval `a..b` if it is integrable on both intervals `(a, b]` and `(b, a]`. One of these
intervals is always empty, so this property is equivalent to `f` being integrable on
`(min a b, max a b]`. -/
def IntervalIntegrable (f : ℝ → E) (μ : Measure ℝ) (a b : ℝ) : Prop :=
  IntegrableOn f (Ioc a b) μ ∧ IntegrableOn f (Ioc b a) μ
#align interval_integrable IntervalIntegrable

section

variable {f : ℝ → E} {a b : ℝ} {μ : Measure ℝ}

/-- A function is interval integrable with respect to a given measure `μ` on `a..b` if and
  only if it is integrable on `uIoc a b` with respect to `μ`. This is an equivalent
  definition of `IntervalIntegrable`. -/
theorem intervalIntegrable_iff : IntervalIntegrable f μ a b ↔ IntegrableOn f (Ι a b) μ := by
  rw [uIoc_eq_union, integrableOn_union, IntervalIntegrable]
#align interval_integrable_iff intervalIntegrable_iff

/-- If a function is interval integrable with respect to a given measure `μ` on `a..b` then
  it is integrable on `uIoc a b` with respect to `μ`. -/
theorem IntervalIntegrable.def (h : IntervalIntegrable f μ a b) : IntegrableOn f (Ι a b) μ :=
  intervalIntegrable_iff.mp h
#align interval_integrable.def IntervalIntegrable.def

theorem intervalIntegrable_iff_integrable_Ioc_of_le (hab : a ≤ b) :
    IntervalIntegrable f μ a b ↔ IntegrableOn f (Ioc a b) μ := by
  rw [intervalIntegrable_iff, uIoc_of_le hab]
#align interval_integrable_iff_integrable_Ioc_of_le intervalIntegrable_iff_integrable_Ioc_of_le

theorem intervalIntegrable_iff' [NoAtoms μ] :
    IntervalIntegrable f μ a b ↔ IntegrableOn f (uIcc a b) μ := by
  rw [intervalIntegrable_iff, ← Icc_min_max, uIoc, integrableOn_Icc_iff_integrableOn_Ioc]
#align interval_integrable_iff' intervalIntegrable_iff'

theorem intervalIntegrable_iff_integrable_Icc_of_le {f : ℝ → E} {a b : ℝ} (hab : a ≤ b)
    {μ : Measure ℝ} [NoAtoms μ] : IntervalIntegrable f μ a b ↔ IntegrableOn f (Icc a b) μ := by
  rw [intervalIntegrable_iff_integrable_Ioc_of_le hab, integrableOn_Icc_iff_integrableOn_Ioc]
#align interval_integrable_iff_integrable_Icc_of_le intervalIntegrable_iff_integrable_Icc_of_le

/-- If a function is integrable with respect to a given measure `μ` then it is interval integrable
  with respect to `μ` on `uIcc a b`. -/
theorem MeasureTheory.Integrable.intervalIntegrable (hf : Integrable f μ) :
    IntervalIntegrable f μ a b :=
  ⟨hf.integrableOn, hf.integrableOn⟩
#align measure_theory.integrable.interval_integrable MeasureTheory.Integrable.intervalIntegrable

theorem MeasureTheory.IntegrableOn.intervalIntegrable (hf : IntegrableOn f [[a, b]] μ) :
    IntervalIntegrable f μ a b :=
  ⟨MeasureTheory.IntegrableOn.mono_set hf (Ioc_subset_Icc_self.trans Icc_subset_uIcc),
    MeasureTheory.IntegrableOn.mono_set hf (Ioc_subset_Icc_self.trans Icc_subset_uIcc')⟩
#align measure_theory.integrable_on.interval_integrable MeasureTheory.IntegrableOn.intervalIntegrable

theorem intervalIntegrable_const_iff {c : E} :
    IntervalIntegrable (fun _ => c) μ a b ↔ c = 0 ∨ μ (Ι a b) < ∞ := by
  simp only [intervalIntegrable_iff, integrableOn_const]
#align interval_integrable_const_iff intervalIntegrable_const_iff

@[simp]
theorem intervalIntegrable_const [IsLocallyFiniteMeasure μ] {c : E} :
    IntervalIntegrable (fun _ => c) μ a b :=
  intervalIntegrable_const_iff.2 <| Or.inr measure_Ioc_lt_top
#align interval_integrable_const intervalIntegrable_const

end

namespace IntervalIntegrable

section

variable {f : ℝ → E} {a b c d : ℝ} {μ ν : Measure ℝ}

@[symm]
nonrec theorem symm (h : IntervalIntegrable f μ a b) : IntervalIntegrable f μ b a :=
  h.symm
#align interval_integrable.symm IntervalIntegrable.symm

@[refl, simp] -- porting note: added `simp`
theorem refl : IntervalIntegrable f μ a a := by constructor <;> simp
#align interval_integrable.refl IntervalIntegrable.refl

@[trans]
theorem trans {a b c : ℝ} (hab : IntervalIntegrable f μ a b) (hbc : IntervalIntegrable f μ b c) :
    IntervalIntegrable f μ a c :=
  ⟨(hab.1.union hbc.1).mono_set Ioc_subset_Ioc_union_Ioc,
    (hbc.2.union hab.2).mono_set Ioc_subset_Ioc_union_Ioc⟩
#align interval_integrable.trans IntervalIntegrable.trans

theorem trans_iterate_Ico {a : ℕ → ℝ} {m n : ℕ} (hmn : m ≤ n)
    (hint : ∀ k ∈ Ico m n, IntervalIntegrable f μ (a k) (a <| k + 1)) :
    IntervalIntegrable f μ (a m) (a n) := by
  revert hint
  refine' Nat.le_induction _ _ n hmn
  · simp
  · intro p hp IH h
    exact (IH fun k hk => h k (Ico_subset_Ico_right p.le_succ hk)).trans (h p (by simp [hp]))
#align interval_integrable.trans_iterate_Ico IntervalIntegrable.trans_iterate_Ico

theorem trans_iterate {a : ℕ → ℝ} {n : ℕ}
    (hint : ∀ k < n, IntervalIntegrable f μ (a k) (a <| k + 1)) :
    IntervalIntegrable f μ (a 0) (a n) :=
  trans_iterate_Ico bot_le fun k hk => hint k hk.2
#align interval_integrable.trans_iterate IntervalIntegrable.trans_iterate

theorem neg (h : IntervalIntegrable f μ a b) : IntervalIntegrable (-f) μ a b :=
  ⟨h.1.neg, h.2.neg⟩
#align interval_integrable.neg IntervalIntegrable.neg

theorem norm (h : IntervalIntegrable f μ a b) : IntervalIntegrable (fun x => ‖f x‖) μ a b :=
  ⟨h.1.norm, h.2.norm⟩
#align interval_integrable.norm IntervalIntegrable.norm

theorem intervalIntegrable_norm_iff {f : ℝ → E} {μ : Measure ℝ} {a b : ℝ}
    (hf : AEStronglyMeasurable f (μ.restrict (Ι a b))) :
    IntervalIntegrable (fun t => ‖f t‖) μ a b ↔ IntervalIntegrable f μ a b := by
  simp_rw [intervalIntegrable_iff, IntegrableOn]; exact integrable_norm_iff hf
#align interval_integrable.interval_integrable_norm_iff IntervalIntegrable.intervalIntegrable_norm_iff

theorem abs {f : ℝ → ℝ} (h : IntervalIntegrable f μ a b) :
    IntervalIntegrable (fun x => |f x|) μ a b :=
  h.norm
#align interval_integrable.abs IntervalIntegrable.abs

theorem mono (hf : IntervalIntegrable f ν a b) (h1 : [[c, d]] ⊆ [[a, b]]) (h2 : μ ≤ ν) :
    IntervalIntegrable f μ c d :=
  intervalIntegrable_iff.mpr <| hf.def.mono (uIoc_subset_uIoc_of_uIcc_subset_uIcc h1) h2
#align interval_integrable.mono IntervalIntegrable.mono

theorem mono_measure (hf : IntervalIntegrable f ν a b) (h : μ ≤ ν) : IntervalIntegrable f μ a b :=
  hf.mono Subset.rfl h
#align interval_integrable.mono_measure IntervalIntegrable.mono_measure

theorem mono_set (hf : IntervalIntegrable f μ a b) (h : [[c, d]] ⊆ [[a, b]]) :
    IntervalIntegrable f μ c d :=
  hf.mono h le_rfl
#align interval_integrable.mono_set IntervalIntegrable.mono_set

theorem mono_set_ae (hf : IntervalIntegrable f μ a b) (h : Ι c d ≤ᵐ[μ] Ι a b) :
    IntervalIntegrable f μ c d :=
  intervalIntegrable_iff.mpr <| hf.def.mono_set_ae h
#align interval_integrable.mono_set_ae IntervalIntegrable.mono_set_ae

theorem mono_set' (hf : IntervalIntegrable f μ a b) (hsub : Ι c d ⊆ Ι a b) :
    IntervalIntegrable f μ c d :=
  hf.mono_set_ae <| eventually_of_forall hsub
#align interval_integrable.mono_set' IntervalIntegrable.mono_set'

theorem mono_fun [NormedAddCommGroup F] {g : ℝ → F} (hf : IntervalIntegrable f μ a b)
    (hgm : AEStronglyMeasurable g (μ.restrict (Ι a b)))
    (hle : (fun x => ‖g x‖) ≤ᵐ[μ.restrict (Ι a b)] fun x => ‖f x‖) : IntervalIntegrable g μ a b :=
  intervalIntegrable_iff.2 <| hf.def.integrable.mono hgm hle
#align interval_integrable.mono_fun IntervalIntegrable.mono_fun

theorem mono_fun' {g : ℝ → ℝ} (hg : IntervalIntegrable g μ a b)
    (hfm : AEStronglyMeasurable f (μ.restrict (Ι a b)))
    (hle : (fun x => ‖f x‖) ≤ᵐ[μ.restrict (Ι a b)] g) : IntervalIntegrable f μ a b :=
  intervalIntegrable_iff.2 <| hg.def.integrable.mono' hfm hle
#align interval_integrable.mono_fun' IntervalIntegrable.mono_fun'

protected theorem aestronglyMeasurable (h : IntervalIntegrable f μ a b) :
    AEStronglyMeasurable f (μ.restrict (Ioc a b)) :=
  h.1.aestronglyMeasurable
#align interval_integrable.ae_strongly_measurable IntervalIntegrable.aestronglyMeasurable

protected theorem ae_strongly_measurable' (h : IntervalIntegrable f μ a b) :
    AEStronglyMeasurable f (μ.restrict (Ioc b a)) :=
  h.2.aestronglyMeasurable
#align interval_integrable.ae_strongly_measurable' IntervalIntegrable.ae_strongly_measurable'

end

variable [NormedRing A] {f g : ℝ → E} {a b : ℝ} {μ : Measure ℝ}

theorem smul [NormedField 𝕜] [NormedSpace 𝕜 E] {f : ℝ → E} {a b : ℝ} {μ : Measure ℝ}
    (h : IntervalIntegrable f μ a b) (r : 𝕜) : IntervalIntegrable (r • f) μ a b :=
  ⟨h.1.smul r, h.2.smul r⟩
#align interval_integrable.smul IntervalIntegrable.smul

@[simp]
theorem add (hf : IntervalIntegrable f μ a b) (hg : IntervalIntegrable g μ a b) :
    IntervalIntegrable (fun x => f x + g x) μ a b :=
  ⟨hf.1.add hg.1, hf.2.add hg.2⟩
#align interval_integrable.add IntervalIntegrable.add

@[simp]
theorem sub (hf : IntervalIntegrable f μ a b) (hg : IntervalIntegrable g μ a b) :
    IntervalIntegrable (fun x => f x - g x) μ a b :=
  ⟨hf.1.sub hg.1, hf.2.sub hg.2⟩
#align interval_integrable.sub IntervalIntegrable.sub

theorem sum (s : Finset ι) {f : ι → ℝ → E} (h : ∀ i ∈ s, IntervalIntegrable (f i) μ a b) :
    IntervalIntegrable (∑ i in s, f i) μ a b :=
  ⟨integrable_finset_sum' s fun i hi => (h i hi).1, integrable_finset_sum' s fun i hi => (h i hi).2⟩
#align interval_integrable.sum IntervalIntegrable.sum

theorem mul_continuousOn {f g : ℝ → A} (hf : IntervalIntegrable f μ a b)
    (hg : ContinuousOn g [[a, b]]) : IntervalIntegrable (fun x => f x * g x) μ a b := by
  rw [intervalIntegrable_iff] at hf ⊢
  exact hf.mul_continuousOn_of_subset hg measurableSet_Ioc isCompact_uIcc Ioc_subset_Icc_self
#align interval_integrable.mul_continuous_on IntervalIntegrable.mul_continuousOn

theorem continuousOn_mul {f g : ℝ → A} (hf : IntervalIntegrable f μ a b)
    (hg : ContinuousOn g [[a, b]]) : IntervalIntegrable (fun x => g x * f x) μ a b := by
  rw [intervalIntegrable_iff] at hf ⊢
  exact hf.continuousOn_mul_of_subset hg isCompact_uIcc measurableSet_Ioc Ioc_subset_Icc_self
#align interval_integrable.continuous_on_mul IntervalIntegrable.continuousOn_mul

@[simp]
theorem const_mul {f : ℝ → A} (hf : IntervalIntegrable f μ a b) (c : A) :
    IntervalIntegrable (fun x => c * f x) μ a b :=
  hf.continuousOn_mul continuousOn_const
#align interval_integrable.const_mul IntervalIntegrable.const_mul

@[simp]
theorem mul_const {f : ℝ → A} (hf : IntervalIntegrable f μ a b) (c : A) :
    IntervalIntegrable (fun x => f x * c) μ a b :=
  hf.mul_continuousOn continuousOn_const
#align interval_integrable.mul_const IntervalIntegrable.mul_const

@[simp]
theorem div_const {𝕜 : Type*} {f : ℝ → 𝕜} [NormedField 𝕜] (h : IntervalIntegrable f μ a b)
    (c : 𝕜) : IntervalIntegrable (fun x => f x / c) μ a b := by
  simpa only [div_eq_mul_inv] using mul_const h c⁻¹
#align interval_integrable.div_const IntervalIntegrable.div_const

theorem comp_mul_left (hf : IntervalIntegrable f volume a b) (c : ℝ) :
    IntervalIntegrable (fun x => f (c * x)) volume (a / c) (b / c) := by
  rcases eq_or_ne c 0 with (hc | hc); · rw [hc]; simp
  rw [intervalIntegrable_iff'] at hf ⊢
  have A : MeasurableEmbedding fun x => x * c⁻¹ :=
    (Homeomorph.mulRight₀ _ (inv_ne_zero hc)).closedEmbedding.measurableEmbedding
  rw [← Real.smul_map_volume_mul_right (inv_ne_zero hc), IntegrableOn, Measure.restrict_smul,
    integrable_smul_measure (by simpa : ENNReal.ofReal |c⁻¹| ≠ 0) ENNReal.ofReal_ne_top,
    ← IntegrableOn, MeasurableEmbedding.integrableOn_map_iff A]
  convert hf using 1
  · ext; simp only [comp_apply]; congr 1; field_simp; ring
  · rw [preimage_mul_const_uIcc (inv_ne_zero hc)]; field_simp [hc]
#align interval_integrable.comp_mul_left IntervalIntegrable.comp_mul_left

-- porting note: new lemma
theorem comp_mul_left_iff {c : ℝ} (hc : c ≠ 0) :
    IntervalIntegrable (fun x ↦ f (c * x)) volume (a / c) (b / c) ↔
      IntervalIntegrable f volume a b :=
  ⟨fun h ↦ by simpa [hc] using h.comp_mul_left c⁻¹, (comp_mul_left · c)⟩

theorem comp_mul_right (hf : IntervalIntegrable f volume a b) (c : ℝ) :
    IntervalIntegrable (fun x => f (x * c)) volume (a / c) (b / c) := by
  simpa only [mul_comm] using comp_mul_left hf c
#align interval_integrable.comp_mul_right IntervalIntegrable.comp_mul_right

theorem comp_add_right (hf : IntervalIntegrable f volume a b) (c : ℝ) :
    IntervalIntegrable (fun x => f (x + c)) volume (a - c) (b - c) := by
  wlog h : a ≤ b generalizing a b
  · exact IntervalIntegrable.symm (this hf.symm (le_of_not_le h))
  rw [intervalIntegrable_iff'] at hf ⊢
  have A : MeasurableEmbedding fun x => x + c :=
    (Homeomorph.addRight c).closedEmbedding.measurableEmbedding
  rw [← map_add_right_eq_self volume c] at hf
  convert (MeasurableEmbedding.integrableOn_map_iff A).mp hf using 1
  rw [preimage_add_const_uIcc]
#align interval_integrable.comp_add_right IntervalIntegrable.comp_add_right

theorem comp_add_left (hf : IntervalIntegrable f volume a b) (c : ℝ) :
    IntervalIntegrable (fun x => f (c + x)) volume (a - c) (b - c) := by
  simpa only [add_comm] using IntervalIntegrable.comp_add_right hf c
#align interval_integrable.comp_add_left IntervalIntegrable.comp_add_left

theorem comp_sub_right (hf : IntervalIntegrable f volume a b) (c : ℝ) :
    IntervalIntegrable (fun x => f (x - c)) volume (a + c) (b + c) := by
  simpa only [sub_neg_eq_add] using IntervalIntegrable.comp_add_right hf (-c)
#align interval_integrable.comp_sub_right IntervalIntegrable.comp_sub_right

theorem iff_comp_neg :
    IntervalIntegrable f volume a b ↔ IntervalIntegrable (fun x => f (-x)) volume (-a) (-b) := by
  rw [← comp_mul_left_iff (neg_ne_zero.2 one_ne_zero)]; simp [div_neg]
#align interval_integrable.iff_comp_neg IntervalIntegrable.iff_comp_neg

theorem comp_sub_left (hf : IntervalIntegrable f volume a b) (c : ℝ) :
    IntervalIntegrable (fun x => f (c - x)) volume (c - a) (c - b) := by
  simpa only [neg_sub, ← sub_eq_add_neg] using iff_comp_neg.mp (hf.comp_add_left c)
#align interval_integrable.comp_sub_left IntervalIntegrable.comp_sub_left

end IntervalIntegrable

section

variable {μ : Measure ℝ} [IsLocallyFiniteMeasure μ]

theorem ContinuousOn.intervalIntegrable {u : ℝ → E} {a b : ℝ} (hu : ContinuousOn u (uIcc a b)) :
    IntervalIntegrable u μ a b :=
  (ContinuousOn.integrableOn_Icc hu).intervalIntegrable
#align continuous_on.interval_integrable ContinuousOn.intervalIntegrable

theorem ContinuousOn.intervalIntegrable_of_Icc {u : ℝ → E} {a b : ℝ} (h : a ≤ b)
    (hu : ContinuousOn u (Icc a b)) : IntervalIntegrable u μ a b :=
  ContinuousOn.intervalIntegrable ((uIcc_of_le h).symm ▸ hu)
#align continuous_on.interval_integrable_of_Icc ContinuousOn.intervalIntegrable_of_Icc

/-- A continuous function on `ℝ` is `IntervalIntegrable` with respect to any locally finite measure
`ν` on ℝ. -/
theorem Continuous.intervalIntegrable {u : ℝ → E} (hu : Continuous u) (a b : ℝ) :
    IntervalIntegrable u μ a b :=
  hu.continuousOn.intervalIntegrable
#align continuous.interval_integrable Continuous.intervalIntegrable

end

section

variable {μ : Measure ℝ} [IsLocallyFiniteMeasure μ] [ConditionallyCompleteLinearOrder E]
  [OrderTopology E] [SecondCountableTopology E]

theorem MonotoneOn.intervalIntegrable {u : ℝ → E} {a b : ℝ} (hu : MonotoneOn u (uIcc a b)) :
    IntervalIntegrable u μ a b := by
  rw [intervalIntegrable_iff]
  exact (hu.integrableOn_isCompact isCompact_uIcc).mono_set Ioc_subset_Icc_self
#align monotone_on.interval_integrable MonotoneOn.intervalIntegrable

theorem AntitoneOn.intervalIntegrable {u : ℝ → E} {a b : ℝ} (hu : AntitoneOn u (uIcc a b)) :
    IntervalIntegrable u μ a b :=
  hu.dual_right.intervalIntegrable
#align antitone_on.interval_integrable AntitoneOn.intervalIntegrable

theorem Monotone.intervalIntegrable {u : ℝ → E} {a b : ℝ} (hu : Monotone u) :
    IntervalIntegrable u μ a b :=
  (hu.monotoneOn _).intervalIntegrable
#align monotone.interval_integrable Monotone.intervalIntegrable

theorem Antitone.intervalIntegrable {u : ℝ → E} {a b : ℝ} (hu : Antitone u) :
    IntervalIntegrable u μ a b :=
  (hu.antitoneOn _).intervalIntegrable
#align antitone.interval_integrable Antitone.intervalIntegrable

end

/-- Let `l'` be a measurably generated filter; let `l` be a of filter such that each `s ∈ l'`
eventually includes `Ioc u v` as both `u` and `v` tend to `l`. Let `μ` be a measure finite at `l'`.

Suppose that `f : ℝ → E` has a finite limit at `l' ⊓ μ.ae`. Then `f` is interval integrable on
`u..v` provided that both `u` and `v` tend to `l`.

Typeclass instances allow Lean to find `l'` based on `l` but not vice versa, so
`apply tendsto.eventually_interval_integrable_ae` will generate goals `Filter ℝ` and
`tendsto_Ixx_class Ioc ?m_1 l'`. -/
theorem Filter.Tendsto.eventually_intervalIntegrable_ae {f : ℝ → E} {μ : Measure ℝ}
    {l l' : Filter ℝ} (hfm : StronglyMeasurableAtFilter f l' μ) [TendstoIxxClass Ioc l l']
    [IsMeasurablyGenerated l'] (hμ : μ.FiniteAtFilter l') {c : E} (hf : Tendsto f (l' ⊓ μ.ae) (𝓝 c))
    {u v : ι → ℝ} {lt : Filter ι} (hu : Tendsto u lt l) (hv : Tendsto v lt l) :
    ∀ᶠ t in lt, IntervalIntegrable f μ (u t) (v t) :=
  have := (hf.integrableAtFilter_ae hfm hμ).eventually
  ((hu.Ioc hv).eventually this).and <| (hv.Ioc hu).eventually this
#align filter.tendsto.eventually_interval_integrable_ae Filter.Tendsto.eventually_intervalIntegrable_ae

/-- Let `l'` be a measurably generated filter; let `l` be a of filter such that each `s ∈ l'`
eventually includes `Ioc u v` as both `u` and `v` tend to `l`. Let `μ` be a measure finite at `l'`.

Suppose that `f : ℝ → E` has a finite limit at `l`. Then `f` is interval integrable on `u..v`
provided that both `u` and `v` tend to `l`.

Typeclass instances allow Lean to find `l'` based on `l` but not vice versa, so
`apply tendsto.eventually_interval_integrable_ae` will generate goals `Filter ℝ` and
`tendsto_Ixx_class Ioc ?m_1 l'`. -/
theorem Filter.Tendsto.eventually_intervalIntegrable {f : ℝ → E} {μ : Measure ℝ} {l l' : Filter ℝ}
    (hfm : StronglyMeasurableAtFilter f l' μ) [TendstoIxxClass Ioc l l'] [IsMeasurablyGenerated l']
    (hμ : μ.FiniteAtFilter l') {c : E} (hf : Tendsto f l' (𝓝 c)) {u v : ι → ℝ} {lt : Filter ι}
    (hu : Tendsto u lt l) (hv : Tendsto v lt l) : ∀ᶠ t in lt, IntervalIntegrable f μ (u t) (v t) :=
  (hf.mono_left inf_le_left).eventually_intervalIntegrable_ae hfm hμ hu hv
#align filter.tendsto.eventually_interval_integrable Filter.Tendsto.eventually_intervalIntegrable

/-!
### Interval integral: definition and basic properties

In this section we define `∫ x in a..b, f x ∂μ` as `∫ x in Ioc a b, f x ∂μ - ∫ x in Ioc b a, f x ∂μ`
and prove some basic properties.
-/

variable [CompleteSpace E] [NormedSpace ℝ E]

/-- The interval integral `∫ x in a..b, f x ∂μ` is defined
as `∫ x in Ioc a b, f x ∂μ - ∫ x in Ioc b a, f x ∂μ`. If `a ≤ b`, then it equals
`∫ x in Ioc a b, f x ∂μ`, otherwise it equals `-∫ x in Ioc b a, f x ∂μ`. -/
def intervalIntegral (f : ℝ → E) (a b : ℝ) (μ : Measure ℝ) : E :=
  (∫ x in Ioc a b, f x ∂μ) - ∫ x in Ioc b a, f x ∂μ
#align interval_integral intervalIntegral

notation3"∫ "(...)" in "a".."b", "r:60:(scoped f => f)" ∂"μ:70 => intervalIntegral r a b μ

notation3"∫ "(...)" in "a".."b", "r:60:(scoped f => intervalIntegral f a b volume) => r

namespace intervalIntegral

section Basic

variable {a b : ℝ} {f g : ℝ → E} {μ : Measure ℝ}

@[simp]
theorem integral_zero : (∫ _ in a..b, (0 : E) ∂μ) = 0 := by simp [intervalIntegral]
#align interval_integral.integral_zero intervalIntegral.integral_zero

theorem integral_of_le (h : a ≤ b) : ∫ x in a..b, f x ∂μ = ∫ x in Ioc a b, f x ∂μ := by
  simp [intervalIntegral, h]
#align interval_integral.integral_of_le intervalIntegral.integral_of_le

@[simp]
theorem integral_same : ∫ x in a..a, f x ∂μ = 0 :=
  sub_self _
#align interval_integral.integral_same intervalIntegral.integral_same

theorem integral_symm (a b) : ∫ x in b..a, f x ∂μ = -∫ x in a..b, f x ∂μ := by
  simp only [intervalIntegral, neg_sub]
#align interval_integral.integral_symm intervalIntegral.integral_symm

theorem integral_of_ge (h : b ≤ a) : ∫ x in a..b, f x ∂μ = -∫ x in Ioc b a, f x ∂μ := by
  simp only [integral_symm b, integral_of_le h]
#align interval_integral.integral_of_ge intervalIntegral.integral_of_ge

theorem intervalIntegral_eq_integral_uIoc (f : ℝ → E) (a b : ℝ) (μ : Measure ℝ) :
    ∫ x in a..b, f x ∂μ = (if a ≤ b then 1 else -1 : ℝ) • ∫ x in Ι a b, f x ∂μ := by
  split_ifs with h
  · simp only [integral_of_le h, uIoc_of_le h, one_smul]
  · simp only [integral_of_ge (not_le.1 h).le, uIoc_of_lt (not_le.1 h), neg_one_smul]
#align interval_integral.interval_integral_eq_integral_uIoc intervalIntegral.intervalIntegral_eq_integral_uIoc

theorem norm_intervalIntegral_eq (f : ℝ → E) (a b : ℝ) (μ : Measure ℝ) :
    ‖∫ x in a..b, f x ∂μ‖ = ‖∫ x in Ι a b, f x ∂μ‖ := by
  simp_rw [intervalIntegral_eq_integral_uIoc, norm_smul]
  split_ifs <;> simp only [norm_neg, norm_one, one_mul]
#align interval_integral.norm_interval_integral_eq intervalIntegral.norm_intervalIntegral_eq

theorem abs_intervalIntegral_eq (f : ℝ → ℝ) (a b : ℝ) (μ : Measure ℝ) :
    |∫ x in a..b, f x ∂μ| = |∫ x in Ι a b, f x ∂μ| :=
  norm_intervalIntegral_eq f a b μ
#align interval_integral.abs_interval_integral_eq intervalIntegral.abs_intervalIntegral_eq

theorem integral_cases (f : ℝ → E) (a b) :
    (∫ x in a..b, f x ∂μ) ∈ ({∫ x in Ι a b, f x ∂μ, -∫ x in Ι a b, f x ∂μ} : Set E) := by
  rw [intervalIntegral_eq_integral_uIoc]; split_ifs <;> simp
#align interval_integral.integral_cases intervalIntegral.integral_cases

nonrec theorem integral_undef (h : ¬IntervalIntegrable f μ a b) : ∫ x in a..b, f x ∂μ = 0 := by
  rw [intervalIntegrable_iff] at h
  rw [intervalIntegral_eq_integral_uIoc, integral_undef h, smul_zero]
#align interval_integral.integral_undef intervalIntegral.integral_undef

theorem intervalIntegrable_of_integral_ne_zero {a b : ℝ} {f : ℝ → E} {μ : Measure ℝ}
    (h : (∫ x in a..b, f x ∂μ) ≠ 0) : IntervalIntegrable f μ a b :=
  not_imp_comm.1 integral_undef h
#align interval_integral.interval_integrable_of_integral_ne_zero intervalIntegral.intervalIntegrable_of_integral_ne_zero

nonrec theorem integral_non_aestronglyMeasurable
    (hf : ¬AEStronglyMeasurable f (μ.restrict (Ι a b))) :
    ∫ x in a..b, f x ∂μ = 0 := by
  rw [intervalIntegral_eq_integral_uIoc, integral_non_aestronglyMeasurable hf, smul_zero]
#align interval_integral.integral_non_ae_strongly_measurable intervalIntegral.integral_non_aestronglyMeasurable

theorem integral_non_aestronglyMeasurable_of_le (h : a ≤ b)
    (hf : ¬AEStronglyMeasurable f (μ.restrict (Ioc a b))) : ∫ x in a..b, f x ∂μ = 0 :=
  integral_non_aestronglyMeasurable <| by rwa [uIoc_of_le h]
#align interval_integral.integral_non_ae_strongly_measurable_of_le intervalIntegral.integral_non_aestronglyMeasurable_of_le

theorem norm_integral_min_max (f : ℝ → E) :
    ‖∫ x in min a b..max a b, f x ∂μ‖ = ‖∫ x in a..b, f x ∂μ‖ := by
  cases le_total a b <;> simp [*, integral_symm a b]
#align interval_integral.norm_integral_min_max intervalIntegral.norm_integral_min_max

theorem norm_integral_eq_norm_integral_Ioc (f : ℝ → E) :
    ‖∫ x in a..b, f x ∂μ‖ = ‖∫ x in Ι a b, f x ∂μ‖ := by
  rw [← norm_integral_min_max, integral_of_le min_le_max, uIoc]
#align interval_integral.norm_integral_eq_norm_integral_Ioc intervalIntegral.norm_integral_eq_norm_integral_Ioc

theorem abs_integral_eq_abs_integral_uIoc (f : ℝ → ℝ) :
    |∫ x in a..b, f x ∂μ| = |∫ x in Ι a b, f x ∂μ| :=
  norm_integral_eq_norm_integral_Ioc f
#align interval_integral.abs_integral_eq_abs_integral_uIoc intervalIntegral.abs_integral_eq_abs_integral_uIoc

theorem norm_integral_le_integral_norm_Ioc : ‖∫ x in a..b, f x ∂μ‖ ≤ ∫ x in Ι a b, ‖f x‖ ∂μ :=
  calc
    ‖∫ x in a..b, f x ∂μ‖ = ‖∫ x in Ι a b, f x ∂μ‖ := norm_integral_eq_norm_integral_Ioc f
    _ ≤ ∫ x in Ι a b, ‖f x‖ ∂μ := norm_integral_le_integral_norm f
#align interval_integral.norm_integral_le_integral_norm_Ioc intervalIntegral.norm_integral_le_integral_norm_Ioc

theorem norm_integral_le_abs_integral_norm : ‖∫ x in a..b, f x ∂μ‖ ≤ |∫ x in a..b, ‖f x‖ ∂μ| := by
  simp only [← Real.norm_eq_abs, norm_integral_eq_norm_integral_Ioc]
  exact le_trans (norm_integral_le_integral_norm _) (le_abs_self _)
#align interval_integral.norm_integral_le_abs_integral_norm intervalIntegral.norm_integral_le_abs_integral_norm

theorem norm_integral_le_integral_norm (h : a ≤ b) :
    ‖∫ x in a..b, f x ∂μ‖ ≤ ∫ x in a..b, ‖f x‖ ∂μ :=
  norm_integral_le_integral_norm_Ioc.trans_eq <| by rw [uIoc_of_le h, integral_of_le h]
#align interval_integral.norm_integral_le_integral_norm intervalIntegral.norm_integral_le_integral_norm

nonrec theorem norm_integral_le_of_norm_le {g : ℝ → ℝ} (h : ∀ᵐ t ∂μ.restrict <| Ι a b, ‖f t‖ ≤ g t)
    (hbound : IntervalIntegrable g μ a b) : ‖∫ t in a..b, f t ∂μ‖ ≤ |∫ t in a..b, g t ∂μ| := by
  simp_rw [norm_intervalIntegral_eq, abs_intervalIntegral_eq,
    abs_eq_self.mpr (integral_nonneg_of_ae <| h.mono fun _t ht => (norm_nonneg _).trans ht),
    norm_integral_le_of_norm_le hbound.def h]
#align interval_integral.norm_integral_le_of_norm_le intervalIntegral.norm_integral_le_of_norm_le

theorem norm_integral_le_of_norm_le_const_ae {a b C : ℝ} {f : ℝ → E}
    (h : ∀ᵐ x, x ∈ Ι a b → ‖f x‖ ≤ C) : ‖∫ x in a..b, f x‖ ≤ C * |b - a| := by
  rw [norm_integral_eq_norm_integral_Ioc]
  convert norm_set_integral_le_of_norm_le_const_ae'' _ measurableSet_Ioc h using 1
  · rw [Real.volume_Ioc, max_sub_min_eq_abs, ENNReal.toReal_ofReal (abs_nonneg _)]
  · simp only [Real.volume_Ioc, ENNReal.ofReal_lt_top]
#align interval_integral.norm_integral_le_of_norm_le_const_ae intervalIntegral.norm_integral_le_of_norm_le_const_ae

theorem norm_integral_le_of_norm_le_const {a b C : ℝ} {f : ℝ → E} (h : ∀ x ∈ Ι a b, ‖f x‖ ≤ C) :
    ‖∫ x in a..b, f x‖ ≤ C * |b - a| :=
  norm_integral_le_of_norm_le_const_ae <| eventually_of_forall h
#align interval_integral.norm_integral_le_of_norm_le_const intervalIntegral.norm_integral_le_of_norm_le_const

@[simp]
nonrec theorem integral_add (hf : IntervalIntegrable f μ a b) (hg : IntervalIntegrable g μ a b) :
    ∫ x in a..b, f x + g x ∂μ = (∫ x in a..b, f x ∂μ) + ∫ x in a..b, g x ∂μ := by
  simp only [intervalIntegral_eq_integral_uIoc, integral_add hf.def hg.def, smul_add]
#align interval_integral.integral_add intervalIntegral.integral_add

nonrec theorem integral_finset_sum {ι} {s : Finset ι} {f : ι → ℝ → E}
    (h : ∀ i ∈ s, IntervalIntegrable (f i) μ a b) :
    ∫ x in a..b, ∑ i in s, f i x ∂μ = ∑ i in s, ∫ x in a..b, f i x ∂μ := by
  simp only [intervalIntegral_eq_integral_uIoc, integral_finset_sum s fun i hi => (h i hi).def,
    Finset.smul_sum]
#align interval_integral.integral_finset_sum intervalIntegral.integral_finset_sum

@[simp]
nonrec theorem integral_neg : ∫ x in a..b, -f x ∂μ = -∫ x in a..b, f x ∂μ := by
  simp only [intervalIntegral, integral_neg]; abel
#align interval_integral.integral_neg intervalIntegral.integral_neg

@[simp]
theorem integral_sub (hf : IntervalIntegrable f μ a b) (hg : IntervalIntegrable g μ a b) :
    ∫ x in a..b, f x - g x ∂μ = (∫ x in a..b, f x ∂μ) - ∫ x in a..b, g x ∂μ := by
  simpa only [sub_eq_add_neg] using (integral_add hf hg.neg).trans (congr_arg _ integral_neg)
#align interval_integral.integral_sub intervalIntegral.integral_sub

@[simp]
nonrec theorem integral_smul {𝕜 : Type*} [NontriviallyNormedField 𝕜] [NormedSpace 𝕜 E]
    [SMulCommClass ℝ 𝕜 E] (r : 𝕜) (f : ℝ → E) :
    ∫ x in a..b, r • f x ∂μ = r • ∫ x in a..b, f x ∂μ := by
  simp only [intervalIntegral, integral_smul, smul_sub]
#align interval_integral.integral_smul intervalIntegral.integral_smul

@[simp]
nonrec theorem integral_smul_const {𝕜 : Type*} [IsROrC 𝕜] [NormedSpace 𝕜 E] (f : ℝ → 𝕜) (c : E) :
    ∫ x in a..b, f x • c ∂μ = (∫ x in a..b, f x ∂μ) • c := by
  simp only [intervalIntegral_eq_integral_uIoc, integral_smul_const, smul_assoc]
#align interval_integral.integral_smul_const intervalIntegral.integral_smul_const

@[simp]
theorem integral_const_mul {𝕜 : Type*} [IsROrC 𝕜] (r : 𝕜) (f : ℝ → 𝕜) :
    ∫ x in a..b, r * f x ∂μ = r * ∫ x in a..b, f x ∂μ :=
  integral_smul r f
#align interval_integral.integral_const_mul intervalIntegral.integral_const_mul

@[simp]
theorem integral_mul_const {𝕜 : Type*} [IsROrC 𝕜] (r : 𝕜) (f : ℝ → 𝕜) :
    ∫ x in a..b, f x * r ∂μ = (∫ x in a..b, f x ∂μ) * r := by
  simpa only [mul_comm r] using integral_const_mul r f
#align interval_integral.integral_mul_const intervalIntegral.integral_mul_const

@[simp]
theorem integral_div {𝕜 : Type*} [IsROrC 𝕜] (r : 𝕜) (f : ℝ → 𝕜) :
    ∫ x in a..b, f x / r ∂μ = (∫ x in a..b, f x ∂μ) / r := by
  simpa only [div_eq_mul_inv] using integral_mul_const r⁻¹ f
#align interval_integral.integral_div intervalIntegral.integral_div

theorem integral_const' (c : E) :
    ∫ _ in a..b, c ∂μ = ((μ <| Ioc a b).toReal - (μ <| Ioc b a).toReal) • c := by
  simp only [intervalIntegral, set_integral_const, sub_smul]
#align interval_integral.integral_const' intervalIntegral.integral_const'

@[simp]
theorem integral_const (c : E) : ∫ _ in a..b, c = (b - a) • c := by
  simp only [integral_const', Real.volume_Ioc, ENNReal.toReal_ofReal', ← neg_sub b,
    max_zero_sub_eq_self]
#align interval_integral.integral_const intervalIntegral.integral_const

nonrec theorem integral_smul_measure (c : ℝ≥0∞) :
    ∫ x in a..b, f x ∂c • μ = c.toReal • ∫ x in a..b, f x ∂μ := by
  simp only [intervalIntegral, Measure.restrict_smul, integral_smul_measure, smul_sub]
#align interval_integral.integral_smul_measure intervalIntegral.integral_smul_measure

end Basic

-- porting note: TODO: add `Complex.ofReal` version of `_root_.integral_ofReal`
nonrec theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.IntervalIntegrable.Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.IsROrC.interval_integral_ofReal {𝕜 : Type*} [IsROrC 𝕜] {a b : ℝ}
    {μ : Measure ℝ} {f : ℝ → ℝ} : (∫ x in a..b, (f x : 𝕜) ∂μ) = ↑(∫ x in a..b, f x ∂μ) := by
  simp only [intervalIntegral, integral_ofReal, IsROrC.ofReal_sub]

nonrec theorem integral_ofReal {a b : ℝ} {μ : Measure ℝ} {f : ℝ → ℝ} :
    (∫ x in a..b, (f x : ℂ) ∂μ) = ↑(∫ x in a..b, f x ∂μ) :=
  IsROrC.interval_integral_ofReal
#align interval_integral.integral_of_real intervalIntegral.integral_ofReal

section ContinuousLinearMap

variable {a b : ℝ} {μ : Measure ℝ} {f : ℝ → E}

variable [IsROrC 𝕜] [NormedSpace 𝕜 E] [NormedAddCommGroup F] [NormedSpace 𝕜 F]

open ContinuousLinearMap

theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.IntervalIntegrable.Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.ContinuousLinearMap.intervalIntegral_apply {a b : ℝ} {φ : ℝ → F →L[𝕜] E}
    (hφ : IntervalIntegrable φ μ a b) (v : F) :
    (∫ x in a..b, φ x ∂μ) v = ∫ x in a..b, φ x v ∂μ := by
  simp_rw [intervalIntegral_eq_integral_uIoc, ← integral_apply hφ.def v, coe_smul', Pi.smul_apply]
#align continuous_linear_map.interval_integral_apply ContinuousLinearMap.intervalIntegral_apply

variable [NormedSpace ℝ F] [CompleteSpace F]

theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.IntervalIntegrable.Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.ContinuousLinearMap.intervalIntegral_comp_comm (L : E →L[𝕜] F)
    (hf : IntervalIntegrable f μ a b) : (∫ x in a..b, L (f x) ∂μ) = L (∫ x in a..b, f x ∂μ) := by
  simp_rw [intervalIntegral, L.integral_comp_comm hf.1, L.integral_comp_comm hf.2, L.map_sub]
#align continuous_linear_map.interval_integral_comp_comm ContinuousLinearMap.intervalIntegral_comp_comm

end ContinuousLinearMap

section Comp

variable {a b c d : ℝ} (f : ℝ → E)

/-!
Porting note: some `@[simp]` attributes in this section were removed to make the `simpNF` linter
happy. TODO: find out if these lemmas are actually good or bad `simp` lemmas.
-/

-- porting note: was @[simp]
theorem integral_comp_mul_right (hc : c ≠ 0) :
    (∫ x in a..b, f (x * c)) = c⁻¹ • ∫ x in a * c..b * c, f x := by
  have A : MeasurableEmbedding fun x => x * c :=
    (Homeomorph.mulRight₀ c hc).closedEmbedding.measurableEmbedding
  conv_rhs => rw [← Real.smul_map_volume_mul_right hc]
  simp_rw [integral_smul_measure, intervalIntegral, A.set_integral_map,
    ENNReal.toReal_ofReal (abs_nonneg c)]
  cases' hc.lt_or_lt with h h
  · simp [h, mul_div_cancel, hc, abs_of_neg,
      Measure.restrict_congr_set (α := ℝ) (μ := volume) Ico_ae_eq_Ioc]
  · simp [h, mul_div_cancel, hc, abs_of_pos]
#align interval_integral.integral_comp_mul_right intervalIntegral.integral_comp_mul_right

-- porting note: was @[simp]
theorem smul_integral_comp_mul_right (c) :
    (c • ∫ x in a..b, f (x * c)) = ∫ x in a * c..b * c, f x := by
  by_cases hc : c = 0 <;> simp [hc, integral_comp_mul_right]
#align interval_integral.smul_integral_comp_mul_right intervalIntegral.smul_integral_comp_mul_right

-- porting note: was @[simp]
theorem integral_comp_mul_left (hc : c ≠ 0) :
    (∫ x in a..b, f (c * x)) = c⁻¹ • ∫ x in c * a..c * b, f x := by
  simpa only [mul_comm c] using integral_comp_mul_right f hc
#align interval_integral.integral_comp_mul_left intervalIntegral.integral_comp_mul_left

-- porting note: was @[simp]
theorem smul_integral_comp_mul_left (c) : (c • ∫ x in a..b, f (c * x)) = ∫ x in c * a..c * b, f x :=
  by by_cases hc : c = 0 <;> simp [hc, integral_comp_mul_left]
#align interval_integral.smul_integral_comp_mul_left intervalIntegral.smul_integral_comp_mul_left

-- porting note: was @[simp]
theorem integral_comp_div (hc : c ≠ 0) : (∫ x in a..b, f (x / c)) = c • ∫ x in a / c..b / c, f x :=
  by simpa only [inv_inv] using integral_comp_mul_right f (inv_ne_zero hc)
#align interval_integral.integral_comp_div intervalIntegral.integral_comp_div

-- porting note: was @[simp]
theorem inv_smul_integral_comp_div (c) :
    (c⁻¹ • ∫ x in a..b, f (x / c)) = ∫ x in a / c..b / c, f x := by
  by_cases hc : c = 0 <;> simp [hc, integral_comp_div]
#align interval_integral.inv_smul_integral_comp_div intervalIntegral.inv_smul_integral_comp_div

-- porting note: was @[simp]
theorem integral_comp_add_right (d) : (∫ x in a..b, f (x + d)) = ∫ x in a + d..b + d, f x :=
  have A : MeasurableEmbedding fun x => x + d :=
    (Homeomorph.addRight d).closedEmbedding.measurableEmbedding
  calc
    (∫ x in a..b, f (x + d)) = ∫ x in a + d..b + d, f x ∂Measure.map (fun x => x + d) volume := by
      simp [intervalIntegral, A.set_integral_map]
    _ = ∫ x in a + d..b + d, f x := by rw [map_add_right_eq_self]
#align interval_integral.integral_comp_add_right intervalIntegral.integral_comp_add_right

-- porting note: was @[simp]
nonrec theorem integral_comp_add_left (d) :
    (∫ x in a..b, f (d + x)) = ∫ x in d + a..d + b, f x := by
  simpa only [add_comm d] using integral_comp_add_right f d
#align interval_integral.integral_comp_add_left intervalIntegral.integral_comp_add_left

-- porting note: was @[simp]
theorem integral_comp_mul_add (hc : c ≠ 0) (d) :
    (∫ x in a..b, f (c * x + d)) = c⁻¹ • ∫ x in c * a + d..c * b + d, f x := by
  rw [← integral_comp_add_right, ← integral_comp_mul_left _ hc]
#align interval_integral.integral_comp_mul_add intervalIntegral.integral_comp_mul_add

-- porting note: was @[simp]
theorem smul_integral_comp_mul_add (c d) :
    (c • ∫ x in a..b, f (c * x + d)) = ∫ x in c * a + d..c * b + d, f x := by
  by_cases hc : c = 0 <;> simp [hc, integral_comp_mul_add]
#align interval_integral.smul_integral_comp_mul_add intervalIntegral.smul_integral_comp_mul_add

-- porting note: was @[simp]
theorem integral_comp_add_mul (hc : c ≠ 0) (d) :
    (∫ x in a..b, f (d + c * x)) = c⁻¹ • ∫ x in d + c * a..d + c * b, f x := by
  rw [← integral_comp_add_left, ← integral_comp_mul_left _ hc]
#align interval_integral.integral_comp_add_mul intervalIntegral.integral_comp_add_mul

-- porting note: was @[simp]
theorem smul_integral_comp_add_mul (c d) :
    (c • ∫ x in a..b, f (d + c * x)) = ∫ x in d + c * a..d + c * b, f x := by
  by_cases hc : c = 0 <;> simp [hc, integral_comp_add_mul]
#align interval_integral.smul_integral_comp_add_mul intervalIntegral.smul_integral_comp_add_mul

-- porting note: was @[simp]
theorem integral_comp_div_add (hc : c ≠ 0) (d) :
    (∫ x in a..b, f (x / c + d)) = c • ∫ x in a / c + d..b / c + d, f x := by
  simpa only [div_eq_inv_mul, inv_inv] using integral_comp_mul_add f (inv_ne_zero hc) d
#align interval_integral.integral_comp_div_add intervalIntegral.integral_comp_div_add

-- porting note: was @[simp]
theorem inv_smul_integral_comp_div_add (c d) :
    (c⁻¹ • ∫ x in a..b, f (x / c + d)) = ∫ x in a / c + d..b / c + d, f x := by
  by_cases hc : c = 0 <;> simp [hc, integral_comp_div_add]
#align interval_integral.inv_smul_integral_comp_div_add intervalIntegral.inv_smul_integral_comp_div_add

-- porting note: was @[simp]
theorem integral_comp_add_div (hc : c ≠ 0) (d) :
    (∫ x in a..b, f (d + x / c)) = c • ∫ x in d + a / c..d + b / c, f x := by
  simpa only [div_eq_inv_mul, inv_inv] using integral_comp_add_mul f (inv_ne_zero hc) d
#align interval_integral.integral_comp_add_div intervalIntegral.integral_comp_add_div

-- porting note: was @[simp]
theorem inv_smul_integral_comp_add_div (c d) :
    (c⁻¹ • ∫ x in a..b, f (d + x / c)) = ∫ x in d + a / c..d + b / c, f x := by
  by_cases hc : c = 0 <;> simp [hc, integral_comp_add_div]
#align interval_integral.inv_smul_integral_comp_add_div intervalIntegral.inv_smul_integral_comp_add_div

-- porting note: was @[simp]
theorem integral_comp_mul_sub (hc : c ≠ 0) (d) :
    (∫ x in a..b, f (c * x - d)) = c⁻¹ • ∫ x in c * a - d..c * b - d, f x := by
  simpa only [sub_eq_add_neg] using integral_comp_mul_add f hc (-d)
#align interval_integral.integral_comp_mul_sub intervalIntegral.integral_comp_mul_sub

-- porting note: was @[simp]
theorem smul_integral_comp_mul_sub (c d) :
    (c • ∫ x in a..b, f (c * x - d)) = ∫ x in c * a - d..c * b - d, f x := by
  by_cases hc : c = 0 <;> simp [hc, integral_comp_mul_sub]
#align interval_integral.smul_integral_comp_mul_sub intervalIntegral.smul_integral_comp_mul_sub

-- porting note: was @[simp]
theorem integral_comp_sub_mul (hc : c ≠ 0) (d) :
    (∫ x in a..b, f (d - c * x)) = c⁻¹ • ∫ x in d - c * b..d - c * a, f x := by
  simp only [sub_eq_add_neg, neg_mul_eq_neg_mul]
  rw [integral_comp_add_mul f (neg_ne_zero.mpr hc) d, integral_symm]
  simp only [inv_neg, smul_neg, neg_neg, neg_smul]
#align interval_integral.integral_comp_sub_mul intervalIntegral.integral_comp_sub_mul

-- porting note: was @[simp]
theorem smul_integral_comp_sub_mul (c d) :
    (c • ∫ x in a..b, f (d - c * x)) = ∫ x in d - c * b..d - c * a, f x := by
  by_cases hc : c = 0 <;> simp [hc, integral_comp_sub_mul]
#align interval_integral.smul_integral_comp_sub_mul intervalIntegral.smul_integral_comp_sub_mul

-- porting note: was @[simp]
theorem integral_comp_div_sub (hc : c ≠ 0) (d) :
    (∫ x in a..b, f (x / c - d)) = c • ∫ x in a / c - d..b / c - d, f x := by
  simpa only [div_eq_inv_mul, inv_inv] using integral_comp_mul_sub f (inv_ne_zero hc) d
#align interval_integral.integral_comp_div_sub intervalIntegral.integral_comp_div_sub

-- porting note: was @[simp]
theorem inv_smul_integral_comp_div_sub (c d) :
    (c⁻¹ • ∫ x in a..b, f (x / c - d)) = ∫ x in a / c - d..b / c - d, f x := by
  by_cases hc : c = 0 <;> simp [hc, integral_comp_div_sub]
#align interval_integral.inv_smul_integral_comp_div_sub intervalIntegral.inv_smul_integral_comp_div_sub

-- porting note: was @[simp]
theorem integral_comp_sub_div (hc : c ≠ 0) (d) :
    (∫ x in a..b, f (d - x / c)) = c • ∫ x in d - b / c..d - a / c, f x := by
  simpa only [div_eq_inv_mul, inv_inv] using integral_comp_sub_mul f (inv_ne_zero hc) d
#align interval_integral.integral_comp_sub_div intervalIntegral.integral_comp_sub_div

-- porting note: was @[simp]
theorem inv_smul_integral_comp_sub_div (c d) :
    (c⁻¹ • ∫ x in a..b, f (d - x / c)) = ∫ x in d - b / c..d - a / c, f x := by
  by_cases hc : c = 0 <;> simp [hc, integral_comp_sub_div]
#align interval_integral.inv_smul_integral_comp_sub_div intervalIntegral.inv_smul_integral_comp_sub_div

-- porting note: was @[simp]
theorem integral_comp_sub_right (d) : (∫ x in a..b, f (x - d)) = ∫ x in a - d..b - d, f x := by
  simpa only [sub_eq_add_neg] using integral_comp_add_right f (-d)
#align interval_integral.integral_comp_sub_right intervalIntegral.integral_comp_sub_right

-- porting note: was @[simp]
theorem integral_comp_sub_left (d) : (∫ x in a..b, f (d - x)) = ∫ x in d - b..d - a, f x := by
  simpa only [one_mul, one_smul, inv_one] using integral_comp_sub_mul f one_ne_zero d
#align interval_integral.integral_comp_sub_left intervalIntegral.integral_comp_sub_left

-- porting note: was @[simp]
theorem integral_comp_neg : (∫ x in a..b, f (-x)) = ∫ x in -b..-a, f x := by
  simpa only [zero_sub] using integral_comp_sub_left f 0
#align interval_integral.integral_comp_neg intervalIntegral.integral_comp_neg

end Comp

/-!
### Integral is an additive function of the interval

In this section we prove that `∫ x in a..b, f x ∂μ + ∫ x in b..c, f x ∂μ = ∫ x in a..c, f x ∂μ`
as well as a few other identities trivially equivalent to this one. We also prove that
`∫ x in a..b, f x ∂μ = ∫ x, f x ∂μ` provided that `support f ⊆ Ioc a b`.
-/


section OrderClosedTopology

variable {a b c d : ℝ} {f g : ℝ → E} {μ : Measure ℝ}

/-- If two functions are equal in the relevant interval, their interval integrals are also equal. -/
theorem integral_congr {a b : ℝ} (h : EqOn f g [[a, b]]) :
    ∫ x in a..b, f x ∂μ = ∫ x in a..b, g x ∂μ := by
  cases' le_total a b with hab hab <;>
    simpa [hab, integral_of_le, integral_of_ge] using
      set_integral_congr measurableSet_Ioc (h.mono Ioc_subset_Icc_self)
#align interval_integral.integral_congr intervalIntegral.integral_congr

theorem integral_add_adjacent_intervals_cancel (hab : IntervalIntegrable f μ a b)
    (hbc : IntervalIntegrable f μ b c) :
    (((∫ x in a..b, f x ∂μ) + ∫ x in b..c, f x ∂μ) + ∫ x in c..a, f x ∂μ) = 0 := by
  have hac := hab.trans hbc
  simp only [intervalIntegral, sub_add_sub_comm, sub_eq_zero]
  iterate 4 rw [← integral_union]
  · suffices Ioc a b ∪ Ioc b c ∪ Ioc c a = Ioc b a ∪ Ioc c b ∪ Ioc a c by rw [this]
    rw [Ioc_union_Ioc_union_Ioc_cycle, union_right_comm, Ioc_union_Ioc_union_Ioc_cycle,
      min_left_comm, max_left_comm]
  all_goals
    simp [*, MeasurableSet.union, measurableSet_Ioc, Ioc_disjoint_Ioc_same,
      Ioc_disjoint_Ioc_same.symm, hab.1, hab.2, hbc.1, hbc.2, hac.1, hac.2]
#align interval_integral.integral_add_adjacent_intervals_cancel intervalIntegral.integral_add_adjacent_intervals_cancel

theorem integral_add_adjacent_intervals (hab : IntervalIntegrable f μ a b)
    (hbc : IntervalIntegrable f μ b c) :
    ((∫ x in a..b, f x ∂μ) + ∫ x in b..c, f x ∂μ) = ∫ x in a..c, f x ∂μ := by
  rw [← add_neg_eq_zero, ← integral_symm, integral_add_adjacent_intervals_cancel hab hbc]
#align interval_integral.integral_add_adjacent_intervals intervalIntegral.integral_add_adjacent_intervals

theorem sum_integral_adjacent_intervals_Ico {a : ℕ → ℝ} {m n : ℕ} (hmn : m ≤ n)
    (hint : ∀ k ∈ Ico m n, IntervalIntegrable f μ (a k) (a <| k + 1)) :
    ∑ k : ℕ in Finset.Ico m n, ∫ x in a k..a <| k + 1, f x ∂μ = ∫ x in a m..a n, f x ∂μ := by
  revert hint
  refine' Nat.le_induction _ _ n hmn
  · simp
  · intro p hmp IH h
    rw [Finset.sum_Ico_succ_top hmp, IH, integral_add_adjacent_intervals]
    · refine IntervalIntegrable.trans_iterate_Ico hmp fun k hk => h k ?_
      exact (Ico_subset_Ico le_rfl (Nat.le_succ _)) hk
    · apply h
      simp [hmp]
    · intro k hk
      exact h _ (Ico_subset_Ico_right p.le_succ hk)
#align interval_integral.sum_integral_adjacent_intervals_Ico intervalIntegral.sum_integral_adjacent_intervals_Ico

theorem sum_integral_adjacent_intervals {a : ℕ → ℝ} {n : ℕ}
    (hint : ∀ k < n, IntervalIntegrable f μ (a k) (a <| k + 1)) :
    ∑ k : ℕ in Finset.range n, ∫ x in a k..a <| k + 1, f x ∂μ = ∫ x in (a 0)..(a n), f x ∂μ := by
  rw [← Nat.Ico_zero_eq_range]
  exact sum_integral_adjacent_intervals_Ico (zero_le n) fun k hk => hint k hk.2
#align interval_integral.sum_integral_adjacent_intervals intervalIntegral.sum_integral_adjacent_intervals

theorem integral_interval_sub_left (hab : IntervalIntegrable f μ a b)
    (hac : IntervalIntegrable f μ a c) :
    ((∫ x in a..b, f x ∂μ) - ∫ x in a..c, f x ∂μ) = ∫ x in c..b, f x ∂μ :=
  sub_eq_of_eq_add' <| Eq.symm <| integral_add_adjacent_intervals hac (hac.symm.trans hab)
#align interval_integral.integral_interval_sub_left intervalIntegral.integral_interval_sub_left

theorem integral_interval_add_interval_comm (hab : IntervalIntegrable f μ a b)
    (hcd : IntervalIntegrable f μ c d) (hac : IntervalIntegrable f μ a c) :
    ((∫ x in a..b, f x ∂μ) + ∫ x in c..d, f x ∂μ) =
      (∫ x in a..d, f x ∂μ) + ∫ x in c..b, f x ∂μ := by
  rw [← integral_add_adjacent_intervals hac hcd, add_assoc, add_left_comm,
    integral_add_adjacent_intervals hac (hac.symm.trans hab), add_comm]
#align interval_integral.integral_interval_add_interval_comm intervalIntegral.integral_interval_add_interval_comm

theorem integral_interval_sub_interval_comm (hab : IntervalIntegrable f μ a b)
    (hcd : IntervalIntegrable f μ c d) (hac : IntervalIntegrable f μ a c) :
    ((∫ x in a..b, f x ∂μ) - ∫ x in c..d, f x ∂μ) =
      (∫ x in a..c, f x ∂μ) - ∫ x in b..d, f x ∂μ := by
  simp only [sub_eq_add_neg, ← integral_symm,
    integral_interval_add_interval_comm hab hcd.symm (hac.trans hcd)]
#align interval_integral.integral_interval_sub_interval_comm intervalIntegral.integral_interval_sub_interval_comm

theorem integral_interval_sub_interval_comm' (hab : IntervalIntegrable f μ a b)
    (hcd : IntervalIntegrable f μ c d) (hac : IntervalIntegrable f μ a c) :
    ((∫ x in a..b, f x ∂μ) - ∫ x in c..d, f x ∂μ) =
      (∫ x in d..b, f x ∂μ) - ∫ x in c..a, f x ∂μ := by
  rw [integral_interval_sub_interval_comm hab hcd hac, integral_symm b d, integral_symm a c,
    sub_neg_eq_add, sub_eq_neg_add]
#align interval_integral.integral_interval_sub_interval_comm' intervalIntegral.integral_interval_sub_interval_comm'

theorem integral_Iic_sub_Iic (ha : IntegrableOn f (Iic a) μ) (hb : IntegrableOn f (Iic b) μ) :
    ((∫ x in Iic b, f x ∂μ) - ∫ x in Iic a, f x ∂μ) = ∫ x in a..b, f x ∂μ := by
  wlog hab : a ≤ b generalizing a b
  · rw [integral_symm, ← this hb ha (le_of_not_le hab), neg_sub]
  rw [sub_eq_iff_eq_add', integral_of_le hab, ← integral_union (Iic_disjoint_Ioc le_rfl),
    Iic_union_Ioc_eq_Iic hab]
  exacts [measurableSet_Ioc, ha, hb.mono_set fun _ => And.right]
#align interval_integral.integral_Iic_sub_Iic intervalIntegral.integral_Iic_sub_Iic

/-- If `μ` is a finite measure then `∫ x in a..b, c ∂μ = (μ (Iic b) - μ (Iic a)) • c`. -/
theorem integral_const_of_cdf [IsFiniteMeasure μ] (c : E) :
    ∫ _ in a..b, c ∂μ = ((μ (Iic b)).toReal - (μ (Iic a)).toReal) • c := by
  simp only [sub_smul, ← set_integral_const]
  refine' (integral_Iic_sub_Iic _ _).symm <;>
    simp only [integrableOn_const, measure_lt_top, or_true_iff]
#align interval_integral.integral_const_of_cdf intervalIntegral.integral_const_of_cdf

theorem integral_eq_integral_of_support_subset {a b} (h : support f ⊆ Ioc a b) :
    ∫ x in a..b, f x ∂μ = ∫ x, f x ∂μ := by
  cases' le_total a b with hab hab
  · rw [integral_of_le hab, ← integral_indicator measurableSet_Ioc, indicator_eq_self.2 h]
  · rw [Ioc_eq_empty hab.not_lt, subset_empty_iff, support_eq_empty_iff] at h
    simp [h]
#align interval_integral.integral_eq_integral_of_support_subset intervalIntegral.integral_eq_integral_of_support_subset

theorem integral_congr_ae' (h : ∀ᵐ x ∂μ, x ∈ Ioc a b → f x = g x)
    (h' : ∀ᵐ x ∂μ, x ∈ Ioc b a → f x = g x) : ∫ x in a..b, f x ∂μ = ∫ x in a..b, g x ∂μ := by
  simp only [intervalIntegral, set_integral_congr_ae measurableSet_Ioc h,
    set_integral_congr_ae measurableSet_Ioc h']
#align interval_integral.integral_congr_ae' intervalIntegral.integral_congr_ae'

theorem integral_congr_ae (h : ∀ᵐ x ∂μ, x ∈ Ι a b → f x = g x) :
    ∫ x in a..b, f x ∂μ = ∫ x in a..b, g x ∂μ :=
  integral_congr_ae' (ae_uIoc_iff.mp h).1 (ae_uIoc_iff.mp h).2
#align interval_integral.integral_congr_ae intervalIntegral.integral_congr_ae

theorem integral_zero_ae (h : ∀ᵐ x ∂μ, x ∈ Ι a b → f x = 0) : ∫ x in a..b, f x ∂μ = 0 :=
  calc
    ∫ x in a..b, f x ∂μ = ∫ _ in a..b, 0 ∂μ := integral_congr_ae h
    _ = 0 := integral_zero
#align interval_integral.integral_zero_ae intervalIntegral.integral_zero_ae

nonrec theorem integral_indicator {a₁ a₂ a₃ : ℝ} (h : a₂ ∈ Icc a₁ a₃) :
    ∫ x in a₁..a₃, indicator {x | x ≤ a₂} f x ∂μ = ∫ x in a₁..a₂, f x ∂μ := by
  have : {x | x ≤ a₂} ∩ Ioc a₁ a₃ = Ioc a₁ a₂ := Iic_inter_Ioc_of_le h.2
  rw [integral_of_le h.1, integral_of_le (h.1.trans h.2), integral_indicator,
    Measure.restrict_restrict, this]
  exact measurableSet_Iic
  all_goals apply measurableSet_Iic
#align interval_integral.integral_indicator intervalIntegral.integral_indicator

/-- Lebesgue dominated convergence theorem for filters with a countable basis -/
nonrec theorem tendsto_integral_filter_of_dominated_convergence {ι} {l : Filter ι}
    [l.IsCountablyGenerated] {F : ι → ℝ → E} (bound : ℝ → ℝ)
    (hF_meas : ∀ᶠ n in l, AEStronglyMeasurable (F n) (μ.restrict (Ι a b)))
    (h_bound : ∀ᶠ n in l, ∀ᵐ x ∂μ, x ∈ Ι a b → ‖F n x‖ ≤ bound x)
    (bound_integrable : IntervalIntegrable bound μ a b)
    (h_lim : ∀ᵐ x ∂μ, x ∈ Ι a b → Tendsto (fun n => F n x) l (𝓝 (f x))) :
    Tendsto (fun n => ∫ x in a..b, F n x ∂μ) l (𝓝 <| ∫ x in a..b, f x ∂μ) := by
  simp only [intervalIntegrable_iff, intervalIntegral_eq_integral_uIoc,
    ← ae_restrict_iff' (α := ℝ) (μ := μ) measurableSet_uIoc] at *
  exact tendsto_const_nhds.smul <|
    tendsto_integral_filter_of_dominated_convergence bound hF_meas h_bound bound_integrable h_lim
#align interval_integral.tendsto_integral_filter_of_dominated_convergence intervalIntegral.tendsto_integral_filter_of_dominated_convergence

/-- Lebesgue dominated convergence theorem for series. -/
nonrec theorem hasSum_integral_of_dominated_convergence {ι} [Countable ι] {F : ι → ℝ → E}
    (bound : ι → ℝ → ℝ) (hF_meas : ∀ n, AEStronglyMeasurable (F n) (μ.restrict (Ι a b)))
    (h_bound : ∀ n, ∀ᵐ t ∂μ, t ∈ Ι a b → ‖F n t‖ ≤ bound n t)
    (bound_summable : ∀ᵐ t ∂μ, t ∈ Ι a b → Summable fun n => bound n t)
    (bound_integrable : IntervalIntegrable (fun t => ∑' n, bound n t) μ a b)
    (h_lim : ∀ᵐ t ∂μ, t ∈ Ι a b → HasSum (fun n => F n t) (f t)) :
    HasSum (fun n => ∫ t in a..b, F n t ∂μ) (∫ t in a..b, f t ∂μ) := by
  simp only [intervalIntegrable_iff, intervalIntegral_eq_integral_uIoc, ←
    ae_restrict_iff' (α := ℝ) (μ := μ) measurableSet_uIoc] at *
  exact
    (hasSum_integral_of_dominated_convergence bound hF_meas h_bound bound_summable bound_integrable
          h_lim).const_smul
      _
#align interval_integral.has_sum_integral_of_dominated_convergence intervalIntegral.hasSum_integral_of_dominated_convergence

open TopologicalSpace

/-- Interval integrals commute with countable sums, when the supremum norms are summable (a
special case of the dominated convergence theorem). -/
theorem hasSum_intervalIntegral_of_summable_norm [Countable ι] {f : ι → C(ℝ, E)}
    (hf_sum : Summable fun i : ι => ‖(f i).restrict (⟨uIcc a b, isCompact_uIcc⟩ : Compacts ℝ)‖) :
    HasSum (fun i : ι => ∫ x in a..b, f i x) (∫ x in a..b, ∑' i : ι, f i x) := by
  apply hasSum_integral_of_dominated_convergence
    (fun i (x : ℝ) => ‖(f i).restrict ↑(⟨uIcc a b, isCompact_uIcc⟩ : Compacts ℝ)‖)
    (fun i => (map_continuous <| f i).aestronglyMeasurable)
  · refine fun i => ae_of_all _ fun x hx => ?_
    apply ContinuousMap.norm_coe_le_norm ((f i).restrict _) ⟨x, _⟩
    exact ⟨hx.1.le, hx.2⟩
  · exact ae_of_all _ fun x _ => hf_sum
  · exact intervalIntegrable_const
  · refine ae_of_all _ fun x hx => Summable.hasSum ?_
    let x : (⟨uIcc a b, isCompact_uIcc⟩ : Compacts ℝ) := ⟨x, ?_⟩; swap; exact ⟨hx.1.le, hx.2⟩
    have := summable_of_summable_norm hf_sum
    simpa only [Compacts.coe_mk, ContinuousMap.restrict_apply]
      using ContinuousMap.summable_apply this x
#align interval_integral.has_sum_interval_integral_of_summable_norm intervalIntegral.hasSum_intervalIntegral_of_summable_norm

theorem tsum_intervalIntegral_eq_of_summable_norm [Countable ι] {f : ι → C(ℝ, E)}
    (hf_sum : Summable fun i : ι => ‖(f i).restrict (⟨uIcc a b, isCompact_uIcc⟩ : Compacts ℝ)‖) :
    ∑' i : ι, ∫ x in a..b, f i x = ∫ x in a..b, ∑' i : ι, f i x :=
  (hasSum_intervalIntegral_of_summable_norm hf_sum).tsum_eq
#align interval_integral.tsum_interval_integral_eq_of_summable_norm intervalIntegral.tsum_intervalIntegral_eq_of_summable_norm

variable {X : Type*} [TopologicalSpace X] [FirstCountableTopology X]

/-- Continuity of interval integral with respect to a parameter, at a point within a set.
  Given `F : X → ℝ → E`, assume `F x` is ae-measurable on `[a, b]` for `x` in a
  neighborhood of `x₀` within `s` and at `x₀`, and assume it is bounded by a function integrable
  on `[a, b]` independent of `x` in a neighborhood of `x₀` within `s`. If `(fun x ↦ F x t)`
  is continuous at `x₀` within `s` for almost every `t` in `[a, b]`
  then the same holds for `(fun x ↦ ∫ t in a..b, F x t ∂μ) s x₀`. -/
theorem continuousWithinAt_of_dominated_interval {F : X → ℝ → E} {x₀ : X} {bound : ℝ → ℝ} {a b : ℝ}
    {s : Set X} (hF_meas : ∀ᶠ x in 𝓝[s] x₀, AEStronglyMeasurable (F x) (μ.restrict <| Ι a b))
    (h_bound : ∀ᶠ x in 𝓝[s] x₀, ∀ᵐ t ∂μ, t ∈ Ι a b → ‖F x t‖ ≤ bound t)
    (bound_integrable : IntervalIntegrable bound μ a b)
    (h_cont : ∀ᵐ t ∂μ, t ∈ Ι a b → ContinuousWithinAt (fun x => F x t) s x₀) :
    ContinuousWithinAt (fun x => ∫ t in a..b, F x t ∂μ) s x₀ :=
  tendsto_integral_filter_of_dominated_convergence bound hF_meas h_bound bound_integrable h_cont
#align interval_integral.continuous_within_at_of_dominated_interval intervalIntegral.continuousWithinAt_of_dominated_interval

/-- Continuity of interval integral with respect to a parameter at a point.
  Given `F : X → ℝ → E`, assume `F x` is ae-measurable on `[a, b]` for `x` in a
  neighborhood of `x₀`, and assume it is bounded by a function integrable on
  `[a, b]` independent of `x` in a neighborhood of `x₀`. If `(fun x ↦ F x t)`
  is continuous at `x₀` for almost every `t` in `[a, b]`
  then the same holds for `(fun x ↦ ∫ t in a..b, F x t ∂μ) s x₀`. -/
theorem continuousAt_of_dominated_interval {F : X → ℝ → E} {x₀ : X} {bound : ℝ → ℝ} {a b : ℝ}
    (hF_meas : ∀ᶠ x in 𝓝 x₀, AEStronglyMeasurable (F x) (μ.restrict <| Ι a b))
    (h_bound : ∀ᶠ x in 𝓝 x₀, ∀ᵐ t ∂μ, t ∈ Ι a b → ‖F x t‖ ≤ bound t)
    (bound_integrable : IntervalIntegrable bound μ a b)
    (h_cont : ∀ᵐ t ∂μ, t ∈ Ι a b → ContinuousAt (fun x => F x t) x₀) :
    ContinuousAt (fun x => ∫ t in a..b, F x t ∂μ) x₀ :=
  tendsto_integral_filter_of_dominated_convergence bound hF_meas h_bound bound_integrable h_cont
#align interval_integral.continuous_at_of_dominated_interval intervalIntegral.continuousAt_of_dominated_interval

/-- Continuity of interval integral with respect to a parameter.
  Given `F : X → ℝ → E`, assume each `F x` is ae-measurable on `[a, b]`,
  and assume it is bounded by a function integrable on `[a, b]` independent of `x`.
  If `(fun x ↦ F x t)` is continuous for almost every `t` in `[a, b]`
  then the same holds for `(fun x ↦ ∫ t in a..b, F x t ∂μ) s x₀`. -/
theorem continuous_of_dominated_interval {F : X → ℝ → E} {bound : ℝ → ℝ} {a b : ℝ}
    (hF_meas : ∀ x, AEStronglyMeasurable (F x) <| μ.restrict <| Ι a b)
    (h_bound : ∀ x, ∀ᵐ t ∂μ, t ∈ Ι a b → ‖F x t‖ ≤ bound t)
    (bound_integrable : IntervalIntegrable bound μ a b)
    (h_cont : ∀ᵐ t ∂μ, t ∈ Ι a b → Continuous fun x => F x t) :
    Continuous fun x => ∫ t in a..b, F x t ∂μ :=
  continuous_iff_continuousAt.mpr fun _ =>
    continuousAt_of_dominated_interval (eventually_of_forall hF_meas) (eventually_of_forall h_bound)
        bound_integrable <|
      h_cont.mono fun _ himp hx => (himp hx).continuousAt
#align interval_integral.continuous_of_dominated_interval intervalIntegral.continuous_of_dominated_interval

end OrderClosedTopology

section ContinuousPrimitive

open TopologicalSpace

variable {a b b₀ b₁ b₂ : ℝ} {μ : Measure ℝ} {f g : ℝ → E}

theorem continuousWithinAt_primitive (hb₀ : μ {b₀} = 0)
    (h_int : IntervalIntegrable f μ (min a b₁) (max a b₂)) :
    ContinuousWithinAt (fun b => ∫ x in a..b, f x ∂μ) (Icc b₁ b₂) b₀ := by
  by_cases h₀ : b₀ ∈ Icc b₁ b₂
  · have h₁₂ : b₁ ≤ b₂ := h₀.1.trans h₀.2
    have min₁₂ : min b₁ b₂ = b₁ := min_eq_left h₁₂
    have h_int' : ∀ {x}, x ∈ Icc b₁ b₂ → IntervalIntegrable f μ b₁ x := by
      rintro x ⟨h₁, h₂⟩
      apply h_int.mono_set
      apply uIcc_subset_uIcc
      · exact ⟨min_le_of_left_le (min_le_right a b₁),
          h₁.trans (h₂.trans <| le_max_of_le_right <| le_max_right _ _)⟩
      · exact ⟨min_le_of_left_le <| (min_le_right _ _).trans h₁,
          le_max_of_le_right <| h₂.trans <| le_max_right _ _⟩
    have : ∀ b ∈ Icc b₁ b₂,
        ∫ x in a..b, f x ∂μ = (∫ x in a..b₁, f x ∂μ) + ∫ x in b₁..b, f x ∂μ := by
      rintro b ⟨h₁, h₂⟩
      rw [← integral_add_adjacent_intervals _ (h_int' ⟨h₁, h₂⟩)]
      apply h_int.mono_set
      apply uIcc_subset_uIcc
      · exact ⟨min_le_of_left_le (min_le_left a b₁), le_max_of_le_right (le_max_left _ _)⟩
      · exact ⟨min_le_of_left_le (min_le_right _ _),
          le_max_of_le_right (h₁.trans <| h₂.trans (le_max_right a b₂))⟩
    apply ContinuousWithinAt.congr _ this (this _ h₀); clear this
    refine' continuousWithinAt_const.add _
    have :
      (fun b => ∫ x in b₁..b, f x ∂μ) =ᶠ[𝓝[Icc b₁ b₂] b₀] fun b =>
        ∫ x in b₁..b₂, indicator {x | x ≤ b} f x ∂μ := by
      apply eventuallyEq_of_mem self_mem_nhdsWithin
      exact fun b b_in => (integral_indicator b_in).symm
    apply ContinuousWithinAt.congr_of_eventuallyEq _ this (integral_indicator h₀).symm
    have : IntervalIntegrable (fun x => ‖f x‖) μ b₁ b₂ :=
      IntervalIntegrable.norm (h_int' <| right_mem_Icc.mpr h₁₂)
    refine' continuousWithinAt_of_dominated_interval _ _ this _ <;> clear this
    · apply Eventually.mono self_mem_nhdsWithin
      intro x hx
      erw [aestronglyMeasurable_indicator_iff, Measure.restrict_restrict, Iic_inter_Ioc_of_le]
      · rw [min₁₂]
        exact (h_int' hx).1.aestronglyMeasurable
      · exact le_max_of_le_right hx.2
      exacts [measurableSet_Iic, measurableSet_Iic]
    · refine' eventually_of_forall fun x => eventually_of_forall fun t => _
      dsimp [indicator]
      split_ifs <;> simp
    · have : ∀ᵐ t ∂μ, t < b₀ ∨ b₀ < t := by
        apply Eventually.mono (compl_mem_ae_iff.mpr hb₀)
        intro x hx
        exact Ne.lt_or_lt hx
      apply this.mono
      rintro x₀ (hx₀ | hx₀) -
      · have : ∀ᶠ x in 𝓝[Icc b₁ b₂] b₀, {t : ℝ | t ≤ x}.indicator f x₀ = f x₀ := by
          apply mem_nhdsWithin_of_mem_nhds
          apply Eventually.mono (Ioi_mem_nhds hx₀)
          intro x hx
          simp [hx.le]
        apply continuousWithinAt_const.congr_of_eventuallyEq this
        simp [hx₀.le]
      · have : ∀ᶠ x in 𝓝[Icc b₁ b₂] b₀, {t : ℝ | t ≤ x}.indicator f x₀ = 0 := by
          apply mem_nhdsWithin_of_mem_nhds
          apply Eventually.mono (Iio_mem_nhds hx₀)
          intro x hx
          simp [hx]
        apply continuousWithinAt_const.congr_of_eventuallyEq this
        simp [hx₀]
  · apply continuousWithinAt_of_not_mem_closure
    rwa [closure_Icc]
#align interval_integral.continuous_within_at_primitive intervalIntegral.continuousWithinAt_primitive

theorem continuousOn_primitive [NoAtoms μ] (h_int : IntegrableOn f (Icc a b) μ) :
    ContinuousOn (fun x => ∫ t in Ioc a x, f t ∂μ) (Icc a b) := by
  by_cases h : a ≤ b
  · have : ∀ x ∈ Icc a b, ∫ t in Ioc a x, f t ∂μ = ∫ t in a..x, f t ∂μ := by
      intro x x_in
      simp_rw [integral_of_le x_in.1]
    rw [continuousOn_congr this]
    intro x₀ _
    refine' continuousWithinAt_primitive (measure_singleton x₀) _
    simp only [intervalIntegrable_iff_integrable_Ioc_of_le, min_eq_left, max_eq_right, h, min_self]
    exact h_int.mono Ioc_subset_Icc_self le_rfl
  · rw [Icc_eq_empty h]
    exact continuousOn_empty _
#align interval_integral.continuous_on_primitive intervalIntegral.continuousOn_primitive

theorem continuousOn_primitive_Icc [NoAtoms μ] (h_int : IntegrableOn f (Icc a b) μ) :
    ContinuousOn (fun x => ∫ t in Icc a x, f t ∂μ) (Icc a b) := by
  have aux : (fun x => ∫ t in Icc a x, f t ∂μ) = fun x => ∫ t in Ioc a x, f t ∂μ := by
    ext x
    exact integral_Icc_eq_integral_Ioc
  rw [aux]
  exact continuousOn_primitive h_int
#align interval_integral.continuous_on_primitive_Icc intervalIntegral.continuousOn_primitive_Icc

/-- Note: this assumes that `f` is `IntervalIntegrable`, in contrast to some other lemmas here. -/
theorem continuousOn_primitive_interval' [NoAtoms μ] (h_int : IntervalIntegrable f μ b₁ b₂)
    (ha : a ∈ [[b₁, b₂]]) : ContinuousOn (fun b => ∫ x in a..b, f x ∂μ) [[b₁, b₂]] := fun _ _ ↦ by
  refine continuousWithinAt_primitive (measure_singleton _) ?_
  rw [min_eq_right ha.1, max_eq_right ha.2]
  simpa [intervalIntegrable_iff, uIoc] using h_int
#align interval_integral.continuous_on_primitive_interval' intervalIntegral.continuousOn_primitive_interval'

theorem continuousOn_primitive_interval [NoAtoms μ] (h_int : IntegrableOn f (uIcc a b) μ) :
    ContinuousOn (fun x => ∫ t in a..x, f t ∂μ) (uIcc a b) :=
  continuousOn_primitive_interval' h_int.intervalIntegrable left_mem_uIcc
#align interval_integral.continuous_on_primitive_interval intervalIntegral.continuousOn_primitive_interval

theorem continuousOn_primitive_interval_left [NoAtoms μ] (h_int : IntegrableOn f (uIcc a b) μ) :
    ContinuousOn (fun x => ∫ t in x..b, f t ∂μ) (uIcc a b) := by
  rw [uIcc_comm a b] at h_int ⊢
  simp only [integral_symm b]
  exact (continuousOn_primitive_interval h_int).neg
#align interval_integral.continuous_on_primitive_interval_left intervalIntegral.continuousOn_primitive_interval_left

variable [NoAtoms μ]

theorem continuous_primitive (h_int : ∀ a b, IntervalIntegrable f μ a b) (a : ℝ) :
    Continuous fun b => ∫ x in a..b, f x ∂μ := by
  rw [continuous_iff_continuousAt]
  intro b₀
  cases' exists_lt b₀ with b₁ hb₁
  cases' exists_gt b₀ with b₂ hb₂
  apply ContinuousWithinAt.continuousAt _ (Icc_mem_nhds hb₁ hb₂)
  exact continuousWithinAt_primitive (measure_singleton b₀) (h_int _ _)
#align interval_integral.continuous_primitive intervalIntegral.continuous_primitive

nonrec theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.IntervalIntegrable.Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.MeasureTheory.Integrable.continuous_primitive (h_int : Integrable f μ)
    (a : ℝ) : Continuous fun b => ∫ x in a..b, f x ∂μ :=
  continuous_primitive (fun _ _ => h_int.intervalIntegrable) a
#align measure_theory.integrable.continuous_primitive MeasureTheory.Integrable.continuous_primitive

end ContinuousPrimitive

section

variable {f g : ℝ → ℝ} {a b : ℝ} {μ : Measure ℝ}

theorem integral_eq_zero_iff_of_le_of_nonneg_ae (hab : a ≤ b) (hf : 0 ≤ᵐ[μ.restrict (Ioc a b)] f)
    (hfi : IntervalIntegrable f μ a b) : ∫ x in a..b, f x ∂μ = 0 ↔ f =ᵐ[μ.restrict (Ioc a b)] 0 :=
  by rw [integral_of_le hab, integral_eq_zero_iff_of_nonneg_ae hf hfi.1]
#align interval_integral.integral_eq_zero_iff_of_le_of_nonneg_ae intervalIntegral.integral_eq_zero_iff_of_le_of_nonneg_ae

theorem integral_eq_zero_iff_of_nonneg_ae (hf : 0 ≤ᵐ[μ.restrict (Ioc a b ∪ Ioc b a)] f)
    (hfi : IntervalIntegrable f μ a b) :
    ∫ x in a..b, f x ∂μ = 0 ↔ f =ᵐ[μ.restrict (Ioc a b ∪ Ioc b a)] 0 := by
  cases' le_total a b with hab hab <;>
    simp only [Ioc_eq_empty hab.not_lt, empty_union, union_empty] at hf ⊢
  · exact integral_eq_zero_iff_of_le_of_nonneg_ae hab hf hfi
  · rw [integral_symm, neg_eq_zero, integral_eq_zero_iff_of_le_of_nonneg_ae hab hf hfi.symm]
#align interval_integral.integral_eq_zero_iff_of_nonneg_ae intervalIntegral.integral_eq_zero_iff_of_nonneg_ae

/-- If `f` is nonnegative and integrable on the unordered interval `Set.uIoc a b`, then its
integral over `a..b` is positive if and only if `a < b` and the measure of
`Function.support f ∩ Set.Ioc a b` is positive. -/
theorem integral_pos_iff_support_of_nonneg_ae' (hf : 0 ≤ᵐ[μ.restrict (Ι a b)] f)
    (hfi : IntervalIntegrable f μ a b) :
    (0 < ∫ x in a..b, f x ∂μ) ↔ a < b ∧ 0 < μ (support f ∩ Ioc a b) := by
  cases' lt_or_le a b with hab hba
  · rw [uIoc_of_le hab.le] at hf
    simp only [hab, true_and_iff, integral_of_le hab.le,
      set_integral_pos_iff_support_of_nonneg_ae hf hfi.1]
  · suffices (∫ x in a..b, f x ∂μ) ≤ 0 by simp only [this.not_lt, hba.not_lt, false_and_iff]
    rw [integral_of_ge hba, neg_nonpos]
    rw [uIoc_comm, uIoc_of_le hba] at hf
    exact integral_nonneg_of_ae hf
#align interval_integral.integral_pos_iff_support_of_nonneg_ae' intervalIntegral.integral_pos_iff_support_of_nonneg_ae'

/-- If `f` is nonnegative a.e.-everywhere and it is integrable on the unordered interval
`Set.uIoc a b`, then its integral over `a..b` is positive if and only if `a < b` and the
measure of `Function.support f ∩ Set.Ioc a b` is positive. -/
theorem integral_pos_iff_support_of_nonneg_ae (hf : 0 ≤ᵐ[μ] f) (hfi : IntervalIntegrable f μ a b) :
    (0 < ∫ x in a..b, f x ∂μ) ↔ a < b ∧ 0 < μ (support f ∩ Ioc a b) :=
  integral_pos_iff_support_of_nonneg_ae' (ae_mono Measure.restrict_le_self hf) hfi
#align interval_integral.integral_pos_iff_support_of_nonneg_ae intervalIntegral.integral_pos_iff_support_of_nonneg_ae

/-- If `f : ℝ → ℝ` is integrable on `(a, b]` for real numbers `a < b`, and positive on the interior
of the interval, then its integral over `a..b` is strictly positive. -/
theorem intervalIntegral_pos_of_pos_on {f : ℝ → ℝ} {a b : ℝ} (hfi : IntervalIntegrable f volume a b)
    (hpos : ∀ x : ℝ, x ∈ Ioo a b → 0 < f x) (hab : a < b) : 0 < ∫ x : ℝ in a..b, f x := by
  have hsupp : Ioo a b ⊆ support f ∩ Ioc a b := fun x hx =>
    ⟨mem_support.mpr (hpos x hx).ne', Ioo_subset_Ioc_self hx⟩
  have h₀ : 0 ≤ᵐ[volume.restrict (uIoc a b)] f := by
    rw [EventuallyLE, uIoc_of_le hab.le]
    refine' ae_restrict_of_ae_eq_of_ae_restrict Ioo_ae_eq_Ioc _
    exact (ae_restrict_iff' measurableSet_Ioo).mpr (ae_of_all _ fun x hx => (hpos x hx).le)
  rw [integral_pos_iff_support_of_nonneg_ae' h₀ hfi]
  exact ⟨hab, ((Measure.measure_Ioo_pos _).mpr hab).trans_le (measure_mono hsupp)⟩
#align interval_integral.interval_integral_pos_of_pos_on intervalIntegral.intervalIntegral_pos_of_pos_on

/-- If `f : ℝ → ℝ` is strictly positive everywhere, and integrable on `(a, b]` for real numbers
`a < b`, then its integral over `a..b` is strictly positive. (See `interval_integral_pos_of_pos_on`
for a version only assuming positivity of `f` on `(a, b)` rather than everywhere.) -/
theorem intervalIntegral_pos_of_pos {f : ℝ → ℝ} {a b : ℝ}
    (hfi : IntervalIntegrable f MeasureSpace.volume a b) (hpos : ∀ x, 0 < f x) (hab : a < b) :
    0 < ∫ x in a..b, f x :=
  intervalIntegral_pos_of_pos_on hfi (fun x _ => hpos x) hab
#align interval_integral.interval_integral_pos_of_pos intervalIntegral.intervalIntegral_pos_of_pos

/-- If `f` and `g` are two functions that are interval integrable on `a..b`, `a ≤ b`,
`f x ≤ g x` for a.e. `x ∈ Set.Ioc a b`, and `f x < g x` on a subset of `Set.Ioc a b`
of nonzero measure, then `∫ x in a..b, f x ∂μ < ∫ x in a..b, g x ∂μ`. -/
theorem integral_lt_integral_of_ae_le_of_measure_setOf_lt_ne_zero (hab : a ≤ b)
    (hfi : IntervalIntegrable f μ a b) (hgi : IntervalIntegrable g μ a b)
    (hle : f ≤ᵐ[μ.restrict (Ioc a b)] g) (hlt : μ.restrict (Ioc a b) {x | f x < g x} ≠ 0) :
    (∫ x in a..b, f x ∂μ) < ∫ x in a..b, g x ∂μ := by
  rw [← sub_pos, ← integral_sub hgi hfi, integral_of_le hab,
    MeasureTheory.integral_pos_iff_support_of_nonneg_ae]
  · refine' pos_iff_ne_zero.2 (mt (measure_mono_null _) hlt)
    exact fun x hx => (sub_pos.2 hx.out).ne'
  exacts [hle.mono fun x => sub_nonneg.2, hgi.1.sub hfi.1]
#align interval_integral.integral_lt_integral_of_ae_le_of_measure_set_of_lt_ne_zero intervalIntegral.integral_lt_integral_of_ae_le_of_measure_setOf_lt_ne_zero

/-- If `f` and `g` are continuous on `[a, b]`, `a < b`, `f x ≤ g x` on this interval, and
`f c < g c` at some point `c ∈ [a, b]`, then `∫ x in a..b, f x < ∫ x in a..b, g x`. -/
theorem integral_lt_integral_of_continuousOn_of_le_of_exists_lt {f g : ℝ → ℝ} {a b : ℝ}
    (hab : a < b) (hfc : ContinuousOn f (Icc a b)) (hgc : ContinuousOn g (Icc a b))
    (hle : ∀ x ∈ Ioc a b, f x ≤ g x) (hlt : ∃ c ∈ Icc a b, f c < g c) :
    (∫ x in a..b, f x) < ∫ x in a..b, g x := by
  apply integral_lt_integral_of_ae_le_of_measure_setOf_lt_ne_zero hab.le
    (hfc.intervalIntegrable_of_Icc hab.le) (hgc.intervalIntegrable_of_Icc hab.le)
  · simpa only [gt_iff_lt, not_lt, ge_iff_le, measurableSet_Ioc, ae_restrict_eq, le_principal_iff]
      using (ae_restrict_mem measurableSet_Ioc).mono hle
  contrapose! hlt
  have h_eq : f =ᵐ[volume.restrict (Ioc a b)] g := by
    simp only [← not_le, ← ae_iff] at hlt
    exact EventuallyLE.antisymm ((ae_restrict_iff' measurableSet_Ioc).2 <|
      eventually_of_forall hle) hlt
  rw [Measure.restrict_congr_set Ioc_ae_eq_Icc] at h_eq
  exact fun c hc ↦ (Measure.eqOn_Icc_of_ae_eq volume hab.ne h_eq hfc hgc hc).ge
#align interval_integral.integral_lt_integral_of_continuous_on_of_le_of_exists_lt intervalIntegral.integral_lt_integral_of_continuousOn_of_le_of_exists_lt

theorem integral_nonneg_of_ae_restrict (hab : a ≤ b) (hf : 0 ≤ᵐ[μ.restrict (Icc a b)] f) :
    0 ≤ ∫ u in a..b, f u ∂μ := by
  let H := ae_restrict_of_ae_restrict_of_subset Ioc_subset_Icc_self hf
  simpa only [integral_of_le hab] using set_integral_nonneg_of_ae_restrict H
#align interval_integral.integral_nonneg_of_ae_restrict intervalIntegral.integral_nonneg_of_ae_restrict

theorem integral_nonneg_of_ae (hab : a ≤ b) (hf : 0 ≤ᵐ[μ] f) : 0 ≤ ∫ u in a..b, f u ∂μ :=
  integral_nonneg_of_ae_restrict hab <| ae_restrict_of_ae hf
#align interval_integral.integral_nonneg_of_ae intervalIntegral.integral_nonneg_of_ae

theorem integral_nonneg_of_forall (hab : a ≤ b) (hf : ∀ u, 0 ≤ f u) : 0 ≤ ∫ u in a..b, f u ∂μ :=
  integral_nonneg_of_ae hab <| eventually_of_forall hf
#align interval_integral.integral_nonneg_of_forall intervalIntegral.integral_nonneg_of_forall

theorem integral_nonneg (hab : a ≤ b) (hf : ∀ u, u ∈ Icc a b → 0 ≤ f u) : 0 ≤ ∫ u in a..b, f u ∂μ :=
  integral_nonneg_of_ae_restrict hab <| (ae_restrict_iff' measurableSet_Icc).mpr <| ae_of_all μ hf
#align interval_integral.integral_nonneg intervalIntegral.integral_nonneg

theorem abs_integral_le_integral_abs (hab : a ≤ b) :
    |∫ x in a..b, f x ∂μ| ≤ ∫ x in a..b, |f x| ∂μ := by
  simpa only [← Real.norm_eq_abs] using norm_integral_le_integral_norm hab
#align interval_integral.abs_integral_le_integral_abs intervalIntegral.abs_integral_le_integral_abs

section Mono

variable (hab : a ≤ b) (hf : IntervalIntegrable f μ a b) (hg : IntervalIntegrable g μ a b)

theorem integral_mono_ae_restrict (h : f ≤ᵐ[μ.restrict (Icc a b)] g) :
    (∫ u in a..b, f u ∂μ) ≤ ∫ u in a..b, g u ∂μ := by
  let H := h.filter_mono <| ae_mono <| Measure.restrict_mono Ioc_subset_Icc_self <| le_refl μ
  simpa only [integral_of_le hab] using set_integral_mono_ae_restrict hf.1 hg.1 H
#align interval_integral.integral_mono_ae_restrict intervalIntegral.integral_mono_ae_restrict

theorem integral_mono_ae (h : f ≤ᵐ[μ] g) : (∫ u in a..b, f u ∂μ) ≤ ∫ u in a..b, g u ∂μ := by
  simpa only [integral_of_le hab] using set_integral_mono_ae hf.1 hg.1 h
#align interval_integral.integral_mono_ae intervalIntegral.integral_mono_ae

theorem integral_mono_on (h : ∀ x ∈ Icc a b, f x ≤ g x) :
    (∫ u in a..b, f u ∂μ) ≤ ∫ u in a..b, g u ∂μ := by
  let H x hx := h x <| Ioc_subset_Icc_self hx
  simpa only [integral_of_le hab] using set_integral_mono_on hf.1 hg.1 measurableSet_Ioc H
#align interval_integral.integral_mono_on intervalIntegral.integral_mono_on

theorem integral_mono (h : f ≤ g) : (∫ u in a..b, f u ∂μ) ≤ ∫ u in a..b, g u ∂μ :=
  integral_mono_ae hab hf hg <| ae_of_all _ h
#align interval_integral.integral_mono intervalIntegral.integral_mono

theorem integral_mono_interval {c d} (hca : c ≤ a) (hab : a ≤ b) (hbd : b ≤ d)
    (hf : 0 ≤ᵐ[μ.restrict (Ioc c d)] f) (hfi : IntervalIntegrable f μ c d) :
    (∫ x in a..b, f x ∂μ) ≤ ∫ x in c..d, f x ∂μ := by
  rw [integral_of_le hab, integral_of_le (hca.trans (hab.trans hbd))]
  exact set_integral_mono_set hfi.1 hf (Ioc_subset_Ioc hca hbd).eventuallyLE
#align interval_integral.integral_mono_interval intervalIntegral.integral_mono_interval

theorem abs_integral_mono_interval {c d} (h : Ι a b ⊆ Ι c d) (hf : 0 ≤ᵐ[μ.restrict (Ι c d)] f)
    (hfi : IntervalIntegrable f μ c d) : |∫ x in a..b, f x ∂μ| ≤ |∫ x in c..d, f x ∂μ| :=
  have hf' : 0 ≤ᵐ[μ.restrict (Ι a b)] f := ae_mono (Measure.restrict_mono h le_rfl) hf
  calc
    |∫ x in a..b, f x ∂μ| = |∫ x in Ι a b, f x ∂μ| := abs_integral_eq_abs_integral_uIoc f
    _ = ∫ x in Ι a b, f x ∂μ := (abs_of_nonneg (MeasureTheory.integral_nonneg_of_ae hf'))
    _ ≤ ∫ x in Ι c d, f x ∂μ := (set_integral_mono_set hfi.def hf h.eventuallyLE)
    _ ≤ |∫ x in Ι c d, f x ∂μ| := (le_abs_self _)
    _ = |∫ x in c..d, f x ∂μ| := (abs_integral_eq_abs_integral_uIoc f).symm
#align interval_integral.abs_integral_mono_interval intervalIntegral.abs_integral_mono_interval

end Mono

end

section HasSum

variable {μ : Measure ℝ} {f : ℝ → E}

theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.IntervalIntegrable.Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.MeasureTheory.Integrable.hasSum_intervalIntegral (hfi : Integrable f μ) (y : ℝ) :
    HasSum (fun n : ℤ => ∫ x in y + n..y + n + 1, f x ∂μ) (∫ x, f x ∂μ) := by
  simp_rw [integral_of_le (le_add_of_nonneg_right zero_le_one)]
  rw [← integral_univ, ← iUnion_Ioc_add_int_cast y]
  exact
    hasSum_integral_iUnion (fun i => measurableSet_Ioc) (pairwise_disjoint_Ioc_add_int_cast y)
      hfi.integrableOn
#align measure_theory.integrable.has_sum_interval_integral MeasureTheory.Integrable.hasSum_intervalIntegral

theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.IntervalIntegrable.Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.MeasureTheory.Integrable.hasSum_intervalIntegral_comp_add_int (hfi : Integrable f) :
    HasSum (fun n : ℤ => ∫ x in (0:ℝ)..(1:ℝ), f (x + n)) (∫ x, f x) := by
  simpa only [integral_comp_add_right, zero_add, add_comm (1:ℝ)] using hfi.hasSum_intervalIntegral 0
#align measure_theory.integrable.has_sum_interval_integral_comp_add_int MeasureTheory.Integrable.hasSum_intervalIntegral_comp_add_int

end HasSum

end intervalIntegral
