/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #798. Direct stacked parent: draft PR #792 at exact head
`6ea95204b44d8a831b7ecb47e0f1060d828c55a3`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingFiberEnergy

/-!
# Zero-winding fibers as one-dimensional shift correlations

For fixed common coordinate `c`, the equation

`2*m+h=c`

determines the half-index uniquely:

`m=(c-h)/2`.

The admissible shifts are exactly those with

* `h ≤ c`;
* `c-h` even;
* `(c-h)/2` in the exact half-index support.

This module collapses each signed zero-winding fiber to a one-dimensional
signed sum over those admissible shifts. No estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The half-index selected by a common coordinate and shift. -/
def zeroWindingHalfIndexFromCoordinate
    (c h : ℕ) : ℕ :=
  (c - h) / 2

/-- Exact admissible shifts for one zero-winding coordinate fiber. -/
def zeroWindingAdmissibleShiftSet
    (b r c : ℕ)
    (H : Finset ℕ) : Finset ℕ :=
  H.filter fun h =>
    h ≤ c ∧
      (c - h) % 2 = 0 ∧
      zeroWindingHalfIndexFromCoordinate c h ∈
        zeroWindingHalfIndexBaseSet b r h

/-- Solving `2*m+h=c` gives the declared half-index. -/
theorem zeroWindingHalfIndexFromCoordinate_eq
    {m h c : ℕ}
    (heq : 2 * m + h = c) :
    zeroWindingHalfIndexFromCoordinate c h = m := by
  unfold zeroWindingHalfIndexFromCoordinate
  omega

/-- A solved zero-winding equation forces the displacement parity and order
conditions used by the admissible shift set. -/
theorem zeroWindingCoordinate_conditions
    {m h c : ℕ}
    (heq : 2 * m + h = c) :
    h ≤ c ∧ (c - h) % 2 = 0 := by
  constructor <;> omega

/-- Conversely, the order and parity conditions reconstruct the exact
zero-winding coordinate equality. -/
theorem zeroWindingCoordinate_reconstruct
    {h c : ℕ}
    (hle : h ≤ c)
    (heven : (c - h) % 2 = 0) :
    2 * zeroWindingHalfIndexFromCoordinate c h + h = c := by
  unfold zeroWindingHalfIndexFromCoordinate
  omega

/-- Exact membership characterization of the admissible shift fiber. -/
theorem mem_zeroWindingAdmissibleShiftSet
    {b r c h : ℕ}
    {H : Finset ℕ} :
    h ∈ zeroWindingAdmissibleShiftSet b r c H ↔
      h ∈ H ∧
      h ≤ c ∧
      (c - h) % 2 = 0 ∧
      zeroWindingHalfIndexFromCoordinate c h ∈
        zeroWindingHalfIndexBaseSet b r h := by
  simp [zeroWindingAdmissibleShiftSet]

/-- For one fixed shift, the half-index indicator sum has exactly one possible
contributor. -/
theorem sum_halfIndex_eq_coordinate_single
    (b r h c : ℕ) :
    (∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
      if halfIndexZeroWindingCoordinate m h = c then
        halfIndexBinaryMobiusCoefficient r m h
      else 0) =
      if h ≤ c ∧
          (c - h) % 2 = 0 ∧
          zeroWindingHalfIndexFromCoordinate c h ∈
            zeroWindingHalfIndexBaseSet b r h then
        halfIndexBinaryMobiusCoefficient r
          (zeroWindingHalfIndexFromCoordinate c h) h
      else 0 := by
  classical
  by_cases hcond :
      h ≤ c ∧
        (c - h) % 2 = 0 ∧
        zeroWindingHalfIndexFromCoordinate c h ∈
          zeroWindingHalfIndexBaseSet b r h
  · rw [if_pos hcond]
    rw [Finset.sum_eq_single
      (zeroWindingHalfIndexFromCoordinate c h)]
    · rw [if_pos]
      exact zeroWindingCoordinate_reconstruct hcond.1 hcond.2.1
    · intro m hm hne
      have hneq :
          halfIndexZeroWindingCoordinate m h ≠ c := by
        intro heq
        apply hne
        exact (zeroWindingHalfIndexFromCoordinate_eq heq).symm
      simp [hneq]
    · intro hnot
      exact (hnot hcond.2.2).elim
  · rw [if_neg hcond]
    apply Finset.sum_eq_zero
    intro m hm
    have hneq :
        halfIndexZeroWindingCoordinate m h ≠ c := by
      intro heq
      have hc := zeroWindingCoordinate_conditions heq
      apply hcond
      refine ⟨hc.1, hc.2, ?_⟩
      rw [zeroWindingHalfIndexFromCoordinate_eq heq]
      exact hm
    simp [hneq]

/-- One-dimensional signed correlation on the admissible shift fiber. -/
def parityZeroWindingShiftFiberCorrelation
    (b r c : ℕ)
    (H : Finset ℕ) : ℝ :=
  ∑ h ∈ zeroWindingAdmissibleShiftSet b r c H,
    halfIndexBinaryMobiusCoefficient r
      (zeroWindingHalfIndexFromCoordinate c h) h

/-- Exact collapse of the signed zero-winding fiber to a one-dimensional
shift correlation. -/
theorem parityHalfIndexZeroWindingFiber_eq_shiftCorrelation
    (b r c : ℕ)
    (H : Finset ℕ) :
    parityHalfIndexZeroWindingFiber b r H c =
      parityZeroWindingShiftFiberCorrelation b r c H := by
  classical
  unfold parityHalfIndexZeroWindingFiber
    parityZeroWindingShiftFiberCorrelation
  simp_rw [sum_halfIndex_eq_coordinate_single]
  unfold zeroWindingAdmissibleShiftSet
  rw [Finset.sum_filter]

/-- Fiber energy expressed entirely through the one-dimensional shift
correlations. -/
theorem parityHalfIndexZeroWindingFiberEnergy_eq_shiftCorrelation
    (b r : ℕ)
    (H : Finset ℕ) :
    parityHalfIndexZeroWindingFiberEnergy b r H =
      4 * ∑ c ∈ Finset.range (b + 1),
        parityZeroWindingShiftFiberCorrelation b r c H ^ 2 := by
  unfold parityHalfIndexZeroWindingFiberEnergy
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro c _hc
  rw [parityHalfIndexZeroWindingFiber_eq_shiftCorrelation]

/-- Conservative source profile for the remaining one-dimensional
shift-correlation energy theorem. -/
structure RegularZeroWindingShiftFiberSourceData where
  theoremStatement : Prop
  exactAdmissibleShiftSetMatched : Prop
  solvedHalfIndexMatched : Prop
  signedBinaryMobiusCoefficientMatched : Prop
  commonCoordinateFamilyMatched : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  bothEndpointParitiesMatched : Prop
  naturalScaleNormalizationMatched : Prop

def RegularZeroWindingShiftFiberSource
    (d : RegularZeroWindingShiftFiberSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactAdmissibleShiftSetMatched ∧
    d.solvedHalfIndexMatched ∧
    d.signedBinaryMobiusCoefficientMatched ∧
    d.commonCoordinateFamilyMatched ∧
    d.evenOddHalfShiftFamiliesMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.zeroWindingHalfIndexFromCoordinate_eq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_halfIndex_eq_coordinate_single
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfIndexZeroWindingFiber_eq_shiftCorrelation
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfIndexZeroWindingFiberEnergy_eq_shiftCorrelation
