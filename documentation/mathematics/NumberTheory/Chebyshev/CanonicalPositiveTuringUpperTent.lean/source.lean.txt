/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalRealPairUpperBound
import GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringPairedTent
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion

set_option autoImplicit false

/-!
# Direct one-sided tent bounds from canonical positive Turing packets

The canonical prime criterion consumes only an upper bound on the real part of
the complete finite zero contribution. The symmetric center-plus-radius interface
is stronger than necessary. This module composes a zero-gap canonical packet with
the directly rounded positive-row endpoint from `RationalRealPairUpperBound`.

A verified rational limit therefore bounds the same complete bounded divisor and
can be inserted into `canonicalPrimeMargin` without reconstructing a complex center
or adding a separately rounded radius. The source alignment, zero gap, coordinate
enclosures, Turing count, arithmetic acceptance, and strict prime margin remain
independent obligations.

No packet, accepted row computation, prime margin, prime, or RH result is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringUpperTent

open scoped BigOperators ComplexConjugate
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.PositiveHeightCountDeficit
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringBridge
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringFullHead
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringEnumeration
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open GRWTSK.Analysis.Complex.RationalTentAccumulation
open GRWTSK.Analysis.Complex.RationalRealPairAccumulation
open GRWTSK.Analysis.Complex.RationalRealPairUpperBound
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight
open CanonicalPositiveTuringPairedTent
open CanonicalRationalTentEvaluation
open TentSource CountedTentTail LegendreLogBudget SignedTentCorrection
open CanonicalTentAbsolute CanonicalTentExplicitFormula CanonicalTentPrimeCriterion

noncomputable section

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Direct upper-endpoint acceptance bounds the same complete canonical bounded
head represented by the zero-gap packet. -/
theorem verified_upper_of_positive_pair_packet
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : PositivePairRowAlignment packet rows)
    (limit claimed : ℚ)
    (accepted : GRWTSK.Analysis.Complex.RationalRealPairUpperBound.verify
      x h bits rows limit claimed = true) :
    (∑ z ∈ heightHead packet.certificate.height,
      (multiplicity z : ℂ) * tentKernel (x : ℝ) (h : ℝ) z.1).re ≤
        (claimed : ℝ) ∧ claimed ≤ limit := by
  have hs := GRWTSK.Analysis.Complex.RationalRealPairUpperBound.verify_sound
    x h bits rows limit claimed accepted
    (fun i => (packet.alignment.point (alignment.rowEquiv i)).1)
    (fun i => (point_mem_strip
      (packet.alignment.point (alignment.rowEquiv i))).2.le)
    (fun i => ne_of_gt (((mem_positiveHeightHead packet.certificate.height
      (packet.alignment.point (alignment.rowEquiv i))).mp
        (packet.alignment.point_mem_head (alignment.rowEquiv i))).1))
    alignment.coordinate
  constructor
  · rw [full_tent_sum_eq_positive_rows_of_gap_eq_zero
      (x : ℝ) (h : ℝ) packet zeroGap rows alignment]
    exact hs.1
  · exact hs.2

/-- The requested verified limit, not only the exact claimed recomputation, is a
sound upper bound for the complete canonical head. -/
theorem verified_limit_of_positive_pair_packet
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : PositivePairRowAlignment packet rows)
    (limit claimed : ℚ)
    (accepted : GRWTSK.Analysis.Complex.RationalRealPairUpperBound.verify
      x h bits rows limit claimed = true) :
    (∑ z ∈ heightHead packet.certificate.height,
      (multiplicity z : ℂ) * tentKernel (x : ℝ) (h : ℝ) z.1).re ≤
        (limit : ℝ) := by
  have hs := verified_upper_of_positive_pair_packet
    x h bits rows packet zeroGap alignment limit claimed accepted
  exact hs.1.trans (by exact_mod_cast hs.2)

/-- Accepted direct endpoint recomputation retains the one-grid-unit slack bound
proved by the arithmetic module. -/
theorem accepted_claimed_lt_unrounded_add_grid
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (limit claimed : ℚ)
    (accepted : GRWTSK.Analysis.Complex.RationalRealPairUpperBound.verify
      x h bits rows limit claimed = true) :
    (claimed : ℝ) <
      ((GRWTSK.Analysis.Complex.RationalRealPairAccumulation.sumRealValue x h rows +
        GRWTSK.Analysis.Complex.RationalRealPairAccumulation.sumError x h rows : ℚ) : ℝ) +
        1 / GRWTSK.Analysis.Complex.DyadicRoundedSquaring.scale bits := by
  obtain ⟨_, _, hfixed⟩ :=
    (GRWTSK.Analysis.Complex.RationalRealPairUpperBound.verify_iff
      x h bits rows limit claimed).mp accepted
  rw [← hfixed]
  exact GRWTSK.Analysis.Complex.RationalRealPairUpperBound.computeUpper_lt_base_add_grid
    x h bits rows

/-- The exact directly rounded endpoint can feed the one-sided prime consumer. -/
theorem prime_in_square_of_positive_pair_claimed_upper_packet
    (n : ℕ) (hn : 2 ≤ n)
    (packet : CanonicalPositiveTuringPacket family)
    (hT : 2 ≤ packet.certificate.height)
    (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : PositivePairRowAlignment packet rows)
    (limit claimed : ℚ)
    (accepted : GRWTSK.Analysis.Complex.RationalRealPairUpperBound.verify
      (squareCenterQ n) (squareRadiusQ n) bits rows limit claimed = true)
    (margin : 0 < canonicalPrimeMargin n packet.certificate.height
      (claimed : ℝ) (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have hzero :=
    (verified_upper_of_positive_pair_packet
      (squareCenterQ n) (squareRadiusQ n) bits rows packet zeroGap
      alignment limit claimed accepted).1
  simp only [cast_squareCenterQ, cast_squareRadiusQ] at hzero
  exact prime_in_square_of_real_enclosures n hn packet.certificate.height hT
    (claimed : ℝ) (-squareTrivialBudget n) hzero
    (squareTrivialCorrection_bounds n hn).1 margin

/-- A verifier limit can be used directly in the prime margin. This permits the
arithmetic checker to certify that its fixed recomputation clears a preselected
one-sided threshold. -/
theorem prime_in_square_of_positive_pair_upper_limit_packet
    (n : ℕ) (hn : 2 ≤ n)
    (packet : CanonicalPositiveTuringPacket family)
    (hT : 2 ≤ packet.certificate.height)
    (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : PositivePairRowAlignment packet rows)
    (limit claimed : ℚ)
    (accepted : GRWTSK.Analysis.Complex.RationalRealPairUpperBound.verify
      (squareCenterQ n) (squareRadiusQ n) bits rows limit claimed = true)
    (margin : 0 < canonicalPrimeMargin n packet.certificate.height
      (limit : ℝ) (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have hzero := verified_limit_of_positive_pair_packet
    (squareCenterQ n) (squareRadiusQ n) bits rows packet zeroGap
    alignment limit claimed accepted
  simp only [cast_squareCenterQ, cast_squareRadiusQ] at hzero
  exact prime_in_square_of_real_enclosures n hn packet.certificate.height hT
    (limit : ℝ) (-squareTrivialBudget n) hzero
    (squareTrivialCorrection_bounds n hn).1 margin

/-- Equality at the requested upper threshold does not create a strict prime
margin by itself. -/
theorem upper_limit_equality_not_strict_fixture (u : ℚ) :
    ¬ (u : ℝ) < u := by simp

end

end GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringUpperTent
