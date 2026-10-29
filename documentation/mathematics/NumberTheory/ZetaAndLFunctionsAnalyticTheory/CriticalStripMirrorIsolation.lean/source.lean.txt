/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripDerivativeIsolation
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPolePatch
import Mathlib.Analysis.Complex.Convex

set_option autoImplicit false

/-!
# Mirror-stable zero isolation and zero-permitting covers

A region with at most one actual target-zero location, stable under critical
reflection, forces that location to be fixed by reflection. Existence, numerical
coordinates and multiplicity are not inferred. Source derivative certificates
supply uniqueness without turning a zero into a forbidden point. Geometry alone,
conjugation alone, and a count of distinct model roots do not supply this result.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation
open Complex Set
noncomputable section

/-- Stability uses the ACTUAL critical reflection, not projection to the line. -/
def MirrorStable (U : Set ℂ) : Prop := ∀ z ∈ U, criticalReflection z ∈ U

def AtMostOneTarget (U : Set ℂ) : Prop :=
  ∀ z ∈ U, ∀ w ∈ U, NontrivialZetaZero z → NontrivialZetaZero w → z = w

lemma mirror_fixed_iff (z : ℂ) : criticalReflection z = z ↔ z.re = 1 / 2 := by
  constructor
  · intro h
    have hr := congrArg Complex.re h
    simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re] at hr
    linarith
  · intro h
    apply Complex.ext
    · simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re]
      linarith
    · simp [criticalReflection]

lemma target_capacity_of_source {U : Set ℂ}
    (h : AtMostOneZero poleNormalizedZeta U) : AtMostOneTarget U := by
  intro z hz w hw hz0 hw0
  exact h z hz w hw (poleNormalizedZeta_zero_of_target hz0) (poleNormalizedZeta_zero_of_target hw0)

/-- No existence assumption is needed: the theorem classifies each actual zero. -/
theorem rhOn_of_mirror_capacity {U : Set ℂ}
    (hm : MirrorStable U) (hu : AtMostOneTarget U) : RHOn U := by
  intro z hz hzero
  apply (mirror_fixed_iff z).mp
  exact hu (criticalReflection z) (hm z hz) z hz hzero.critical_reflection hzero

theorem rhOn_of_derivative_disk {U : Set ℂ}
    (hm : MirrorStable U) (C : DerivativeDisk poleNormalizedZeta U) : RHOn U :=
  rhOn_of_mirror_capacity hm (target_capacity_of_source C.atMostOneZero)

/-- Critical reflection preserves the imaginary coordinate and reverses only the
horizontal displacement. This is an exact metric identity, not a height label. -/
lemma norm_mirror_displacement (z : ℂ) : ‖z - criticalReflection z‖ = |2 * z.re - 1| := by
  have heq : z - criticalReflection z = ((2 * z.re - 1 : ℝ) : ℂ) := by
    apply Complex.ext
    · simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re,
        Complex.ofReal_re]
      ring
    · simp [criticalReflection]
  rw [heq, Complex.norm_real, Real.norm_eq_abs]

/-- The source-pair defect quantitatively detects horizontal off-line displacement.
No equality of reflected H values is assumed; only their zeros are transported. -/
theorem mirror_source_separation {U : Set ℂ} (C : DerivativeDisk poleNormalizedZeta U)
    (hm : MirrorStable U) {z : ℂ} (hz : z ∈ U) :
    (‖C.linearPart‖ - C.radius) * |2 * z.re - 1| ≤
      ‖poleNormalizedZeta z - poleNormalizedZeta (criticalReflection z)‖ := by
  simpa only [norm_mirror_displacement] using C.lower_lipschitz hz (hm z hz)

/-- An actual off-line target would invalidate every such strict certificate. -/
theorem no_derivative_disk_at_offline_target {U : Set ℂ} {z : ℂ}
    (hm : MirrorStable U) (hz : z ∈ U) (hzero : NontrivialZetaZero z)
    (hoff : z.re ≠ 1 / 2) : ¬ Nonempty (DerivativeDisk poleNormalizedZeta U) := by
  rintro ⟨C⟩
  exact hoff (rhOn_of_derivative_disk hm C z hz hzero)

/-- A closed rectangle symmetric about Re=1/2. All four edges are retained. -/
def mirrorBox (lo hi halfWidth : ℝ) : Set ℂ :=
  {z | 1 / 2 - halfWidth ≤ z.re ∧ z.re ≤ 1 / 2 + halfWidth ∧ lo ≤ z.im ∧ z.im ≤ hi}

lemma mirrorBox_stable (lo hi halfWidth : ℝ) : MirrorStable (mirrorBox lo hi halfWidth) := by
  intro z hz
  rcases hz with ⟨hl, hr, hb, ht⟩
  change 1 / 2 - halfWidth ≤ (criticalReflection z).re ∧
    (criticalReflection z).re ≤ 1 / 2 + halfWidth ∧
    lo ≤ (criticalReflection z).im ∧ (criticalReflection z).im ≤ hi
  simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re,
    Complex.sub_im, Complex.one_im, Complex.conj_im, zero_sub, neg_neg]
  exact ⟨by linarith, by linarith, hb, ht⟩

lemma mirrorBox_convex (lo hi halfWidth : ℝ) : Convex ℝ (mirrorBox lo hi halfWidth) := by
  change Convex ℝ ({z : ℂ | 1 / 2 - halfWidth ≤ z.re} ∩
    ({z : ℂ | z.re ≤ 1 / 2 + halfWidth} ∩
      ({z : ℂ | lo ≤ z.im} ∩ {z : ℂ | z.im ≤ hi})))
  exact (convex_halfSpace_re_ge _).inter ((convex_halfSpace_re_le _).inter
    ((convex_halfSpace_im_ge _).inter (convex_halfSpace_im_le _)))

lemma mirrorBox_nonempty {lo hi halfWidth : ℝ} (hheight : lo ≤ hi) (hw : 0 ≤ halfWidth) :
    (mirrorBox lo hi halfWidth).Nonempty := by
  refine ⟨⟨1 / 2, (lo + hi) / 2⟩, ?_⟩
  change 1 / 2 - halfWidth ≤ (1 / 2 : ℝ) ∧ (1 / 2 : ℝ) ≤ 1 / 2 + halfWidth ∧
    lo ≤ (lo + hi) / 2 ∧ (lo + hi) / 2 ≤ hi
  exact ⟨by linarith, by linarith, by linarith, by linarith⟩

/-- Multiple disjointness-free local regions may each contain one permitted zero.
Every point of the target is still covered, including any shared seams. -/
structure ZeroPermittingCover (U : Set ℂ) where
  count : ℕ
  zeroFree : Set ℂ
  regions : Fin count → Set ℂ
  zeroFree_sound : NoTargetZero zeroFree
  mirror_stable : ∀ i, MirrorStable (regions i)
  capacity : ∀ i, AtMostOneTarget (regions i)
  covers : ∀ z ∈ U, z ∈ zeroFree ∨ ∃ i, z ∈ regions i

namespace ZeroPermittingCover
variable {U : Set ℂ}

theorem rhOn (C : ZeroPermittingCover U) : RHOn U := by
  intro z hz hzero
  rcases C.covers z hz with hclear | ⟨i, hi⟩
  · exact False.elim (C.zeroFree_sound z hclear hzero)
  · exact rhOn_of_mirror_capacity (C.mirror_stable i) (C.capacity i) z hi hzero

/-- The geometric cover is transported only by a proved source-domain inclusion. -/
def restrict (C : ZeroPermittingCover U) {V : Set ℂ} (hVU : V ⊆ U) : ZeroPermittingCover V where
  count := C.count
  zeroFree := C.zeroFree
  regions := C.regions
  zeroFree_sound := C.zeroFree_sound
  mirror_stable := C.mirror_stable
  capacity := C.capacity
  covers := fun z hz => C.covers z (hVU hz)

/-- Count zero cannot hide a missing zero region behind a vacuous Fin argument. -/
theorem noTargetZero_of_count_zero (C : ZeroPermittingCover U) (hn : C.count = 0) :
    NoTargetZero U := by
  intro z hz hzero
  rcases C.covers z hz with hclear | ⟨i, hi⟩
  · exact C.zeroFree_sound z hclear hzero
  · have himpossible : i.val < 0 := by simpa only [hn] using i.isLt
    omega

end ZeroPermittingCover
end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation
