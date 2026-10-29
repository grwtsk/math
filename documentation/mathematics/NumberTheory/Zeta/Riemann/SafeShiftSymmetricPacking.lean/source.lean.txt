/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftedVonMangoldtPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Reflection-even/odd safe-shift packing

For each canonical prime-power event and actual nontrivial zero, split the two
safe half-plane von Mangoldt terms into

  E = (T_plus + T_minus) / 2,
  O = (T_plus - T_minus) / 2.

Critical-line reflection swaps T_plus and T_minus, so E is invariant and O
changes sign.  The planar point

  (Re E, Re O)

therefore transforms by reflection across the x-axis.  Squared oriented area is
invariant under this reflection.

On the critical line the two safe shifts agree exactly, so O=0 for every
prime-power event.  All points lie on one horizontal line and every three-point
Gram volume is exactly zero.

This supplies the correct structural a^2 vanishing behavior: one coordinate
remains even/nontrivial while the other is odd in the horizontal defect before
the positive Gram square is taken.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SAFE_EVEN_ODD_PACKING_DEFINED / QUARTIC_COEFFICIENT_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Complex
open CanonicalZeroDivisor

/-- Exact reflection-even prime-power source term. -/
def safeEvenPrimePowerTerm
    (z : ZeroPoint) (event : PrimePowerEvent) : ℂ :=
  (safePlusPrimePowerTerm z event + safeMinusPrimePowerTerm z event) / 2

/-- Exact reflection-odd prime-power source term. -/
def safeOddPrimePowerTerm
    (z : ZeroPoint) (event : PrimePowerEvent) : ℂ :=
  (safePlusPrimePowerTerm z event - safeMinusPrimePowerTerm z event) / 2

/-- The exact reflected nontrivial zero. -/
def criticalReflectedZero (z : ZeroPoint) : ZeroPoint :=
  ⟨criticalReflection z.1, z.2.critical_reflection⟩

@[simp]
theorem criticalReflectedZero_val (z : ZeroPoint) :
    (criticalReflectedZero z).1 = criticalReflection z.1 :=
  rfl

/-- Reflection swaps the plus and minus event terms. -/
theorem safePlusPrimePowerTerm_criticalReflectedZero
    (z : ZeroPoint) (event : PrimePowerEvent) :
    safePlusPrimePowerTerm (criticalReflectedZero z) event =
      safeMinusPrimePowerTerm z event := by
  unfold safePlusPrimePowerTerm safeMinusPrimePowerTerm
  rw [criticalReflectedZero_val, safeShiftPlus_criticalReflection]

theorem safeMinusPrimePowerTerm_criticalReflectedZero
    (z : ZeroPoint) (event : PrimePowerEvent) :
    safeMinusPrimePowerTerm (criticalReflectedZero z) event =
      safePlusPrimePowerTerm z event := by
  unfold safePlusPrimePowerTerm safeMinusPrimePowerTerm
  rw [criticalReflectedZero_val, safeShiftMinus_criticalReflection]

/-- The even channel is fixed by critical reflection. -/
theorem safeEvenPrimePowerTerm_criticalReflectedZero
    (z : ZeroPoint) (event : PrimePowerEvent) :
    safeEvenPrimePowerTerm (criticalReflectedZero z) event =
      safeEvenPrimePowerTerm z event := by
  rw [safeEvenPrimePowerTerm,
    safePlusPrimePowerTerm_criticalReflectedZero,
    safeMinusPrimePowerTerm_criticalReflectedZero]
  unfold safeEvenPrimePowerTerm
  ring

/-- The odd channel changes sign under critical reflection. -/
theorem safeOddPrimePowerTerm_criticalReflectedZero
    (z : ZeroPoint) (event : PrimePowerEvent) :
    safeOddPrimePowerTerm (criticalReflectedZero z) event =
      -safeOddPrimePowerTerm z event := by
  rw [safeOddPrimePowerTerm,
    safePlusPrimePowerTerm_criticalReflectedZero,
    safeMinusPrimePowerTerm_criticalReflectedZero]
  unfold safeOddPrimePowerTerm
  ring

/-- On the critical line the two safe shifts coincide. -/
theorem safeShiftPlus_eq_safeShiftMinus_of_zeroDefect
    {s : ℂ} (h : zeroDefect s = 0) :
    safeShiftPlus s = safeShiftMinus s := by
  apply Complex.ext <;>
    simp [safeShiftPlus, safeShiftMinus, h]

/-- Hence the odd arithmetic source vanishes pointwise on the critical line. -/
theorem safeOddPrimePowerTerm_eq_zero_of_zeroDefect
    (z : ZeroPoint) (event : PrimePowerEvent)
    (h : zeroDefect z.1 = 0) :
    safeOddPrimePowerTerm z event = 0 := by
  unfold safeOddPrimePowerTerm safePlusPrimePowerTerm safeMinusPrimePowerTerm
  rw [safeShiftPlus_eq_safeShiftMinus_of_zeroDefect h]
  ring

/-- Real two-dimensional reflection-even/odd source point. -/
def safeEvenOddRealPoint
    (z : ZeroPoint) (event : PrimePowerEvent) : PackingPoint :=
  ⟨(safeEvenPrimePowerTerm z event).re,
    (safeOddPrimePowerTerm z event).re⟩

namespace PackingPoint

/-- Reflection across the horizontal axis. -/
def reflectY (p : PackingPoint) : PackingPoint :=
  ⟨p.x, -p.y⟩

@[simp] theorem reflectY_x (p : PackingPoint) : p.reflectY.x = p.x := rfl
@[simp] theorem reflectY_y (p : PackingPoint) : p.reflectY.y = -p.y := rfl

end PackingPoint

/-- Critical reflection of the zero acts as y-reflection on every arithmetic
packing point. -/
theorem safeEvenOddRealPoint_criticalReflectedZero
    (z : ZeroPoint) (event : PrimePowerEvent) :
    safeEvenOddRealPoint (criticalReflectedZero z) event =
      (safeEvenOddRealPoint z event).reflectY := by
  apply PackingPoint.ext
  · simp [safeEvenOddRealPoint,
      safeEvenPrimePowerTerm_criticalReflectedZero]
  · simp [safeEvenOddRealPoint,
      safeOddPrimePowerTerm_criticalReflectedZero]

namespace ThreePointPacking

/-- Reflect all three points across the horizontal axis. -/
def reflectY (p : ThreePointPacking) : ThreePointPacking :=
  ⟨p.first.reflectY, p.second.reflectY, p.third.reflectY⟩

/-- Oriented area changes sign under y-reflection. -/
theorem orientedVolume_reflectY (p : ThreePointPacking) :
    p.reflectY.orientedVolume = -p.orientedVolume := by
  unfold reflectY orientedVolume edge01 edge12 PackingPoint.sub PackingPoint.reflectY
  ring

/-- The positive Gram volume is invariant under y-reflection. -/
theorem gramVolume_reflectY (p : ThreePointPacking) :
    p.reflectY.gramVolume = p.gramVolume := by
  simp only [gramVolume, orientedVolume_reflectY, neg_sq]

/-- Three collinear horizontal points have zero Gram volume. -/
theorem gramVolume_eq_zero_of_y_zero
    (p : ThreePointPacking)
    (h0 : p.first.y = 0)
    (h1 : p.second.y = 0)
    (h2 : p.third.y = 0) :
    p.gramVolume = 0 := by
  unfold gramVolume orientedVolume edge01 edge12 PackingPoint.sub
  rw [h0, h1, h2]
  ring

end ThreePointPacking

/-- Concrete reflection-even/odd point family. -/
def safeEvenOddRealPointFamily :
    SourceSensitivePrimePowerPointFamily ZeroPoint where
  point := safeEvenOddRealPoint
  sourceId := "safe shifted von Mangoldt even/odd real channel"
  revision := pinnedVonMangoldtSource.revision
  normalization :=
    "E=(Tplus+Tminus)/2; O=(Tplus-Tminus)/2; point=(Re E, Re O)"

/-- Positive sliding sequence built from the even/odd points. -/
def safeEvenOddRealPackingSequence (z : ZeroPoint) :
    SequentialThreePointPrimePacking :=
  safeEvenOddRealPointFamily.sequence z

/-- Every stage is structurally nonnegative. -/
theorem safeEvenOddRealPackingSequence_valueAt_nonnegative
    (z : ZeroPoint) (n : ℕ) :
    0 ≤ (safeEvenOddRealPackingSequence z).valueAt n :=
  safeEvenOddRealPointFamily.valueAt_nonnegative z n

/-- On the critical line, every point has zero odd coordinate. -/
theorem safeEvenOddRealPoint_y_eq_zero_of_zeroDefect
    (z : ZeroPoint) (event : PrimePowerEvent)
    (h : zeroDefect z.1 = 0) :
    (safeEvenOddRealPoint z event).y = 0 := by
  simp [safeEvenOddRealPoint,
    safeOddPrimePowerTerm_eq_zero_of_zeroDefect z event h]

/-- Consequently every three-point stage vanishes exactly on the critical line. -/
theorem safeEvenOddRealPackingSequence_valueAt_eq_zero_of_zeroDefect
    (z : ZeroPoint) (n : ℕ)
    (h : zeroDefect z.1 = 0) :
    (safeEvenOddRealPackingSequence z).valueAt n = 0 := by
  apply ThreePointPacking.gramVolume_eq_zero_of_y_zero
  · exact safeEvenOddRealPoint_y_eq_zero_of_zeroDefect
      z (canonicalPrimePowerEventSequence n) h
  · exact safeEvenOddRealPoint_y_eq_zero_of_zeroDefect
      z (canonicalPrimePowerEventSequence (n + 1)) h
  · exact safeEvenOddRealPoint_y_eq_zero_of_zeroDefect
      z (canonicalPrimePowerEventSequence (n + 2)) h

end GRWTSK.RiemannHypothesis
