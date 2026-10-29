/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #527. Direct stacked parent: draft PR #524 at
`32b3cd741855928c410065686a18f2de20ecb87e`.
-/
import GRWTSK.NumberTheory.Moebius.EndpointFibreDiagonalCancellationWitness

/-!
# Three-point progression form of the endpoint cross-collision energy

The two oriented cross-collision strata in the four-Möbius expansion are not
genuinely four-point data.  For endpoint `b`, prefix length `n<b`, and
positive shift `h=b-n`, both orientations reduce to the same one-parameter
term

`mu(a+1) * mu(a+1+h)^2 * mu(a+1+h+h)`.

The support condition is exactly `a+h<n`, equivalently
`a<n-h`.  Hence the complete cross-collision contribution is twice a finite
three-point arithmetic-progression sum.

No cancellation estimate is introduced.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The signed three-point progression term carried by either oriented
cross-collision.  The middle Möbius factor remains squared exactly. -/
def mertensThreePointProgressionTerm
    (h a : ℕ) : ℝ :=
  moebiusReal (a + 1) *
    moebiusReal (a + 1 + h) ^ 2 *
    moebiusReal (a + 1 + h + h)

/-- Exact one-dimensional support for one endpoint/prefix cross-collision
fibre. -/
def mertensEndpointCrossCollisionBaseSet
    (b n : ℕ) : Finset ℕ :=
  Finset.range (n - (b - n))

/-- Forward-cross pairs are in exact bijection with the lower base index. -/
theorem sum_mertensEndpointForwardCross_eq_progression
    {b n : ℕ} (hnb : n < b) :
    (∑ p ∈ mertensEndpointStratumPairSet b n .forwardCross,
      mertensEndpointFourMobiusTerm b n p.1 p.2) =
      ∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
        mertensThreePointProgressionTerm (b - n) a := by
  classical
  let h : ℕ := b - n
  have hh : 0 < h := by
    dsimp [h]
    omega
  apply Finset.sum_bij'
    (fun p _hp => p.1)
    (fun a _ha => (a, a + h))
  · rintro ⟨a, c⟩ hp
    have hstr :
        mertensEndpointFourMobiusStratum b n a c = .forwardCross :=
      (Finset.mem_filter.mp hp).2
    have hc :
        c = a + h := by
      simpa [h] using
        ((mertensEndpointFourMobiusStratum_eq_forwardCross_iff
          (b := b) (n := n) (a := a) (c := c) hnb).mp hstr).2
    have hpair := (Finset.mem_filter.mp hp).1
    have hc_lt :
        c < n := by
      exact Finset.mem_range.mp (Finset.mem_product.mp hpair).2
    unfold mertensEndpointCrossCollisionBaseSet
    apply Finset.mem_range.mpr
    omega
  · intro a ha
    unfold mertensEndpointCrossCollisionBaseSet at ha
    have ha_lt : a < n - h := Finset.mem_range.mp ha
    have ha_n : a < n := by omega
    have hac_n : a + h < n := by omega
    unfold mertensEndpointStratumPairSet mertensEndpointPairSet
    simp only [Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product, Finset.mem_range]
    refine ⟨⟨ha_n, hac_n⟩, ?_⟩
    apply
      (mertensEndpointFourMobiusStratum_eq_forwardCross_iff
        (b := b) (n := n) (a := a) (c := a + h) hnb).2
    constructor
    · omega
    · simp [h]
  · rintro ⟨a, c⟩ hp
    have hstr :
        mertensEndpointFourMobiusStratum b n a c = .forwardCross :=
      (Finset.mem_filter.mp hp).2
    have hc :
        c = a + h := by
      simpa [h] using
        ((mertensEndpointFourMobiusStratum_eq_forwardCross_iff
          (b := b) (n := n) (a := a) (c := c) hnb).mp hstr).2
    simp [hc]
  · intro a ha
    simp
  · rintro ⟨a, c⟩ hp
    have hstr :
        mertensEndpointFourMobiusStratum b n a c = .forwardCross :=
      (Finset.mem_filter.mp hp).2
    have hc :
        c = a + h := by
      simpa [h] using
        ((mertensEndpointFourMobiusStratum_eq_forwardCross_iff
          (b := b) (n := n) (a := a) (c := c) hnb).mp hstr).2
    subst c
    dsimp only [mertensEndpointFourMobiusTerm, mertensThreePointProgressionTerm]
    simp only [h, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]
    ring

/-- Backward-cross pairs give the same one-dimensional progression sum, now
using the lower index `c` as the base parameter. -/
theorem sum_mertensEndpointBackwardCross_eq_progression
    {b n : ℕ} (hnb : n < b) :
    (∑ p ∈ mertensEndpointStratumPairSet b n .backwardCross,
      mertensEndpointFourMobiusTerm b n p.1 p.2) =
      ∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
        mertensThreePointProgressionTerm (b - n) a := by
  classical
  let h : ℕ := b - n
  have hh : 0 < h := by
    dsimp [h]
    omega
  apply Finset.sum_bij'
    (fun p _hp => p.2)
    (fun a _ha => (a + h, a))
  · rintro ⟨a, c⟩ hp
    have hstr :
        mertensEndpointFourMobiusStratum b n a c = .backwardCross :=
      (Finset.mem_filter.mp hp).2
    have ha :
        a = c + h := by
      simpa [h] using
        ((mertensEndpointFourMobiusStratum_eq_backwardCross_iff
          (b := b) (n := n) (a := a) (c := c) hnb).mp hstr).2.2
    have hpair := (Finset.mem_filter.mp hp).1
    have ha_lt :
        a < n := by
      exact Finset.mem_range.mp (Finset.mem_product.mp hpair).1
    unfold mertensEndpointCrossCollisionBaseSet
    apply Finset.mem_range.mpr
    omega
  · intro c hc
    unfold mertensEndpointCrossCollisionBaseSet at hc
    have hc_lt : c < n - h := Finset.mem_range.mp hc
    have hc_n : c < n := by omega
    have hch_n : c + h < n := by omega
    unfold mertensEndpointStratumPairSet mertensEndpointPairSet
    simp only [Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product, Finset.mem_range]
    refine ⟨⟨hch_n, hc_n⟩, ?_⟩
    apply
      (mertensEndpointFourMobiusStratum_eq_backwardCross_iff
        (b := b) (n := n) (a := c + h) (c := c) hnb).2
    refine ⟨?_, ?_, ?_⟩
    · omega
    · omega
    · simp [h]
  · rintro ⟨a, c⟩ hp
    have hstr :
        mertensEndpointFourMobiusStratum b n a c = .backwardCross :=
      (Finset.mem_filter.mp hp).2
    have ha :
        a = c + h := by
      simpa [h] using
        ((mertensEndpointFourMobiusStratum_eq_backwardCross_iff
          (b := b) (n := n) (a := a) (c := c) hnb).mp hstr).2.2
    simp [ha]
  · intro c hc
    simp
  · rintro ⟨a, c⟩ hp
    have hstr :
        mertensEndpointFourMobiusStratum b n a c = .backwardCross :=
      (Finset.mem_filter.mp hp).2
    have ha :
        a = c + h := by
      simpa [h] using
        ((mertensEndpointFourMobiusStratum_eq_backwardCross_iff
          (b := b) (n := n) (a := a) (c := c) hnb).mp hstr).2.2
    subst a
    dsimp only [mertensEndpointFourMobiusTerm, mertensThreePointProgressionTerm]
    simp only [h, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]
    ring

/-- The complete endpoint cross-collision contribution in one-dimensional
three-point progression coordinates.  The factor two pays both orientations. -/
def mertensEndpointCrossCollisionProgressionEnergy
    (b : ℕ) : ℝ :=
  2 * ∑ n ∈ Finset.Ico 1 b,
    ∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
      mertensThreePointProgressionTerm (b - n) a

/-- Exact collapse of both oriented cross-collision strata to the same
three-point arithmetic-progression sum. -/
theorem mertensEndpointFibreCrossCollisionEnergy_eq_progression
    (b : ℕ) :
    mertensEndpointFibreCrossCollisionEnergy b =
      mertensEndpointCrossCollisionProgressionEnergy b := by
  unfold mertensEndpointFibreCrossCollisionEnergy
    mertensEndpointCrossCollisionProgressionEnergy
  calc
    (∑ n ∈ Finset.Ico 1 b,
      ((∑ p ∈ mertensEndpointStratumPairSet b n .forwardCross,
          mertensEndpointFourMobiusTerm b n p.1 p.2) +
        (∑ p ∈ mertensEndpointStratumPairSet b n .backwardCross,
          mertensEndpointFourMobiusTerm b n p.1 p.2))) =
      ∑ n ∈ Finset.Ico 1 b,
        ((∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
            mertensThreePointProgressionTerm (b - n) a) +
          (∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
            mertensThreePointProgressionTerm (b - n) a)) := by
        apply Finset.sum_congr rfl
        intro n hn
        have hnb := (Finset.mem_Ico.mp hn).2
        rw [sum_mertensEndpointForwardCross_eq_progression hnb,
          sum_mertensEndpointBackwardCross_eq_progression hnb]
    _ = 2 * ∑ n ∈ Finset.Ico 1 b,
        ∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
          mertensThreePointProgressionTerm (b - n) a := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _hn
      ring

/-- Reciprocal endpoint-weighted version of the exact three-point
cross-collision observable. -/
def weightedMertensEndpointCrossCollisionProgressionEnergy
    (j : ℕ) : ℝ :=
  4 * ∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
    ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
      mertensEndpointCrossCollisionProgressionEnergy b

/-- The RH-facing weighted cross-collision energy is exactly the progression
observable; this is a representation change, not an estimate. -/
theorem weightedMertensEndpointCrossCollisionEnergy_eq_progression
    (j : ℕ) :
    weightedMertensEndpointCrossCollisionEnergy j =
      weightedMertensEndpointCrossCollisionProgressionEnergy j := by
  unfold weightedMertensEndpointCrossCollisionEnergy
    weightedMertensEndpointCrossCollisionProgressionEnergy
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro b _hb
  rw [mertensEndpointFibreCrossCollisionEnergy_eq_progression]

/-- Source-facing all-scale condition on the signed cross-collision progression
term.  It is recorded for adapters only; no inhabitant is constructed. -/
def SubpolynomialWeightedMertensEndpointCrossCollisionProgression : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensEndpointCrossCollisionProgressionEnergy j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_mertensEndpointForwardCross_eq_progression
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_mertensEndpointBackwardCross_eq_progression
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensEndpointFibreCrossCollisionEnergy_eq_progression
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensEndpointCrossCollisionEnergy_eq_progression
