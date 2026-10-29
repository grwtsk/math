/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalRoundedArithmetic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Omega
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Integer step certificates for the SAME directed-rounded recurrence

The seed is still computed by the original rational algorithm. After seed
rounding, each state is three integers on one fixed grid. Step certificates
use integer quotient windows, including the strict sides of floor and ceiling.
They prove exact equality with the inherited rational recurrence, not just a
larger enclosure. They do not prove seed correctness, source acceptance, or
trust a stored flag. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.IntegerDyadicTrace

open RationalRoundedArithmetic

structure GridState where
  realPart : ℤ
  imagPart : ℤ
  errorPart : ℤ
  deriving DecidableEq, Repr

def scaleZ (bits : ℕ) : ℤ := (2 : ℤ) ^ bits

def decode (bits : ℕ) (a : GridState) : State :=
  ⟨⟨(a.realPart : ℚ) / scaleQ bits, (a.imagPart : ℚ) / scaleQ bits⟩,
    (a.errorPart : ℚ) / scaleQ bits⟩

def FloorWindow (D A q : ℤ) : Prop := D * q ≤ A ∧ A < D * (q + 1)
def CeilingWindow (D A q : ℤ) : Prop := D * (q - 1) < A ∧ A ≤ D * q

@[simp] theorem cast_scaleZ (bits : ℕ) : (scaleZ bits : ℚ) = scaleQ bits := by
  simp [scaleZ, scaleQ]

theorem scaleZ_pos (bits : ℕ) : 0 < scaleZ bits := by unfold scaleZ; positivity

theorem scaleQ_pos (bits : ℕ) : 0 < scaleQ bits := by unfold scaleQ; positivity

/-- The denominator must be positive; signed numerators are unrestricted. -/
theorem floor_div_of_window (D A q : ℤ) (hD : 0 < D) (h : FloorWindow D A q) :
    ⌊(A : ℚ) / (D : ℚ)⌋ = q := by
  have hDq : (0 : ℚ) < D := by exact_mod_cast hD
  apply Int.floor_eq_iff.mpr
  constructor
  · apply (le_div_iff₀ hDq).mpr
    have hh : (D : ℚ) * (q : ℚ) ≤ (A : ℚ) := by exact_mod_cast h.1
    simpa only [mul_comm] using hh
  · apply (div_lt_iff₀ hDq).mpr
    have hh : (A : ℚ) < (D : ℚ) * ((q : ℚ) + 1) := by exact_mod_cast h.2
    simpa only [mul_comm] using hh

/-- Upward rounding is negated floor, with the strict lower endpoint retained. -/
theorem neg_floor_div_of_window (D A q : ℤ) (hD : 0 < D)
    (h : CeilingWindow D A q) : ⌊-((A : ℚ) / (D : ℚ))⌋ = -q := by
  have hn : FloorWindow D (-A) (-q) := by
    constructor <;> nlinarith [h.1, h.2]
  simpa only [Int.cast_neg, neg_div] using floor_div_of_window D (-A) (-q) hD hn

/-- Seed comparison is with the ORIGINAL rational seed and error, not arbitrary metadata. -/
def SeedValid (bits : ℕ) (seed : QComplex) (initial : ℚ) (a : GridState) : Prop :=
  0 ≤ initial ∧ 0 ≤ a.errorPart ∧
  ((a.realPart : ℚ) ≤ scaleQ bits * seed.re ∧
    scaleQ bits * seed.re < (a.realPart : ℚ) + 1) ∧
  ((a.imagPart : ℚ) ≤ scaleQ bits * seed.im ∧
    scaleQ bits * seed.im < (a.imagPart : ℚ) + 1) ∧
  ((a.errorPart : ℚ) - 1 < scaleQ bits * (initial + roundoffQ bits) ∧
    scaleQ bits * (initial + roundoffQ bits) ≤ (a.errorPart : ℚ))

def realProduct (a : GridState) : ℤ := a.realPart ^ 2 - a.imagPart ^ 2
def imagProduct (a : GridState) : ℤ := 2 * a.realPart * a.imagPart

def errorProduct (bits : ℕ) (a : GridState) : ℤ :=
  a.errorPart * (2 * (|a.realPart| + |a.imagPart|) + a.errorPart) + 2 * scaleZ bits

/-- No division, floor or rational normalization is used in these step tests. -/
def StepValid (bits : ℕ) (a b : GridState) : Prop :=
  0 ≤ a.errorPart ∧ 0 ≤ b.errorPart ∧
  FloorWindow (scaleZ bits) (realProduct a) b.realPart ∧
  FloorWindow (scaleZ bits) (imagProduct a) b.imagPart ∧
  CeilingWindow (scaleZ bits) (errorProduct bits a) b.errorPart

theorem seed_refines (bits : ℕ) (seed : QComplex) (initial : ℚ) (a : GridState)
    (h : SeedValid bits seed initial a) : initialState bits seed initial = decode bits a := by
  have hr := Int.floor_eq_iff.mpr h.2.2.1
  have hi := Int.floor_eq_iff.mpr h.2.2.2.1
  have he : ⌊scaleQ bits * (-(initial + roundoffQ bits))⌋ = -a.errorPart := by
    rw [mul_neg]
    apply Int.floor_eq_iff.mpr
    simp only [Int.cast_neg]
    constructor <;> linarith [h.2.2.2.2.1, h.2.2.2.2.2]
  simp only [initialState, quantizeQ, downQ, upQ, decode, hr, hi, he,
    Int.cast_neg, neg_div, neg_neg]

/-- The three scaled rational expressions reduce to precisely these integer numerators. -/
theorem scaled_step_formulas (bits : ℕ) (a : GridState) :
    scaleQ bits * (QComplex.mul (decode bits a).value (decode bits a).value).re =
        (realProduct a : ℚ) / (scaleZ bits : ℚ) ∧
    scaleQ bits * (QComplex.mul (decode bits a).value (decode bits a).value).im =
        (imagProduct a : ℚ) / (scaleZ bits : ℚ) ∧
    scaleQ bits * ((decode bits a).error *
        (2 * QComplex.rect (decode bits a).value + (decode bits a).error) + roundoffQ bits) =
        (errorProduct bits a : ℚ) / (scaleZ bits : ℚ) := by
  have hp := scaleQ_pos bits
  have hn := ne_of_gt hp
  simp only [decode, QComplex.mul, QComplex.rect, roundoffQ, realProduct,
    imagProduct, errorProduct, Int.cast_add, Int.cast_sub, Int.cast_mul,
    Int.cast_pow, Int.cast_ofNat, Int.cast_abs, cast_scaleZ,
    abs_div, abs_of_pos hp]
  constructor
  · field_simp [hn] <;> ring
  constructor <;> field_simp [hn] <;> ring

/-- Each accepted transition is EXACTLY the inherited rational step, including the error. -/
theorem step_refines (bits : ℕ) (a b : GridState) (h : StepValid bits a b) :
    step bits (decode bits a) = decode bits b := by
  obtain ⟨hr, hi, he⟩ := scaled_step_formulas bits a
  have fr := floor_div_of_window _ _ _ (scaleZ_pos bits) h.2.2.1
  have fi := floor_div_of_window _ _ _ (scaleZ_pos bits) h.2.2.2.1
  have fe := neg_floor_div_of_window _ _ _ (scaleZ_pos bits) h.2.2.2.2
  have ferror : ⌊scaleQ bits * (-((decode bits a).error *
      (2 * QComplex.rect (decode bits a).value + (decode bits a).error) + roundoffQ bits))⌋ =
      -b.errorPart := by rw [mul_neg, he]; exact fe
  change State.mk
    ⟨(⌊scaleQ bits * (QComplex.mul (decode bits a).value (decode bits a).value).re⌋ : ℚ) / scaleQ bits,
      (⌊scaleQ bits * (QComplex.mul (decode bits a).value (decode bits a).value).im⌋ : ℚ) / scaleQ bits⟩
    (-((⌊scaleQ bits * (-((decode bits a).error *
      (2 * QComplex.rect (decode bits a).value + (decode bits a).error) + roundoffQ bits))⌋ : ℚ) /
      scaleQ bits)) = decode bits b
  rw [hr, hi, fr, fi, ferror]
  simp only [decode, Int.cast_neg, neg_div, neg_neg]

/-- Exactly s+1 states, with s checked transitions; no omitted first or last step. -/
def TraceValid (bits : ℕ) (seed : QComplex) (initial : ℚ) (s : ℕ)
    (t : Fin (s + 1) → GridState) : Prop :=
  SeedValid bits seed initial (t 0) ∧
    ∀ j : Fin s, StepValid bits (t j.castSucc) (t j.succ)

instance (bits : ℕ) (seed : QComplex) (initial : ℚ) (s : ℕ)
    (t : Fin (s + 1) → GridState) : Decidable (TraceValid bits seed initial s t) := by
  unfold TraceValid SeedValid StepValid FloorWindow CeilingWindow
  infer_instance

def checkTrace (bits : ℕ) (seed : QComplex) (initial : ℚ) (s : ℕ)
    (t : Fin (s + 1) → GridState) : Bool := decide (TraceValid bits seed initial s t)

theorem checkTrace_iff (bits : ℕ) (seed : QComplex) (initial : ℚ) (s : ℕ)
    (t : Fin (s + 1) → GridState) :
    checkTrace bits seed initial s t = true ↔ TraceValid bits seed initial s t := by
  simp [checkTrace]

/-- In particular the error state, not only the output value, is preserved. -/
theorem trace_refines (bits : ℕ) (seed : QComplex) (initial : ℚ) (s : ℕ)
    (t : Fin (s + 1) → GridState) (h : TraceValid bits seed initial s t) :
    run bits seed initial s = decode bits (t (Fin.last s)) := by
  have hall : ∀ j (hj : j ≤ s),
      run bits seed initial j = decode bits (t ⟨j, by omega⟩) := by
    intro j
    induction j with
    | zero =>
        intro hj
        simpa only [run] using seed_refines bits seed initial (t 0) h.1
    | succ j ih =>
        intro hj
        have hj' : j < s := by omega
        have ht := step_refines bits (t (Fin.castSucc ⟨j, hj'⟩))
          (t (Fin.succ ⟨j, hj'⟩)) (h.2 ⟨j, hj'⟩)
        rw [run, ih (by omega)]
        exact ht
  exact hall s le_rfl

end GRWTSK.Analysis.Complex.IntegerDyadicTrace
