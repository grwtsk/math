/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #848. Parent: draft PR #843 at
`fad6ded9507f15f803b148a5a7ae5c45b12be13e`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointAggregateFourier

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Effective shift after the low logarithmic anchor is folded into the
ordinary endpoint separation. -/
def coreGrowingShiftEndpointAggregateEffectiveShift
    (j h : ℕ) : ℕ :=
  max h (logarithmicShiftThreshold j)

/-- Constant denominator on the flat low-anchor block. -/
def coreGrowingShiftEndpointAggregateAnchorDenominator
    (j : ℕ) : ℕ :=
  2 ^ j + logarithmicShiftThreshold j - 1

/-- First prefix at which the clamped denominator leaves the constant anchor
and becomes the literal affine denominator `N + effectiveShift`. -/
def coreGrowingShiftEndpointAggregateTailStart
    (j h : ℕ) : ℕ :=
  2 ^ j + logarithmicShiftThreshold j -
    coreGrowingShiftEndpointAggregateEffectiveShift j h

/-- One reciprocal first difference. -/
def coreGrowingShiftEndpointReciprocalDrop
    (q : ℕ) : ℝ :=
  ((q : ℝ))⁻¹ - (((q + 1 : ℕ) : ℝ))⁻¹

/-- The denominator hidden in the inherited clamped staircase weight is the
maximum of one constant anchor denominator and one affine denominator. -/
theorem coreGrowingShiftSignedStaircaseDenominator_eq_max
    (j N h : ℕ) :
    N + coreGrowingShiftSignedStaircaseClampedShift j N h =
      max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
        (N + coreGrowingShiftEndpointAggregateEffectiveShift j h) := by
  have hX : 1 ≤ 2 ^ j := by positivity
  have hH : 1 ≤ logarithmicShiftThreshold j := by
    unfold logarithmicShiftThreshold
    omega
  unfold coreGrowingShiftSignedStaircaseClampedShift
    coreGrowingShiftSignedStaircaseLower
    coreGrowingShiftEndpointAggregateAnchorDenominator
    coreGrowingShiftEndpointAggregateEffectiveShift
  by_cases hNX : N < 2 ^ j
  · have hsub : 1 ≤ 2 ^ j - N := by omega
    rw [max_eq_right hsub]
    by_cases hclamp :
        h ≤ 2 ^ j - N + logarithmicShiftThreshold j - 1
    · rw [max_eq_right hclamp]
      have hleft :
          N + (2 ^ j - N + logarithmicShiftThreshold j - 1) =
            2 ^ j + logarithmicShiftThreshold j - 1 := by
        omega
      rw [hleft]
      apply max_eq_left
      by_cases hhH : h ≤ logarithmicShiftThreshold j
      · rw [max_eq_right hhH]
        omega
      · rw [max_eq_left (Nat.le_of_not_ge hhH)]
        omega
    · have hh :
          2 ^ j - N + logarithmicShiftThreshold j - 1 < h :=
        Nat.lt_of_not_ge hclamp
      rw [max_eq_left (Nat.le_of_lt hh)]
      have hhH : logarithmicShiftThreshold j ≤ h := by omega
      rw [max_eq_left hhH]
      apply max_eq_right
      omega
  · have hXN : 2 ^ j ≤ N := Nat.le_of_not_gt hNX
    have hsub0 : 2 ^ j - N = 0 := Nat.sub_eq_zero_of_le hXN
    rw [hsub0]
    simp only [max_eq_left (by omega : 1 ≥ 0), zero_add]
    have hqH :
        logarithmicShiftThreshold j ≤
          max h (logarithmicShiftThreshold j) :=
      le_max_right _ _
    apply max_eq_right
    omega

/-- The strict endpoint kernel is one reciprocal drop at the normalized
maximum denominator. -/
theorem coreGrowingShiftSignedEndpointKernel_eq_normalizedDrop
    (j N n m : ℕ) :
    coreGrowingShiftSignedEndpointKernel j N n m =
      coreGrowingShiftEndpointReciprocalDrop
        (max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
          (N + coreGrowingShiftEndpointAggregateEffectiveShift j (m - n))) := by
  unfold coreGrowingShiftSignedEndpointKernel
    coreGrowingShiftSignedStaircaseWeight
    coreGrowingShiftEndpointReciprocalDrop
  rw [coreGrowingShiftSignedStaircaseDenominator_eq_max]

/-- Prefixes on which the denominator is the constant low-anchor value. -/
def coreGrowingShiftEndpointAggregateAnchorPrefixSet
    (j n m : ℕ) : Finset ℕ :=
  Finset.Ico
    (coreGrowingShiftEndpointAggregatePrefixLower j n m)
    (min (coreGrowingShiftEndpointAggregatePrefixUpper j n m)
      (coreGrowingShiftEndpointAggregateTailStart j (m - n)))

/-- First prefix of the affine reciprocal tail after intersecting with the
active prefix interval. -/
def coreGrowingShiftEndpointAggregateTailLower
    (j n m : ℕ) : ℕ :=
  max (coreGrowingShiftEndpointAggregatePrefixLower j n m)
    (coreGrowingShiftEndpointAggregateTailStart j (m - n))

/-- Prefixes on which the denominator is affine in `N`. -/
def coreGrowingShiftEndpointAggregateTailPrefixSet
    (j n m : ℕ) : Finset ℕ :=
  Finset.Ico
    (coreGrowingShiftEndpointAggregateTailLower j n m)
    (coreGrowingShiftEndpointAggregatePrefixUpper j n m)

/-- The explicit active-prefix interval is exactly the union of its anchor and
affine-tail pieces. -/
theorem coreGrowingShiftEndpointExplicitPrefixSet_eq_anchor_union_tail
    (j n m : ℕ) :
    coreGrowingShiftEndpointExplicitPrefixSet j n m =
      coreGrowingShiftEndpointAggregateAnchorPrefixSet j n m ∪
        coreGrowingShiftEndpointAggregateTailPrefixSet j n m := by
  ext N
  simp only [coreGrowingShiftEndpointExplicitPrefixSet,
    coreGrowingShiftEndpointAggregateAnchorPrefixSet,
    coreGrowingShiftEndpointAggregateTailPrefixSet,
    coreGrowingShiftEndpointAggregateTailLower,
    Finset.mem_Ico, Finset.mem_union]
  omega

/-- The anchor and affine-tail prefix sets are disjoint. -/
theorem coreGrowingShiftEndpointAggregateAnchor_disjoint_tail
    (j n m : ℕ) :
    Disjoint
      (coreGrowingShiftEndpointAggregateAnchorPrefixSet j n m)
      (coreGrowingShiftEndpointAggregateTailPrefixSet j n m) := by
  refine Finset.disjoint_left.mpr ?_
  intro N hAnchor hTail
  simp only [coreGrowingShiftEndpointAggregateAnchorPrefixSet,
    coreGrowingShiftEndpointAggregateTailPrefixSet,
    coreGrowingShiftEndpointAggregateTailLower,
    Finset.mem_Ico] at hAnchor hTail
  omega

/-- On the anchor prefix set, the maximum denominator is the constant anchor
value. -/
theorem coreGrowingShiftEndpoint_normalizedDenominator_eq_anchor
    {j n m N : ℕ}
    (hN :
      N ∈ coreGrowingShiftEndpointAggregateAnchorPrefixSet j n m) :
    max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
        (N + coreGrowingShiftEndpointAggregateEffectiveShift j (m - n)) =
      coreGrowingShiftEndpointAggregateAnchorDenominator j := by
  have hmem := hN
  simp only [coreGrowingShiftEndpointAggregateAnchorPrefixSet,
    Finset.mem_Ico] at hmem
  unfold coreGrowingShiftEndpointAggregateTailStart
    coreGrowingShiftEndpointAggregateAnchorDenominator at hmem ⊢
  apply max_eq_left
  omega

/-- On the tail prefix set, the maximum denominator is the affine denominator
`N + effectiveShift`. -/
theorem coreGrowingShiftEndpoint_normalizedDenominator_eq_tail
    {j n m N : ℕ}
    (hN :
      N ∈ coreGrowingShiftEndpointAggregateTailPrefixSet j n m) :
    max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
        (N + coreGrowingShiftEndpointAggregateEffectiveShift j (m - n)) =
      N + coreGrowingShiftEndpointAggregateEffectiveShift j (m - n) := by
  have hmem := hN
  simp only [coreGrowingShiftEndpointAggregateTailPrefixSet,
    coreGrowingShiftEndpointAggregateTailLower,
    Finset.mem_Ico] at hmem
  unfold coreGrowingShiftEndpointAggregateTailStart
    coreGrowingShiftEndpointAggregateAnchorDenominator at hmem ⊢
  apply max_eq_right
  omega

/-- Every anchor-prefix coefficient is the same reciprocal drop. -/
theorem coreGrowingShiftSignedEndpointKernel_eq_anchorDrop
    {j n m N : ℕ}
    (hN :
      N ∈ coreGrowingShiftEndpointAggregateAnchorPrefixSet j n m) :
    coreGrowingShiftSignedEndpointKernel j N n m =
      coreGrowingShiftEndpointReciprocalDrop
        (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
  rw [coreGrowingShiftSignedEndpointKernel_eq_normalizedDrop,
    coreGrowingShiftEndpoint_normalizedDenominator_eq_anchor hN]

/-- Every tail-prefix coefficient is the literal affine reciprocal drop. -/
theorem coreGrowingShiftSignedEndpointKernel_eq_tailDrop
    {j n m N : ℕ}
    (hN :
      N ∈ coreGrowingShiftEndpointAggregateTailPrefixSet j n m) :
    coreGrowingShiftSignedEndpointKernel j N n m =
      coreGrowingShiftEndpointReciprocalDrop
        (N + coreGrowingShiftEndpointAggregateEffectiveShift j (m - n)) := by
  rw [coreGrowingShiftSignedEndpointKernel_eq_normalizedDrop,
    coreGrowingShiftEndpoint_normalizedDenominator_eq_tail hN]

/-- Finite reciprocal first differences telescope on an ordinary half-open
interval. -/
theorem finite_reciprocalDrop_Ico
    (q L U : ℕ)
    (hLU : L ≤ U) :
    (∑ N ∈ Finset.Ico L U,
      coreGrowingShiftEndpointReciprocalDrop (N + q)) =
      (((L + q : ℕ) : ℝ))⁻¹ - (((U + q : ℕ) : ℝ))⁻¹ := by
  induction U, hLU using Nat.le_induction with
  | base => simp
  | succ U hLU ih =>
      rw [Finset.sum_Ico_succ_top hLU, ih]
      unfold coreGrowingShiftEndpointReciprocalDrop
      ring

/-- Number of prefixes in the constant-anchor block. -/
def coreGrowingShiftEndpointAggregateAnchorMultiplicity
    (j n m : ℕ) : ℕ :=
  (coreGrowingShiftEndpointAggregateAnchorPrefixSet j n m).card

/-- The anchor multiplicity is the exact clipped interval length. -/
theorem coreGrowingShiftEndpointAggregateAnchorMultiplicity_eq_sub
    (j n m : ℕ) :
    coreGrowingShiftEndpointAggregateAnchorMultiplicity j n m =
      min (coreGrowingShiftEndpointAggregatePrefixUpper j n m)
          (coreGrowingShiftEndpointAggregateTailStart j (m - n)) -
        coreGrowingShiftEndpointAggregatePrefixLower j n m := by
  simp [coreGrowingShiftEndpointAggregateAnchorMultiplicity,
    coreGrowingShiftEndpointAggregateAnchorPrefixSet,
    Finset.card_Ico]

/-- The affine tail after telescoping, with the empty interval represented
explicitly by zero. -/
def coreGrowingShiftEndpointAggregateTailBoundary
    (j n m : ℕ) : ℝ :=
  if coreGrowingShiftEndpointAggregateTailLower j n m ≤
      coreGrowingShiftEndpointAggregatePrefixUpper j n m then
    (((coreGrowingShiftEndpointAggregateTailLower j n m +
        coreGrowingShiftEndpointAggregateEffectiveShift j (m - n) : ℕ) : ℝ))⁻¹ -
      (((coreGrowingShiftEndpointAggregatePrefixUpper j n m +
        coreGrowingShiftEndpointAggregateEffectiveShift j (m - n) : ℕ) : ℝ))⁻¹
  else 0

/-- The complete anchor-prefix sum is multiplicity times one constant drop. -/
theorem coreGrowingShiftEndpointAggregateAnchorSum
    (j n m : ℕ) :
    (∑ N ∈ coreGrowingShiftEndpointAggregateAnchorPrefixSet j n m,
      coreGrowingShiftSignedEndpointKernel j N n m) =
      (coreGrowingShiftEndpointAggregateAnchorMultiplicity j n m : ℝ) *
        coreGrowingShiftEndpointReciprocalDrop
          (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
  calc
    (∑ N ∈ coreGrowingShiftEndpointAggregateAnchorPrefixSet j n m,
      coreGrowingShiftSignedEndpointKernel j N n m) =
      ∑ _N ∈ coreGrowingShiftEndpointAggregateAnchorPrefixSet j n m,
        coreGrowingShiftEndpointReciprocalDrop
          (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
      apply Finset.sum_congr rfl
      intro N hN
      exact coreGrowingShiftSignedEndpointKernel_eq_anchorDrop hN
    _ = (coreGrowingShiftEndpointAggregateAnchorMultiplicity j n m : ℝ) *
        coreGrowingShiftEndpointReciprocalDrop
          (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
      simp [coreGrowingShiftEndpointAggregateAnchorMultiplicity,
        nsmul_eq_mul]

/-- The complete affine-tail sum is exactly its two reciprocal boundary
values. -/
theorem coreGrowingShiftEndpointAggregateTailSum
    (j n m : ℕ) :
    (∑ N ∈ coreGrowingShiftEndpointAggregateTailPrefixSet j n m,
      coreGrowingShiftSignedEndpointKernel j N n m) =
      coreGrowingShiftEndpointAggregateTailBoundary j n m := by
  let L := coreGrowingShiftEndpointAggregateTailLower j n m
  let U := coreGrowingShiftEndpointAggregatePrefixUpper j n m
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j (m - n)
  by_cases hLU : L ≤ U
  · unfold coreGrowingShiftEndpointAggregateTailBoundary
    rw [if_pos hLU]
    change
      (∑ N ∈ Finset.Ico L U,
        coreGrowingShiftSignedEndpointKernel j N n m) =
        (((L + q : ℕ) : ℝ))⁻¹ - (((U + q : ℕ) : ℝ))⁻¹
    calc
      (∑ N ∈ Finset.Ico L U,
        coreGrowingShiftSignedEndpointKernel j N n m) =
          ∑ N ∈ Finset.Ico L U,
            coreGrowingShiftEndpointReciprocalDrop (N + q) := by
        apply Finset.sum_congr rfl
        intro N hN
        apply coreGrowingShiftSignedEndpointKernel_eq_tailDrop
        simpa [coreGrowingShiftEndpointAggregateTailPrefixSet, L, U] using hN
      _ = (((L + q : ℕ) : ℝ))⁻¹ - (((U + q : ℕ) : ℝ))⁻¹ :=
        finite_reciprocalDrop_Ico q L U hLU
  · have hnotlt : ¬ L < U := by omega
    have hempty : Finset.Ico L U = ∅ :=
      Finset.Ico_eq_empty_iff.mpr hnotlt
    unfold coreGrowingShiftEndpointAggregateTailBoundary
    rw [if_neg hLU]
    change
      (∑ N ∈ Finset.Ico L U,
        coreGrowingShiftSignedEndpointKernel j N n m) = 0
    rw [hempty]
    simp

/-- Closed ordinary endpoint coefficient: constant anchor multiplicity plus
two reciprocal tail boundaries. -/
def coreGrowingShiftEndpointAggregateBoundaryKernel
    (j n m : ℕ) : ℝ :=
  (coreGrowingShiftEndpointAggregateAnchorMultiplicity j n m : ℝ) *
      coreGrowingShiftEndpointReciprocalDrop
        (coreGrowingShiftEndpointAggregateAnchorDenominator j) +
    coreGrowingShiftEndpointAggregateTailBoundary j n m

/-- Exact evaluation of the aggregate endpoint coefficient. -/
theorem coreGrowingShiftEndpointAggregateKernel_eq_boundary
    {j n m : ℕ}
    (hn : 1 ≤ n)
    (hnm : n < m)
    (hmY : m < 2 ^ (j + 1)) :
    coreGrowingShiftEndpointAggregateKernel j n m =
      coreGrowingShiftEndpointAggregateBoundaryKernel j n m := by
  rw [coreGrowingShiftEndpointAggregateKernel_eq_explicitInterval hn hnm hmY,
    coreGrowingShiftEndpointExplicitPrefixSet_eq_anchor_union_tail,
    Finset.sum_union
      (coreGrowingShiftEndpointAggregateAnchor_disjoint_tail j n m),
    coreGrowingShiftEndpointAggregateAnchorSum,
    coreGrowingShiftEndpointAggregateTailSum]
  rfl

/-- Closed boundary kernel, zero-padded away from positive strict endpoint
support. -/
def coreGrowingShiftEndpointBoundaryKernelZeroPad
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  if 1 ≤ x.val ∧ x.val < y.val then
    (coreGrowingShiftEndpointAggregateBoundaryKernel j x.val y.val : ℂ)
  else 0

/-- The aggregate kernel vanishes when the left canonical representative is
zero. -/
theorem coreGrowingShiftEndpointAggregateKernelZeroPad_eq_zero_of_left_zero
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointFourierIndex j}
    (hx : x.val = 0) :
    coreGrowingShiftEndpointAggregateKernelZeroPad j x y = 0 := by
  classical
  unfold coreGrowingShiftEndpointAggregateKernelZeroPad
  apply Finset.sum_eq_zero
  intro N hN
  unfold coreGrowingShiftEndpointKernelZeroPad
  have hnot :
      (x.val, y.val) ∉ coreGrowingShiftSignedEndpointPairSet j N := by
    intro hp
    obtain ⟨hx1, _hxN, _hxy, _hyY, _hlo, _hhi⟩ :=
      coreGrowingShiftSignedEndpointPair_support hp
    omega
  simp [hnot]

/-- The closed boundary kernel is exactly the previously aggregated
zero-padded kernel. -/
theorem coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_aggregate
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointBoundaryKernelZeroPad j x y =
      coreGrowingShiftEndpointAggregateKernelZeroPad j x y := by
  by_cases hsupport : 1 ≤ x.val ∧ x.val < y.val
  · rw [coreGrowingShiftEndpointAggregateKernelZeroPad_eq_cast,
      coreGrowingShiftEndpointAggregateKernel_eq_boundary
        hsupport.1 hsupport.2 (ZMod.val_lt y)]
    simp [coreGrowingShiftEndpointBoundaryKernelZeroPad, hsupport]
  · have hzero :
        coreGrowingShiftEndpointAggregateKernelZeroPad j x y = 0 := by
      by_cases hxy : x.val < y.val
      · have hx0 : x.val = 0 := by omega
        exact coreGrowingShiftEndpointAggregateKernelZeroPad_eq_zero_of_left_zero hx0
      · exact
          coreGrowingShiftEndpointAggregateKernelZeroPad_eq_zero_of_not_lt hxy
    rw [hzero]
    simp [coreGrowingShiftEndpointBoundaryKernelZeroPad, hsupport]

/-- Two-dimensional DFT of the closed boundary kernel. -/
def coreGrowingShiftEndpointBoundaryKernelDFT2
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointBoundaryKernelZeroPad j) r s

/-- Replacing the aggregate kernel by its closed boundary formula changes no
frequency data. -/
theorem coreGrowingShiftEndpointBoundaryKernelDFT2_eq_aggregate
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointBoundaryKernelDFT2 j r s =
      coreGrowingShiftEndpointAggregateKernelDFT2 j r s := by
  unfold coreGrowingShiftEndpointBoundaryKernelDFT2
    coreGrowingShiftEndpointAggregateKernelDFT2
    finiteZModKernelDFT2
  simp_rw [coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_aggregate]

/-- Complex frequency packet for the single closed boundary kernel. -/
def coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex
    (j : ℕ) : ℂ :=
  let Y : ℕ := coreGrowingShiftEndpointFourierModulus j
  (Y : ℂ)⁻¹ * (Y : ℂ)⁻¹ *
    ∑ r : CoreGrowingShiftEndpointFourierIndex j,
      ∑ s : CoreGrowingShiftEndpointFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-r) *
          ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointBoundaryKernelDFT2 j r s

/-- Closed-boundary and aggregate-kernel complex packets agree exactly. -/
theorem coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex_eq_aggregate
    (j : ℕ) :
    coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex j =
      coreGrowingShiftSignedEndpointAggregateFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex
    coreGrowingShiftSignedEndpointAggregateFourierPacketComplex
  apply congrArg
  apply Finset.sum_congr rfl
  intro r _hr
  apply Finset.sum_congr rfl
  intro s _hs
  rw [coreGrowingShiftEndpointBoundaryKernelDFT2_eq_aggregate]

/-- The complete closed-boundary complex packet is real. -/
theorem coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex_im
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex j).im = 0 := by
  rw [coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex_eq_aggregate,
    coreGrowingShiftSignedEndpointAggregateFourierPacketComplex_im]

/-- Real signed frequency packet for the closed boundary kernel. -/
def coreGrowingShiftSignedEndpointBoundaryFourierPacket
    (j : ℕ) : ℝ :=
  (coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex j).re

/-- Exact equality with the preceding aggregate-kernel Fourier packet. -/
theorem coreGrowingShiftSignedEndpointBoundaryFourierPacket_eq_aggregate
    (j : ℕ) :
    coreGrowingShiftSignedEndpointBoundaryFourierPacket j =
      coreGrowingShiftSignedEndpointAggregateFourierPacket j := by
  unfold coreGrowingShiftSignedEndpointBoundaryFourierPacket
    coreGrowingShiftSignedEndpointAggregateFourierPacket
  rw [coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex_eq_aggregate]

/-- Exact RH-facing return through the closed boundary spectral kernel. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointBoundaryFourier
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointBoundaryFourierPacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointAggregateFourier,
    ← coreGrowingShiftSignedEndpointBoundaryFourierPacket_eq_aggregate]

/-- Source-facing condition on the exact closed-boundary signed frequency
packet. -/
def SubpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointBoundaryFourierPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the aggregate-kernel Fourier source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket_iff_aggregate :
    SubpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket ↔
      SubpolynomialCoreGrowingShiftSignedEndpointAggregateFourierPacket := by
  constructor
  · intro hBoundary δ hδ
    obtain ⟨C, hC, hbound⟩ := hBoundary δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedEndpointBoundaryFourierPacket_eq_aggregate]
    exact hbound j
  · intro hAggregate δ hδ
    obtain ⟨C, hC, hbound⟩ := hAggregate δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedEndpointBoundaryFourierPacket_eq_aggregate]
    exact hbound j

/-- Conditional RH endpoint stated on the closed boundary spectral kernel. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket
    (hBoundary :
      SubpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointAggregateFourierPacket
    (subpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket_iff_aggregate.mp
      hBoundary)

/-- Source profile for a theorem stated on the single closed boundary spectral
kernel.  Prefix aggregation and reciprocal-tail cancellation are already exact
kernel algebra, not analytic premises. -/
structure SignedEndpointBoundaryFourierSource where
  sourceStatement : Prop
  exactAnchorTailSplit : Prop
  exactAnchorMultiplicity : Prop
  reciprocalTailTelescoping : Prop
  strictEndpointSupport : Prop
  exactZeroPadding : Prop
  noWrapControl : Prop
  dftSignNormalization : Prop
  lowAnchorPreservation : Prop
  signedTwoFrequencyCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for a future signed boundary-kernel estimate. -/
structure ToCoreGrowingShiftSignedEndpointBoundaryFourierPacket
    (d : SignedEndpointBoundaryFourierSource) : Type where
  toBoundaryFourier :
    d.sourceStatement →
      d.exactAnchorTailSplit →
      d.exactAnchorMultiplicity →
      d.reciprocalTailTelescoping →
      d.strictEndpointSupport →
      d.exactZeroPadding →
      d.noWrapControl →
      d.dftSignNormalization →
      d.lowAnchorPreservation →
      d.signedTwoFrequencyCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket

/-- Generic conditional endpoint through an explicitly constructed closed
boundary-kernel frequency adapter. -/
theorem riemannHypothesis_of_signedEndpointBoundaryFourierAdapter
    (d : SignedEndpointBoundaryFourierSource)
    (bridge : ToCoreGrowingShiftSignedEndpointBoundaryFourierPacket d)
    (hsource : d.sourceStatement)
    (hsplit : d.exactAnchorTailSplit)
    (hmultiplicity : d.exactAnchorMultiplicity)
    (htelescope : d.reciprocalTailTelescoping)
    (hsupport : d.strictEndpointSupport)
    (hzero : d.exactZeroPadding)
    (hnowrap : d.noWrapControl)
    (hsign : d.dftSignNormalization)
    (hanchor : d.lowAnchorPreservation)
    (hfrequency : d.signedTwoFrequencyCancellation)
    (huniform : d.allScaleUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket
    (bridge.toBoundaryFourier hsource hsplit hmultiplicity htelescope
      hsupport hzero hnowrap hsign hanchor hfrequency huniform hsmall)

/-- Hostile control: the anchor and telescoped tail may cancel exactly while
separate absolute masses remain positive. -/
theorem signedEndpointBoundaryCancellation_hostileWitness :
    ((1 : ℝ) + (-1 : ℝ)) = 0 ∧
      |(1 : ℝ)| + |(-1 : ℝ)| = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedStaircaseDenominator_eq_max
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finite_reciprocalDrop_Ico
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointAggregateKernel_eq_boundary
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointBoundaryKernelDFT2_eq_aggregate
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket
