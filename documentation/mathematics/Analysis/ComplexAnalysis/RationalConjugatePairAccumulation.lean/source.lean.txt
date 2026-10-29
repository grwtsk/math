/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalTentAccumulation
import GRWTSK.Analysis.Complex.TentMellinKernel
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Rational accumulation of conjugate tent-kernel pairs

For real tent parameters, the integral kernel commutes with complex conjugation.
A positive-height zero and its actual conjugate therefore contribute

  K(rho) + K(conj rho) = K(rho) + conj(K(rho)).

One rational row can enclose this whole pair. Its center is the doubled real part
of the existing one-point center and its error is twice the existing one-point
error. The construction does not infer that an arbitrary row represents a zero,
that its conjugate is present in a source, or that a positive-height list is
complete. Those semantic obligations belong to a separate canonical adapter.

The accumulator uses exact rational arithmetic and one final directed rounding,
like `RationalTentAccumulation`. It does not execute the evaluator or provide any
passing row data. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.RationalConjugatePairAccumulation

open scoped BigOperators ComplexConjugate
open RationalRoundedArithmetic
open RationalTentEvaluation
open RationalTentAccumulation
open IntervalMellinKernel TentMellinKernel

noncomputable section

/-- Positive-axis exponentiation commutes with complex conjugation. -/
theorem logPower_conj (t : ℝ) (z : ℂ) :
    logPower t (conj z) = conj (logPower t z) := by
  unfold logPower
  rw [← Complex.exp_conj]
  congr 1
  simp

/-- The real tent kernel commutes with conjugation away from the two quotient
parameters. A nonzero imaginary coordinate supplies both exclusions. -/
theorem tentKernel_conj_of_im_ne_zero
    (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (z : ℂ) (him : z.im ≠ 0) :
    tentKernel x h (conj z) = conj (tentKernel x h z) := by
  have hz0 : z ≠ 0 := by
    intro hz
    apply him
    simp [hz]
  have hz1 : z + 1 ≠ 0 := by
    intro hz
    have hzim := congrArg Complex.im hz
    apply him
    simpa using hzim
  have hcz0 : conj z ≠ 0 := by
    intro hz
    apply hz0
    have := congrArg conj hz
    simpa using this
  have hcz1 : conj z + 1 ≠ 0 := by
    intro hz
    apply hz1
    have := congrArg conj hz
    simpa using this
  rw [tentKernel_eq_quotient x h hh ha (conj z) hcz0 hcz1,
    tentKernel_eq_quotient x h hh ha z hz0 hz1]
  simp [logPower_conj, map_add, map_sub, map_mul, map_div₀]

/-- Rational center for the whole conjugate pair: twice the real component and
zero imaginary component. -/
def pairValue (x h : ℚ) (p : RationalTentEvaluation.Input) : QComplex :=
  let v := (RationalTentEvaluation.compute x h p).value
  ⟨2 * v.re, 0⟩

/-- Both members of the pair retain the complete one-point error. -/
def pairError (x h : ℚ) (p : RationalTentEvaluation.Input) : ℚ :=
  2 * (RationalTentEvaluation.compute x h p).error

@[simp] theorem embed_pairValue (x h : ℚ) (p : RationalTentEvaluation.Input) :
    QComplex.embed (pairValue x h p) =
      QComplex.embed (RationalTentEvaluation.compute x h p).value +
        conj (QComplex.embed (RationalTentEvaluation.compute x h p).value) := by
  ext <;> simp [pairValue, QComplex.embed]

/-- One positive source point controls its full conjugate pair. -/
theorem pairValue_sound
    (x h : ℚ) (p : RationalTentEvaluation.Input)
    (hp : RationalTentEvaluation.Admissible x h p)
    (z : ℂ) (hz : z.re ≤ 1) (him : z.im ≠ 0)
    (hcoord : ‖z - QComplex.embed p.center‖ ≤ (p.coordinateError : ℝ)) :
    ‖tentKernel (x : ℝ) (h : ℝ) z +
        tentKernel (x : ℝ) (h : ℝ) (conj z) -
      QComplex.embed (pairValue x h p)‖ ≤ (pairError x h p : ℝ) := by
  have hh : (0 : ℝ) < (h : ℝ) := by exact_mod_cast hp.1
  have ha : (1 : ℝ) < (x : ℝ) - (h : ℝ) := by exact_mod_cast hp.2.1
  let v := QComplex.embed (RationalTentEvaluation.compute x h p).value
  have hv :
      ‖tentKernel (x : ℝ) (h : ℝ) z - v‖ ≤
        ((RationalTentEvaluation.compute x h p).error : ℝ) := by
    exact RationalTentEvaluation.compute_sound x h p hp z hz hcoord
  have hconj : tentKernel (x : ℝ) (h : ℝ) (conj z) =
      conj (tentKernel (x : ℝ) (h : ℝ) z) :=
    tentKernel_conj_of_im_ne_zero (x : ℝ) (h : ℝ) hh ha z him
  have hvconj :
      ‖tentKernel (x : ℝ) (h : ℝ) (conj z) - conj v‖ ≤
        ((RationalTentEvaluation.compute x h p).error : ℝ) := by
    calc
      _ = ‖conj (tentKernel (x : ℝ) (h : ℝ) z - v)‖ := by
        rw [hconj, map_sub]
      _ = ‖tentKernel (x : ℝ) (h : ℝ) z - v‖ := by simp
      _ ≤ _ := hv
  calc
    _ = ‖(tentKernel (x : ℝ) (h : ℝ) z - v) +
        (tentKernel (x : ℝ) (h : ℝ) (conj z) - conj v)‖ := by
      rw [embed_pairValue]
      congr 1
      ring
    _ ≤ ‖tentKernel (x : ℝ) (h : ℝ) z - v‖ +
        ‖tentKernel (x : ℝ) (h : ℝ) (conj z) - conj v‖ := norm_add_le _ _
    _ ≤ ((RationalTentEvaluation.compute x h p).error : ℝ) +
        ((RationalTentEvaluation.compute x h p).error : ℝ) :=
      add_le_add hv hvconj
    _ = (pairError x h p : ℝ) := by simp [pairError, two_mul]

/-- Exact rational center for a finite family of positive rows. -/
def sumValue (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput) : QComplex :=
  ⟨∑ i, ((rows i).weight : ℚ) * (pairValue x h (rows i).point).re, 0⟩

/-- Complete pair error, including the natural multiplicity of every row. -/
def sumError (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput) : ℚ :=
  ∑ i, ((rows i).weight : ℚ) * pairError x h (rows i).point

/-- One final directed rounding after all positive-row pairs are accumulated. -/
def compute (x h : ℚ) (bits : ℕ) {k : ℕ}
    (rows : Fin k → WeightedInput) : State :=
  initialState bits (sumValue x h rows) (sumError x h rows)

/-- Reuse the existing per-row admissibility predicate; only the output
interpretation changes from one point to one conjugate pair. -/
def evaluate (x h : ℚ) (bits : ℕ) {k : ℕ}
    (rows : Fin k → WeightedInput) (tolerance : ℚ) : Option State :=
  if RationalTentAccumulation.Admissible x h rows then
    let out := compute x h bits rows
    if out.error ≤ tolerance then some out else none
  else none

/-- Byte-level claimed output equality remains part of acceptance. -/
def verify (x h : ℚ) (bits : ℕ) {k : ℕ}
    (rows : Fin k → WeightedInput) (tolerance : ℚ) (claimed : State) : Bool :=
  decide (evaluate x h bits rows tolerance = some claimed)

@[simp] theorem embed_sumValue (x h : ℚ) {k : ℕ}
    (rows : Fin k → WeightedInput) :
    QComplex.embed (sumValue x h rows) =
      ∑ i, ((rows i).weight : ℂ) *
        QComplex.embed (pairValue x h (rows i).point) := by
  ext <;> simp [sumValue, QComplex.embed, Complex.mul_re, Complex.mul_im]

/-- Finite positive rows enclose the sum of all represented conjugate pairs. -/
theorem sum_sound
    (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hg : RationalTentAccumulation.Admissible x h rows)
    (z : Fin k → ℂ)
    (hz : ∀ i, (z i).re ≤ 1)
    (him : ∀ i, (z i).im ≠ 0)
    (hcoord : ∀ i, ‖z i - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ)) :
    ‖(∑ i, ((rows i).weight : ℂ) *
        (tentKernel (x : ℝ) (h : ℝ) (z i) +
          tentKernel (x : ℝ) (h : ℝ) (conj (z i)))) -
      QComplex.embed (sumValue x h rows)‖ ≤ (sumError x h rows : ℝ) := by
  rw [embed_sumValue, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ i, ‖((rows i).weight : ℂ) *
        (tentKernel (x : ℝ) (h : ℝ) (z i) +
          tentKernel (x : ℝ) (h : ℝ) (conj (z i))) -
        ((rows i).weight : ℂ) * QComplex.embed (pairValue x h (rows i).point)‖ :=
      norm_sum_le _ _
    _ ≤ _ := by
      simp only [sumError, Rat.cast_sum, Rat.cast_mul, Rat.cast_natCast]
      apply Finset.sum_le_sum
      intro i _
      rw [← mul_sub, norm_mul, Complex.norm_natCast]
      exact mul_le_mul_of_nonneg_left
        (pairValue_sound x h (rows i).point (hg.2.2 i).2
          (z i) (hz i) (him i) (hcoord i)) (Nat.cast_nonneg _)

/-- Pair accumulation followed by one directed rounding is sound. -/
theorem compute_sound
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hg : RationalTentAccumulation.Admissible x h rows)
    (z : Fin k → ℂ)
    (hz : ∀ i, (z i).re ≤ 1)
    (him : ∀ i, (z i).im ≠ 0)
    (hcoord : ∀ i, ‖z i - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ)) :
    ‖(∑ i, ((rows i).weight : ℂ) *
        (tentKernel (x : ℝ) (h : ℝ) (z i) +
          tentKernel (x : ℝ) (h : ℝ) (conj (z i)))) -
      QComplex.embed (compute x h bits rows).value‖ ≤
        ((compute x h bits rows).error : ℝ) :=
  initialState_sound bits (sumValue x h rows) (sumError x h rows) _
    (sum_sound x h rows hg z hz him hcoord)

/-- Accepted output exposes all guards and the fixed recomputation. -/
theorem verify_iff
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (tolerance : ℚ) (out : State) :
    verify x h bits rows tolerance out = true ↔
      RationalTentAccumulation.Admissible x h rows ∧
      (compute x h bits rows).error ≤ tolerance ∧
      compute x h bits rows = out := by
  unfold verify evaluate
  split_ifs <;> simp_all

/-- Accepted positive-row pair computation carries its complete enclosure. -/
theorem verify_sound
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (tolerance : ℚ) (out : State)
    (accepted : verify x h bits rows tolerance out = true)
    (z : Fin k → ℂ)
    (hz : ∀ i, (z i).re ≤ 1)
    (him : ∀ i, (z i).im ≠ 0)
    (hcoord : ∀ i, ‖z i - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ)) :
    ‖(∑ i, ((rows i).weight : ℂ) *
        (tentKernel (x : ℝ) (h : ℝ) (z i) +
          tentKernel (x : ℝ) (h : ℝ) (conj (z i)))) -
      QComplex.embed out.value‖ ≤ (out.error : ℝ) ∧
      out.error ≤ tolerance := by
  obtain ⟨hg, ht, rfl⟩ := (verify_iff x h bits rows tolerance out).mp accepted
  exact ⟨compute_sound x h bits rows hg z hz him hcoord, ht⟩

end

end GRWTSK.Analysis.Complex.RationalConjugatePairAccumulation
