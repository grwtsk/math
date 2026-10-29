/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
These declarations have not been elaborated or kernel checked in the current
environment.  They expose exact hypotheses and are intentionally not imported
by `GRWTSK.lean` pending the verification issues associated with this change.
-/
import Mathlib

/-!
# Farey cells and resolvable polynomial intervals

A `Cell` records two reduced-neighbour-style rational endpoints through the
unimodular identity `b*c = a*d + 1`.  The repository term "resolvable eye" is
made literal here as an oriented sign-resolving Farey interval; no completeness
or root-existence theorem over `ℚ` is hidden in the definition.

The final lemmas isolate the exact algebra needed to pass from a quadratic and
cubic factor to a quintic product, while keeping all nonvanishing and degree
hypotheses explicit.
-/

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Farey

open Polynomial

/-- A positively oriented Farey cell `a/b < c/d`, encoded by determinant one. -/
structure Cell where
  leftNum : ℕ
  leftDen : ℕ
  rightNum : ℕ
  rightDen : ℕ
  leftDen_pos : 0 < leftDen
  rightDen_pos : 0 < rightDen
  unimodular : leftDen * rightNum = leftNum * rightDen + 1

namespace Cell

/-- Left rational endpoint. -/
def left (I : Cell) : ℚ := (I.leftNum : ℚ) / (I.leftDen : ℚ)

/-- Right rational endpoint. -/
def right (I : Cell) : ℚ := (I.rightNum : ℚ) / (I.rightDen : ℚ)

/-- The mediant of the two endpoints. -/
def mediant (I : Cell) : ℚ :=
  ((I.leftNum + I.rightNum : ℕ) : ℚ) /
    ((I.leftDen + I.rightDen : ℕ) : ℚ)

/-- Left mediant child. -/
def leftChild (I : Cell) : Cell where
  leftNum := I.leftNum
  leftDen := I.leftDen
  rightNum := I.leftNum + I.rightNum
  rightDen := I.leftDen + I.rightDen
  leftDen_pos := I.leftDen_pos
  rightDen_pos := Nat.add_pos_left I.leftDen_pos I.rightDen
  unimodular := by
    calc
      I.leftDen * (I.leftNum + I.rightNum) =
          I.leftNum * I.leftDen + I.leftDen * I.rightNum := by ring
      _ = I.leftNum * I.leftDen + (I.leftNum * I.rightDen + 1) := by
        rw [I.unimodular]
      _ = I.leftNum * (I.leftDen + I.rightDen) + 1 := by ring

/-- Right mediant child. -/
def rightChild (I : Cell) : Cell where
  leftNum := I.leftNum + I.rightNum
  leftDen := I.leftDen + I.rightDen
  rightNum := I.rightNum
  rightDen := I.rightDen
  leftDen_pos := Nat.add_pos_left I.leftDen_pos I.rightDen
  rightDen_pos := I.rightDen_pos
  unimodular := by
    calc
      (I.leftDen + I.rightDen) * I.rightNum =
          I.leftDen * I.rightNum + I.rightDen * I.rightNum := by ring
      _ = (I.leftNum * I.rightDen + 1) + I.rightDen * I.rightNum := by
        rw [I.unimodular]
      _ = (I.leftNum + I.rightNum) * I.rightDen + 1 := by ring

@[simp] theorem left_leftChild (I : Cell) : I.leftChild.left = I.left := rfl
@[simp] theorem right_leftChild (I : Cell) : I.leftChild.right = I.mediant := rfl
@[simp] theorem left_rightChild (I : Cell) : I.rightChild.left = I.mediant := rfl
@[simp] theorem right_rightChild (I : Cell) : I.rightChild.right = I.right := rfl

/-- Determinant one gives the strict endpoint order. -/
theorem left_lt_right (I : Cell) : I.left < I.right := by
  have hb : (0 : ℚ) < (I.leftDen : ℚ) := by exact_mod_cast I.leftDen_pos
  have hd : (0 : ℚ) < (I.rightDen : ℚ) := by exact_mod_cast I.rightDen_pos
  have hdet : (I.leftDen : ℚ) * (I.rightNum : ℚ) =
      (I.leftNum : ℚ) * (I.rightDen : ℚ) + 1 := by
    exact_mod_cast I.unimodular
  rw [left, right, div_lt_div_iff₀ hb hd]
  nlinarith

/-- The mediant lies strictly to the right of the left endpoint. -/
theorem left_lt_mediant (I : Cell) : I.left < I.mediant := by
  simpa using I.leftChild.left_lt_right

/-- The mediant lies strictly to the left of the right endpoint. -/
theorem mediant_lt_right (I : Cell) : I.mediant < I.right := by
  simpa using I.rightChild.left_lt_right

end Cell

/-- An oriented sign-resolving interval. It asserts endpoint signs only. -/
def Resolves (f : ℚ → ℚ) (I : Cell) : Prop :=
  f I.left ≤ 0 ∧ 0 ≤ f I.right

/-- One exact Farey refinement step: the mediant is a root, or one child retains
oriented endpoint signs. -/
theorem resolves_refine (f : ℚ → ℚ) (I : Cell) (h : Resolves f I) :
    f I.mediant = 0 ∨ Resolves f I.leftChild ∨ Resolves f I.rightChild := by
  rcases lt_trichotomy (f I.mediant) 0 with hneg | hzero | hpos
  · exact Or.inr (Or.inr ⟨by simpa using hneg.le, by simpa using h.2⟩)
  · exact Or.inl hzero
  · exact Or.inr (Or.inl ⟨by simpa using h.1, by simpa using hpos.le⟩)

/-- Polynomial specialization of `Resolves`. -/
def PolynomialResolves (p : Polynomial ℚ) (I : Cell) : Prop :=
  Resolves (fun x => p.eval x) I

/-- Formal repository meaning of a "resolvable eye": an exact Farey cell whose
endpoints have the declared polynomial sign orientation. -/
def ResolvableEye (p : Polynomial ℚ) (I : Cell) : Prop :=
  PolynomialResolves p I

/-- Farey refinement for a resolvable polynomial eye. -/
theorem resolvableEye_refine (p : Polynomial ℚ) (I : Cell)
    (h : ResolvableEye p I) :
    p.eval I.mediant = 0 ∨
      ResolvableEye p I.leftChild ∨ ResolvableEye p I.rightChild :=
  resolves_refine (fun x => p.eval x) I h

/-- A nonzero quadratic times a nonzero cubic has natural degree five. -/
theorem quadratic_mul_cubic_natDegree
    (q c : Polynomial ℚ) (hq : q ≠ 0) (hc : c ≠ 0)
    (hqDegree : q.natDegree = 2) (hcDegree : c.natDegree = 3) :
    (q * c).natDegree = 5 := by
  rw [Polynomial.natDegree_mul hq hc, hqDegree, hcDegree]

/-- Multiplication by a pointwise positive factor preserves the rational zero set. -/
theorem eval_mul_eq_zero_iff_of_pos
    (q c : Polynomial ℚ) (x : ℚ) (hq : 0 < q.eval x) :
    (q * c).eval x = 0 ↔ c.eval x = 0 := by
  simp [Polynomial.eval_mul, ne_of_gt hq]

/-- Multiplication by a pointwise positive factor preserves nonpositivity. -/
theorem eval_mul_nonpos_iff_of_pos
    (q c : Polynomial ℚ) (x : ℚ) (hq : 0 < q.eval x) :
    (q * c).eval x ≤ 0 ↔ c.eval x ≤ 0 := by
  rw [Polynomial.eval_mul]
  constructor
  · intro h
    by_contra hc
    have hcpos : 0 < c.eval x := lt_of_not_ge hc
    exact (not_lt_of_ge h) (mul_pos hq hcpos)
  · intro hc
    exact mul_nonpos_of_nonneg_of_nonpos hq.le hc

/-- Multiplication by a pointwise positive factor preserves nonnegativity. -/
theorem eval_mul_nonneg_iff_of_pos
    (q c : Polynomial ℚ) (x : ℚ) (hq : 0 < q.eval x) :
    0 ≤ (q * c).eval x ↔ 0 ≤ c.eval x := by
  rw [Polynomial.eval_mul]
  constructor
  · intro h
    by_contra hc
    have hcneg : c.eval x < 0 := lt_of_not_ge hc
    exact (not_lt_of_ge h) (mul_neg_of_pos_of_neg hq hcneg)
  · intro hc
    exact mul_nonneg hq.le hc

/-- Endpoint positivity is sufficient to preserve an oriented polynomial
sign certificate. No positivity assumption is made away from the two endpoints. -/
theorem polynomialResolves_mul_iff_of_pos_at_endpoints
    (q c : Polynomial ℚ) (I : Cell)
    (hleft : 0 < q.eval I.left) (hright : 0 < q.eval I.right) :
    PolynomialResolves (q * c) I ↔ PolynomialResolves c I := by
  constructor
  · intro h
    exact ⟨
      (eval_mul_nonpos_iff_of_pos q c I.left hleft).mp h.1,
      (eval_mul_nonneg_iff_of_pos q c I.right hright).mp h.2⟩
  · intro h
    exact ⟨
      (eval_mul_nonpos_iff_of_pos q c I.left hleft).mpr h.1,
      (eval_mul_nonneg_iff_of_pos q c I.right hright).mpr h.2⟩

/-- The endpoint-local comparison also applies to the declared resolvable-eye
interface; it asserts sign preservation, not a rational root or completeness. -/
theorem resolvableEye_mul_iff_of_pos_at_endpoints
    (q c : Polynomial ℚ) (I : Cell)
    (hleft : 0 < q.eval I.left) (hright : 0 < q.eval I.right) :
    ResolvableEye (q * c) I ↔ ResolvableEye c I :=
  polynomialResolves_mul_iff_of_pos_at_endpoints q c I hleft hright

/-- A pointwise positive quadratic factor preserves every oriented Farey
resolution certificate for the cubic factor. -/
theorem polynomialResolves_mul_iff_of_pos
    (q c : Polynomial ℚ) (I : Cell) (hq : ∀ x : ℚ, 0 < q.eval x) :
    PolynomialResolves (q * c) I ↔ PolynomialResolves c I :=
  polynomialResolves_mul_iff_of_pos_at_endpoints q c I (hq I.left) (hq I.right)

end GRWTSK.NumberTheory.Farey
