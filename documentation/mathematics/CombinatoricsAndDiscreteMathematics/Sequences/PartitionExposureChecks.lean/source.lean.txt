/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Combinatorics.Sequences.ConditionalPartitionExposure
import GRWTSK.Combinatorics.Sequences.HypergeometricLowerTail

/-!
# Finite controls for conditional exposure and hypergeometric tails

These controls use four actual elements and two-element subsets. Every finite
calculation is a kernel-checked proof. The counterexamples refute specific
stronger statements: independent membership indicators, an equality replacing
the MGF inequality, unconditional fixed-part remainder size, and a lower-tail
bound with its density hypothesis removed.
-/

namespace GRWTSK.PartitionExposureChecks
open scoped BigOperators
open GRWTSK.BalancedPartitionSampling GRWTSK.ConditionalPartitionExposure
open GRWTSK.HypergeometricLowerTail

/-- The six two-element subsets of four elements. -/
def twoSubsetSpace : Finset (Finset (Fin 4)) := Finset.univ.powersetCard 2

theorem twoSubsetSpace_card : twoSubsetSpace.card = 6 := by decide

theorem single_membership_count :
    (twoSubsetSpace.filter (fun R => (0 : Fin 4) ∈ R)).card = 3 := by decide

theorem other_membership_count :
    (twoSubsetSpace.filter (fun R => (1 : Fin 4) ∈ R)).card = 3 := by decide

theorem joint_membership_count :
    (twoSubsetSpace.filter (fun R => (0 : Fin 4) ∈ R ∧ (1 : Fin 4) ∈ R)).card = 1 := by decide

/-- The joint probability is `1/6`, whereas multiplying the marginals gives
`1/4`. Membership indicators in a fixed-size uniform subset are not independent. -/
theorem fixed_size_membership_not_independent :
    ((twoSubsetSpace.filter (fun R => (0 : Fin 4) ∈ R ∧ (1 : Fin 4) ∈ R)).card : ℚ) /
        twoSubsetSpace.card ≠
      (((twoSubsetSpace.filter (fun R => (0 : Fin 4) ∈ R)).card : ℚ) / twoSubsetSpace.card) *
      (((twoSubsetSpace.filter (fun R => (1 : Fin 4) ∈ R)).card : ℚ) / twoSubsetSpace.card) := by
  rw [joint_membership_count, single_membership_count, other_membership_count, twoSubsetSpace_card]
  norm_num

theorem exponential_moment_count :
    (∑ R ∈ twoSubsetSpace, (2 : ℕ) ^ (R ∩ ({0, 1} : Finset (Fin 4))).card) = 13 := by decide

/-- Sampling without replacement makes the proved binomial MGF comparison
strict in this example: the exact moment is `13/6`, compared with `9/4`. -/
theorem exponential_moment_not_binomial_equality :
    ((∑ R ∈ twoSubsetSpace, (2 : ℕ) ^ (R ∩ ({0, 1} : Finset (Fin 4))).card) : ℚ) /
        twoSubsetSpace.card ≠
      (1 + (({0, 1} : Finset (Fin 4)).card : ℚ) / Fintype.card (Fin 4)) ^ 2 := by
  have hc : (∑ R ∈ twoSubsetSpace, (2 : ℚ) ^ (R ∩ ({0, 1} : Finset (Fin 4))).card) = 13 := by
    exact_mod_cast exponential_moment_count
  norm_num only [Nat.cast_ofNat]
  rw [hc, twoSubsetSpace_card]
  norm_num

theorem zero_success_count :
    (twoSubsetSpace.filter (fun R => (R ∩ ({0} : Finset (Fin 4))).card = 0)).card = 3 := by decide

/-- One successful element among four, sampled twice: the source `k/8` lower
tail consists of exactly the three samples containing no successful element. -/
theorem quarter_lower_tail_exact :
    lowerTailProbability (Finset.univ : Finset (Fin 4)) {0} 2 (1 / 8) = 1 / 2 := by
  classical
  have hpred (R : Finset (Fin 4)) :
      ((R ∩ ({0} : Finset (Fin 4))).card : ℝ) < (1 / 8 : ℝ) * (2 : ℕ) ↔
        (R ∩ ({0} : Finset (Fin 4))).card = 0 := by
    constructor
    · intro h
      have hlt : ((R ∩ ({0} : Finset (Fin 4))).card : ℝ) < 1 := by linarith
      have hn : (R ∩ ({0} : Finset (Fin 4))).card < 1 := by exact_mod_cast hlt
      omega
    · intro h
      rw [h]
      norm_num
  unfold lowerTailProbability
  simp_rw [hpred]
  change ((twoSubsetSpace.filter (fun R => (R ∩ ({0} : Finset (Fin 4))).card = 0)).card : ℝ) /
    (Fintype.card (Fin 4)).choose 2 = 1 / 2
  rw [zero_success_count]
  norm_num [Nat.choose]

/-- The source quarter-density tail theorem applies to the exact example. -/
theorem quarter_lower_tail_bound :
    lowerTailProbability (Finset.univ : Finset (Fin 4)) {0} 2 (1 / 8) ≤
      Real.exp (-(2 : ℝ) / 32) := by
  exact lowerTailProbability_quarter _ _ (by simp) (by simp) 2 (by decide) (by norm_num)

/-- With three successful elements and two selections, fewer than one success
is impossible. -/
theorem three_quarter_lower_tail_exact :
    lowerTailProbability (Finset.univ : Finset (Fin 4)) {0, 1, 2} 2 (1 / 2) = 0 := by
  classical
  have hcount : (twoSubsetSpace.filter
      (fun R => (R ∩ ({0, 1, 2} : Finset (Fin 4))).card = 0)).card = 0 := by decide
  have hpred (R : Finset (Fin 4)) :
      ((R ∩ ({0, 1, 2} : Finset (Fin 4))).card : ℝ) < (1 / 2 : ℝ) * (2 : ℕ) ↔
        (R ∩ ({0, 1, 2} : Finset (Fin 4))).card = 0 := by
    have hscale : (1 / 2 : ℝ) * (2 : ℕ) = 1 := by norm_num
    rw [hscale]
    constructor
    · intro h
      have hn : (R ∩ ({0, 1, 2} : Finset (Fin 4))).card < 1 := by exact_mod_cast h
      omega
    · intro h
      rw [h]
      norm_num
  unfold lowerTailProbability
  simp_rw [hpred]
  change ((twoSubsetSpace.filter
    (fun R => (R ∩ ({0, 1, 2} : Finset (Fin 4))).card = 0)).card : ℝ) / _ = 0
  rw [hcount]
  simp

/-- Removing the required density hypothesis makes the source bound false:
an empty success set has lower-tail probability one. -/
theorem quarter_bound_without_density_false :
    ¬lowerTailProbability (Finset.univ : Finset (Fin 4)) ∅ 2 (1 / 8) ≤
      Real.exp (-(2 : ℝ) / 32) := by
  classical
  have hp : lowerTailProbability (Finset.univ : Finset (Fin 4)) ∅ 2 (1 / 8) = 1 := by
    norm_num [lowerTailProbability]
    decide
  rw [hp]
  exact not_le.mpr (Real.exp_lt_one_iff.mpr (by norm_num))

def pairPartSizes : Fin 2 → ℕ := fun _ => 2

theorem pairPartSizes_sum : ∑ i, pairPartSizes i = Fintype.card (Fin 4) := by decide

/-- Conditioned on element zero belonging to the first two-element part, its
partner is uniform among the other three elements. -/
theorem conditional_partner_probability :
    conditionalProbability (A := Fin 4) pairPartSizes 0 0 (fun R => (1 : Fin 4) ∈ R) = 1 / 3 := by
  classical
  rw [conditional_event_probability pairPartSizes pairPartSizes_sum 0 0 (by decide)]
  have hden : (remainderSpace (A := Fin 4) pairPartSizes 0 0).card = 3 := by
    norm_num [remainderSpace, pairPartSizes]
  rw [hden]
  apply (div_left_inj' (by norm_num : (3 : ℚ) ≠ 0)).mpr
  norm_cast
  apply Finset.card_eq_one.mpr
  refine ⟨{1}, ?_⟩
  ext R
  simp only [Finset.mem_filter, remainderSpace, pairPartSizes, Nat.reduceSub,
    Finset.mem_powersetCard, Finset.mem_singleton]
  constructor
  · rintro ⟨⟨_hsub, hcard⟩, hmem⟩
    obtain ⟨a, rfl⟩ := Finset.card_eq_one.mp hcard
    have ha : (1 : Fin 4) = a := Finset.mem_singleton.mp hmem
    rw [← ha]
  · rintro rfl
    simp

/-- An unconditional fixed part need not contain the retained element.
Consequently, erasing that element need not reduce the part size to one. -/
theorem unconditional_remainder_size_false :
    ¬∀ (P : Partition (A := Fin 4) pairPartSizes) (a : Fin 4),
      ((part P 0).erase a).card = 1 := by
  classical
  intro h
  obtain ⟨P⟩ := partition_nonempty pairPartSizes pairPartSizes_sum
  have hsmall : (part P 0).card < (Finset.univ : Finset (Fin 4)).card := by
    rw [part_card]
    decide
  obtain ⟨a, _ha, hnot⟩ := Finset.exists_mem_notMem_of_card_lt_card hsmall
  have hbad := h P a
  rw [Finset.erase_eq_of_notMem hnot, part_card] at hbad
  norm_num [pairPartSizes] at hbad

end GRWTSK.PartitionExposureChecks
