/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluatedPair
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinLogCancellation
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalCover

set_option autoImplicit false

/-!
# From checked rational arithmetic to a closed analytic disk

The sample is computed from the unchanged sextic finiteModel. Its independently
bounded infinite tail, finite-evaluation radius, and whole-disk derivative
variation are all charged. No sampled derivative or caller-supplied analytic
validity field replaces these suppliers. The radius and every point of the
closed disk, including irrational points and its boundary, are retained.
This is a zero-free patch producer, not a zero-isolation or all-height theorem.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalEvaluationPatch
open Complex Set
open GRWTSK.Analysis.Complex.SymmetricPair.Rational
open CenteredMellin.SexticPrimitive CenteredMellin.SexticPrimitive.C1Approximation
open ZeroIsolation

structure Data where
  cutoff : ℕ
  point : Gaussian
  evaluation : RationalFiniteEvaluation.Data
  radius : ℚ
  sigma : ℚ
  auxiliary : ℚ
  normBound : ℚ
  sampleLower : ℚ
  deriving DecidableEq, Repr

namespace Data

def sample (W : Data) : Gaussian := W.evaluation.center W.cutoff W.point

def sampleError (W : Data) : ℚ :=
  RationalEvaluatedPair.sourceValue W.cutoff W.point.im+
    W.evaluation.radius W.cutoff W.point

def derivativeBound (W : Data) : ℚ :=
  1+(2*W.normBound+1)/W.sigma+
    W.normBound*(W.normBound+1)/(W.sigma*(W.sigma-W.auxiliary))

def margin (W : Data) : ℚ := W.sampleLower-W.sampleError-W.derivativeBound*W.radius

def disk (W : Data) : RationalPatchCover.Disk := ⟨W.point.re,W.point.im,W.radius⟩

/-- Norm and domain guards cover the entire disk, not just its rational center. -/
def Guard (W : Data) : Prop :=
  0 < W.point.re ∧ W.point.re < 1 ∧ 0 < W.radius ∧
  0 < W.auxiliary ∧ W.auxiliary < W.sigma ∧ 0 ≤ W.normBound ∧
  W.sigma ≤ W.point.re-W.radius ∧ W.point.l1+W.radius ≤ W.normBound ∧
  0 ≤ W.sampleLower ∧ W.sampleLower^2 ≤ W.sample.normSq ∧
  W.sampleError+W.derivativeBound*W.radius < W.sampleLower

def check (W : Data) : Bool :=
  W.evaluation.check W.cutoff W.point && decide W.Guard

lemma check_iff (W : Data) : W.check=true ↔
    W.evaluation.check W.cutoff W.point=true ∧ W.Guard := by
  simp only [check,Bool.and_eq_true,decide_eq_true_eq]

lemma margin_pos {W : Data} (hc : W.check=true) : 0 < W.margin := by
  obtain ⟨he,hx,hx1,hr,ha,has,hB,hleft,hnorm,hm,hsq,hgap⟩ := W.check_iff.mp hc
  unfold margin
  linarith

lemma derivativeBound_nonneg {W : Data} (hc : W.check=true) : 0 ≤ W.derivativeBound := by
  obtain ⟨he,hx,hx1,hr,ha,has,hB,hleft,hnorm,hm,hsq,hgap⟩ := W.check_iff.mp hc
  have hs : 0 < W.sigma := ha.trans has
  have hsa : 0 < W.sigma-W.auxiliary := sub_pos.mpr has
  unfold derivativeBound
  positivity

lemma sampleError_nonneg {W : Data} (hc : W.check=true) : 0 ≤ W.sampleError := by
  have he := (W.check_iff.mp hc).1
  have hf := RationalFiniteEvaluation.Data.radius_nonneg he
  have hs : 0 ≤ RationalEvaluatedPair.sourceValue W.cutoff W.point.im := by
    unfold RationalEvaluatedPair.sourceValue
    positivity
  exact add_nonneg hs hf

lemma disk_center (W : Data) : W.disk.center=W.point.value := rfl
lemma disk_radius (W : Data) : W.disk.radius=W.radius := rfl

lemma mem_disk_iff (W : Data) (z : ℂ) : z ∈ W.disk.carrier ↔
    ‖z-W.point.value‖ ≤ (W.radius : ℝ) := by
  change dist z W.point.value ≤ (W.radius : ℝ) ↔ _
  rw [dist_eq_norm]

/-- The arithmetic sample error is computed, including the actual infinite tail. -/
theorem source_sample_enclosed {W : Data} (hc : W.check=true) :
    ‖poleNormalizedZeta W.point.value-W.sample.value‖ ≤ (W.sampleError : ℝ) := by
  obtain ⟨he,hx,hx1,hr,ha,has,hB,hleft,hnorm,hm,hsq,hgap⟩ := W.check_iff.mp hc
  have hN := ((W.evaluation.check_iff W.cutoff W.point).mp he).1
  have hband : W.point.value ∈ band |(W.point.im : ℝ)| := by
    refine ⟨?_,?_,neg_abs_le _,le_abs_self _⟩
    · change (0 : ℝ) < (W.point.re : ℝ); exact_mod_cast hx
    · change (W.point.re : ℝ) < 1; exact_mod_cast hx1
  have ht := value_error (B := |(W.point.im : ℝ)|+6) hN
    (by positivity) hband.1 (band_factors hband)
  rw [RationalEvaluatedPair.sourceValue_cast] at ht
  have hf := RationalFiniteEvaluation.Data.encloses he
  calc
    _ ≤ ‖poleNormalizedZeta W.point.value-finiteModel W.cutoff W.point.value‖+
        ‖finiteModel W.cutoff W.point.value-W.sample.value‖ := by
      convert norm_add_le
        (poleNormalizedZeta W.point.value-finiteModel W.cutoff W.point.value)
        (finiteModel W.cutoff W.point.value-W.sample.value) using 1 <;> ring
    _ ≤ (W.sampleError : ℝ) := by
      simpa only [sampleError,Rat.cast_add,sample] using add_le_add ht hf

lemma sample_norm_lower {W : Data} (hc : W.check=true) :
    (W.sampleLower : ℝ) ≤ ‖W.sample.value‖ := by
  obtain ⟨he,hx,hx1,hr,ha,has,hB,hleft,hnorm,hm,hsq,hgap⟩ := W.check_iff.mp hc
  have hmR : (0 : ℝ) ≤ (W.sampleLower : ℝ) := by exact_mod_cast hm
  have hsR : (W.sampleLower : ℝ)^2 ≤ (W.sample.normSq : ℝ) := by exact_mod_cast hsq
  rw [Gaussian.normSq_cast] at hsR
  nlinarith [norm_nonneg W.sample.value]

/-- Real-part and modulus bounds are proved on EVERY admitted disk point. -/
lemma disk_domain {W : Data} (hc : W.check=true) {z : ℂ} (hz : z ∈ W.disk.carrier) :
    (W.sigma : ℝ) ≤ z.re ∧ ‖z‖ ≤ (W.normBound : ℝ) := by
  obtain ⟨he,hx,hx1,hr,ha,has,hB,hleft,hnorm,hm,hsq,hgap⟩ := W.check_iff.mp hc
  have hd := (W.mem_disk_iff z).mp hz
  have hre := (Complex.abs_re_le_norm (z-W.point.value)).trans hd
  simp only [Complex.sub_re,Gaussian.value] at hre
  have hl : (W.sigma : ℝ) ≤ (W.point.re : ℝ)-(W.radius : ℝ) := by exact_mod_cast hleft
  have hn : (W.point.l1 : ℝ)+(W.radius : ℝ) ≤ (W.normBound : ℝ) := by exact_mod_cast hnorm
  constructor
  · linarith [(abs_le.mp hre).1]
  · calc
      ‖z‖ = ‖(z-W.point.value)+W.point.value‖ := by rw [sub_add_cancel]
      _ ≤ ‖z-W.point.value‖+‖W.point.value‖ := norm_add_le _ _
      _ ≤ (W.radius : ℝ)+(W.point.l1 : ℝ) := add_le_add hd (Gaussian.norm_value_le_l1 _)
      _ ≤ (W.normBound : ℝ) := by linarith

/-- This is an actual Mellin derivative bound, not differentiation of sample error. -/
theorem source_derivative_bound {W : Data} (hc : W.check=true) {z : ℂ}
    (hz : z ∈ W.disk.carrier) : ‖deriv poleNormalizedZeta z‖ ≤ (W.derivativeBound : ℝ) := by
  obtain ⟨he,hx,hx1,hr,ha,has,hB,hleft,hnorm,hm,hsq,hgap⟩ := W.check_iff.mp hc
  have haR : (0 : ℝ) < (W.auxiliary : ℝ) := by exact_mod_cast ha
  have hasR : (W.auxiliary : ℝ) < (W.sigma : ℝ) := by exact_mod_cast has
  have hb := disk_domain hc hz
  have h := poleNormalized_deriv_norm_le_subtracted haR hasR hb.1 hb.2
  simpa only [derivativeBound,Rat.cast_add,Rat.cast_mul,Rat.cast_div,Rat.cast_sub,
    Rat.cast_one,Rat.cast_ofNat] using h

/-- A checked point becomes a source-bound patch on a CLOSED continuum carrier. -/
noncomputable def patch {W : Data} (hc : W.check=true) :
    SampleVariationPatch poleNormalizedZeta W.disk.carrier := by
  obtain ⟨he,hx,hx1,hr,ha,has,hB,hleft,hnorm,hm,hsq,hgap⟩ := W.check_iff.mp hc
  have hrR : (0 : ℝ) ≤ (W.radius : ℝ) := by exact_mod_cast hr.le
  refine SampleVariationPatch.ofDerivativeEnclosure
    (U := W.disk.carrier) (V := W.disk.carrier) W.point.value W.sample.value
    (W.sampleLower : ℝ) (W.sampleError : ℝ) (W.derivativeBound : ℝ) (W.radius : ℝ)
    (by exact_mod_cast sampleError_nonneg hc)
    (by exact_mod_cast derivativeBound_nonneg hc) hrR
    (convex_closedBall _ _) ?_ (fun _ h => h)
    (fun z _ => differentiable_poleNormalizedZeta z)
    (fun z hz => source_derivative_bound hc hz)
    (fun z hz => (W.mem_disk_iff z).mp hz)
    (sample_norm_lower hc) (source_sample_enclosed hc) ?_
  · exact (W.mem_disk_iff _).mpr (by simpa using hrR)
  · exact_mod_cast hgap

theorem source_norm_lower {W : Data} (hc : W.check=true) {z : ℂ}
    (hz : z ∈ W.disk.carrier) : (W.margin : ℝ) ≤ ‖poleNormalizedZeta z‖ := by
  have h := (patch hc).value_norm_lower hz
  change (W.sampleLower : ℝ)-(W.sampleError : ℝ)-
    (W.derivativeBound : ℝ)*(W.radius : ℝ) ≤ _ at h
  simpa only [margin,Rat.cast_sub,Rat.cast_mul] using h

theorem noTargetZero {W : Data} (hc : W.check=true) : NoTargetZero W.disk.carrier := by
  intro z hz hz0
  have h := source_norm_lower hc hz
  have hp : (0 : ℝ) < (W.margin : ℝ) := by exact_mod_cast margin_pos hc
  rw [poleNormalizedZeta_zero_of_target hz0,norm_zero] at h
  linarith

/-- The disk is inhabited and has positive radius; no empty-domain acceptance. -/
theorem center_mem {W : Data} (hc : W.check=true) : W.point.value ∈ W.disk.carrier := by
  have hr := (W.check_iff.mp hc).2.2.2.1
  have hrR : (0 : ℝ) ≤ (W.radius : ℝ) := by exact_mod_cast hr.le
  exact (W.mem_disk_iff _).mpr (by simpa using hrR)

end Data
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalEvaluationPatch
