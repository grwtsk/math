/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Analysis.Fourier.ZModLargerSlice

/-!
# Downstream larger-slice consumers and hypothesis counterexamples

The generic consumers retain every hypothesis of source Corollary 1.4.
Finite exposure counts and exact point masses separately demonstrate that
zero samples and a zero epsilon margin cannot be added to its conclusion.
-/

namespace GRWTSK.LargerSliceChecks

open scoped BigOperators
open GRWTSK.FixedSizeSubsetExposure
open GRWTSK.ZModLargerSliceParameters

noncomputable section

theorem larger_slice_bound {p m : ℕ} [NeZero p]
    (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hm : 1 ≤ m)
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1)
    (hdensity : (m : ℝ) ≤ (1 - ε) * S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p + largerSliceConstant ε * Real.sqrt (Real.log S.card) /
        ((S.card : ℝ) * Real.sqrt m) :=
  GRWTSK.ZModLargerSlice.subsetSumProbability_le_largerSlice
    hp S hn hm ε hε hε1 hdensity z

theorem prime_larger_slice_bound {p m : ℕ}
    (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hm : 1 ≤ m)
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1)
    (hdensity : (m : ℝ) ≤ (1 - ε) * S.card) (z : ZMod p) :
    (@GRWTSK.ZModSubsetSum.subsetSumProbability
      p ⟨hp.ne_zero⟩ S m z : ℝ) ≤
      1 / p + largerSliceConstant ε * Real.sqrt (Real.log S.card) /
        ((S.card : ℝ) * Real.sqrt m) :=
  GRWTSK.ZModLargerSlice.prime_subsetSumProbability_le_largerSlice
    hp S hn hm ε hε hε1 hdensity z

theorem uniform_epsilon_constant
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1) :
    ∃ C : ℝ, 0 < C ∧ ∀ (p : ℕ) (hp : p.Prime),
      ∀ (S : Finset (ZMod p)) (m : ℕ), 2 ≤ S.card → 1 ≤ m →
        (m : ℝ) ≤ (1 - ε) * S.card → ∀ z : ZMod p,
          (@GRWTSK.ZModSubsetSum.subsetSumProbability
            p ⟨hp.ne_zero⟩ S m z : ℝ) ≤
            1 / p + C * Real.sqrt (Real.log S.card) /
              ((S.card : ℝ) * Real.sqrt m) :=
  GRWTSK.ZModLargerSlice.exists_larger_slice_anticoncentration_constant
    ε hε hε1

theorem exposure_pairs_three :
    (exposurePairs (Finset.univ : Finset (Fin 3)) 1 1).card = 6 := by
  rw [card_exposurePairs]
  norm_num

theorem exposure_union_fiber_three :
    ((exposurePairs (Finset.univ : Finset (Fin 3)) 1 1).filter
      (fun q => pairUnion q = ({0, 1} : Finset (Fin 3)))).card = 2 := by
  have hR : ({0, 1} : Finset (Fin 3)) ∈
      (Finset.univ : Finset (Fin 3)).powersetCard (1 + 1) := by decide
  rw [exposure_union_fiber_card _ _ _ _ hR]
  norm_num

/-- Separate admissibility of two subset choices does not guarantee the
claimed combined cardinality: their supports can overlap. -/
theorem overlapping_singletons_counterexample :
    let A : Finset (Fin 3) := {0}
    let B : Finset (Fin 3) := {0}
    A ∈ (Finset.univ : Finset (Fin 3)).powersetCard 1 ∧
      B ∈ (Finset.univ : Finset (Fin 3)).powersetCard 1 ∧
      (A ∪ B).card = 1 ∧ (A ∪ B).card ≠ 1 + 1 := by decide

def smallPacket : Finset (ZMod 5) := {0, 1}

theorem smallPacket_card : smallPacket.card = 2 := by decide

theorem empty_sample_mass :
    (GRWTSK.ZModSubsetSum.subsetSumProbability smallPacket 0 0 : ℝ) = 1 := by
  have hspace : smallPacket.powersetCard 0 = {∅} :=
    Finset.powersetCard_zero smallPacket
  have hfiber : GRWTSK.ZModSubsetSum.subsetSumFiber smallPacket 0 0 = {∅} := by
    unfold GRWTSK.ZModSubsetSum.subsetSumFiber
    rw [hspace]
    apply Finset.filter_eq_self.mpr
    intro R hR
    have hR' : R = ∅ := Finset.mem_singleton.mp hR
    rw [hR']
    simp
  unfold GRWTSK.ZModSubsetSum.subsetSumProbability
  rw [hfiber, hspace]
  norm_num

theorem empty_sample_has_margin :
    (0 : ℝ) ≤ (1 - (1 / 2 : ℝ)) * smallPacket.card := by positivity

/-- Dropping positive sample size fails even with epsilon equal to one half. -/
theorem zero_sample_counterexample :
    ¬ ((GRWTSK.ZModSubsetSum.subsetSumProbability smallPacket 0 0 : ℝ) ≤
      1 / 5 + largerSliceConstant (1 / 2) *
        Real.sqrt (Real.log smallPacket.card) /
          ((smallPacket.card : ℝ) * Real.sqrt (0 : ℝ))) := by
  rw [empty_sample_mass]
  norm_num

theorem full_packet_mass :
    (GRWTSK.ZModSubsetSum.subsetSumProbability
      smallPacket 2 (1 : ZMod 5) : ℝ) = 1 := by
  have hspace : smallPacket.powersetCard 2 = {smallPacket} := by
    simpa only [smallPacket_card] using Finset.powersetCard_self smallPacket
  have hfiber :
      GRWTSK.ZModSubsetSum.subsetSumFiber smallPacket 2 (1 : ZMod 5) =
        {smallPacket} := by
    unfold GRWTSK.ZModSubsetSum.subsetSumFiber
    rw [hspace]
    apply Finset.filter_eq_self.mpr
    intro R hR
    have hR' : R = smallPacket := Finset.mem_singleton.mp hR
    rw [hR']
    norm_num [smallPacket]
  unfold GRWTSK.ZModSubsetSum.subsetSumProbability
  rw [hfiber, hspace]
  norm_num

theorem full_packet_zero_margin :
    (2 : ℝ) ≤ (1 - (0 : ℝ)) * smallPacket.card := by
  norm_num [smallPacket_card]

/-- Extending the explicit coefficient to epsilon zero gives coefficient zero;
the full packet still has a deterministic sum with point mass one. -/
theorem zero_epsilon_counterexample :
    ¬ ((GRWTSK.ZModSubsetSum.subsetSumProbability
      smallPacket 2 (1 : ZMod 5) : ℝ) ≤
      1 / 5 + largerSliceConstant 0 * Real.sqrt (Real.log smallPacket.card) /
        ((smallPacket.card : ℝ) * Real.sqrt (2 : ℝ))) := by
  rw [full_packet_mass]
  norm_num [largerSliceConstant]

end

end GRWTSK.LargerSliceChecks
