/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPolePatch
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCompactPatch

set_option autoImplicit false

/-!
# Bounded-height boundary collars for the actual zeta source

The proved nonvanishing of zeta in Re(s) >= 1, together with the actual removable
value of H(s)=(s-1)zeta(s), supplies nonvanishing on each compact right-boundary
segment. Continuity and compactness then give a positive-width, positive-margin
collar and a classical finite variation cover. Functional-equation zero transport
excludes the reflected left collar without asserting an equality between H and its
mirror.

These are independently sourced boundary results. Widths depend on the height and
are not effective. Neither a common width, the complete real-axis base, interior
nonvanishing, nor the all-height RH cover is supplied. The next port reduces the
unknown region to an interior right shell, retaining the near-critical-line index.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

noncomputable section

/-- The exact normalized function is nonzero on the closed right half-plane. Its
value at the removed pole is treated separately from the punctured product. -/
theorem poleNormalizedZeta_ne_zero_of_one_le_re {z : ℂ} (hz : 1 ≤ z.re) :
    poleNormalizedZeta z ≠ 0 := by
  by_cases h1 : z = 1
  · simpa only [h1, poleNormalizedZeta_one] using (one_ne_zero : (1 : ℂ) ≠ 0)
  · rw [poleNormalizedZeta_of_ne h1]
    exact mul_ne_zero (sub_ne_zero.mpr h1) (riemannZeta_ne_zero_of_one_le_re hz)

/-- Full signed-height boundary segment, including the removable point when N=0. -/
def rightBoundarySegment (N : ℕ) : Set ℂ :=
  (fun t : ℝ => (⟨1, t⟩ : ℂ)) '' Set.Icc (-(N : ℝ)) (N : ℝ)

@[simp] theorem mem_rightBoundarySegment_iff (N : ℕ) (z : ℂ) :
    z ∈ rightBoundarySegment N ↔ z.re = 1 ∧ |z.im| ≤ (N : ℝ) := by
  constructor
  · rintro ⟨t, ht, rfl⟩
    exact ⟨rfl, abs_le.mpr ht⟩
  · rintro ⟨hre, him⟩
    refine ⟨z.im, abs_le.mp him, ?_⟩
    apply Complex.ext <;> simp [hre]

theorem rightBoundarySegment_isCompact (N : ℕ) :
    IsCompact (rightBoundarySegment N) := by
  exact isCompact_Icc.image (by fun_prop)

theorem rightBoundarySegment_nonempty (N : ℕ) :
    (rightBoundarySegment N).Nonempty := by
  refine ⟨1, ?_⟩
  simp

/-- An actual closed rectangular collar. It is not a numerically chosen mesh. -/
def rightClosedBand (N : ℕ) (δ : ℝ) : Set ℂ :=
  {z | |z.re - 1| ≤ δ ∧ |z.im| ≤ (N : ℝ)}

theorem rightClosedBand_isCompact (N : ℕ) (δ : ℝ) :
    IsCompact (rightClosedBand N δ) := by
  have hclosed : IsClosed (rightClosedBand N δ) := by
    change IsClosed ({z : ℂ | |z.re - 1| ≤ δ} ∩ {z : ℂ | |z.im| ≤ (N : ℝ)})
    exact (isClosed_le (Complex.continuous_re.sub continuous_const).abs continuous_const).inter
      (isClosed_le Complex.continuous_im.abs continuous_const)
  apply (isCompact_closedBall (0 : ℂ) ((N : ℝ) + δ + 1)).of_isClosed_subset hclosed
  intro z hz
  have hre := abs_le.mp hz.1
  have hnormre : |z.re| ≤ 1 + δ := abs_le.mpr ⟨by linarith, by linarith⟩
  rw [Metric.mem_closedBall, dist_zero_right]
  calc
    ‖z‖ ≤ |z.re| + |z.im| := Complex.norm_le_abs_re_add_abs_im z
    _ ≤ (1 + δ) + (N : ℝ) := add_le_add hnormre hz.2
    _ = (N : ℝ) + δ + 1 := by ring

/-- Compactness thickens the proved zero-free boundary into a closed band. The cap
1/4 is a harmless width restriction, not an RH assertion about the interior. -/
theorem exists_rightBoundary_norm_collar (N : ℕ) :
    ∃ δ b : ℝ, 0 < δ ∧ δ ≤ 1 / 4 ∧ 0 < b ∧
      ∀ z ∈ rightClosedBand N δ, b ≤ ‖poleNormalizedZeta z‖ := by
  obtain ⟨r, b, hr, hb, hthick⟩ := exists_thickening_norm_lower_of_compact
    (rightBoundarySegment_isCompact N) (rightBoundarySegment_nonempty N)
    differentiable_poleNormalizedZeta.continuous
    (by
      intro z hz
      have hre := ((mem_rightBoundarySegment_iff N z).mp hz).1
      exact poleNormalizedZeta_ne_zero_of_one_le_re
        (by simpa only [hre] using (le_refl (1 : ℝ))))
  let δ : ℝ := min (r / 2) (1 / 4)
  have hδ : 0 < δ := lt_min (by positivity) (by norm_num)
  have hδr : δ < r := (min_le_left _ _).trans_lt (by linarith)
  refine ⟨δ, b, hδ, min_le_right _ _, hb, ?_⟩
  intro z hz
  let w : ℂ := ⟨1, z.im⟩
  have hw : w ∈ rightBoundarySegment N :=
    (mem_rightBoundarySegment_iff N w).mpr ⟨rfl, hz.2⟩
  have hdist : dist z w = |z.re - 1| := by
    rw [dist_eq_norm]
    have hdiff : z - w = ((z.re - 1 : ℝ) : ℂ) := by
      apply Complex.ext <;> simp [w]
    rw [hdiff, Complex.norm_real, Real.norm_eq_abs]
  exact hthick z (Metric.mem_thickening_iff.mpr
    ⟨w, hw, by rw [hdist]; exact hz.1.trans_lt hδr⟩)

/-- Proof-carrying collar data, with its lower bound and finite cover bound to the
same exact normalized zeta source. No effective extraction is claimed. -/
structure RightBoundaryCollar (N : ℕ) where
  width : ℝ
  lower : ℝ
  width_pos : 0 < width
  width_le_quarter : width ≤ 1 / 4
  lower_pos : 0 < lower
  norm_lower : ∀ z ∈ rightClosedBand N width, lower ≤ ‖poleNormalizedZeta z‖
  cover : FiniteVariationCover poleNormalizedZeta (rightClosedBand N width)

/-- Unlike unknown interior covers, these boundary covers are constructed from
independently proved nonvanishing. They are classical, not numerical certificates. -/
theorem exists_rightBoundaryCollar (N : ℕ) : Nonempty (RightBoundaryCollar N) := by
  obtain ⟨δ, b, hδ, hcap, hb, hlower⟩ := exists_rightBoundary_norm_collar N
  have hne : ∀ z ∈ rightClosedBand N δ, poleNormalizedZeta z ≠ 0 := by
    intro z hz hzero
    have hbound := hlower z hz
    rw [hzero, norm_zero] at hbound
    exact (not_le_of_gt hb) hbound
  obtain ⟨cover⟩ := exists_finiteVariationCover_of_compact (rightClosedBand_isCompact N δ)
    (fun z _ => (differentiable_poleNormalizedZeta z).continuousAt) hne
  exact ⟨{ width := δ, lower := b, width_pos := hδ, width_le_quarter := hcap,
    lower_pos := hb, norm_lower := hlower, cover := cover }⟩

namespace RightBoundaryCollar

/-- The exact source-zero implication, not equality of unrelated coordinates. -/
theorem noTargetZero_right {N : ℕ} (collar : RightBoundaryCollar N) :
    NoTargetZero (rightClosedBand N collar.width) :=
  noTargetZero_of_poleNormalized_cover collar.cover

/-- The functional-equation mirror yields a left collar for target zeros. No formula
identifying the normalized function values at the two mirror points is assumed. -/
theorem target_real_bounds {N : ℕ} (collar : RightBoundaryCollar N)
    {z : ℂ} (hz : NontrivialZetaZero z) (him : |z.im| ≤ (N : ℝ)) :
    collar.width < z.re ∧ z.re < 1 - collar.width := by
  have hstrip := hz.mem_critical_strip
  constructor
  · by_contra hleft
    have hle : z.re ≤ collar.width := le_of_not_gt hleft
    have hcoord : (criticalReflection z).re - 1 = -z.re := by
      change (1 - star z).re - 1 = -z.re
      simp only [Complex.sub_re, Complex.one_re]
      have hstar : (star z).re = z.re := by simp
      rw [hstar]
      ring
    have hnear : |(criticalReflection z).re - 1| ≤ collar.width := by
      rw [hcoord, abs_neg, abs_of_pos hstrip.1]
      exact hle
    have hmirrorHeight : |(criticalReflection z).im| ≤ (N : ℝ) := by
      simpa [criticalReflection] using him
    exact collar.noTargetZero_right (criticalReflection z) ⟨hnear, hmirrorHeight⟩
      hz.critical_reflection
  · by_contra hright
    have hle : 1 - collar.width ≤ z.re := le_of_not_gt hright
    have hnear : |z.re - 1| ≤ collar.width := by
      rw [abs_of_neg (sub_neg.mpr hstrip.2)]
      linarith
    exact collar.noTargetZero_right z ⟨hnear, him⟩ hz

end RightBoundaryCollar

/-- The remaining right-shell target: only its near-critical-line margin is sent
to zero. Its other horizontal boundary comes from an independently proved collar. -/
def rightInteriorShell (N m : ℕ) (δ : ℝ) : Set ℂ :=
  {z | z ∈ upperRightHeightShell N ∧
    1 / ((m : ℝ) + 1) ≤ z.re - 1 / 2 ∧ z.re ≤ 1 - δ}

/-- The known boundary collar removes the pole-side unknown from the shell cover.
No fixed near-line reciprocal index may replace the universal quantifier. -/
theorem shellRH_iff_interior_exclusion (N : ℕ) (collar : RightBoundaryCollar (N + 1)) :
    ShellRH N ↔ ∀ m : ℕ, NoTargetZero (rightInteriorShell N m collar.width) := by
  rw [shellRH_iff_upperRight_exclusion]
  constructor
  · intro h m z hz
    exact h z hz.1
  · intro h z hz hzero
    have hheight : (N : ℝ) < z.im ∧ z.im ≤ ((N + 1 : ℕ) : ℝ) := by
      simpa only [upperHeightShell, Set.mem_setOf_eq, ZetaCommutatorRoot.heightAt_eq_im]
        using hz.1
    have hpos : 0 < z.im := lt_of_le_of_lt (Nat.cast_nonneg N) hheight.1
    have him : |z.im| ≤ ((N + 1 : ℕ) : ℝ) := by
      rw [abs_of_pos hpos]
      exact hheight.2
    have hright := (collar.target_real_bounds hzero him).2
    obtain ⟨m, hm⟩ := exists_nat_one_div_lt (sub_pos.mpr hz.2)
    exact h m z ⟨hz, hm.le, hright.le⟩ hzero

/-- The next proof port consumes only genuinely new interior patch covers. The
collar itself and its finite boundary cover were constructed above. -/
theorem window_succ_of_interior_covers {N : ℕ} (hN : WindowRH N)
    (collar : RightBoundaryCollar (N + 1))
    (covers : ∀ m : ℕ,
      FiniteVariationCover poleNormalizedZeta (rightInteriorShell N m collar.width)) :
    WindowRH (N + 1) := by
  apply (window_succ_iff N).mpr
  refine ⟨hN, (shellRH_iff_interior_exclusion N collar).mpr ?_⟩
  intro m
  exact noTargetZero_of_poleNormalized_cover (covers m)

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
