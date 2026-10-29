/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPatchCertificate
import Mathlib.Topology.MetricSpace.Thickening
import Mathlib.Topology.Order.Compact

set_option autoImplicit false

/-!
# Compact completeness of source-bound variation patches

Continuity and independently proved nonvanishing give local variation patches.
Compactness extracts a finite cover. This is a classical existence theorem, not an
algorithm for finding centers, rational radii, sample enclosures or derivative bounds.
In particular it may not be used to produce an RH patch family by assuming that the
unknown off-line region is already zero-free.

The same hypotheses give a positive lower bound on some neighborhood of a compact
set. The radius and lower bound are source-dependent; no uniform-in-height estimate
is inferred. All declarations are source-only until exact external replay.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

noncomputable section

/-- A continuous, nonzero source value has a genuine open-ball variation patch. -/
theorem exists_variationPatch_of_continuousAt_ne_zero {F : ℂ → ℂ} {c : ℂ}
    (hcont : ContinuousAt F c) (hne : F c ≠ 0) :
    ∃ r : ℝ, 0 < r ∧ Nonempty (SampleVariationPatch F (Metric.ball c r)) := by
  have hnorm : 0 < ‖F c‖ := norm_pos_iff.mpr hne
  obtain ⟨r, hr, hvar⟩ :=
    Metric.continuousAt_iff.mp hcont (‖F c‖ / 2) (by positivity)
  refine ⟨r, hr, ⟨?_⟩⟩
  refine { center := c, lower := ‖F c‖, error := ‖F c‖ / 2,
    error_nonneg := by positivity, sample_lower := le_rfl,
    variation := ?_, strict_margin := by linarith }
  intro z hz
  have hv := hvar (show dist z c < r from hz)
  simpa only [dist_eq_norm] using hv.le

/-- A compact target with independently established nonvanishing has a finite patch
cover. Classical choice here is not a computable or certified enumeration. -/
theorem exists_finiteVariationCover_of_compact {F : ℂ → ℂ} {K : Set ℂ}
    (hK : IsCompact K) (hcont : ∀ c ∈ K, ContinuousAt F c)
    (hne : ∀ c ∈ K, F c ≠ 0) : Nonempty (FiniteVariationCover F K) := by
  classical
  have hlocal : ∀ c : K, ∃ r : ℝ, 0 < r ∧
      Nonempty (SampleVariationPatch F (Metric.ball (c : ℂ) r)) := by
    intro c
    exact exists_variationPatch_of_continuousAt_ne_zero
      (hcont c c.property) (hne c c.property)
  choose radius radius_pos patches using hlocal
  let region : K → Set ℂ := fun c => Metric.ball (c : ℂ) (radius c)
  have hopen : ∀ c : K, IsOpen (region c) := fun _ => Metric.isOpen_ball
  have hcover : K ⊆ ⋃ c : K, region c := by
    intro z hz
    exact Set.mem_iUnion.mpr ⟨⟨z, hz⟩, Metric.mem_ball_self (radius_pos ⟨z, hz⟩)⟩
  obtain ⟨t, ht⟩ := hK.elim_finite_subcover region hopen hcover
  let e : Fin (Fintype.card ↥t) ≃ ↥t := (Fintype.equivFin ↥t).symm
  refine ⟨{ count := Fintype.card ↥t,
    region := fun i => region (e i).val,
    patch := fun i => Classical.choice (patches (e i).val),
    covers := ?_ }⟩
  intro z hz
  obtain ⟨c, hc⟩ := Set.mem_iUnion.mp (ht hz)
  obtain ⟨hct, hzc⟩ := Set.mem_iUnion.mp hc
  obtain ⟨i, hi⟩ := e.surjective ⟨c, hct⟩
  refine ⟨i, ?_⟩
  change z ∈ region (e i).val
  rw [hi]
  exact hzc

/-- Completeness at compact scope is an equivalence with nonvanishing, not a method
of proving the latter by introducing certificate metadata. -/
theorem finiteVariationCover_iff_nonzero_of_compact {F : ℂ → ℂ} {K : Set ℂ}
    (hK : IsCompact K) (hcont : ∀ c ∈ K, ContinuousAt F c) :
    Nonempty (FiniteVariationCover F K) ↔ ∀ c ∈ K, F c ≠ 0 := by
  constructor
  · rintro ⟨cover⟩ c hc
    exact cover.nonzero hc
  · exact exists_finiteVariationCover_of_compact hK hcont

/-- Restriction changes only the consumed target, not the source function or patches. -/
def FiniteVariationCover.restrict {F : ℂ → ℂ} {U V : Set ℂ}
    (cover : FiniteVariationCover F U) (hVU : V ⊆ U) : FiniteVariationCover F V where
  count := cover.count
  region := cover.region
  patch := cover.patch
  covers := fun z hz => cover.covers z (hVU hz)

/-- An actual zero in the target rules out a finite variation certificate. -/
theorem no_finiteVariationCover_of_zero {F : ℂ → ℂ} {U : Set ℂ} {z : ℂ}
    (hz : z ∈ U) (hzero : F z = 0) : ¬ Nonempty (FiniteVariationCover F U) := by
  rintro ⟨cover⟩
  exact cover.nonzero hz hzero

/-- A continuous function nonvanishing on a nonempty compact set has a strictly
positive source norm bound on an open thickening of that set. Neither constant is
claimed effective or uniform over an unbounded family of compact sets. -/
theorem exists_thickening_norm_lower_of_compact {F : ℂ → ℂ} {K : Set ℂ}
    (hK : IsCompact K) (hneK : K.Nonempty) (hF : Continuous F)
    (hne : ∀ z ∈ K, F z ≠ 0) :
    ∃ r b : ℝ, 0 < r ∧ 0 < b ∧
      ∀ z ∈ Metric.thickening r K, b ≤ ‖F z‖ := by
  obtain ⟨c, hc, hmin⟩ := hK.exists_isMinOn hneK hF.norm.continuousOn
  have hnorm : 0 < ‖F c‖ := norm_pos_iff.mpr (hne c hc)
  have hopen : IsOpen {z : ℂ | ‖F c‖ / 2 < ‖F z‖} :=
    isOpen_lt continuous_const hF.norm
  have hsub : K ⊆ {z : ℂ | ‖F c‖ / 2 < ‖F z‖} := by
    intro z hz
    have hle : ‖F c‖ ≤ ‖F z‖ := (isMinOn_iff.mp hmin) z hz
    change ‖F c‖ / 2 < ‖F z‖
    linarith
  obtain ⟨r, hr, hthick⟩ := hK.exists_thickening_subset_open hopen hsub
  exact ⟨r, ‖F c‖ / 2, hr, by positivity, fun z hz => (hthick hz).le⟩

/-- A positive width at every natural stage does not imply a common positive lower
bound. This is a quantifier counterexample, not a statement about zeta zero locations. -/
theorem reciprocal_widths_no_uniform_positive_lower :
    ¬ (∃ δ : ℝ, 0 < δ ∧ ∀ N : ℕ, δ ≤ 1 / ((N : ℝ) + 1)) := by
  rintro ⟨δ, hδ, hwidths⟩
  obtain ⟨N, hN⟩ := exists_nat_one_div_lt hδ
  exact (not_le_of_gt hN) (hwidths N)

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
