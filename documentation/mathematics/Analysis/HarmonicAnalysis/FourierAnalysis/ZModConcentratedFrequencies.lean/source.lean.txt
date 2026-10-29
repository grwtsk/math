/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Analysis.Fourier.ZModSmallEnergySets

/-!
# Concentrated frequencies and deterministic tail energy

This proves the deterministic Lemma 3.2 of Pham–Sauermann,
arXiv:2602.15797v1. Its tail estimate holds for every center; the concentration
hypothesis used to choose the source center is unnecessary in this lemma.

The displayed proof of Lemma 3.2 in v1 prints `265t/m` twice, followed by
`1024t/m`. The calculation below uses `(16 sqrt(t/m))² = 256t/m`, for which
`4 * 256 = 1024`. It proves the stated lemma and the stronger constant 244.
No probability or hypergeometric concentration statement is assumed here.
-/

namespace GRWTSK.ZModConcentratedFrequencies
open scoped BigOperators
open GRWTSK.ZModCharacterEnergy GRWTSK.ZModSmallEnergySets

variable {p : ℕ} [NeZero p]

@[simp] theorem modularDistance_neg (x : ZMod p) :
    modularDistance (-x) = modularDistance x := by
  by_cases hx : x = 0
  · simp [hx]
  · have : NeZero x := ⟨hx⟩
    have hp : (p : ℝ) ≠ 0 := by exact_mod_cast NeZero.ne p
    have heq : ((-x).val : ℝ) / p = 1 - (x.val : ℝ) / p := by
      rw [ZMod.val_neg_of_ne_zero, Nat.cast_sub (le_of_lt x.val_lt)]
      field_simp
    unfold modularDistance
    rw [heq]
    have heq' : 1 - (1 - (x.val : ℝ) / p) = (x.val : ℝ) / p := by ring
    rw [heq', min_comm]

theorem modularDistance_sub_le (x y : ZMod p) :
    modularDistance (x - y) ≤ modularDistance x + modularDistance y := by
  simpa only [sub_eq_add_neg, modularDistance_neg] using modularDistance_add_le x (-y)

theorem modularDistance_sub_sq_le (x y : ZMod p) :
    modularDistance (x - y) ^ 2 ≤ 2 * modularDistance x ^ 2 + 2 * modularDistance y ^ 2 := by
  have h := modularDistance_sub_le x y
  have hsq := pow_le_pow_left₀ (modularDistance_nonneg (x - y)) h 2
  nlinarith [sq_nonneg (modularDistance x - modularDistance y)]

/-- Residues whose image under a frequency lies within `r` of the center. -/
noncomputable def phaseInterval (χ center : ZMod p) (r : ℝ) : Finset (ZMod p) := by
  classical
  exact Finset.univ.filter (fun x => modularDistance (χ * x - center) ≤ r)

@[simp] theorem mem_phaseInterval (χ center x : ZMod p) (r : ℝ) :
    x ∈ phaseInterval χ center r ↔ modularDistance (χ * x - center) ≤ r := by
  classical
  simp [phaseInterval]

/-- The source concentration set `D_t`, with an explicit finite center witness. -/
noncomputable def concentratedFrequencies (S : Finset (ZMod p)) (m t : ℝ) :
    Finset (ZMod p) := by
  classical
  exact Finset.univ.filter (fun χ => χ ≠ 0 ∧ ∃ center : ZMod p,
    (3 / 4 : ℝ) * S.card ≤ (S ∩ phaseInterval χ center (8 * Real.sqrt (t / m))).card)

@[simp] theorem mem_concentratedFrequencies (S : Finset (ZMod p)) (m t : ℝ) (χ : ZMod p) :
    χ ∈ concentratedFrequencies S m t ↔ χ ≠ 0 ∧ ∃ center : ZMod p,
      (3 / 4 : ℝ) * S.card ≤ (S ∩ phaseInterval χ center (8 * Real.sqrt (t / m))).card := by
  classical
  simp [concentratedFrequencies]

/-- Pair energy is at most four times the mean squared distance from any center. -/
theorem card_mul_pairEnergy_le_center_sum (S : Finset (ZMod p)) (hS : S.Nonempty)
    (χ center : ZMod p) :
    (S.card : ℝ) * pairEnergy S χ ≤
      4 * ∑ x ∈ S, modularDistance (χ * x - center) ^ 2 := by
  have hpoint (x y : ZMod p) : modularDistance (χ * (x - y)) ^ 2 ≤
      2 * modularDistance (χ * x - center) ^ 2 +
        2 * modularDistance (χ * y - center) ^ 2 := by
    have heq : χ * (x - y) = (χ * x - center) - (χ * y - center) := by ring
    rw [heq]
    exact modularDistance_sub_sq_le _ _
  have hsum : (∑ x ∈ S, ∑ y ∈ S, modularDistance (χ * (x - y)) ^ 2) ≤
      4 * (S.card : ℝ) * ∑ x ∈ S, modularDistance (χ * x - center) ^ 2 := by
    calc
      _ ≤ ∑ x ∈ S, ∑ y ∈ S,
          (2 * modularDistance (χ * x - center) ^ 2 +
            2 * modularDistance (χ * y - center) ^ 2) :=
        Finset.sum_le_sum fun x _ => Finset.sum_le_sum fun y _ => hpoint x y
      _ = _ := by
        simp only [Finset.sum_add_distrib, Finset.sum_const, nsmul_eq_mul]
        simp_rw [← Finset.mul_sum]
        ring
  have hc : (S.card : ℝ) ≠ 0 := by exact_mod_cast ne_of_gt hS.card_pos
  calc
    _ = (S.card : ℝ)⁻¹ * ∑ x ∈ S, ∑ y ∈ S,
        modularDistance (χ * (x - y)) ^ 2 := by unfold pairEnergy; field_simp
    _ ≤ (S.card : ℝ)⁻¹ *
        (4 * (S.card : ℝ) * ∑ x ∈ S, modularDistance (χ * x - center) ^ 2) :=
      mul_le_mul_of_nonneg_left hsum (by positivity)
    _ = _ := by field_simp

/-- The contribution inside the source radius `16 sqrt(t/m)` is at most
`256(t/m)|S|`. -/
theorem phaseInterval_center_sum_le (S : Finset (ZMod p)) (χ center : ZMod p)
    (m t : ℝ) (h : 0 ≤ t / m) :
    (∑ x ∈ S ∩ phaseInterval χ center (16 * Real.sqrt (t / m)),
      modularDistance (χ * x - center) ^ 2) ≤ (256 * (t / m)) * S.card := by
  have hpoint (x : ZMod p) (hx : x ∈ S ∩ phaseInterval χ center (16 * Real.sqrt (t / m))) :
      modularDistance (χ * x - center) ^ 2 ≤ 256 * (t / m) := by
    have hx' := (mem_phaseInterval _ _ _ _).mp (Finset.mem_inter.mp hx).2
    have hsq := pow_le_pow_left₀ (modularDistance_nonneg _) hx' 2
    nlinarith [Real.sq_sqrt h]
  calc
    _ ≤ ∑ _x ∈ S ∩ phaseInterval χ center (16 * Real.sqrt (t / m)), 256 * (t / m) :=
      Finset.sum_le_sum hpoint
    _ = ((S ∩ phaseInterval χ center (16 * Real.sqrt (t / m))).card : ℝ) *
        (256 * (t / m)) := by simp
    _ ≤ _ := by
      have hc : ((S ∩ phaseInterval χ center (16 * Real.sqrt (t / m))).card : ℝ) ≤ S.card :=
        by exact_mod_cast Finset.card_le_card Finset.inter_subset_left
      nlinarith

/-- A stronger form of source Lemma 3.2, with constant 244 and any center. -/
theorem tail_center_sum_ge_244 (S : Finset (ZMod p)) (hS : S.Nonempty)
    (χ center : ZMod p) (m t : ℝ) (hm : 0 < m) (ht : 0 ≤ t)
    (hE : 2000 * t ≤ m * pairEnergy S χ) :
    (244 * t / m) * S.card ≤
      ∑ x ∈ S \ phaseInterval χ center (16 * Real.sqrt (t / m)),
        modularDistance (χ * x - center) ^ 2 := by
  have hcard : (0 : ℝ) < S.card := by exact_mod_cast hS.card_pos
  have htotal := card_mul_pairEnergy_le_center_sum S hS χ center
  have htotal' : (2000 * t / m) * S.card ≤
      4 * ∑ x ∈ S, modularDistance (χ * x - center) ^ 2 := by
    have hdiv : 2000 * t / m ≤ pairEnergy S χ :=
      (div_le_iff₀ hm).mpr (by simpa only [mul_comm] using hE)
    exact (mul_le_mul_of_nonneg_right hdiv hcard.le).trans (by simpa only [mul_comm] using htotal)
  have hinside := phaseInterval_center_sum_le S χ center m t (div_nonneg ht hm.le)
  have hsplit : (∑ x ∈ S, modularDistance (χ * x - center) ^ 2) =
      (∑ x ∈ S \ phaseInterval χ center (16 * Real.sqrt (t / m)),
        modularDistance (χ * x - center) ^ 2) +
      ∑ x ∈ S ∩ phaseInterval χ center (16 * Real.sqrt (t / m)),
        modularDistance (χ * x - center) ^ 2 := by
    rw [← Finset.sum_union (Finset.disjoint_sdiff_inter S _)]
    congr 1
    ext x
    simp only [Finset.mem_union, Finset.mem_sdiff, Finset.mem_inter]
    tauto
  rw [hsplit] at htotal'
  have h1 : 2000 * t / m = 2000 * (t / m) := by ring
  have h2 : 244 * t / m = 244 * (t / m) := by ring
  rw [h1] at htotal'
  rw [h2]
  nlinarith

/-- Source Lemma 3.2, with the stated constant 200 and any center. -/
theorem tail_center_sum_ge_200 (S : Finset (ZMod p)) (hS : S.Nonempty)
    (χ center : ZMod p) (m t : ℝ) (hm : 0 < m) (ht : 0 ≤ t)
    (hE : 2000 * t ≤ m * pairEnergy S χ) :
    (200 * t / m) * S.card ≤
      ∑ x ∈ S \ phaseInterval χ center (16 * Real.sqrt (t / m)),
        modularDistance (χ * x - center) ^ 2 := by
  have h := tail_center_sum_ge_244 S hS χ center m t hm ht hE
  have hnonneg : 0 ≤ t / m := div_nonneg ht hm.le
  have hcard : (0 : ℝ) ≤ S.card := by positivity
  have hmul := mul_nonneg hnonneg hcard
  have h1 : 200 * t / m = 200 * (t / m) := by ring
  have h2 : 244 * t / m = 244 * (t / m) := by ring
  rw [h2] at h
  rw [h1]
  linarith

/-- The normalized form of the source tail bound. -/
theorem normalized_tail_center_sum_ge_200 (S : Finset (ZMod p)) (hS : S.Nonempty)
    (χ center : ZMod p) (m t : ℝ) (hm : 0 < m) (ht : 0 ≤ t)
    (hE : 2000 * t ≤ m * pairEnergy S χ) :
    200 * t ≤ (m / S.card) *
      ∑ x ∈ S \ phaseInterval χ center (16 * Real.sqrt (t / m)),
        modularDistance (χ * x - center) ^ 2 := by
  have hcard : (0 : ℝ) < S.card := by exact_mod_cast hS.card_pos
  have h := tail_center_sum_ge_200 S hS χ center m t hm ht hE
  rw [div_mul_eq_mul_div]
  apply (le_div_iff₀ hcard).mpr
  have hmul := mul_le_mul_of_nonneg_left h hm.le
  have heq : m * ((200 * t / m) * (S.card : ℝ)) = 200 * t * S.card := by
    field_simp
  rwa [heq] at hmul

/-- Source Lemma 3.2 applied to an actual member of `D_t \ B_(2000t)`.
The center is retained together with its original concentration certificate. -/
theorem exists_concentrated_center_tail (S : Finset (ZMod p)) (hS : S.Nonempty)
    (m t : ℝ) (hm : 0 < m) (ht : 0 ≤ t) (χ : ZMod p)
    (hχ : χ ∈ concentratedFrequencies S m t \ smallEnergyFrequencies S m (2000 * t)) :
    ∃ center : ZMod p,
      (3 / 4 : ℝ) * S.card ≤ (S ∩ phaseInterval χ center (8 * Real.sqrt (t / m))).card ∧
      (200 * t / m) * S.card ≤
        ∑ x ∈ S \ phaseInterval χ center (16 * Real.sqrt (t / m)),
          modularDistance (χ * x - center) ^ 2 := by
  obtain ⟨hD, hB⟩ := Finset.mem_sdiff.mp hχ
  obtain ⟨_hne, center, hc⟩ := (mem_concentratedFrequencies _ _ _ _).mp hD
  have hE : 2000 * t ≤ m * pairEnergy S χ := by
    have hnot : ¬m * pairEnergy S χ ≤ 2000 * t := by
      simpa only [mem_smallEnergyFrequencies] using hB
    exact le_of_lt (lt_of_not_ge hnot)
  exact ⟨center, hc, tail_center_sum_ge_200 S hS χ center m t hm ht hE⟩

/-- The deterministic far/near separation used in source Lemma 3.3. -/
theorem far_near_pair_distance_ge_half (χ center x y : ZMod p) (m t : ℝ)
    (hfar : x ∉ phaseInterval χ center (16 * Real.sqrt (t / m)))
    (hnear : y ∈ phaseInterval χ center (8 * Real.sqrt (t / m))) :
    modularDistance (χ * x - center) / 2 ≤ modularDistance (χ * (x - y)) := by
  have hfar' : 16 * Real.sqrt (t / m) < modularDistance (χ * x - center) := by
    exact lt_of_not_ge (by simpa only [mem_phaseInterval] using hfar)
  have hnear' := (mem_phaseInterval _ _ _ _).mp hnear
  have htri := modularDistance_add_le (χ * (x - y)) (χ * y - center)
  have heq : χ * (x - y) + (χ * y - center) = χ * x - center := by ring
  rw [heq] at htri
  linarith

/-- Squaring the far/near separation retains the precise factor `1/4`. -/
theorem far_near_pair_distance_sq_ge_quarter (χ center x y : ZMod p) (m t : ℝ)
    (hfar : x ∉ phaseInterval χ center (16 * Real.sqrt (t / m)))
    (hnear : y ∈ phaseInterval χ center (8 * Real.sqrt (t / m))) :
    modularDistance (χ * x - center) ^ 2 / 4 ≤ modularDistance (χ * (x - y)) ^ 2 := by
  have h := far_near_pair_distance_ge_half χ center x y m t hfar hnear
  have hsq := pow_le_pow_left₀
    (div_nonneg (modularDistance_nonneg _) (by norm_num) : 0 ≤ modularDistance (χ * x - center) / 2) h 2
  nlinarith

end GRWTSK.ZModConcentratedFrequencies
