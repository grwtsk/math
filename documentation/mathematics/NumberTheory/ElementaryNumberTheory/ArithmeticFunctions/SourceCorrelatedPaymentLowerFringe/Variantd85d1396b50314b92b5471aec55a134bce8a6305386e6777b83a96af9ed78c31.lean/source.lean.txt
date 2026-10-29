import SourceCorrelatedShortSamplingPayment

/-!
# The closed Moebius payment and its retained product fringe

UNCOMPILED source preparation. The full Moebius-Mangoldt convolution is obtained
from the existing Mathlib divisor-log sum and zeta inverse, with no new arithmetic
hypothesis. The independently specified sampling payment has a closed lower
carrier plus its literal truncated product fringe U < n <= U*U. That fringe is
retained, including the square corner and the existing U=2,n=4 coefficient guard.

The same normalized Jlog and Jplain, independent main term, PLUS centering and
physical deletion d*k=m remain unchanged. The optional actual joint-target
adapter only substitutes the exact payment expression in its owning identity.
No signed upper estimate, monotonicity, positivity, physical scale flux or RH
witness is supplied. A nonzero arithmetic coefficient is not a proved nonzero
literal normalized source weight.

AI attribution: developed with OpenAI Codex. The complete proof bodies below
have not been elaborated. Native, type/axiom, full proof-view, lint, independent
acceptance and complete verification gates remain separate.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCorrelatedPaymentLowerFringe

open ArithmeticFunction SourceCorrelatedShortSamplingPayment SourcePhysicalQuotientStrip
open SourceSamplingPointwise SourceDivisorCounterterms
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateVaughanSource EstimateMertensAbel

noncomputable section

private theorem moebius_mangoldt_eq_neg_pointwise_log :
    (moebius : ArithmeticFunction ℝ) * vonMangoldt =
      -((moebius : ArithmeticFunction ℝ).pmul ArithmeticFunction.log) := by
  let g := (moebius : ArithmeticFunction ℝ).pmul ArithmeticFunction.log
  have hs : g * (zeta : ArithmeticFunction ℝ) = -vonMangoldt := by
    ext n
    simp only [coe_mul_zeta_apply, g, pmul_apply, intCoe_apply, neg_apply]
    exact sum_moebius_mul_log_eq
  have hh := congrArg
    (fun f : ArithmeticFunction ℝ => f * (moebius : ArithmeticFunction ℝ)) hs
  rw [mul_assoc, coe_zeta_mul_coe_moebius, mul_one, neg_mul] at hh
  calc
    (moebius : ArithmeticFunction ℝ) * vonMangoldt =
        vonMangoldt * (moebius : ArithmeticFunction ℝ) := mul_comm _ _
    _ = -g := by rw [hh, neg_neg]
    _ = -((moebius : ArithmeticFunction ℝ).pmul ArithmeticFunction.log) := rfl

/-- The full arithmetic convolution is the negative pointwise Moebius logarithmic weight. -/
theorem moebius_mul_vonMangoldt_apply (n : ℕ) :
    ((moebius : ArithmeticFunction ℝ) * vonMangoldt) n =
      -(moebius n : ℝ) * Real.log (n : ℝ) := by
  have h := congrArg (fun f : ArithmeticFunction ℝ => f n)
    moebius_mangoldt_eq_neg_pointwise_log
  simpa only [neg_apply, pmul_apply, intCoe_apply, log_apply, neg_mul] using h

/-- The closed lower carrier combines sampling rows, while the entire U-squared fringe stays. -/
theorem samplingPaymentAt_eq_closed_moebius_sub_fringe (A : ℝ) (U : ℕ) :
    samplingPaymentAt A U =
      (∑ n ∈ Finset.Icc 1 U, (moebius n : ℝ) *
        (sourceLogSamplingMainTerm A n +
          Real.log (n : ℝ) * sourcePlainSamplingMainTerm A n)) -
      ∑ n ∈ Finset.Ioc U (U * U),
        (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n *
          sourcePlainSamplingMainTerm A n := by
  classical
  have hUU : U ≤ U * U := Nat.le_mul_self U
  have hi : Finset.Icc 1 (U * U) = Finset.Icc 1 U ∪ Finset.Ioc U (U * U) := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_union, Finset.mem_Ioc]
    omega
  have hd : Disjoint (Finset.Icc 1 U) (Finset.Ioc U (U * U)) := by
    apply Finset.disjoint_left.mpr
    intro n hn hn'
    exact (not_lt_of_ge (Finset.mem_Icc.mp hn).2) (Finset.mem_Ioc.mp hn').1
  have hs :
      (∑ n ∈ Finset.Icc 1 (U * U),
        (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n *
          sourcePlainSamplingMainTerm A n) =
        (∑ n ∈ Finset.Icc 1 U,
          (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n *
            sourcePlainSamplingMainTerm A n) +
        ∑ n ∈ Finset.Ioc U (U * U),
          (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n *
            sourcePlainSamplingMainTerm A n := by
    rw [hi, Finset.sum_union hd]
  have hl :
      (∑ n ∈ Finset.Icc 1 U,
        (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n *
          sourcePlainSamplingMainTerm A n) =
        -(∑ n ∈ Finset.Icc 1 U,
          (moebius n : ℝ) * Real.log (n : ℝ) * sourcePlainSamplingMainTerm A n) := by
    rw [← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro n hn
    rw [truncated_coefficient_eq_full_of_le U n (Finset.mem_Icc.mp hn).2,
      moebius_mul_vonMangoldt_apply]
    ring
  rw [samplingPaymentAt_eq_truncated_product_sum, hs, hl]
  simp only [realMoebius, mul_add, Finset.sum_add_distrib, mul_assoc]
  ring

/-- The actual joint target keeps its independent baseline and physical unequal-index sector. -/
theorem jointSignedRemainder_eq_closed_payment_sub_fringe_and_physicalOff
    (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = -globalBaseline A +
      (∑ n ∈ Finset.Icc 1 (vaughanCutoff A), (moebius n : ℝ) *
        (sourceLogSamplingMainTerm A n +
          Real.log (n : ℝ) * sourcePlainSamplingMainTerm A n)) -
      (∑ n ∈ Finset.Ioc (vaughanCutoff A) (vaughanCutoff A * vaughanCutoff A),
        (shortPart (vaughanCutoff A) (moebius : ArithmeticFunction ℝ) *
          shortPart (vaughanCutoff A) vonMangoldt) n * sourcePlainSamplingMainTerm A n) -
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        physicalQuotientOffRowsAt A d (vaughanCutoff A) := by
  have ht := jointSignedRemainder_eq_grouped_payment_sub_physicalOff A hA
  have hp := samplingPaymentAt_eq_truncated_product_sum A (vaughanCutoff A)
  have hl := samplingPaymentAt_eq_closed_moebius_sub_fringe A (vaughanCutoff A)
  linear_combination ht - hp + hl

end
end FormalResearch.RiemannHypothesis.SourceCorrelatedPaymentLowerFringe
