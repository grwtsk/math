/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #934. Parent: draft PR #932 at
`cbb39f5cfeb63881ff5672436358e72210ff51f9`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointTransverseGeometryFourier

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Explicit reciprocal-drop form of the interior clipping increment.  The
support combines the strict endpoint window with the moving clipping interval. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad
    (j : ℕ)
    (x h : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  let Y := coreGrowingShiftEndpointFourierModulus j
  if 1 ≤ x.val ∧ 1 ≤ h.val ∧ x.val + h.val + 1 < Y ∧
      coreGrowingShiftEndpointDifferencePrefixLower j h.val ≤ x.val ∧
      x.val < coreGrowingShiftEndpointDifferencePrefixUpper j h.val then
    (coreGrowingShiftEndpointReciprocalDrop
      (max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
        (x.val +
          coreGrowingShiftEndpointAggregateEffectiveShift j h.val)) : ℂ)
  else 0

/-- The explicit reciprocal-drop kernel is exactly the parent zero-padded
ordinary clipping increment. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad_eq_increment
    (j : ℕ)
    (x h : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad
        j x h =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementZeroPad
        j x h := by
  let Y := coreGrowingShiftEndpointFourierModulus j
  by_cases hwindow :
      1 ≤ x.val ∧ 1 ≤ h.val ∧ x.val + h.val + 1 < Y
  · by_cases hactive :
      coreGrowingShiftEndpointDifferencePrefixLower j h.val ≤ x.val ∧
        x.val < coreGrowingShiftEndpointDifferencePrefixUpper j h.val
    · have hweight := congrArg (fun t : ℝ => (t : ℂ))
        (coreGrowingShiftSignedStaircaseWeight_eq_normalizedDrop
          j x.val h.val)
      simp [coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad,
        coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementZeroPad,
        coreGrowingShiftEndpointShearedPrefixClippingIncrementNatZeroPad,
        coreGrowingShiftEndpointPrefixClippingIncrementKernel,
        Y, hwindow, hactive, hweight]
    · simp [coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad,
        coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementZeroPad,
        coreGrowingShiftEndpointShearedPrefixClippingIncrementNatZeroPad,
        coreGrowingShiftEndpointPrefixClippingIncrementKernel,
        Y, hwindow, hactive]
  · simp [coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad,
      coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementZeroPad,
      coreGrowingShiftEndpointShearedPrefixClippingIncrementNatZeroPad,
      Y, hwindow]

/-- Complete signed real-space numerator of the clipping antiderivative:
interior reciprocal drop plus the retained right-window atom. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorKernelZeroPad
    (j : ℕ)
    (x h : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad j x h +
    coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryZeroPad
      j x h

/-- The complete numerator is the parent increment plus boundary atom. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorKernelZeroPad_eq_increment_add_boundary
    (j : ℕ)
    (x h : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorKernelZeroPad
        j x h =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementZeroPad j x h +
        coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryZeroPad
          j x h := by
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorKernelZeroPad
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad_eq_increment]

/-- The complete numerator is exactly the cyclic forward difference of the
sheared clipping coefficient. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorKernelZeroPad_eq_forwardDifference
    (j : ℕ)
    (x h : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorKernelZeroPad
        j x h =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifference
        j x h := by
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorKernelZeroPad_eq_increment_add_boundary,
    ← coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifference_eq_increment_add_boundary]

/-- Affine line carrying the right-window atom in the doubled cyclic group. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryLine
    (j : ℕ) : CoreGrowingShiftEndpointDoubledFourierIndex j :=
  ((coreGrowingShiftEndpointFourierModulus j - 1 : ℕ) :
    CoreGrowingShiftEndpointDoubledFourierIndex j)

/-- The canonical representative of the boundary line is `Y-1`. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryLine_val
    (j : ℕ) :
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryLine j).val =
      coreGrowingShiftEndpointFourierModulus j - 1 := by
  apply ZMod.val_cast_of_lt
  unfold coreGrowingShiftEndpointDoubledFourierModulus
    coreGrowingShiftEndpointFourierModulus
  positivity

/-- The right-window atom vanishes away from its affine support line. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryZeroPad_eq_zero_of_add_ne_line
    {j : ℕ}
    {x h : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hline :
      x + h ≠
        coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryLine j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryZeroPad
        j x h = 0 := by
  let Y := coreGrowingShiftEndpointFourierModulus j
  by_cases hsupp : 1 ≤ x.val ∧ 1 ≤ h.val ∧ x.val + h.val + 1 = Y
  · have hsumlt :
        x.val + h.val < coreGrowingShiftEndpointDoubledFourierModulus j := by
      unfold coreGrowingShiftEndpointDoubledFourierModulus
      have hY : 1 ≤ Y := by
        unfold Y coreGrowingShiftEndpointFourierModulus
        positivity
      omega
    have hsumval : (x + h).val = x.val + h.val :=
      ZMod.val_add_of_lt hsumlt
    have heq :
        x + h =
          coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryLine j := by
      apply ZMod.val_injective
      rw [hsumval,
        coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryLine_val]
      simpa [Y] using congrArg (fun n => n - 1) hsupp.2.2
    exact (hline heq).elim
  · simp [coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryZeroPad,
      coreGrowingShiftEndpointShearedPrefixClippingRightBoundaryNatZeroPad,
      Y, hsupp]

/-- One-variable symbol obtained by parameterizing the affine boundary line. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundarySymbol
    (j : ℕ)
    (h : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryZeroPad j
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryLine j - h)
    h

/-- On the ordinary boundary window, the one-variable symbol is the negative
clipping coefficient at `x=Y-h-1`. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundarySymbol_eq_neg_clip
    {j : ℕ}
    {h : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hh1 : 1 ≤ h.val)
    (hhY : h.val + 1 < coreGrowingShiftEndpointFourierModulus j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundarySymbol j h =
      -(coreGrowingShiftEndpointPrefixClippingKernel j
        (coreGrowingShiftEndpointFourierModulus j - h.val - 1) h.val : ℂ) := by
  let Y := coreGrowingShiftEndpointFourierModulus j
  let c :=
    coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryLine j
  have hcval : c.val = Y - 1 := by
    simpa [c, Y] using
      coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryLine_val j
  have hhline : h.val ≤ c.val := by
    rw [hcval]
    omega
  have hxval : (c - h).val = Y - h.val - 1 := by
    rw [ZMod.val_sub hhline, hcval]
    omega
  have hx1 : 1 ≤ Y - h.val - 1 := by omega
  have hsum : Y - h.val - 1 + h.val + 1 = Y := by omega
  simp [coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundarySymbol,
    coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryZeroPad,
    coreGrowingShiftEndpointShearedPrefixClippingRightBoundaryNatZeroPad,
    c, Y, hxval, hx1, hh1, hsum]

/-- Finite two-dimensional DFT is additive in its kernel. -/
theorem finiteZModKernelDFT2_add
    {Q : ℕ} [NeZero Q]
    (A B : ZMod Q → ZMod Q → ℂ)
    (u s : ZMod Q) :
    finiteZModKernelDFT2 (fun x h => A x h + B x h) u s =
      finiteZModKernelDFT2 A u s + finiteZModKernelDFT2 B u s := by
  unfold finiteZModKernelDFT2
  have hinner (x : ZMod Q) :
      ZMod.dft (fun h => A x h + B x h) s =
        ZMod.dft (A x) s + ZMod.dft (B x) s := by
    simpa using congrFun
      (map_add (ZMod.dft (N := Q) (E := ℂ)) (A x) (B x)) s
  simp_rw [hinner]
  simpa using congrFun
    (map_add (ZMod.dft (N := Q) (E := ℂ))
      (fun x => ZMod.dft (A x) s)
      (fun x => ZMod.dft (B x) s)) u

/-- Generic DFT collapse for a kernel supported on an affine line `x+h=c`.
The remaining transform is one-dimensional in the boundary parameter `h`. -/
theorem finiteZModKernelDFT2_eq_affineLine
    {Q : ℕ} [NeZero Q]
    (E : ZMod Q → ZMod Q → ℂ)
    (c u s : ZMod Q)
    (hsupp : ∀ x h, x + h ≠ c → E x h = 0) :
    finiteZModKernelDFT2 E u s =
      ZMod.stdAddChar (-(c * u)) *
        ZMod.dft (fun h => E (c - h) h) (s - u) := by
  classical
  unfold finiteZModKernelDFT2
  simp only [ZMod.dft_apply, smul_eq_mul]
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  have hinner (h : ZMod Q) :
      (∑ x : ZMod Q,
        ZMod.stdAddChar (-(x * u)) *
          (ZMod.stdAddChar (-(h * s)) * E x h)) =
        ZMod.stdAddChar (-(h * s)) *
          (ZMod.stdAddChar (-((c - h) * u)) * E (c - h) h) := by
    calc
      (∑ x : ZMod Q,
        ZMod.stdAddChar (-(x * u)) *
          (ZMod.stdAddChar (-(h * s)) * E x h)) =
          ZMod.stdAddChar (-(h * s)) *
            ∑ x : ZMod Q,
              ZMod.stdAddChar (-(x * u)) * E x h := by
                rw [Finset.mul_sum]
                apply Finset.sum_congr rfl
                intro x _hx
                ring
      _ = ZMod.stdAddChar (-(h * s)) *
          (ZMod.stdAddChar (-((c - h) * u)) * E (c - h) h) := by
            congr 1
            rw [Finset.sum_eq_single (c - h)]
            · rfl
            · intro x _hx hx
              have hne : x + h ≠ c := by
                intro heq
                apply hx
                have hsub := congrArg (fun z => z - h) heq
                simpa using hsub
              rw [hsupp x h hne]
              simp
            · simp
  simp_rw [hinner]
  calc
    (∑ h : ZMod Q,
      ZMod.stdAddChar (-(h * s)) *
        (ZMod.stdAddChar (-((c - h) * u)) * E (c - h) h)) =
      ∑ h : ZMod Q,
        ZMod.stdAddChar (-(c * u)) *
          (ZMod.stdAddChar (-(h * (s - u))) * E (c - h) h) := by
            apply Finset.sum_congr rfl
            intro h _hh
            have hchar :
                ZMod.stdAddChar (-(h * s)) *
                    ZMod.stdAddChar (-((c - h) * u)) =
                  ZMod.stdAddChar (-(c * u)) *
                    ZMod.stdAddChar (-(h * (s - u))) := by
              rw [← map_add_eq_mul, ← map_add_eq_mul]
              congr 1
              ring
            rw [hchar]
            ring
    _ = ZMod.stdAddChar (-(c * u)) *
        ∑ h : ZMod Q,
          ZMod.stdAddChar (-(h * (s - u))) * E (c - h) h := by
            rw [Finset.mul_sum]
    _ = ZMod.stdAddChar (-(c * u)) *
        ZMod.dft (fun h => E (c - h) h) (s - u) := by
          rw [ZMod.dft_apply]
          simp only [smul_eq_mul]

/-- DFT of the explicit interior reciprocal-drop numerator. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad j)
    u s

/-- The explicit interior transform is the parent increment transform. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2_eq_increment
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2 j u s =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementDFT2 j u s := by
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2
    coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementDFT2
    finiteZModKernelDFT2
  simp_rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad_eq_increment]

/-- One-dimensional DFT of the retained boundary symbol. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundarySymbolDFT
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  ZMod.dft
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundarySymbol j)
    t

/-- The two-dimensional boundary transform collapses to one boundary-symbol
frequency with an explicit affine phase. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2_eq_affineLine
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2 j u s =
      ZMod.stdAddChar
          (-(coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryLine j * u)) *
        coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundarySymbolDFT
          j (s - u) := by
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
    coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundarySymbolDFT
    coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundarySymbol
  exact finiteZModKernelDFT2_eq_affineLine
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryZeroPad j)
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryLine j)
    u s
    (fun x h hne =>
      coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryZeroPad_eq_zero_of_add_ne_line
        hne)

/-- DFT of the complete signed transverse numerator. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorKernelZeroPad j)
    u s

/-- The complete numerator transform is exactly interior plus boundary. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2_eq_interior_add_boundary
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2 j u s =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2 j u s +
        coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
          j u s := by
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2
    coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorKernelZeroPad
    coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2
    coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
  exact finiteZModKernelDFT2_add
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad j)
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryZeroPad j)
    u s

/-- The complete numerator transform is the parent increment-plus-boundary
numerator. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2_eq_parent
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2 j u s =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementDFT2 j u s +
        coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
          j u s := by
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2_eq_interior_add_boundary,
    coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2_eq_increment]

/-- Fully exposed numerator formula: reciprocal-drop interior transform plus
the collapsed affine-line boundary transform. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2_eq_interior_add_affineBoundary
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2 j u s =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2 j u s +
        ZMod.stdAddChar
            (-(coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryLine j * u)) *
          coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundarySymbolDFT
            j (s - u) := by
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2_eq_interior_add_boundary,
    coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2_eq_affineLine]

/-- Nonzero transverse resolvent rewritten through the explicit complete
numerator transform. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorResolvedDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  (coreGrowingShiftEndpointTransverseMultiplier j u)⁻¹ *
    coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2 j u s

/-- The exposed-numerator resolvent is exactly the parent resolvent. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorResolvedDFT2_eq_parent
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorResolvedDFT2
        j u s =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2 j u s := by
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorResolvedDFT2
    coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2_eq_parent]

/-- On nonzero transverse modes, the exposed-numerator resolvent recovers the
sheared clipping transform. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorResolvedDFT2_eq_kernel
    {j : ℕ}
    {u s : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hu : u ≠ 0) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorResolvedDFT2
        j u s =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2 j u s := by
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorResolvedDFT2_eq_parent]
  exact
    coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2_eq_kernel hu

/-- Low clipping packet rebuilt with the explicit complete numerator. -/
def coreGrowingShiftSignedEndpointTransverseNumeratorLowClippingFourierPacketComplex
    (j L : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
    ∑ u ∈ coreGrowingShiftEndpointTransverseLowFrequencySet j L,
      ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (s - u) *
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorResolvedDFT2
              j u s

/-- Regular clipping packet rebuilt with the explicit complete numerator. -/
def coreGrowingShiftSignedEndpointTransverseNumeratorRegularClippingFourierPacketComplex
    (j L : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
    ∑ u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j L,
      ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (s - u) *
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorResolvedDFT2
              j u s

/-- Rebuilding the low packet with the exposed numerator changes no value. -/
theorem coreGrowingShiftSignedEndpointTransverseNumeratorLowClippingFourierPacketComplex_eq_parent
    (j L : ℕ) :
    coreGrowingShiftSignedEndpointTransverseNumeratorLowClippingFourierPacketComplex
        j L =
      coreGrowingShiftSignedEndpointTransverseLowClippingFourierPacketComplex
        j L := by
  unfold coreGrowingShiftSignedEndpointTransverseNumeratorLowClippingFourierPacketComplex
    coreGrowingShiftSignedEndpointTransverseLowClippingFourierPacketComplex
  apply congrArg
  apply Finset.sum_congr rfl
  intro u _hu
  apply Fintype.sum_congr
  intro s
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorResolvedDFT2_eq_parent]

/-- Rebuilding the regular packet with the exposed numerator changes no value. -/
theorem coreGrowingShiftSignedEndpointTransverseNumeratorRegularClippingFourierPacketComplex_eq_parent
    (j L : ℕ) :
    coreGrowingShiftSignedEndpointTransverseNumeratorRegularClippingFourierPacketComplex
        j L =
      coreGrowingShiftSignedEndpointTransverseRegularClippingFourierPacketComplex
        j L := by
  unfold coreGrowingShiftSignedEndpointTransverseNumeratorRegularClippingFourierPacketComplex
    coreGrowingShiftSignedEndpointTransverseRegularClippingFourierPacketComplex
  apply congrArg
  apply Finset.sum_congr rfl
  intro u _hu
  apply Fintype.sum_congr
  intro s
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorResolvedDFT2_eq_parent]

/-- Complete endpoint packet with the direct zero mode retained and both
nonzero pieces rebuilt from the explicit numerator. -/
def coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacketComplex
    (j : ℕ) : ℂ :=
  coreGrowingShiftSignedEndpointTransverseZeroModeJointFourierPacketComplex j -
    coreGrowingShiftSignedEndpointTransverseNumeratorLowClippingFourierPacketComplex
      j (coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff j) -
    coreGrowingShiftSignedEndpointTransverseNumeratorRegularClippingFourierPacketComplex
      j (coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff j)

/-- Exposing and collapsing the numerator changes no complete complex packet. -/
theorem coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacketComplex_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacketComplex j =
      coreGrowingShiftSignedEndpointTransverseGeometryFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacketComplex
    coreGrowingShiftSignedEndpointTransverseGeometryFourierPacketComplex
  rw [coreGrowingShiftSignedEndpointTransverseNumeratorLowClippingFourierPacketComplex_eq_parent,
    coreGrowingShiftSignedEndpointTransverseNumeratorRegularClippingFourierPacketComplex_eq_parent]

/-- The complete numerator packet remains real only after the signed zero,
low, and regular combination. -/
theorem coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacketComplex_im
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacketComplex j).im = 0 := by
  rw [coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacketComplex_eq_parent,
    coreGrowingShiftSignedEndpointTransverseGeometryFourierPacketComplex_im]

/-- Real endpoint packet with the explicit transverse numerator. -/
def coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket
    (j : ℕ) : ℝ :=
  (coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacketComplex j).re

/-- Exact equality with the parent real transverse-geometry packet. -/
theorem coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket j =
      coreGrowingShiftSignedEndpointTransverseGeometryFourierPacket j := by
  unfold coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket
    coreGrowingShiftSignedEndpointTransverseGeometryFourierPacket
  rw [coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacketComplex_eq_parent]

/-- Exact RH-facing return through the explicit-numerator packet. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointTransverseNumeratorFourier
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointTransverseGeometryFourier,
    ← coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket_eq_parent]

/-- Source-facing all-scale condition on the unchanged complete signed packet. -/
def SubpolynomialCoreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the parent transverse-geometry source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket_iff_parent :
    SubpolynomialCoreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket ↔
      SubpolynomialCoreGrowingShiftSignedEndpointTransverseGeometryFourierPacket := by
  constructor
  · intro hNumerator δ hδ
    obtain ⟨C, hC, hbound⟩ := hNumerator δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket_eq_parent]
    exact hbound j
  · intro hParent δ hδ
    obtain ⟨C, hC, hbound⟩ := hParent δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket_eq_parent]
    exact hbound j

/-- Conditional RH endpoint stated on the explicit-numerator packet. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket
    (hNumerator :
      SubpolynomialCoreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseGeometryFourierPacket
    (subpolynomialCoreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket_iff_parent.mp
      hNumerator)

/-- Source profile after the complete transverse numerator and affine boundary
collapse have been exposed. -/
structure SignedEndpointTransverseNumeratorFourierSource where
  sourceStatement : Prop
  exactInteriorReciprocalDrop : Prop
  affineBoundarySupport : Prop
  affineBoundaryDFTNormalization : Prop
  completeNumeratorPreservation : Prop
  scalarResolventControl : Prop
  directZeroModePreservation : Prop
  lowModeArithmeticControl : Prop
  regularNumeratorControl : Prop
  rightWindowBoundarySymbolControl : Prop
  lowAnchorPreservation : Prop
  jointSignedBulkClipCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for a future estimate of the complete signed
packet.  The affine collapse is not itself a boundary-symbol estimate. -/
structure ToCoreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket
    (d : SignedEndpointTransverseNumeratorFourierSource) : Type where
  toTransverseNumerator :
    d.sourceStatement →
      d.exactInteriorReciprocalDrop →
      d.affineBoundarySupport →
      d.affineBoundaryDFTNormalization →
      d.completeNumeratorPreservation →
      d.scalarResolventControl →
      d.directZeroModePreservation →
      d.lowModeArithmeticControl →
      d.regularNumeratorControl →
      d.rightWindowBoundarySymbolControl →
      d.lowAnchorPreservation →
      d.jointSignedBulkClipCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket

/-- Generic conditional endpoint through an explicitly constructed transverse
numerator adapter. -/
theorem riemannHypothesis_of_signedEndpointTransverseNumeratorFourierAdapter
    (d : SignedEndpointTransverseNumeratorFourierSource)
    (bridge : ToCoreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket d)
    (hsource : d.sourceStatement)
    (hinterior : d.exactInteriorReciprocalDrop)
    (hsupport : d.affineBoundarySupport)
    (haffine : d.affineBoundaryDFTNormalization)
    (hnumerator : d.completeNumeratorPreservation)
    (hresolvent : d.scalarResolventControl)
    (hzero : d.directZeroModePreservation)
    (hlow : d.lowModeArithmeticControl)
    (hregular : d.regularNumeratorControl)
    (hboundary : d.rightWindowBoundarySymbolControl)
    (hanchor : d.lowAnchorPreservation)
    (hjoint : d.jointSignedBulkClipCancellation)
    (huniform : d.allScaleUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket
    (bridge.toTransverseNumerator hsource hinterior hsupport haffine
      hnumerator hresolvent hzero hlow hregular hboundary hanchor hjoint
      huniform hsmall)

/-- Hostile control: affine-line support alone does not bound the boundary
symbol's Fourier transform. -/
theorem transverseNumerator_affineSupportAlone_hostileWitness
    (M : ℂ) :
    (∑ _h : Fin 2, M) = 2 * M := by
  simp

/-- Hostile control: the signed numerator can cancel before any positive norm
is taken. -/
theorem transverseNumerator_signedCancellation_hostileWitness :
    ((1 : ℂ) + (-1 : ℂ)) = 0 ∧
      ‖(1 : ℂ)‖ + ‖(-1 : ℂ)‖ = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad_eq_increment
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finiteZModKernelDFT2_eq_affineLine
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2_eq_affineLine
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2_eq_interior_add_affineBoundary
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacketComplex_eq_parent
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket