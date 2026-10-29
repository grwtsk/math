/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Real.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# A quantitatively separated point in a unit interval

K forbidden records cannot block K+1 spaced midpoint candidates. Repeated
record values are allowed. The selected point has clearance 1/(4(K+1)) and
endpoint clearance twice that. Perturbation bounds and cutoff stability are
proved separately. No numerical enumeration or analytic counting estimate is
encoded. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Real.FiniteIntervalSeparation

noncomputable section

/-- Positive even when the forbidden family is empty. -/
def clearance (K : ℕ) : ℝ := 1 / (4 * ((K : ℝ) + 1))

/-- Midpoints of K+1 equal cells in the same unit interval. -/
def gridPoint (a : ℝ) (K : ℕ) (j : Fin (K + 1)) : ℝ :=
  a + ((j.val : ℝ) + 1 / 2) / ((K : ℝ) + 1)

theorem clearance_pos (K : ℕ) : 0 < clearance K := by
  unfold clearance
  positivity

theorem clearance_le_quarter (K : ℕ) : clearance K ≤ 1 / 4 := by
  unfold clearance
  have hK := Nat.cast_nonneg (α := ℝ) K
  apply (div_le_div_iff₀ (by positivity) (by norm_num)).mpr
  nlinarith

theorem gridPoint_sub (a : ℝ) (K : ℕ) (i j : Fin (K + 1)) :
    gridPoint a K j - gridPoint a K i =
      ((j.val : ℝ) - (i.val : ℝ)) / ((K : ℝ) + 1) := by
  unfold gridPoint
  ring

theorem gridPoint_gap (a : ℝ) (K : ℕ) (i j : Fin (K + 1)) (hij : i.val < j.val) :
    4 * clearance K ≤ gridPoint a K j - gridPoint a K i := by
  have hcast : (i.val : ℝ) + 1 ≤ (j.val : ℝ) := by
    exact_mod_cast (Nat.succ_le_iff.mpr hij)
  rw [gridPoint_sub]
  have heq : 4 * clearance K = 1 / ((K : ℝ) + 1) := by
    unfold clearance
    have hK : (K : ℝ) + 1 ≠ 0 := by positivity
    field_simp [hK]
  rw [heq]
  exact div_le_div_of_nonneg_right (by linarith) (by positivity)

theorem gridPoint_bounds (a : ℝ) (K : ℕ) (j : Fin (K + 1)) :
    a + 2 * clearance K ≤ gridPoint a K j ∧
      gridPoint a K j ≤ a + 1 - 2 * clearance K := by
  have hK : 0 < (K : ℝ) + 1 := by positivity
  have hj0 := Nat.cast_nonneg (α := ℝ) j.val
  have hjK : (j.val : ℝ) ≤ (K : ℝ) := by
    exact_mod_cast (Nat.le_of_lt_succ j.isLt)
  constructor
  · calc
      a + 2 * clearance K = a + (1 / 2) / ((K : ℝ) + 1) := by
        unfold clearance
        field_simp [hK.ne']
        ring
      _ ≤ gridPoint a K j := by
        unfold gridPoint
        exact add_le_add_right (div_le_div_of_nonneg_right (by linarith) hK.le) a
  · calc
      gridPoint a K j ≤ a + ((K : ℝ) + 1 / 2) / ((K : ℝ) + 1) := by
        unfold gridPoint
        exact add_le_add_right (div_le_div_of_nonneg_right (by linarith) hK.le) a
      _ = a + 1 - 2 * clearance K := by
        unfold clearance
        field_simp [hK.ne']
        ring

/-- A single forbidden value cannot block two candidates. -/
theorem close_gridPoint_unique (a y : ℝ) (K : ℕ) (i j : Fin (K + 1))
    (hi : |gridPoint a K i - y| < clearance K)
    (hj : |gridPoint a K j - y| < clearance K) : i = j := by
  rcases lt_trichotomy i.val j.val with hij | hij | hij
  · have hgap := gridPoint_gap a K i j hij
    have hpos := clearance_pos K
    rcases abs_lt.mp hi with ⟨hi₁, hi₂⟩
    rcases abs_lt.mp hj with ⟨hj₁, hj₂⟩
    linarith
  · exact Fin.ext hij
  · have hgap := gridPoint_gap a K j i hij
    have hpos := clearance_pos K
    rcases abs_lt.mp hi with ⟨hi₁, hi₂⟩
    rcases abs_lt.mp hj with ⟨hj₁, hj₂⟩
    linarith

/-- The finite pigeonhole argument constructs a quantitatively unblocked grid point. -/
theorem exists_clear_gridPoint {ι : Type*} [Fintype ι] (a : ℝ) (v : ι → ℝ) :
    ∃ j : Fin (Fintype.card ι + 1),
      ∀ i : ι, clearance (Fintype.card ι) ≤ |gridPoint a (Fintype.card ι) j - v i| := by
  classical
  by_contra h
  push Not at h
  choose blocker hblocker using h
  have hinj : Function.Injective blocker := by
    intro i j hij
    apply close_gridPoint_unique a (v (blocker i)) (Fintype.card ι) i j (hblocker i)
    simpa only [hij] using hblocker j
  have hc := Fintype.card_le_of_injective blocker hinj
  simp only [Fintype.card_fin] at hc
  omega

/-- Finite records need not have distinct values; no source record is erased. -/
theorem exists_interval_clearance {ι : Type*} (S : Finset ι) (v : ι → ℝ) (a : ℝ) :
    ∃ H : ℝ, a + 2 * clearance S.card ≤ H ∧
      H ≤ a + 1 - 2 * clearance S.card ∧
      ∀ i ∈ S, clearance S.card ≤ |H - v i| := by
  classical
  have hcard : Fintype.card {i // i ∈ S} = S.card :=
    Fintype.card_of_subtype S (fun _ => Iff.rfl)
  obtain ⟨j, hj⟩ := exists_clear_gridPoint a (fun i : {i // i ∈ S} => v i.val)
  refine ⟨gridPoint a (Fintype.card {i // i ∈ S}) j, ?_, ?_, ?_⟩
  · simpa only [hcard] using (gridPoint_bounds a _ j).1
  · simpa only [hcard] using (gridPoint_bounds a _ j).2
  · intro i hi
    simpa only [hcard] using hj ⟨i, hi⟩

/-- Any certified perturbation spends exactly its error allowance from the clearance. -/
theorem clearance_after_perturbation (H t y δ η : ℝ)
    (hclear : δ ≤ |H - y|) (herr : |t - H| ≤ η) : δ - η ≤ |t - y| := by
  have htri := abs_sub_le H t y
  rw [abs_sub_comm H t] at htri
  linarith

/-- With error strictly below the gap, the closed-cutoff decision is unchanged. -/
theorem cutoff_stable (H t y δ η : ℝ) (hclear : δ ≤ |H - y|)
    (herr : |t - H| ≤ η) (hη : η < δ) : (y ≤ t ↔ y ≤ H) := by
  rcases abs_le.mp herr with ⟨hlo, hhi⟩
  by_cases hy : y ≤ H
  · rw [abs_of_nonneg (sub_nonneg.mpr hy)] at hclear
    have hyt : y ≤ t := by linarith
    exact iff_of_true hyt hy
  · have hHy : H < y := lt_of_not_ge hy
    rw [abs_of_nonpos (sub_nonpos.mpr hHy.le)] at hclear
    have hty : t < y := by linarith
    exact iff_of_false (not_le_of_gt hty) hy

end
end GRWTSK.Analysis.Real.FiniteIntervalSeparation
