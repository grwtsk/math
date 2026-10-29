module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreePartialSummation
public import Surface.Core.ConductorThreeCriticalPredicates
import Mathlib.Tactic

/-!
# Critical bounds through conductor-three partial summation

The exact Abel identities are upgraded here to the two critical estimates.
The reverse kernel cancels both logarithms and leaves an inverse-square-root
sum, bounded explicitly by a telescoping square-root argument.
-/

public section

namespace Surface.Core.ConductorThreePartialSummationBounds

noncomputable section

open scoped BigOperators
open Surface.Core.ConductorThreeCriticalPredicates
open Surface.Core.ConductorThreePartialSummation
open Surface.Core.ConductorThreePrimePowerRemoval

private lemma log_increment_nonneg (n : ℕ) :
    0 ≤ Real.log (n + 1 : ℕ) - Real.log n := by
  cases n with
  | zero => simp
  | succ n =>
      rw [sub_nonneg]
      apply Real.log_le_log
      · positivity
      · norm_num

private lemma sum_log_increment (N : ℕ) :
    (∑ n ∈ Finset.range N,
      (Real.log (n + 1 : ℕ) - Real.log n)) = Real.log N := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      push_cast
      ring_nf

private lemma residueDifferenceCriticalRate_mono
    {m n : ℕ} (hm : 1 ≤ m) (hmn : m ≤ n) :
    residueDifferenceCriticalRate m ≤ residueDifferenceCriticalRate n := by
  have hsqrt : Real.sqrt (m : ℝ) ≤ Real.sqrt (n : ℝ) := by
    apply Real.sqrt_le_sqrt
    exact_mod_cast hmn
  have hlog : Real.log (m : ℝ) ≤ Real.log (n : ℝ) := by
    apply Real.log_le_log
    · exact_mod_cast (show 0 < m by omega)
    · exact_mod_cast hmn
  have hsqrt0 : 0 ≤ Real.sqrt (m : ℝ) := Real.sqrt_nonneg _
  have hlog0 : 0 ≤ Real.log (m : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hm)
  unfold residueDifferenceCriticalRate
  exact mul_le_mul hsqrt hlog hlog0 (Real.sqrt_nonneg _)

private lemma twistedPsiCriticalRate_eq_residue_mul_log (n : ℕ) :
    twistedPsiCriticalRate n =
      residueDifferenceCriticalRate n * Real.log n := by
  unfold twistedPsiCriticalRate residueDifferenceCriticalRate
  ring

private def earlyPrimeMass (x₀ : ℕ) : ℝ :=
  ∑ n ∈ Finset.range x₀, |primeCharacterPartialSum n|

private lemma earlyPrimeMass_nonneg (x₀ : ℕ) : 0 ≤ earlyPrimeMass x₀ := by
  unfold earlyPrimeMass
  positivity

private lemma abs_primePartial_le_earlyPrimeMass
    {n x₀ : ℕ} (hn : n < x₀) :
    |primeCharacterPartialSum n| ≤ earlyPrimeMass x₀ := by
  unfold earlyPrimeMass
  exact Finset.single_le_sum
    (s := Finset.range x₀)
    (f := fun k ↦ |primeCharacterPartialSum k|)
    (fun _ _ ↦ abs_nonneg _) (Finset.mem_range.2 hn)

private theorem theta_bound_of_prime_bound
    {C : ℝ} {x₀ : ℕ} (hC : 0 ≤ C) (hx₀ : 2 ≤ x₀)
    (hA : ∀ x : ℕ, x₀ ≤ x →
      |primeCharacterPartialSum x| ≤ C * residueDifferenceCriticalRate x) :
    ∀ N : ℕ, max x₀ 3 ≤ N →
      |conductorThreeTheta N| ≤
        (2 * (C + earlyPrimeMass x₀)) * twistedPsiCriticalRate N := by
  intro N hN
  have hx₀N : x₀ ≤ N := (le_max_left _ _).trans hN
  have h3N : 3 ≤ N := (le_max_right _ _).trans hN
  have hRate1 : 1 ≤ residueDifferenceCriticalRate N :=
    one_le_residueDifferenceCriticalRate h3N
  have hRate0 : 0 ≤ residueDifferenceCriticalRate N := le_trans (by norm_num) hRate1
  have hLog0 : 0 ≤ Real.log (N : ℝ) :=
    Real.log_nonneg (by exact_mod_cast (show 1 ≤ N by omega))
  have hEarly0 : 0 ≤ earlyPrimeMass x₀ := earlyPrimeMass_nonneg x₀
  have hUniform : ∀ n : ℕ, n < N →
      |primeCharacterPartialSum n| ≤
        (C + earlyPrimeMass x₀) * residueDifferenceCriticalRate N := by
    intro n hnN
    by_cases hn : x₀ ≤ n
    · have hmain := hA n hn
      have hmono := residueDifferenceCriticalRate_mono
        (show 1 ≤ n by omega) (Nat.le_of_lt hnN)
      calc
        |primeCharacterPartialSum n| ≤
            C * residueDifferenceCriticalRate n := hmain
        _ ≤ C * residueDifferenceCriticalRate N :=
          mul_le_mul_of_nonneg_left hmono hC
        _ ≤ (C + earlyPrimeMass x₀) * residueDifferenceCriticalRate N := by
          nlinarith
    · have hearly := abs_primePartial_le_earlyPrimeMass (Nat.lt_of_not_ge hn)
      calc
        |primeCharacterPartialSum n| ≤ earlyPrimeMass x₀ := hearly
        _ ≤ earlyPrimeMass x₀ * residueDifferenceCriticalRate N := by
          nlinarith
        _ ≤ (C + earlyPrimeMass x₀) * residueDifferenceCriticalRate N := by
          nlinarith
  rw [conductorThreeTheta_eq_abel]
  calc
    |primeCharacterPartialSum N * Real.log N -
        ∑ n ∈ Finset.range N,
          primeCharacterPartialSum n *
            (Real.log (n + 1) - Real.log n)| ≤
        |primeCharacterPartialSum N * Real.log N| +
          |∑ n ∈ Finset.range N,
            primeCharacterPartialSum n *
              (Real.log (n + 1) - Real.log n)| := abs_sub _ _
    _ ≤ C * residueDifferenceCriticalRate N * Real.log N +
          (C + earlyPrimeMass x₀) * residueDifferenceCriticalRate N *
            Real.log N := by
      gcongr
      · rw [abs_mul, abs_of_nonneg hLog0]
        exact mul_le_mul_of_nonneg_right (hA N hx₀N) hLog0
      · calc
          |∑ n ∈ Finset.range N,
              primeCharacterPartialSum n *
                (Real.log (n + 1) - Real.log n)| ≤
              ∑ n ∈ Finset.range N,
                |primeCharacterPartialSum n *
                  (Real.log (n + 1) - Real.log n)| :=
            Finset.abs_sum_le_sum_abs _ _
          _ ≤ ∑ n ∈ Finset.range N,
                ((C + earlyPrimeMass x₀) *
                  residueDifferenceCriticalRate N) *
                    (Real.log (n + 1) - Real.log n) := by
            apply Finset.sum_le_sum
            intro n hn
            have hdelta :
                0 ≤ Real.log ((n : ℝ) + 1) - Real.log (n : ℝ) := by
              simpa only [Nat.cast_add, Nat.cast_one] using
                log_increment_nonneg n
            rw [abs_mul, abs_of_nonneg hdelta]
            exact mul_le_mul_of_nonneg_right
              (hUniform n (Finset.mem_range.1 hn)) hdelta
          _ = (C + earlyPrimeMass x₀) *
                residueDifferenceCriticalRate N * Real.log N := by
            rw [← Finset.mul_sum]
            have hsum :
                (∑ i ∈ Finset.range N,
                  (Real.log ((i : ℝ) + 1) - Real.log (i : ℝ))) =
                    Real.log (N : ℝ) := by
              simpa only [Nat.cast_add, Nat.cast_one] using
                sum_log_increment N
            rw [hsum]
    _ ≤ (2 * (C + earlyPrimeMass x₀)) *
          twistedPsiCriticalRate N := by
      rw [twistedPsiCriticalRate_eq_residue_mul_log]
      have : 0 ≤ residueDifferenceCriticalRate N * Real.log N :=
        mul_nonneg hRate0 hLog0
      nlinarith

private lemma log_increment_le_inv_nat {n : ℕ} (hn : 1 ≤ n) :
    Real.log (n + 1 : ℕ) - Real.log n ≤ ((n : ℝ))⁻¹ := by
  have hnpos : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hnne : (n : ℝ) ≠ 0 := ne_of_gt hnpos
  have hsuccpos : 0 < ((n + 1 : ℕ) : ℝ) := by positivity
  have hsuccne : ((n + 1 : ℕ) : ℝ) ≠ 0 := ne_of_gt hsuccpos
  rw [← Real.log_div hsuccne hnne]
  calc
    Real.log (((n + 1 : ℕ) : ℝ) / (n : ℝ)) ≤
        (((n + 1 : ℕ) : ℝ) / (n : ℝ)) - 1 :=
      Real.log_le_sub_one_of_pos (div_pos hsuccpos hnpos)
    _ = ((n : ℝ))⁻¹ := by
      push_cast
      field_simp
      ring

private lemma reciprocalLog_sub_nonneg {n : ℕ} (hn : 2 ≤ n) :
    0 ≤ reciprocalLog n - reciprocalLog (n + 1) := by
  have hlogn : 0 < Real.log (n : ℝ) :=
    Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hmono : Real.log (n : ℝ) ≤ Real.log ((n + 1 : ℕ) : ℝ) := by
    apply Real.log_le_log
    · positivity
    · exact_mod_cast (Nat.le_succ n)
  unfold reciprocalLog
  rw [sub_nonneg]
  exact inv_anti₀ hlogn hmono

/-- The exact reciprocal-log Abel kernel cancels both logarithms in the
critical theta rate, leaving an inverse square-root summand. -/
private lemma criticalRate_mul_reciprocalKernel_le_invSqrt
    {n : ℕ} (hn : 2 ≤ n) :
    twistedPsiCriticalRate n *
        (reciprocalLog n - reciprocalLog (n + 1)) ≤
      (Real.sqrt (n : ℝ))⁻¹ := by
  let a : ℝ := Real.log (n : ℝ)
  let b : ℝ := Real.log ((n + 1 : ℕ) : ℝ)
  have hnpos : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have ha : 0 < a := Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hb : 0 < b := Real.log_pos (by exact_mod_cast (show 1 < n + 1 by omega))
  have hab : a ≤ b := by
    apply Real.log_le_log
    · positivity
    · exact_mod_cast (Nat.le_succ n)
  have hdelta0 : 0 ≤ b - a := sub_nonneg.2 hab
  have hdelta : b - a ≤ (n : ℝ)⁻¹ := by
    simpa only [a, b] using log_increment_le_inv_nat (show 1 ≤ n by omega)
  have hden : a ^ 2 ≤ a * b := by
    nlinarith
  have hkernel : a⁻¹ - b⁻¹ ≤ (n : ℝ)⁻¹ / (a ^ 2) := by
    rw [inv_sub_inv ha.ne' hb.ne']
    exact div_le_div₀ (inv_nonneg.2 hnpos.le) hdelta
      (sq_pos_of_pos ha) hden
  have hrate0 : 0 ≤ twistedPsiCriticalRate n :=
    twistedPsiCriticalRate_nonneg (show 1 ≤ n by omega)
  calc
    twistedPsiCriticalRate n *
        (reciprocalLog n - reciprocalLog (n + 1)) =
        twistedPsiCriticalRate n * (a⁻¹ - b⁻¹) := by
      rfl
    _ ≤ twistedPsiCriticalRate n * ((n : ℝ)⁻¹ / (a ^ 2)) :=
      mul_le_mul_of_nonneg_left hkernel hrate0
    _ = (Real.sqrt (n : ℝ))⁻¹ := by
      have hsqrtpos : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hnpos
      unfold twistedPsiCriticalRate a
      calc
        Real.sqrt (n : ℝ) * Real.log (n : ℝ) ^ 2 *
            ((n : ℝ)⁻¹ / Real.log (n : ℝ) ^ 2) =
            Real.sqrt (n : ℝ) * (n : ℝ)⁻¹ := by
          have hlogne : Real.log (n : ℝ) ≠ 0 := by
            simpa only [a] using ha.ne'
          field_simp [hlogne]
        _ = (Real.sqrt (n : ℝ))⁻¹ := by
          let r : ℝ := Real.sqrt (n : ℝ)
          have hr : 0 < r := by exact hsqrtpos
          have hr2 : r * r = (n : ℝ) := by
            exact Real.mul_self_sqrt hnpos.le
          change r * (n : ℝ)⁻¹ = r⁻¹
          rw [← hr2]
          field_simp [hr.ne']

private lemma invSqrt_le_three_mul_sqrt_increment
    {n : ℕ} (hn : 1 ≤ n) :
    (Real.sqrt (n : ℝ))⁻¹ ≤
      3 * (Real.sqrt ((n + 1 : ℕ) : ℝ) - Real.sqrt (n : ℝ)) := by
  let a : ℝ := Real.sqrt (n : ℝ)
  let b : ℝ := Real.sqrt ((n + 1 : ℕ) : ℝ)
  have hnpos : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have ha : 0 < a := Real.sqrt_pos.2 hnpos
  have ha2 : a ^ 2 = (n : ℝ) := Real.sq_sqrt hnpos.le
  have hb2 : b ^ 2 = ((n + 1 : ℕ) : ℝ) := Real.sq_sqrt (by positivity)
  have hab : a ≤ b := by
    exact Real.sqrt_le_sqrt (by exact_mod_cast (Nat.le_succ n))
  have hdelta0 : 0 ≤ b - a := sub_nonneg.2 hab
  have hb_le : b ≤ 2 * a := by
    rw [Real.sqrt_le_left (by positivity)]
    calc
      ((n + 1 : ℕ) : ℝ) ≤ 4 * (n : ℝ) := by
        exact_mod_cast (show n + 1 ≤ 4 * n by omega)
      _ = (2 * a) ^ 2 := by rw [← ha2]; ring
  have hsum : b + a ≤ 3 * a := by nlinarith
  have hfactor : (b - a) * (b + a) = 1 := by
    calc
      (b - a) * (b + a) = b ^ 2 - a ^ 2 := by ring
      _ = ((n + 1 : ℕ) : ℝ) - (n : ℝ) := by rw [hb2, ha2]
      _ = 1 := by push_cast; ring
  change a⁻¹ ≤ 3 * (b - a)
  rw [← one_div]
  apply (div_le_iff₀ ha).2
  calc
    1 = (b - a) * (b + a) := hfactor.symm
    _ ≤ (b - a) * (3 * a) :=
      mul_le_mul_of_nonneg_left hsum hdelta0
    _ = 3 * (b - a) * a := by ring

private lemma sum_sqrt_increment_range (N : ℕ) :
    (∑ n ∈ Finset.range N,
      (Real.sqrt ((n + 1 : ℕ) : ℝ) - Real.sqrt (n : ℝ))) =
        Real.sqrt (N : ℝ) := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      push_cast
      ring

private lemma sum_invSqrt_Ico_le {N : ℕ} (hN : 2 ≤ N) :
    (∑ n ∈ Finset.Ico 2 N, (Real.sqrt (n : ℝ))⁻¹) ≤
      3 * Real.sqrt (N : ℝ) := by
  calc
    (∑ n ∈ Finset.Ico 2 N, (Real.sqrt (n : ℝ))⁻¹) ≤
        ∑ n ∈ Finset.Ico 2 N,
          3 * (Real.sqrt ((n + 1 : ℕ) : ℝ) - Real.sqrt (n : ℝ)) := by
      apply Finset.sum_le_sum
      intro n hnMem
      exact invSqrt_le_three_mul_sqrt_increment
        (show 1 ≤ n by have := (Finset.mem_Ico.1 hnMem).1; omega)
    _ = 3 * (Real.sqrt (N : ℝ) - Real.sqrt (2 : ℝ)) := by
      rw [← Finset.mul_sum, Finset.sum_Ico_eq_sub _ hN,
        sum_sqrt_increment_range, sum_sqrt_increment_range]
      ring_nf
    _ ≤ 3 * Real.sqrt (N : ℝ) := by
      nlinarith [Real.sqrt_nonneg (2 : ℝ)]

private def earlyThetaKernelMass (x₀ : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico 2 x₀,
    |conductorThreeTheta n| *
      (reciprocalLog n - reciprocalLog (n + 1))

private lemma earlyThetaKernelMass_nonneg (x₀ : ℕ) :
    0 ≤ earlyThetaKernelMass x₀ := by
  unfold earlyThetaKernelMass
  apply Finset.sum_nonneg
  intro n hn
  exact mul_nonneg (abs_nonneg _) <|
    reciprocalLog_sub_nonneg (Finset.mem_Ico.1 hn).1

private theorem prime_bound_of_theta_bound
    {C : ℝ} {x₀ : ℕ} (hC : 0 ≤ C) (hx₀ : 2 ≤ x₀)
    (hTheta : ∀ x : ℕ, x₀ ≤ x →
      |conductorThreeTheta x| ≤ C * twistedPsiCriticalRate x) :
    ∀ N : ℕ, max x₀ 3 ≤ N →
      |primeCharacterPartialSum N| ≤
        (4 * C + earlyThetaKernelMass x₀) *
          residueDifferenceCriticalRate N := by
  intro N hN
  have hx₀N : x₀ ≤ N := (le_max_left _ _).trans hN
  have h3N : 3 ≤ N := (le_max_right _ _).trans hN
  have h2N : 2 ≤ N := by omega
  have hlog : 0 < Real.log (N : ℝ) :=
    Real.log_pos (by exact_mod_cast (show 1 < N by omega))
  have hlog1 : 1 ≤ Real.log (N : ℝ) := by
    rw [← Real.exp_le_exp, Real.exp_log (by positivity)]
    exact le_trans Real.exp_one_lt_three.le (by exact_mod_cast h3N)
  have hsqrt0 : 0 ≤ Real.sqrt (N : ℝ) := Real.sqrt_nonneg _
  have hRate1 : 1 ≤ residueDifferenceCriticalRate N :=
    one_le_residueDifferenceCriticalRate h3N
  have hEarly0 : 0 ≤ earlyThetaKernelMass x₀ :=
    earlyThetaKernelMass_nonneg x₀
  have hBoundary :
      |conductorThreeTheta N * reciprocalLog N| ≤
        C * residueDifferenceCriticalRate N := by
    calc
      |conductorThreeTheta N * reciprocalLog N| =
          |conductorThreeTheta N| * (Real.log (N : ℝ))⁻¹ := by
        rw [abs_mul]
        unfold reciprocalLog
        rw [abs_inv, abs_of_pos hlog]
      _ ≤ (C * twistedPsiCriticalRate N) *
          (Real.log (N : ℝ))⁻¹ :=
        mul_le_mul_of_nonneg_right (hTheta N hx₀N) (inv_nonneg.2 hlog.le)
      _ = C * residueDifferenceCriticalRate N := by
        rw [twistedPsiCriticalRate_eq_residue_mul_log]
        field_simp [hlog.ne']
  have hTailTerm : ∀ n ∈ Finset.Ico x₀ N,
      |conductorThreeTheta n *
        (reciprocalLog n - reciprocalLog (n + 1))| ≤
          C * (Real.sqrt (n : ℝ))⁻¹ := by
    intro n hnMem
    have hx₀n : x₀ ≤ n := (Finset.mem_Ico.1 hnMem).1
    have h2n : 2 ≤ n := hx₀.trans hx₀n
    have hkernel0 := reciprocalLog_sub_nonneg h2n
    rw [abs_mul, abs_of_nonneg hkernel0]
    calc
      |conductorThreeTheta n| *
          (reciprocalLog n - reciprocalLog (n + 1)) ≤
          (C * twistedPsiCriticalRate n) *
            (reciprocalLog n - reciprocalLog (n + 1)) :=
        mul_le_mul_of_nonneg_right (hTheta n hx₀n) hkernel0
      _ = C * (twistedPsiCriticalRate n *
            (reciprocalLog n - reciprocalLog (n + 1))) := by ring
      _ ≤ C * (Real.sqrt (n : ℝ))⁻¹ :=
        mul_le_mul_of_nonneg_left
          (criticalRate_mul_reciprocalKernel_le_invSqrt h2n) hC
  have hTail :
      (∑ n ∈ Finset.Ico x₀ N,
        |conductorThreeTheta n *
          (reciprocalLog n - reciprocalLog (n + 1))|) ≤
        3 * C * Real.sqrt (N : ℝ) := by
    calc
      (∑ n ∈ Finset.Ico x₀ N,
        |conductorThreeTheta n *
          (reciprocalLog n - reciprocalLog (n + 1))|) ≤
          ∑ n ∈ Finset.Ico x₀ N,
            C * (Real.sqrt (n : ℝ))⁻¹ := by
        exact Finset.sum_le_sum hTailTerm
      _ ≤ ∑ n ∈ Finset.Ico 2 N,
            C * (Real.sqrt (n : ℝ))⁻¹ := by
        apply Finset.sum_le_sum_of_subset_of_nonneg
        · intro n hnMem
          exact Finset.mem_Ico.2
            ⟨hx₀.trans (Finset.mem_Ico.1 hnMem).1,
              (Finset.mem_Ico.1 hnMem).2⟩
        · intro n hnFull hnTail
          exact mul_nonneg hC (inv_nonneg.2 (Real.sqrt_nonneg _))
      _ = C * (∑ n ∈ Finset.Ico 2 N,
            (Real.sqrt (n : ℝ))⁻¹) := by
        rw [Finset.mul_sum]
      _ ≤ C * (3 * Real.sqrt (N : ℝ)) :=
        mul_le_mul_of_nonneg_left (sum_invSqrt_Ico_le h2N) hC
      _ = 3 * C * Real.sqrt (N : ℝ) := by ring
  have hSum :
      |∑ n ∈ Finset.Ico 2 N,
        conductorThreeTheta n *
          (reciprocalLog n - reciprocalLog (n + 1))| ≤
        earlyThetaKernelMass x₀ +
          3 * C * Real.sqrt (N : ℝ) := by
    calc
      |∑ n ∈ Finset.Ico 2 N,
        conductorThreeTheta n *
          (reciprocalLog n - reciprocalLog (n + 1))| ≤
          ∑ n ∈ Finset.Ico 2 N,
            |conductorThreeTheta n *
              (reciprocalLog n - reciprocalLog (n + 1))| :=
        Finset.abs_sum_le_sum_abs _ _
      _ = earlyThetaKernelMass x₀ +
          ∑ n ∈ Finset.Ico x₀ N,
            |conductorThreeTheta n *
              (reciprocalLog n - reciprocalLog (n + 1))| := by
        rw [← Finset.sum_Ico_consecutive _ hx₀ hx₀N]
        congr 1
        unfold earlyThetaKernelMass
        apply Finset.sum_congr rfl
        intro n hnMem
        rw [abs_mul, abs_of_nonneg <|
          reciprocalLog_sub_nonneg (Finset.mem_Ico.1 hnMem).1]
      _ ≤ earlyThetaKernelMass x₀ +
          3 * C * Real.sqrt (N : ℝ) :=
        add_le_add (le_refl _) hTail
  rw [primeCharacterPartialSum_eq_inverseAbel h2N]
  calc
    |conductorThreeTheta N * reciprocalLog N +
        ∑ n ∈ Finset.Ico 2 N,
          conductorThreeTheta n *
            (reciprocalLog n - reciprocalLog (n + 1))| ≤
        |conductorThreeTheta N * reciprocalLog N| +
          |∑ n ∈ Finset.Ico 2 N,
            conductorThreeTheta n *
              (reciprocalLog n - reciprocalLog (n + 1))| :=
      abs_add_le _ _
    _ ≤ C * residueDifferenceCriticalRate N +
        (earlyThetaKernelMass x₀ +
          3 * C * Real.sqrt (N : ℝ)) := add_le_add hBoundary hSum
    _ ≤ (4 * C + earlyThetaKernelMass x₀) *
          residueDifferenceCriticalRate N := by
      have hsqrt_le_rate : Real.sqrt (N : ℝ) ≤
          residueDifferenceCriticalRate N := by
        unfold residueDifferenceCriticalRate
        nlinarith
      have hEarlyAbsorb : earlyThetaKernelMass x₀ ≤
          earlyThetaKernelMass x₀ * residueDifferenceCriticalRate N := by
        nlinarith
      have hTailAbsorb : 3 * C * Real.sqrt (N : ℝ) ≤
          3 * C * residueDifferenceCriticalRate N := by
        exact mul_le_mul_of_nonneg_left hsqrt_le_rate
          (mul_nonneg (by norm_num) hC)
      calc
        C * residueDifferenceCriticalRate N +
            (earlyThetaKernelMass x₀ + 3 * C * Real.sqrt (N : ℝ)) ≤
            C * residueDifferenceCriticalRate N +
              (earlyThetaKernelMass x₀ * residueDifferenceCriticalRate N +
                3 * C * residueDifferenceCriticalRate N) :=
          add_le_add (le_refl _) (add_le_add hEarlyAbsorb hTailAbsorb)
        _ = (4 * C + earlyThetaKernelMass x₀) *
            residueDifferenceCriticalRate N := by ring

theorem twistedThetaCriticalBound_iff_primeCharacterCriticalBound :
    TwistedThetaCriticalBound ↔ PrimeCharacterCriticalBound := by
  constructor
  · rintro ⟨C, hC, x₀, hx₀, hTheta⟩
    refine ⟨4 * C + earlyThetaKernelMass x₀, ?_, max x₀ 3,
      by omega, ?_⟩
    · exact add_nonneg (mul_nonneg (by norm_num) hC)
        (earlyThetaKernelMass_nonneg x₀)
    · intro x hx
      simpa [primeCharacterPartialSum] using
        prime_bound_of_theta_bound hC hx₀ hTheta x hx
  · rintro ⟨C, hC, x₀, hx₀, hPrime⟩
    refine ⟨2 * (C + earlyPrimeMass x₀), ?_, max x₀ 3,
      by omega, ?_⟩
    · exact mul_nonneg (by norm_num) <|
        add_nonneg hC (earlyPrimeMass_nonneg x₀)
    · intro x hx
      apply theta_bound_of_prime_bound hC hx₀
        (fun n hn ↦ ?_) x hx
      simpa [primeCharacterPartialSum] using hPrime n hn

end

end Surface.Core.ConductorThreePartialSummationBounds
