/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #473. Direct stacked parent: draft PR #470 at
`75f2ca95aa317d1bdd64025c1c163d0b2e185339`.
-/
import GRWTSK.NumberTheory.Moebius.DyadicSignedAbelShiftPacket

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

def weightedMertensDyadicSignedAbelCell (j h t : ℕ) : ℝ :=
  if 1 ≤ h ∧ h < 2 ^ (j + 1) ∧ t < 2 ^ (j + 1) - h - 1 then
    2 * mertensTwoPointPrefix h (t + 1) *
      dyadicMertensShiftWeightDrop j h t
  else 0

def weightedMertensDyadicSignedAbelDepthSlice (j t : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    weightedMertensDyadicSignedAbelCell j h t

def weightedMertensDyadicSignedAbelDepthPacket (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (2 ^ (j + 1)),
    weightedMertensDyadicSignedAbelDepthSlice j t

theorem sum_range_eq_sum_range_indicator_of_le
    (f : ℕ → ℝ) {N Y : ℕ} (hNY : N ≤ Y) :
    (∑ t ∈ Finset.range N, f t) =
      ∑ t ∈ Finset.range Y, if t < N then f t else 0 := by
  rw [← Finset.sum_filter]
  congr 1
  ext t
  simp only [Finset.mem_filter, Finset.mem_range]
  constructor
  · intro ht
    exact ⟨lt_of_lt_of_le ht hNY, ht⟩
  · intro ht
    exact ht.2

theorem weightedMertensDyadicSignedAbelCell_eq_zero_of_cutoff_le
    {j h t : ℕ} (ht : 2 ^ (j + 1) - h - 1 ≤ t) :
    weightedMertensDyadicSignedAbelCell j h t = 0 := by
  unfold weightedMertensDyadicSignedAbelCell
  simp [Nat.not_lt.mpr ht]

theorem weightedMertensDyadicSignedAbelCell_eq_zero_of_not_shift
    {j h t : ℕ} (hh : ¬ (1 ≤ h ∧ h < 2 ^ (j + 1))) :
    weightedMertensDyadicSignedAbelCell j h t = 0 := by
  unfold weightedMertensDyadicSignedAbelCell
  by_cases ht : t < 2 ^ (j + 1) - h - 1 <;> simp [hh, ht]

theorem weightedMertensDyadicShiftAbelContribution_eq_cellSum
    {j h : ℕ} (hh : 1 ≤ h) (hhY : h < 2 ^ (j + 1)) :
    weightedMertensDyadicShiftAbelContribution j h =
      ∑ t ∈ Finset.range (2 ^ (j + 1)),
        weightedMertensDyadicSignedAbelCell j h t := by
  let N : ℕ := 2 ^ (j + 1) - h - 1
  have hNY : N ≤ 2 ^ (j + 1) := by
    dsimp [N]
    omega
  unfold weightedMertensDyadicShiftAbelContribution
  rw [show 2 ^ (j + 1) - h - 1 = N by rfl]
  rw [show
      2 * (∑ t ∈ Finset.range N,
        mertensTwoPointPrefix h (t + 1) *
          dyadicMertensShiftWeightDrop j h t) =
      ∑ t ∈ Finset.range N,
        (2 * mertensTwoPointPrefix h (t + 1) *
          dyadicMertensShiftWeightDrop j h t) by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro t _ht
        ring]
  rw [sum_range_eq_sum_range_indicator_of_le
    (fun t =>
      2 * mertensTwoPointPrefix h (t + 1) *
        dyadicMertensShiftWeightDrop j h t) hNY]
  apply Finset.sum_congr rfl
  intro t _ht
  unfold weightedMertensDyadicSignedAbelCell
  by_cases ht : t < N <;> simp [hh, hhY, ht, N]

theorem weightedMertensDyadicSignedAbelPacket_eq_cellDoubleSum
    (j : ℕ) :
    weightedMertensDyadicSignedAbelPacket j =
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        ∑ t ∈ Finset.range (2 ^ (j + 1)),
          weightedMertensDyadicSignedAbelCell j h t := by
  unfold weightedMertensDyadicSignedAbelPacket
  apply Finset.sum_congr rfl
  intro h hhmem
  exact weightedMertensDyadicShiftAbelContribution_eq_cellSum
    (Finset.mem_Ico.mp hhmem).1 (Finset.mem_Ico.mp hhmem).2

theorem weightedMertensDyadicSignedAbelPacket_eq_depthPacket
    (j : ℕ) :
    weightedMertensDyadicSignedAbelPacket j =
      weightedMertensDyadicSignedAbelDepthPacket j := by
  rw [weightedMertensDyadicSignedAbelPacket_eq_cellDoubleSum]
  unfold weightedMertensDyadicSignedAbelDepthPacket
    weightedMertensDyadicSignedAbelDepthSlice
  rw [Finset.sum_comm]

theorem weightedMertensDyadicShiftPacket_eq_signedAbelDepthPacket
    (j : ℕ) :
    weightedMertensDyadicShiftPacket j =
      weightedMertensDyadicSignedAbelDepthPacket j := by
  rw [weightedMertensDyadicShiftPacket_eq_signedAbelPacket,
    weightedMertensDyadicSignedAbelPacket_eq_depthPacket]

def SubpolynomialDyadicSignedAbelDepthPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensDyadicSignedAbelDepthPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

theorem subpolynomialDyadicSignedAbelDepthPacket_iff_signedAbel :
    SubpolynomialDyadicSignedAbelDepthPacket ↔
      SubpolynomialDyadicSignedAbelShiftPacket := by
  constructor
  · intro hDepth δ hδ
    obtain ⟨C, hC, hscale⟩ := hDepth δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [weightedMertensDyadicSignedAbelPacket_eq_depthPacket]
    exact hscale j
  · intro hAbel δ hδ
    obtain ⟨C, hC, hscale⟩ := hAbel δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← weightedMertensDyadicSignedAbelPacket_eq_depthPacket]
    exact hscale j

theorem subpolynomialDyadicSignedAbelDepthPacket_iff_shiftPacket :
    SubpolynomialDyadicSignedAbelDepthPacket ↔
      SubpolynomialDyadicMertensShiftPacket :=
  subpolynomialDyadicSignedAbelDepthPacket_iff_signedAbel.trans
    subpolynomialDyadicSignedAbelShiftPacket_iff_shiftPacket

theorem riemannHypothesis_of_subpolynomialDyadicSignedAbelDepthPacket
    (hDepth : SubpolynomialDyadicSignedAbelDepthPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicSignedAbelShiftPacket
    (subpolynomialDyadicSignedAbelDepthPacket_iff_signedAbel.mp hDepth)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicShiftAbelContribution_eq_cellSum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicSignedAbelPacket_eq_depthPacket
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicSignedAbelDepthPacket_iff_shiftPacket
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicSignedAbelDepthPacket
