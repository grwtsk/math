/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectanglePrincipalPartWinding
import Mathlib.Analysis.Complex.RealDeriv
import Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic

set_option autoImplicit false

/-!
# The strict-interior unit-pole winding of the maintained rectangle

The preceding principal-part module reduced the complete argument-principle
winding calculation to one geometric statement:

  integral_(boundary R) (s - a)^(-1) ds = 2 * pi * I

for every point `a` strictly inside the maintained rectangle.

This file proves that statement directly with four branch-safe logarithmic
primitives. The principal logarithm is valid on the bottom and top edges because
the translated imaginary parts have strict fixed signs, and on the right edge
because the translated real part is positive. On the left edge the principal
logarithm of `-(s-a)` is used; its real part is positive, and the extra minus sign
cancels in the logarithmic derivative.

After the four fundamental-theorem calculations, all right-edge and horizontal
endpoint terms cancel. The two remaining left-edge jumps are each `pi * I`, one
from below the branch cut and one from above it. No zeta theorem, zero count,
residue metadata, or choice of a zero is used in this geometric result.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleUnitPoleWinding

open Set MeasureTheory
open scoped Interval Topology
open AdmissibleRectangles
open CanonicalRectangleCountIsolation
open CanonicalRectangleCauchyGoursat
open CanonicalRectanglePrincipalPartWinding

noncomputable section

/-- Translation from the pole to a point on the bottom edge. -/
def bottomDisplacement (N : ℕ) (a : ℂ) (u : ℝ) : ℂ :=
  bottomPoint N u - a

/-- Translation from the pole to a point on the top edge. -/
def topDisplacement (N : ℕ) (a : ℂ) (u : ℝ) : ℂ :=
  topPoint N u - a

/-- Translation from the pole to a point on the right edge. -/
def rightDisplacement (N : ℕ) (a : ℂ) (t : ℝ) : ℂ :=
  rightPoint N t - a

/-- On the left edge use the reflected translation, which lies in the open
right half-plane and hence avoids the principal logarithm's branch cut. -/
def leftReflectedDisplacement (N : ℕ) (a : ℂ) (t : ℝ) : ℂ :=
  -(rectangleLeftPoint N t - a)

@[simp] theorem rightDisplacement_bottom (N : ℕ) (a : ℂ) :
    rightDisplacement N a (-contourHeight N) =
      bottomDisplacement N a 2 := by
  simp [rightDisplacement, bottomDisplacement, rightPoint, bottomPoint]
  ring

@[simp] theorem rightDisplacement_top (N : ℕ) (a : ℂ) :
    rightDisplacement N a (contourHeight N) =
      topDisplacement N a 2 := by
  simp [rightDisplacement, topDisplacement, rightPoint, topPoint]
  ring

@[simp] theorem leftReflectedDisplacement_bottom (N : ℕ) (a : ℂ) :
    leftReflectedDisplacement N a (-contourHeight N) =
      -(bottomDisplacement N a (leftEdge N)) := by
  simp [leftReflectedDisplacement, bottomDisplacement,
    rectangleLeftPoint, bottomPoint]
  ring

@[simp] theorem leftReflectedDisplacement_top (N : ℕ) (a : ℂ) :
    leftReflectedDisplacement N a (contourHeight N) =
      -(topDisplacement N a (leftEdge N)) := by
  simp [leftReflectedDisplacement, topDisplacement,
    rectangleLeftPoint, topPoint]
  ring

/-- The translated bottom edge stays strictly below the real axis. -/
theorem bottomDisplacement_mem_slitPlane (N : ℕ) (a : ℂ)
    (ha : a ∈ openRectangle N) (u : ℝ) :
    bottomDisplacement N a u ∈ Complex.slitPlane := by
  rcases (mem_openRectangle_iff N a).mp ha with ⟨_, _, haB, _⟩
  rw [Complex.mem_slitPlane_iff]
  right
  have him : (bottomDisplacement N a u).im < 0 := by
    simp [bottomDisplacement, bottomPoint]
    linarith
  exact him.ne

/-- The translated top edge stays strictly above the real axis. -/
theorem topDisplacement_mem_slitPlane (N : ℕ) (a : ℂ)
    (ha : a ∈ openRectangle N) (u : ℝ) :
    topDisplacement N a u ∈ Complex.slitPlane := by
  rcases (mem_openRectangle_iff N a).mp ha with ⟨_, _, _, haT⟩
  rw [Complex.mem_slitPlane_iff]
  right
  have him : 0 < (topDisplacement N a u).im := by
    simp [topDisplacement, topPoint]
    linarith
  exact him.ne'

/-- The translated right edge stays in the open right half-plane. -/
theorem rightDisplacement_mem_slitPlane (N : ℕ) (a : ℂ)
    (ha : a ∈ openRectangle N) (t : ℝ) :
    rightDisplacement N a t ∈ Complex.slitPlane := by
  rcases (mem_openRectangle_iff N a).mp ha with ⟨_, haR, _, _⟩
  rw [Complex.mem_slitPlane_iff]
  left
  simp [rightDisplacement, rightPoint]
  linarith

/-- Reflecting the translated left edge puts it in the open right half-plane. -/
theorem leftReflectedDisplacement_mem_slitPlane (N : ℕ) (a : ℂ)
    (ha : a ∈ openRectangle N) (t : ℝ) :
    leftReflectedDisplacement N a t ∈ Complex.slitPlane := by
  rcases (mem_openRectangle_iff N a).mp ha with ⟨haL, _, _, _⟩
  rw [Complex.mem_slitPlane_iff]
  left
  simp [leftReflectedDisplacement, rectangleLeftPoint]
  linarith

/-- Real derivative of the translated bottom edge. -/
theorem hasDerivAt_bottomDisplacement (N : ℕ) (a : ℂ) (u : ℝ) :
    HasDerivAt (bottomDisplacement N a) 1 u := by
  simpa [bottomDisplacement, bottomPoint, sub_eq_add_neg,
    add_assoc, add_left_comm, add_comm] using
    ((hasDerivAt_id u).ofReal_comp.sub_const
      ((contourHeight N : ℂ) * Complex.I + a))

/-- Real derivative of the translated top edge. -/
theorem hasDerivAt_topDisplacement (N : ℕ) (a : ℂ) (u : ℝ) :
    HasDerivAt (topDisplacement N a) 1 u := by
  convert ((hasDerivAt_id u).ofReal_comp.sub_const
    (a - (contourHeight N : ℂ) * Complex.I)) using 1 <;>
    simp [topDisplacement, topPoint] <;> ring

/-- Real derivative of the translated right edge. -/
theorem hasDerivAt_rightDisplacement (N : ℕ) (a : ℂ) (t : ℝ) :
    HasDerivAt (rightDisplacement N a) Complex.I t := by
  convert (((hasDerivAt_id t).ofReal_comp.mul_const Complex.I).const_add
    ((2 : ℂ) - a)) using 1 <;>
    simp [rightDisplacement, rightPoint] <;> ring

/-- Real derivative of the reflected translated left edge. -/
theorem hasDerivAt_leftReflectedDisplacement (N : ℕ) (a : ℂ) (t : ℝ) :
    HasDerivAt (leftReflectedDisplacement N a) (-Complex.I) t := by
  convert (((hasDerivAt_id t).ofReal_comp.mul_const (-Complex.I)).const_add
    (a - (leftEdge N : ℂ))) using 1 <;>
    simp [leftReflectedDisplacement, rectangleLeftPoint] <;> ring

/-- Principal log differentiates to the unit pole on the bottom edge. -/
theorem hasDerivAt_log_bottom (N : ℕ) (a : ℂ)
    (ha : a ∈ openRectangle N) (u : ℝ) :
    HasDerivAt (fun v : ℝ => Complex.log (bottomDisplacement N a v))
      (unitPole a (bottomPoint N u)) u := by
  simpa [bottomDisplacement, unitPole, one_div] using
    (hasDerivAt_bottomDisplacement N a u).clog_real
      (bottomDisplacement_mem_slitPlane N a ha u)

/-- Principal log differentiates to the unit pole on the top edge. -/
theorem hasDerivAt_log_top (N : ℕ) (a : ℂ)
    (ha : a ∈ openRectangle N) (u : ℝ) :
    HasDerivAt (fun v : ℝ => Complex.log (topDisplacement N a v))
      (unitPole a (topPoint N u)) u := by
  simpa [topDisplacement, unitPole, one_div] using
    (hasDerivAt_topDisplacement N a u).clog_real
      (topDisplacement_mem_slitPlane N a ha u)

/-- Principal log differentiates to `I` times the unit pole on the right edge. -/
theorem hasDerivAt_log_right (N : ℕ) (a : ℂ)
    (ha : a ∈ openRectangle N) (t : ℝ) :
    HasDerivAt (fun v : ℝ => Complex.log (rightDisplacement N a v))
      (Complex.I * unitPole a (rightPoint N t)) t := by
  simpa [rightDisplacement, unitPole, div_eq_mul_inv] using
    (hasDerivAt_rightDisplacement N a t).clog_real
      (rightDisplacement_mem_slitPlane N a ha t)

/-- The reflected left-edge log also differentiates to `I` times the original
unit pole; the two minus signs cancel. -/
theorem hasDerivAt_log_leftReflected (N : ℕ) (a : ℂ)
    (ha : a ∈ openRectangle N) (t : ℝ) :
    HasDerivAt
      (fun v : ℝ => Complex.log (leftReflectedDisplacement N a v))
      (Complex.I * unitPole a (rectangleLeftPoint N t)) t := by
  simpa [leftReflectedDisplacement, unitPole, div_eq_mul_inv] using
    (hasDerivAt_leftReflectedDisplacement N a t).clog_real
      (leftReflectedDisplacement_mem_slitPlane N a ha t)

/-- Bottom-edge integral as a logarithmic endpoint difference. -/
theorem bottom_unitPole_integral (N : ℕ) (a : ℂ)
    (ha : a ∈ openRectangle N) :
    (∫ u in leftEdge N..2, unitPole a (bottomPoint N u)) =
      Complex.log (bottomDisplacement N a 2) -
        Complex.log (bottomDisplacement N a (leftEdge N)) := by
  have hle : leftEdge N ≤ 2 :=
    (leftEdge_neg N).le.trans (by norm_num)
  have hcontLine : Continuous (bottomDisplacement N a) := by
    unfold bottomDisplacement bottomPoint
    fun_prop
  have hcontLog : Continuous
      (fun u : ℝ => Complex.log (bottomDisplacement N a u)) :=
    hcontLine.clog (fun u => bottomDisplacement_mem_slitPlane N a ha u)
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le
    hle hcontLog.continuousOn
    (fun u _ => hasDerivAt_log_bottom N a ha u)
    (unitPole_boundaryIntegrable N a ha).bottom

/-- Top-edge integral as a logarithmic endpoint difference. -/
theorem top_unitPole_integral (N : ℕ) (a : ℂ)
    (ha : a ∈ openRectangle N) :
    (∫ u in leftEdge N..2, unitPole a (topPoint N u)) =
      Complex.log (topDisplacement N a 2) -
        Complex.log (topDisplacement N a (leftEdge N)) := by
  have hle : leftEdge N ≤ 2 :=
    (leftEdge_neg N).le.trans (by norm_num)
  have hcontLine : Continuous (topDisplacement N a) := by
    unfold topDisplacement topPoint
    fun_prop
  have hcontLog : Continuous
      (fun u : ℝ => Complex.log (topDisplacement N a u)) :=
    hcontLine.clog (fun u => topDisplacement_mem_slitPlane N a ha u)
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le
    hle hcontLog.continuousOn
    (fun u _ => hasDerivAt_log_top N a ha u)
    (unitPole_boundaryIntegrable N a ha).top

/-- The right vertical boundary term as a logarithmic endpoint difference. -/
theorem right_unitPole_boundaryTerm (N : ℕ) (a : ℂ)
    (ha : a ∈ openRectangle N) :
    Complex.I *
        (∫ t in (-contourHeight N)..contourHeight N,
          unitPole a (rightPoint N t)) =
      Complex.log (topDisplacement N a 2) -
        Complex.log (bottomDisplacement N a 2) := by
  have hle : -contourHeight N ≤ contourHeight N := by
    linarith [contourHeight_pos N]
  have hcontLine : Continuous (rightDisplacement N a) := by
    unfold rightDisplacement rightPoint
    fun_prop
  have hcontLog : Continuous
      (fun t : ℝ => Complex.log (rightDisplacement N a t)) :=
    hcontLine.clog (fun t => rightDisplacement_mem_slitPlane N a ha t)
  have hraw := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le
    hle hcontLog.continuousOn
    (fun t _ => hasDerivAt_log_right N a ha t)
    ((unitPole_boundaryIntegrable N a ha).right.const_mul (c := Complex.I))
  simpa only [intervalIntegral.integral_const_mul,
    rightDisplacement_bottom, rightDisplacement_top] using hraw

/-- The left downward boundary term uses the logarithm of the reflected
translation and has the opposite endpoint order. -/
theorem left_unitPole_boundaryTerm (N : ℕ) (a : ℂ)
    (ha : a ∈ openRectangle N) :
    -Complex.I *
        (∫ t in (-contourHeight N)..contourHeight N,
          unitPole a (rectangleLeftPoint N t)) =
      Complex.log (-(bottomDisplacement N a (leftEdge N))) -
        Complex.log (-(topDisplacement N a (leftEdge N))) := by
  have hle : -contourHeight N ≤ contourHeight N := by
    linarith [contourHeight_pos N]
  have hcontLine : Continuous (leftReflectedDisplacement N a) := by
    unfold leftReflectedDisplacement rectangleLeftPoint
    fun_prop
  have hcontLog : Continuous
      (fun t : ℝ => Complex.log (leftReflectedDisplacement N a t)) :=
    hcontLine.clog
      (fun t => leftReflectedDisplacement_mem_slitPlane N a ha t)
  have hraw := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le
    hle hcontLog.continuousOn
    (fun t _ => hasDerivAt_log_leftReflected N a ha t)
    ((unitPole_boundaryIntegrable N a ha).left.const_mul (c := Complex.I))
  simp only [intervalIntegral.integral_const_mul,
    leftReflectedDisplacement_bottom,
    leftReflectedDisplacement_top] at hraw
  calc
    -Complex.I *
        (∫ t in (-contourHeight N)..contourHeight N,
          unitPole a (rectangleLeftPoint N t)) =
      -(Complex.I *
        (∫ t in (-contourHeight N)..contourHeight N,
          unitPole a (rectangleLeftPoint N t))) := by ring
    _ = -(Complex.log (-(topDisplacement N a (leftEdge N))) -
          Complex.log (-(bottomDisplacement N a (leftEdge N)))) := by
      rw [hraw]
    _ = Complex.log (-(bottomDisplacement N a (leftEdge N))) -
          Complex.log (-(topDisplacement N a (leftEdge N))) := by ring

/-- Crossing the negative real branch cut from below contributes `pi * I`. -/
theorem log_neg_sub_log_of_im_neg {z : ℂ} (hz : z.im < 0) :
    Complex.log (-z) - Complex.log z =
      (Real.pi : ℂ) * Complex.I := by
  apply Complex.ext <;>
    simp [Complex.log_re, Complex.log_im,
      Complex.arg_neg_eq_arg_add_pi_of_im_neg hz]

/-- Crossing the negative real branch cut from above contributes `pi * I` in
the opposite subtraction order. -/
theorem log_sub_log_neg_of_im_pos {z : ℂ} (hz : 0 < z.im) :
    Complex.log z - Complex.log (-z) =
      (Real.pi : ℂ) * Complex.I := by
  apply Complex.ext <;>
    simp [Complex.log_re, Complex.log_im,
      Complex.arg_neg_eq_arg_sub_pi_of_im_pos hz]

/-- Every strict-interior unit pole has rectangle winding one. -/
theorem rectangleBoundaryIntegral_unitPole
    (N : ℕ) (a : ℂ) (ha : a ∈ openRectangle N) :
    rectangleBoundaryIntegral N (unitPole a) =
      2 * (Real.pi : ℂ) * Complex.I := by
  have hbottomIm :
      (bottomDisplacement N a (leftEdge N)).im < 0 := by
    rcases (mem_openRectangle_iff N a).mp ha with ⟨_, _, haB, _⟩
    simp [bottomDisplacement, bottomPoint]
    linarith
  have htopIm :
      0 < (topDisplacement N a (leftEdge N)).im := by
    rcases (mem_openRectangle_iff N a).mp ha with ⟨_, _, _, haT⟩
    simp [topDisplacement, topPoint]
    linarith
  unfold rectangleBoundaryIntegral
  rw [bottom_unitPole_integral N a ha,
    top_unitPole_integral N a ha,
    right_unitPole_boundaryTerm N a ha,
    left_unitPole_boundaryTerm N a ha]
  calc
    _ =
      (Complex.log (-(bottomDisplacement N a (leftEdge N))) -
        Complex.log (bottomDisplacement N a (leftEdge N))) +
      (Complex.log (topDisplacement N a (leftEdge N)) -
        Complex.log (-(topDisplacement N a (leftEdge N)))) := by ring
    _ = (Real.pi : ℂ) * Complex.I +
        (Real.pi : ℂ) * Complex.I := by
      rw [log_neg_sub_log_of_im_neg hbottomIm,
        log_sub_log_neg_of_im_pos htopIm]
    _ = 2 * (Real.pi : ℂ) * Complex.I := by ring

/-- The previously abstract geometric certificate is now constructed from the
branch-safe logarithmic calculation. -/
noncomputable def rectangleUnitPoleWindingCertificate (N : ℕ) :
    RectangleUnitPoleWindingCertificate N where
  unit_pole_integral := fun a ha =>
    rectangleBoundaryIntegral_unitPole N a ha

/-- Consequently the complete source-determined principal part has the required
rectangle integral with no remaining geometric premise. -/
noncomputable def rectanglePrincipalPartWindingCertificate (N : ℕ) :
    CanonicalRectangleResidueAccounting.RectanglePrincipalPartWindingCertificate N :=
  (rectangleUnitPoleWindingCertificate N).toPrincipalPartWindingCertificate

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleUnitPoleWinding
