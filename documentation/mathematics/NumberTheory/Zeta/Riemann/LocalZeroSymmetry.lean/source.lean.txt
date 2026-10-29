/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.ReflectionDisks
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor
import Mathlib.Analysis.Calculus.Deriv.Star

set_option autoImplicit false

/-!
# Local critical-line transport and conjugate canonical points

The exact existing zero symmetries supply actual zeros, not projected complex
coordinates. Uniqueness in a reflection-invariant disk forces a fixed point.
Simplicity is a separate fact, transported by the actual conjugated derivative.
The last theorem is a LOWER bound on the existing both-sign closed-head count;
it is not an exhaustion certificate. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.LocalZeroSymmetry

open CanonicalZeroDivisor
open scoped Topology ComplexConjugate

/-- This only packages the previously proved exact zero transport in its subtype. -/
def reflectedPoint (z : ZeroPoint) : ZeroPoint :=
  ⟨criticalReflection z.1, z.2.critical_reflection⟩

def conjugatePoint (z : ZeroPoint) : ZeroPoint :=
  ⟨zeroConjugate z.1, z.2.conjugate⟩

@[simp] theorem reflectedPoint_val (z : ZeroPoint) :
    (reflectedPoint z).1 = criticalReflection z.1 := rfl

@[simp] theorem conjugatePoint_val (z : ZeroPoint) :
    (conjugatePoint z).1 = star z.1 := rfl

@[simp] theorem conjugatePoint_involutive (z : ZeroPoint) :
    conjugatePoint (conjugatePoint z) = z := by
  apply Subtype.ext
  exact zero_conjugate_involutive z.1

/-- Existence is supplied by z; uniqueness and disk invariance force exact line
membership. Simplicity is NOT needed for this implication. -/
theorem on_line_of_unique_disk {c : ℂ} {r : ℝ} {z : ZeroPoint}
    (hc : c.re = (1 / 2 : ℝ)) (hz : ‖z.1 - c‖ ≤ r)
    (hu : ∀ v : ZeroPoint, ‖v.1 - c‖ ≤ r → v = z) :
    z.1.re = (1 / 2 : ℝ) := by
  have href : ‖(reflectedPoint z).1 - c‖ ≤ r := by
    rw [reflectedPoint_val, ReflectionDisks.norm_sub_fixed_center hc]
    exact hz
  have hpoint := congrArg (fun v : ZeroPoint => v.1) (hu (reflectedPoint z) href)
  exact (ReflectionDisks.fixed_iff z.1).mp hpoint

/-- A hypothetical off-line point in an invariant disk brings a SECOND actual
point in the same disk. This is precisely what local uniqueness excludes. -/
theorem distinct_reflection_in_disk {c : ℂ} {r : ℝ} {z : ZeroPoint}
    (hc : c.re = (1 / 2 : ℝ)) (hz : ‖z.1 - c‖ ≤ r)
    (hnot : z.1.re ≠ (1 / 2 : ℝ)) :
    reflectedPoint z ≠ z ∧ ‖(reflectedPoint z).1 - c‖ ≤ r := by
  constructor
  · intro h
    exact hnot ((ReflectionDisks.fixed_iff z.1).mp
      (congrArg (fun v : ZeroPoint => v.1) h))
  · rw [reflectedPoint_val, ReflectionDisks.norm_sub_fixed_center hc]
    exact hz

/-- Analytic order one implies nonvanishing derivative via the actual local
factorization; it is not inferred from a user-supplied multiplicity label. -/
theorem derivative_ne_zero_of_simple {z : ZeroPoint} (hm : multiplicity z = 1) :
    deriv riemannZeta z.1 ≠ 0 := by
  obtain ⟨g, hg, hg0, hfg⟩ := multiplicity_factorization z
  have heq : riemannZeta =ᶠ[𝓝 z.1] (fun w => (w - z.1) * g w) := by
    filter_upwards [hfg] with w hw
    simpa only [hm, pow_one, smul_eq_mul] using hw
  have hd := ((hasDerivAt_id z.1).sub_const z.1).mul hg.differentiableAt.hasDerivAt
  have he : deriv riemannZeta z.1 = g z.1 := by
    calc
      _ = deriv (fun w => (w - z.1) * g w) z.1 := heq.deriv_eq
      _ = g z.1 := by simpa only [Pi.mul_def, id_eq, sub_self, one_mul, zero_mul, add_zero] using hd.deriv
  rw [he]
  exact hg0

/-- Conjugating both input and output preserves complex differentiability.
Conjugation of the output alone would not justify this derivative theorem. -/
theorem derivative_conjugate (z : ZeroPoint) :
    deriv riemannZeta (conjugatePoint z).1 = star (deriv riemannZeta z.1) := by
  have hd : HasDerivAt (fun w : ℂ => star (riemannZeta (star w)))
      (star (deriv riemannZeta z.1)) (star z.1) :=
    (analyticAt_point z).differentiableAt.hasDerivAt.conj_conj
  have hf : (fun w : ℂ => star (riemannZeta (star w))) = riemannZeta := by
    funext w
    simp [riemannZeta_conj]
  rw [hf] at hd
  exact hd.deriv

/-- A derived simple conjugate; no separate analytic-order datum is supplied. -/
theorem conjugate_simple {z : ZeroPoint} (hm : multiplicity z = 1) :
    multiplicity (conjugatePoint z) = 1 := by
  have hd0 : deriv riemannZeta (conjugatePoint z).1 ≠ 0 := by
    rw [derivative_conjugate]
    intro h
    have hc := congrArg (fun v : ℂ => star v) h
    exact derivative_ne_zero_of_simple hm (by simpa using hc)
  have ho := (analyticAt_point (conjugatePoint z)).analyticOrderAt_eq_one_of_zero_deriv_ne_zero
    (conjugatePoint z).2.1 hd0
  have hc := multiplicity_cast (conjugatePoint z)
  rw [ho] at hc
  exact_mod_cast hc

@[simp] theorem conjugate_height (z : ZeroPoint) :
    height (conjugatePoint z) = height z := by
  simp [height, conjugatePoint, zeroConjugate]

/-- Nonreal points have distinct conjugates. This does not follow from separate
record identifiers, which can name the same mathematical point. -/
theorem ne_conjugate_of_im_ne_zero {z : ZeroPoint} (h : z.1.im ≠ 0) :
    z ≠ conjugatePoint z := by
  intro he
  have hi := congrArg (fun v : ZeroPoint => v.1.im) he
  change z.1.im = -z.1.im at hi
  exact h (by linarith)

/-- The conjugate uses the conjugate CENTER and the identical geometric radius. -/
theorem conjugate_in_disk {z : ZeroPoint} {c : ℂ} {r : ℝ} (hz : ‖z.1 - c‖ ≤ r) :
    ‖(conjugatePoint z).1 - star c‖ ≤ r := by
  rw [conjugatePoint_val, ReflectionDisks.norm_sub_conjugated]
  exact hz

/-- Transport all canonical-point uniqueness, not merely a chosen witness. -/
theorem unique_conjugate_disk {z : ZeroPoint} {c : ℂ} {r : ℝ}
    (hu : ∀ v : ZeroPoint, ‖v.1 - c‖ ≤ r → v = z) :
    ∀ v : ZeroPoint, ‖v.1 - star c‖ ≤ r → v = conjugatePoint z := by
  intro v hv
  have hb : ‖(conjugatePoint v).1 - c‖ ≤ r := by
    rw [conjugatePoint_val, ReflectionDisks.norm_conjugate_sub_center]
    exact hv
  have he := congrArg conjugatePoint (hu (conjugatePoint v) hb)
  simpa only [conjugatePoint_involutive] using he

/-- Canonical count is over BOTH signs and with positive analytic weights.
Two local points give a lower count, never a complete-head upper count. -/
theorem heightCount_ge_two {z : ZeroPoint} {T : ℝ}
    (hnot : z.1.im ≠ 0) (hh : height z ≤ T) : 2 ≤ heightCount T := by
  classical
  have hne := ne_conjugate_of_im_ne_zero hnot
  have hz : z ∈ heightHead T := (mem_heightHead T z).mpr hh
  have hw : conjugatePoint z ∈ heightHead T :=
    (mem_heightHead T (conjugatePoint z)).mpr (by simpa only [conjugate_height] using hh)
  have hsub : ({z, conjugatePoint z} : Finset ZeroPoint) ⊆ heightHead T := by
    intro v hv
    simp only [Finset.mem_insert, Finset.mem_singleton] at hv
    rcases hv with rfl | rfl
    · exact hz
    · exact hw
  calc
    2 = ({z, conjugatePoint z} : Finset ZeroPoint).card := by simp [hne]
    _ ≤ (heightHead T).card := Finset.card_le_card hsub
    _ ≤ heightCount T := head_card_le_heightCount T

end GRWTSK.RiemannHypothesis.LocalZeroSymmetry
