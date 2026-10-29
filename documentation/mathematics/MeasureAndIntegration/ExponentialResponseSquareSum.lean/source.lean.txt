import GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt

/-!
The sharper literal diagonal estimate D(T) ≤ 2 T².
The proof uses a decreasing integer-sum comparison for the actual pickup atom.
It has no input concerning RH, Möbius cancellation, or a transform adapter.
-/

noncomputable section
open scoped BigOperators
open Set MeasureTheory

namespace EulerP04RH.SharpDiagonal

open PPNCP04

def profile (u t : ℝ) : ℝ :=
  ((Real.sqrt t)⁻¹ - Real.exp (-u / 2)) ^ 2

def profilePrimitive (u t : ℝ) : ℝ :=
  Real.log t - 4 * Real.exp (-u / 2) * Real.sqrt t +
    Real.exp (-u / 2) ^ 2 * t

theorem sqrt_exp_half (u : ℝ) : Real.sqrt (Real.exp u) = Real.exp (u / 2) := by
  have he : Real.exp u = Real.exp (u / 2) ^ 2 := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [he, Real.sqrt_sq_eq_abs, abs_of_pos (Real.exp_pos _)]

theorem profile_continuousOn {u x : ℝ} : ContinuousOn (profile u) (Icc 1 x) := by
  intro t ht
  have hs : Real.sqrt t ≠ 0 := (Real.sqrt_pos.mpr (by linarith [ht.1])).ne'
  exact (by unfold profile; fun_prop : ContinuousAt (profile u) t).continuousWithinAt

theorem profile_antitone {u : ℝ} : AntitoneOn (profile u) (Icc 1 (Real.exp u)) := by
  intro s hs t ht hst
  have hspos : 0 < Real.sqrt s := Real.sqrt_pos.mpr (by linarith [hs.1])
  have htpos : 0 < Real.sqrt t := Real.sqrt_pos.mpr (by linarith [ht.1])
  have hinv : (Real.sqrt t)⁻¹ ≤ (Real.sqrt s)⁻¹ := by
    simpa only [one_div] using
      one_div_le_one_div_of_le hspos (Real.sqrt_le_sqrt hst)
  have hendpoint : Real.exp (-u / 2) = (Real.sqrt (Real.exp u))⁻¹ := by
    rw [sqrt_exp_half, ← Real.exp_neg]
    congr 1
    ring
  have hnonneg : 0 ≤ (Real.sqrt t)⁻¹ - Real.exp (-u / 2) := by
    rw [hendpoint]
    have he := one_div_le_one_div_of_le htpos (Real.sqrt_le_sqrt ht.2)
    simp only [one_div] at he
    linarith
  unfold profile
  nlinarith

theorem profile_primitive_derivative {u t : ℝ} (ht : 0 < t) :
    HasDerivAt (profilePrimitive u) (profile u t) t := by
  have hder := ((Real.hasDerivAt_log ht.ne').sub
    ((Real.hasDerivAt_sqrt ht.ne').const_mul (4 * Real.exp (-u / 2)))).add
      ((hasDerivAt_id t).const_mul (Real.exp (-u / 2) ^ 2))
  have hsq : (Real.sqrt t)⁻¹ ^ 2 = t⁻¹ := by
    rw [inv_pow, Real.sq_sqrt ht.le]
  have hvalue : t⁻¹ - (4 * Real.exp (-u / 2)) * (1 / (2 * Real.sqrt t)) +
      Real.exp (-u / 2) ^ 2 * 1 = profile u t := by
    unfold profile
    simp only [one_div, mul_inv_rev]
    norm_num
    nlinarith [hsq]
  convert! hder using 1
  exact hvalue.symm

theorem profile_integral {u : ℝ} (hu : 0 ≤ u) :
    (∫ t in (1 : ℝ)..Real.exp u, profile u t) =
      profilePrimitive u (Real.exp u) - profilePrimitive u 1 := by
  have h1 : 1 ≤ Real.exp u := by simpa using Real.exp_le_exp.mpr hu
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt
  · intro t ht
    rw [uIcc_of_le h1] at ht
    exact profile_primitive_derivative (by linarith [ht.1])
  · exact (profile_continuousOn (u := u)).intervalIntegrable_of_Icc h1

theorem profile_endpoint_integral_bound {u : ℝ} (hu : 0 ≤ u) :
    profile u 1 + (∫ t in (1 : ℝ)..Real.exp u, profile u t) ≤ u := by
  let a := Real.exp (-u / 2)
  have ha : a ≤ 1 := by
    dsimp [a]
    simpa using Real.exp_le_exp.mpr (show -u / 2 ≤ 0 by linarith)
  have hmul : a * Real.sqrt (Real.exp u) = 1 := by
    dsimp [a]
    rw [sqrt_exp_half, ← Real.exp_add]
    rw [show -u / 2 + u / 2 = 0 by ring, Real.exp_zero]
  have hmul2 : a ^ 2 * Real.exp u = 1 := by
    calc
      _ = a ^ 2 * Real.sqrt (Real.exp u) ^ 2 := by rw [Real.sq_sqrt (Real.exp_pos u).le]
      _ = (a * Real.sqrt (Real.exp u)) ^ 2 := by ring
      _ = 1 := by rw [hmul]; norm_num
  rw [profile_integral hu]
  simp only [profile, profilePrimitive, Real.sqrt_one, inv_one, Real.log_one,
    Real.log_exp]
  change (1 - a) ^ 2 +
    (u - 4 * a * Real.sqrt (Real.exp u) + a ^ 2 * Real.exp u -
      (0 - 4 * a * 1 + a ^ 2 * 1)) ≤ u
  nlinarith [hmul, hmul2]

theorem antitone_sum_first_integral {f : ℝ → ℝ} {N : ℕ} (hN : 1 ≤ N)
    (hf : AntitoneOn f (Icc (1 : ℝ) N)) :
    (∑ n ∈ Finset.Icc 1 N, f n) ≤ f 1 + ∫ t in (1 : ℝ)..N, f t := by
  have hs := AntitoneOn.sum_le_integral_Ico (f := f) hN (by simpa using hf)
  simp only [Nat.cast_one] at hs
  have he : (∑ n ∈ Finset.Icc 1 N, f n) =
      f 1 + ∑ i ∈ Finset.Ico 1 N, f (i + 1 : ℕ) := by
    rw [← Finset.Ico_add_one_right_eq_Icc,
      Finset.sum_eq_sum_Ico_succ_bot (by omega : 1 < N + 1)]
    rw [Finset.sum_Ico_add' (fun i : ℕ => f i) 1 N 1]
    norm_num
  rw [he]
  linarith

theorem profile_integer_sum_bound {u : ℝ} (hu : 0 ≤ u) :
    (∑ n ∈ integerInventory u, profile u n) ≤ u := by
  let N := ⌊Real.exp u⌋₊
  have h1x : 1 ≤ Real.exp u := by simpa using Real.exp_le_exp.mpr hu
  have hN : 1 ≤ N := by
    apply (Nat.le_floor_iff (Real.exp_pos u).le).mpr
    simpa using h1x
  have hNle : (N : ℝ) ≤ Real.exp u := Nat.floor_le (Real.exp_pos u).le
  have h1N : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hanti : AntitoneOn (profile u) (Icc (1 : ℝ) N) :=
    profile_antitone.mono (Icc_subset_Icc_right hNle)
  have hs := antitone_sum_first_integral hN hanti
  have hif : IntervalIntegrable (profile u) volume 1 (Real.exp u) :=
    (profile_continuousOn (u := u)).intervalIntegrable_of_Icc h1x
  have hi : (∫ t in (1 : ℝ)..N, profile u t) ≤
      ∫ t in (1 : ℝ)..Real.exp u, profile u t :=
    intervalIntegral.integral_mono_interval le_rfl h1N hNle
      (Filter.Eventually.of_forall (fun t => sq_nonneg _)) hif
  exact (show (∑ n ∈ integerInventory u, profile u n) ≤
    profile u 1 + ∫ t in (1 : ℝ)..N, profile u t from hs).trans
      ((by linarith : profile u 1 + (∫ t in (1 : ℝ)..N, profile u t) ≤
        profile u 1 + (∫ t in (1 : ℝ)..Real.exp u, profile u t)).trans
          (profile_endpoint_integral_bound hu))

theorem atom_inventory_square_bound {T u : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    (∑ n ∈ integerInventory T, atom n u ^ 2) ≤ 4 * u := by
  have hsub : integerInventory u ⊆ integerInventory T := by
    intro n hn
    exact mem_integerInventory.mpr ⟨(mem_integerInventory.mp hn).1,
      (mem_integerInventory.mp hn).2.trans (Real.exp_le_exp.mpr huT)⟩
  have heq : (∑ n ∈ integerInventory u, atom n u ^ 2) =
      ∑ n ∈ integerInventory T, atom n u ^ 2 := by
    apply Finset.sum_subset hsub
    intro n hnT hnu
    have hnpos : 0 < (n : ℝ) := by exact_mod_cast (mem_integerInventory.mp hnT).1
    have hlate : ¬ Real.log (n : ℝ) ≤ u := by
      intro h
      exact hnu (mem_integerInventory.mpr ⟨(mem_integerInventory.mp hnT).1,
        (Real.log_le_iff_le_exp hnpos).mp h⟩)
    simp [atom, hlate]
  rw [← heq]
  calc
    (∑ n ∈ integerInventory u, atom n u ^ 2) =
        4 * ∑ n ∈ integerInventory u, profile u n := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      have hnpos : 0 < (n : ℝ) := by exact_mod_cast (mem_integerInventory.mp hn).1
      have hentry : Real.log (n : ℝ) ≤ u :=
        (Real.log_le_iff_le_exp hnpos).mpr (mem_integerInventory.mp hn).2
      simp only [atom, if_pos hentry, profile]
      ring
    _ ≤ 4 * u := mul_le_mul_of_nonneg_left (profile_integer_sum_bound hu) (by norm_num)

theorem diagonal_integrand_bound {T u : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    (∑ n ∈ integerInventory T, realMoebius n ^ 2 * (atom n u * atom n u)) ≤ 4 * u := by
  apply (Finset.sum_le_sum (fun n hn => ?_)).trans (atom_inventory_square_bound hu huT)
  simpa only [pow_two, one_mul] using
    mul_le_mul_of_nonneg_right (realMoebius_square_le_one n) (sq_nonneg (atom n u))

/-- Literal all-real diagonal estimate with the attachment's sharp quadratic constant. -/
theorem diagonal_le_two_mul_sq (T : ℝ) (hT : 0 ≤ T) : PPNCP04.diagonal T ≤ 2 * T ^ 2 := by
  have hi : ∀ n ∈ integerInventory T,
      IntegrableOn (fun u => realMoebius n ^ 2 * (atom n u * atom n u)) (Icc 0 T) := by
    intro n hn
    apply Continuous.integrableOn_Icc
    exact continuous_const.mul ((atom_continuous ((mem_integerInventory.mp hn).1)).mul
      (atom_continuous ((mem_integerInventory.mp hn).1)))
  have hs : IntegrableOn
      (fun u => ∑ n ∈ integerInventory T, realMoebius n ^ 2 * (atom n u * atom n u))
      (Icc 0 T) := integrable_finsetSum _ hi
  have hc : IntegrableOn (fun u : ℝ => 4 * u) (Icc 0 T) :=
    (by fun_prop : Continuous (fun u : ℝ => 4 * u)).integrableOn_Icc
  have he : PPNCP04.diagonal T = ∫ u in Icc 0 T,
      ∑ n ∈ integerInventory T, realMoebius n ^ 2 * (atom n u * atom n u) := by
    rw [integral_finsetSum _ hi]
    unfold PPNCP04.diagonal gram
    apply Finset.sum_congr rfl
    intro n hn
    exact (integral_const_mul _ _).symm
  rw [he]
  calc
    (∫ u in Icc 0 T, ∑ n ∈ integerInventory T,
      realMoebius n ^ 2 * (atom n u * atom n u)) ≤ ∫ u in Icc 0 T, 4 * u :=
        setIntegral_mono_on hs hc measurableSet_Icc
          (fun u hu => diagonal_integrand_bound hu.1 hu.2)
    _ = 2 * T ^ 2 := by
      rw [integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hT,
        intervalIntegral.integral_const_mul, integral_id]
      ring

end EulerP04RH.SharpDiagonal

#print axioms EulerP04RH.SharpDiagonal.profile_integer_sum_bound
#print axioms EulerP04RH.SharpDiagonal.atom_inventory_square_bound
#print axioms EulerP04RH.SharpDiagonal.diagonal_le_two_mul_sq
