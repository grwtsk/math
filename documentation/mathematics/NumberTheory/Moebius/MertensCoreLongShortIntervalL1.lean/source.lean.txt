/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #557. Direct stacked parent: draft PR #556 at
`7207886d40a7cf45f66c4a10e9e327c7a932af27`.
-/
import GRWTSK.NumberTheory.Moebius.MertensTerminalShortStripPayment

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- First moment of the induced Möbius short intervals at one cumulative
length. -/
def harmonicShortIntervalL1
    (j t n : ℕ) : ℝ :=
  ∑ a ∈ Finset.range (t + 1),
    |harmonicShortMobiusSum j t n a|

/-- Terminal second-Abel contribution before the outer factor two. -/
def harmonicTerminalCumulativeContribution
    (j t : ℕ) : ℝ :=
  if harmonicShiftCount j t = 0 then 0 else
    cumulativeHarmonicShiftCorrelation
      j t (harmonicShiftCount j t) *
      harmonicShiftFirstDifference
        j t (harmonicShiftCount j t - 1)

/-- Nonnegative L1 majorant of the terminal contribution. -/
def harmonicTerminalShortIntervalL1Majorant
    (j t : ℕ) : ℝ :=
  if harmonicShiftCount j t = 0 then 0 else
    harmonicShortIntervalL1 j t (harmonicShiftCount j t) *
      harmonicShiftFirstDifference
        j t (harmonicShiftCount j t - 1)

/-- Nonnegative L1 majorant for the long interior second-Abel terms. -/
def harmonicLongInteriorShortIntervalL1Majorant
    (j t : ℕ) : ℝ :=
  ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
      (fun k => logarithmicShiftThreshold j ≤ k + 1),
    harmonicShortIntervalL1 j t (k + 1) *
      harmonicShiftSecondDifference j t k

/-- Exact core-depth L1 majorant after the outer depth normalization has
cancelled the Abel factor `2^(j+1)`. -/
def coreLongDepthShortIntervalL1Majorant
    (j t : ℕ) : ℝ :=
  2 * (harmonicTerminalShortIntervalL1Majorant j t +
    harmonicLongInteriorShortIntervalL1Majorant j t)

/-- Packet-level coefficient-weighted short-interval L1 observable. -/
def coreLongShortIntervalL1Packet
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    coreLongDepthShortIntervalL1Majorant j t

/-- The terminal contribution is bounded by its L1 short-interval majorant on
every core depth. -/
theorem abs_harmonicTerminalCumulativeContribution_le_l1
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    |harmonicTerminalCumulativeContribution j t| ≤
      harmonicTerminalShortIntervalL1Majorant j t := by
  have hN :
      logarithmicShiftThreshold j ≤ harmonicShiftCount j t := by
    simpa [coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).2
  have hNpos : 0 < harmonicShiftCount j t := by
    have hH : 0 < logarithmicShiftThreshold j := by
      unfold logarithmicShiftThreshold
      omega
    omega
  unfold harmonicTerminalCumulativeContribution
    harmonicTerminalShortIntervalL1Majorant
  rw [if_neg (Nat.ne_of_gt hNpos), if_neg (Nat.ne_of_gt hNpos)]
  simp only [harmonicShiftFirstDifference]
  rw [Nat.sub_add_cancel hNpos]
  rw [abs_mul,
    abs_of_nonneg
      (harmonicShiftReciprocal_terminalDifference_nonneg hNpos)]
  apply mul_le_mul_of_nonneg_right
  · exact
      abs_cumulativeHarmonicShiftCorrelation_le_shortIntervalL1
        j t (harmonicShiftCount j t)
  · exact harmonicShiftReciprocal_terminalDifference_nonneg hNpos

/-- The long interior second-Abel contribution is bounded by its exact
coefficient-weighted L1 packet. -/
theorem abs_harmonicCumulativeLongContribution_le_l1
    (j t : ℕ) :
    |2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        harmonicCumulativeLongContribution
          j t (logarithmicShiftThreshold j)| ≤
      2 * harmonicLongInteriorShortIntervalL1Majorant j t := by
  unfold harmonicCumulativeLongContribution
    harmonicLongInteriorShortIntervalL1Majorant
  let YR : ℝ := ((2 ^ (j + 1) : ℕ) : ℝ)
  have hYR : 0 < YR := by
    dsimp [YR]
    positivity
  rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ 2 * YR⁻¹)]
  calc
    2 * YR⁻¹ *
        |YR *
          ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
              (fun k => logarithmicShiftThreshold j ≤ k + 1),
            cumulativeHarmonicShiftCorrelation j t (k + 1) *
              harmonicShiftSecondDifference j t k| =
      2 *
        |∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
            (fun k => logarithmicShiftThreshold j ≤ k + 1),
          cumulativeHarmonicShiftCorrelation j t (k + 1) *
            harmonicShiftSecondDifference j t k| := by
      rw [abs_mul, abs_of_nonneg (le_of_lt hYR)]
      field_simp [ne_of_gt hYR]
    _ ≤ 2 *
        ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
            (fun k => logarithmicShiftThreshold j ≤ k + 1),
          |cumulativeHarmonicShiftCorrelation j t (k + 1)| *
            harmonicShiftSecondDifference j t k := by
      apply mul_le_mul_of_nonneg_left
      · calc
          |∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
              (fun k => logarithmicShiftThreshold j ≤ k + 1),
            cumulativeHarmonicShiftCorrelation j t (k + 1) *
              harmonicShiftSecondDifference j t k| ≤
            ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
                (fun k => logarithmicShiftThreshold j ≤ k + 1),
              |cumulativeHarmonicShiftCorrelation j t (k + 1) *
                harmonicShiftSecondDifference j t k| :=
              Finset.abs_sum_le_sum_abs _ _
          _ = _ := by
            apply Finset.sum_congr rfl
            intro k _hk
            simp only [harmonicShiftSecondDifference, harmonicShiftFirstDifference, Nat.add_assoc, Nat.reduceAdd]
            rw [abs_mul,
              abs_of_nonneg
                (harmonicShiftReciprocal_secondDifference_nonneg j t k)]
      · norm_num
    _ ≤ 2 *
        ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
            (fun k => logarithmicShiftThreshold j ≤ k + 1),
          harmonicShortIntervalL1 j t (k + 1) *
            harmonicShiftSecondDifference j t k := by
      apply mul_le_mul_of_nonneg_left
      · apply Finset.sum_le_sum
        intro k _hk
        apply mul_le_mul_of_nonneg_right
        · exact
            abs_cumulativeHarmonicShiftCorrelation_le_shortIntervalL1
              j t (k + 1)
        · exact harmonicShiftReciprocal_secondDifference_nonneg j t k
      · norm_num

/-- Exact second-Abel form of one long depth remainder: terminal plus long
interior, with all short interior cumulative lengths removed. -/
theorem logarithmicLongDepthRemainder_eq_terminal_add_longInterior
    (j t : ℕ) :
    logarithmicLongDepthRemainder j t =
      2 * harmonicTerminalCumulativeContribution j t +
        2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
          harmonicCumulativeLongContribution
            j t (logarithmicShiftThreshold j) := by
  unfold logarithmicLongDepthRemainder
  rw [weightedMertensDyadicSignedAbelDepthSlice_eq_weightedChowlaAverage,
    weightedMertensTwoPointChowlaAverage_eq_harmonic,
    harmonicWeightedMertensTwoPointChowlaAverage_eq_cumulativeShift]
  rw [mul_add]
  have hsplit := harmonicCumulativeInterior_eq_short_add_long j t (logarithmicShiftThreshold j)
  simp only [harmonicShiftSecondDifference, harmonicShiftFirstDifference, Nat.add_assoc, Nat.reduceAdd] at hsplit
  rw [hsplit]
  unfold harmonicTerminalCumulativeContribution
  let YR : ℝ := ((2 ^ (j + 1) : ℕ) : ℝ)
  have hYR : 0 < YR := by
    dsimp [YR]
    positivity
  field_simp [ne_of_gt hYR]
  simp only [harmonicShiftFirstDifference]
  split_ifs with hN
  · ring
  · rw [Nat.sub_add_cancel (Nat.one_le_iff_ne_zero.mpr hN)]
    ring

/-- One genuine core depth remainder is majorized by the exact coefficient-
weighted L1 short-interval observable. -/
theorem abs_logarithmicLongDepthRemainder_le_coreL1
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    |logarithmicLongDepthRemainder j t| ≤
      coreLongDepthShortIntervalL1Majorant j t := by
  rw [logarithmicLongDepthRemainder_eq_terminal_add_longInterior]
  unfold coreLongDepthShortIntervalL1Majorant
  calc
    |2 * harmonicTerminalCumulativeContribution j t +
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        harmonicCumulativeLongContribution
          j t (logarithmicShiftThreshold j)| ≤
      |2 * harmonicTerminalCumulativeContribution j t| +
      |2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        harmonicCumulativeLongContribution
          j t (logarithmicShiftThreshold j)| := abs_add_le _ _
    _ ≤ 2 * harmonicTerminalShortIntervalL1Majorant j t +
        2 * harmonicLongInteriorShortIntervalL1Majorant j t := by
      apply add_le_add
      · rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
        exact mul_le_mul_of_nonneg_left
          (abs_harmonicTerminalCumulativeContribution_le_l1 hcore)
          (by norm_num)
      · exact abs_harmonicCumulativeLongContribution_le_l1 j t
    _ = 2 * (harmonicTerminalShortIntervalL1Majorant j t +
        harmonicLongInteriorShortIntervalL1Majorant j t) := by ring

/-- The genuine core packet is bounded in absolute value by the single
nonnegative coefficient-weighted short-interval L1 packet. -/
theorem abs_coreLongDeepRemainderPacket_le_l1
    (j : ℕ) :
    |coreLongDeepRemainderPacket j| ≤
      coreLongShortIntervalL1Packet j := by
  unfold coreLongDeepRemainderPacket coreLongShortIntervalL1Packet
  calc
    |∑ t ∈ coreLongDeepDepths j,
      logarithmicLongDepthRemainder j t| ≤
      ∑ t ∈ coreLongDeepDepths j,
        |logarithmicLongDepthRemainder j t| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ t ∈ coreLongDeepDepths j,
        coreLongDepthShortIntervalL1Majorant j t := by
      apply Finset.sum_le_sum
      intro t ht
      exact abs_logarithmicLongDepthRemainder_le_coreL1 ht

/-- Exact remaining nonnegative arithmetic supplier. -/
def SubpolynomialCoreLongShortIntervalL1Packet : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      coreLongShortIntervalL1Packet j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The coefficient-weighted L1 supplier supplies the signed core remainder. -/
theorem subpolynomialCoreLongDeepRemainderPacket_of_l1
    (hL1 : SubpolynomialCoreLongShortIntervalL1Packet) :
    SubpolynomialCoreLongDeepRemainderPacket := by
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hL1 δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  exact le_trans (le_abs_self (coreLongDeepRemainderPacket j))
    (le_trans (abs_coreLongDeepRemainderPacket_le_l1 j) (hbound j))

/-- Conditional RH endpoint from the exact coefficient-weighted L1 supplier. -/
theorem riemannHypothesis_of_subpolynomialCoreLongShortIntervalL1Packet
    (hL1 : SubpolynomialCoreLongShortIntervalL1Packet) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreLongDeepRemainderPacket
    (subpolynomialCoreLongDeepRemainderPacket_of_l1 hL1)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.logarithmicLongDepthRemainder_eq_terminal_add_longInterior
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_coreLongDeepRemainderPacket_le_l1
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreLongShortIntervalL1Packet
