# Diagonal Remainder Budget — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b76dfa556e615ff6f6d4249b52cef147b007df6` · SHA-256 `cdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate
import Mathlib.NumberTheory.Harmonic.Bounds

/-!
The actual diagonal remainder has a polynomial budget. This is solely the
ratio class (1,1); it makes no assertion about the off-diagonal classes or
the complete signed pairing.
-/

set_option autoImplicit false

namespace DiagonalRemainderBudgetScratch

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

/-- The literal Möbius square coefficient lies between zero and one. -/
theorem moebius_square_le_one (g : ℕ) :
    (ArithmeticFunction.moebius g : ℝ) ^ 2 ≤ 1 := by
  have h : |(ArithmeticFunction.moebius g : ℝ)| ≤ 1 := by
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := g))
  have hp := sq_abs (ArithmeticFunction.moebius g : ℝ)
  nlinarith [abs_nonneg (ArithmeticFunction.moebius g : ℝ)]

/-- The exact harmonic sum up to the source square-root cutoff is at most 1+A. -/
theorem source_harmonic_sum_le (A : ℝ) (hA : 1 ≤ A) :
    (∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (g : ℝ)⁻¹) ≤ 1 + A := by
  have h := harmonic_floor_le_one_add_log (Real.exp A)
    (Real.one_le_exp_iff.mpr (by linarith))
  simpa only [Real.log_exp, harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv,
    Rat.cast_natCast] using h

/-- The complete actual diagonal remainder has this polynomial bound, with every μ(g)^2 retained. -/
theorem diagonal_remainder_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
      ThetaRemainder.thetaRemainder A (g ^ 2)| ≤
      (24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))) * (1 + A) := by
  let K : ℝ := 24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))
  have hA0 : 0 < A := by linarith
  have hK : 0 ≤ K := by dsimp [K]; positivity
  have hterm (g : ℕ) (hg : g ∈ Icc 1 ⌊Real.exp A⌋₊) :
      |(ArithmeticFunction.moebius g : ℝ) ^ 2 *
        ThetaRemainder.thetaRemainder A (g ^ 2)| ≤ K / (g : ℝ) := by
    have hg1 := (mem_Icc.mp hg).1
    have hg0 : (0 : ℝ) < g := by exact_mod_cast (show 0 < g by omega)
    have hg2 : 1 ≤ g ^ 2 := by nlinarith
    have hR := ThetaKernelEstimate.thetaRemainder_abs_le A (g ^ 2) hA hg2
    simp only [Nat.cast_pow, Real.sqrt_sq_eq_abs, abs_of_nonneg hg0.le] at hR
    rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
    exact (mul_le_mul_of_nonneg_left hR (sq_nonneg _)).trans
      (mul_le_of_le_one_left (div_nonneg hK hg0.le) (moebius_square_le_one g))
  calc
    _ ≤ ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊,
        |(ArithmeticFunction.moebius g : ℝ) ^ 2 *
          ThetaRemainder.thetaRemainder A (g ^ 2)| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, K / (g : ℝ) := sum_le_sum hterm
    _ = K * ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (g : ℝ)⁻¹ := by
      simp only [div_eq_mul_inv, mul_sum]
    _ ≤ K * (1 + A) := mul_le_mul_of_nonneg_left (source_harmonic_sum_le A hA) hK

end
end DiagonalRemainderBudgetScratch

#print axioms DiagonalRemainderBudgetScratch.moebius_square_le_one
#print axioms DiagonalRemainderBudgetScratch.source_harmonic_sum_le
#print axioms DiagonalRemainderBudgetScratch.diagonal_remainder_abs_le
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ea1188b3d69a196a0c18ff40fc69655f8c6a132b0aea3b89341922cde4d2f54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DiagonalRemainderBudget/Variantcdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
