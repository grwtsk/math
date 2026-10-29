/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.PrimeBlockEnergy
import GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth

/-! Horizon-matched complete blocks and their signed scale innovation.
Intermediate prefix energies are not individually bounded. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set Real
open scoped BigOperators

def recordingPrimeBlock (T : ℝ) : Finset ℕ := pickupPrimes (2*T) \ pickupPrimes T

def recordingEcho (T : ℝ) : ℝ → ℝ := primeBlockEcho (pickupPrimes T) (recordingPrimeBlock T)

theorem pickupPrimes_mono : Monotone pickupPrimes := by
  intro S T hST p hp
  rcases Finset.mem_filter.mp hp with ⟨hp, hprime⟩
  rcases Finset.mem_Icc.mp hp with ⟨hp1, hpS⟩
  exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
    ⟨hp1, hpS.trans (Nat.floor_mono (exp_le_exp.mpr hST))⟩, hprime⟩

theorem recordingPrimeBlock_delay {T : ℝ} {p : ℕ} (hp : p ∈ recordingPrimeBlock T) :
    T < log p := by
  rcases Finset.mem_sdiff.mp hp with ⟨hbig, hsmall⟩
  have hprime := (Finset.mem_filter.mp hbig).2
  by_contra! h
  exact hsmall (Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
    ⟨hprime.one_le, (pickup_log_le_iff_closed_cutoff hprime.one_le T).mp h⟩, hprime⟩)

theorem recordingPrimeBlock_primes (T : ℝ) : ∀ p ∈ recordingPrimeBlock T, p.Prime :=
  fun _ hp ↦ (Finset.mem_filter.mp (Finset.mem_sdiff.mp hp).1).2

theorem recordingPrimeBlock_union {T : ℝ} (hT : 0 ≤ T) :
    pickupPrimes T ∪ recordingPrimeBlock T = pickupPrimes (2*T) :=
  Finset.union_sdiff_of_subset (pickupPrimes_mono (by linarith))

/-- All block echoes look back only into the already complete shorter recording. -/
theorem recordingEcho_eq_actual {T u : ℝ} (hu : u ≤ 2*T) :
    recordingEcho T u =
      ∑ p ∈ recordingPrimeBlock T, (sqrt p)⁻¹ * causalShift (log p) wholePickup u := by
  unfold recordingEcho primeBlockEcho
  apply Finset.sum_congr rfl
  intro p hp
  congr 1
  unfold causalShift
  split_ifs with h
  · symm
    exact pickup_eq_prime_note_cascade (by linarith)
      (by linarith [recordingPrimeBlock_delay hp])
  · rfl

/-- Exact large-prime echo subtraction on the doubled recording window. -/
theorem pickup_eq_recording_core_sub_echo {T u : ℝ} (hu : 0 ≤ u) (huT : u ≤ 2*T)
    (hT : 0 ≤ T) : wholePickup u = primeNoteCascade (pickupPrimes T) u - recordingEcho T u := by
  rw [pickup_eq_prime_note_cascade hu huT, ← recordingPrimeBlock_union hT]
  apply cascade_union_eq_sub_echo (fun _ hp ↦ (Finset.mem_filter.mp hp).2)
    (recordingPrimeBlock_primes T)
    (Finset.disjoint_left.mpr (fun p hp hpb ↦ (Finset.mem_sdiff.mp hpb).2 hp)) huT
  intro p hp q hq _
  linarith [recordingPrimeBlock_delay hp, recordingPrimeBlock_delay hq]

def recordingInnovation (T : ℝ) : ℝ :=
  noteEnergy (primeNoteCascade (pickupPrimes T)) (2*T) - pickupEnergy T +
    noteEnergy (recordingEcho T) (2*T) -
      2 * ∫ u in (0:ℝ)..2*T, primeNoteCascade (pickupPrimes T) u * recordingEcho T u

/-- Both large terms and their signed cancellation remain in the exact innovation. -/
theorem pickupEnergy_double_eq {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy (2*T) = pickupEnergy T + recordingInnovation T := by
  have h := energy_after_causal_block (P := pickupPrimes T) (B := recordingPrimeBlock T)
    (fun _ hp ↦ (Finset.mem_filter.mp hp).2)
    (recordingPrimeBlock_primes T)
    (Finset.disjoint_left.mpr (fun p hp hpb ↦ (Finset.mem_sdiff.mp hpb).2 hp))
    (show 0 ≤ 2*T by linarith) (fun p hp q hq _ ↦ by
      linarith [recordingPrimeBlock_delay hp, recordingPrimeBlock_delay hq])
  rw [recordingPrimeBlock_union hT, ← pickupEnergy_eq_cascade_energy (by linarith : 0 ≤ 2*T)] at h
  unfold recordingInnovation recordingEcho
  linarith

theorem recordingInnovation_nonneg {T : ℝ} (hT : 0 ≤ T) : 0 ≤ recordingInnovation T := by
  have hm := pickupEnergy_mono hT (by linarith : T ≤ 2*T)
  rw [pickupEnergy_double_eq hT] at hm
  linarith

/-- Open net block estimate. It prices the complete signed cancellation at each
recording scale rather than every intermediate prime state. -/
def RecordingScaleBound (C : ℝ) (r : ℕ) : Prop :=
  ∀ T : ℝ, 1 ≤ T → recordingInnovation T ≤
    ((2:ℝ)^(r+1)-1) * pickupEnergy T + C * (2:ℝ)^r * T^r

theorem recordingScale_compensated {C : ℝ} {r : ℕ} (h : RecordingScaleBound C r)
    {T : ℝ} (hT : 1 ≤ T) :
    pickupEnergy (2*T) + C*(2*T)^r ≤
      (2:ℝ)^(r+1) * (pickupEnergy T + C*T^r) := by
  have hb := h T hT
  rw [pow_succ] at hb
  rw [pickupEnergy_double_eq (by linarith)]
  rw [mul_pow, pow_succ]
  nlinarith only [hb]

private theorem recordingScale_dyadic {C : ℝ} {r : ℕ} (h : RecordingScaleBound C r) :
    ∀ n : ℕ, pickupEnergy ((2:ℝ)^n) + C*((2:ℝ)^n)^r ≤
      (pickupEnergy 1+C) * ((2:ℝ)^n)^(r+1) := by
  intro n
  induction n with
  | zero => simp
  | succ n ih =>
    have hn : (1:ℝ) ≤ 2^n := one_le_pow₀ (by norm_num)
    have hs := recordingScale_compensated h hn
    calc
      _ ≤ (2:ℝ)^(r+1) * (pickupEnergy ((2:ℝ)^n) + C*((2:ℝ)^n)^r) := by
        simpa only [pow_succ, mul_comm] using hs
      _ ≤ (2:ℝ)^(r+1) * ((pickupEnergy 1+C)*((2:ℝ)^n)^(r+1)) :=
        mul_le_mul_of_nonneg_left ih (by positivity)
      _ = _ := by rw [pow_succ (2:ℝ) n, mul_pow]; ring

/-- A complete net innovation budget suffices for polynomial energy and RH.
Every real horizon is included; finitely many dyadic samples do not suffice. -/
theorem pickupEnergyPoly_of_recordingScaleBound {C : ℝ} {r : ℕ}
    (hC : 0 ≤ C) (h : RecordingScaleBound C r) : PickupEnergyPoly := by
  let D := pickupEnergy 1+C
  have hE1 : 0 ≤ pickupEnergy 1 := pickupEnergy_nonneg (by norm_num)
  have hD : 0 ≤ D := add_nonneg hE1 hC
  refine ⟨D*(2:ℝ)^(r+1), (r+1:ℕ), by positivity, by positivity, ?_⟩
  intro T hT
  rw [Real.rpow_natCast]
  by_cases hsmall : T ≤ 1
  · have hm := pickupEnergy_mono hT hsmall
    have hb : (1:ℝ) ≤ (1+T)^(r+1) := one_le_pow₀ (by linarith)
    have htwo : (1:ℝ) ≤ 2^(r+1) := one_le_pow₀ (by norm_num)
    have hc : pickupEnergy 1 ≤ D := by dsimp [D]; linarith
    calc
      _ ≤ D := hm.trans hc
      _ ≤ D*(2:ℝ)^(r+1) := by nlinarith
      _ ≤ D*(2:ℝ)^(r+1)*(1+T)^(r+1) := by nlinarith [mul_nonneg hD (by positivity : 0 ≤ (2:ℝ)^(r+1))]
  · have hT1 : 1 < T := lt_of_not_ge hsmall
    have hl2 : 0 < log (2:ℝ) := log_pos (by norm_num)
    have hratio : 0 ≤ log T/log 2 := div_nonneg (log_nonneg hT1.le) hl2.le
    let n := ⌈log T/log 2⌉₊
    have hnlow : log T ≤ (n:ℝ)*log 2 := by
      exact (div_le_iff₀ hl2).mp (Nat.le_ceil (log T/log 2))
    have hnup : (n:ℝ)*log 2 ≤ log T+log 2 := by
      have hc := (Nat.ceil_lt_add_one hratio).le
      have hm := mul_le_mul_of_nonneg_right hc hl2.le
      rw [add_mul, div_mul_cancel₀ _ hl2.ne', one_mul] at hm
      exact hm
    have hp : (2:ℝ)^n = exp ((n:ℝ)*log 2) := by
      rw [← Real.rpow_natCast, Real.rpow_def_of_pos (by norm_num)]
      congr 1
      ring
    have hlow : T ≤ (2:ℝ)^n := by
      rw [hp, ← exp_log (by linarith : 0 < T)]
      exact exp_le_exp.mpr hnlow
    have hupp : (2:ℝ)^n ≤ 2*T := by
      rw [hp]
      calc
        _ ≤ exp (log T+log 2) := exp_le_exp.mpr hnup
        _ = _ := by rw [exp_add, exp_log (by linarith : 0 < T), exp_log (by norm_num)]; ring
    have hd := recordingScale_dyadic h n
    have hnC : 0 ≤ C*((2:ℝ)^n)^r := by positivity
    have hm := pickupEnergy_mono hT hlow
    have hpw := pow_le_pow_left₀ (by positivity : 0 ≤ (2:ℝ)^n)
      (hupp.trans (by linarith : 2*T ≤ 2*(1+T))) (r+1)
    calc
      _ ≤ D*((2:ℝ)^n)^(r+1) := by dsimp [D]; linarith
      _ ≤ D*(2*(1+T))^(r+1) := mul_le_mul_of_nonneg_left hpw hD
      _ = _ := by rw [mul_pow]; ring

theorem riemannHypothesis_of_recordingScaleBound {C : ℝ} {r : ℕ}
    (hC : 0 ≤ C) (h : RecordingScaleBound C r) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupEnergyPoly (pickupEnergyPoly_of_recordingScaleBound hC h)

/-- The new supplier does not impose an extra uniform-prefix conjecture:
existence of its constants is exactly the already stated polynomial frontier. -/
theorem exists_recordingScaleBound_iff_energyPoly :
    (∃ C : ℝ, ∃ r : ℕ, 0 ≤ C ∧ RecordingScaleBound C r) ↔ PickupEnergyPoly := by
  constructor
  · rintro ⟨C,r,hC,h⟩
    exact pickupEnergyPoly_of_recordingScaleBound hC h
  · rintro ⟨A,q,hA,_,hb⟩
    let r := ⌈q⌉₊
    let C := A*(3:ℝ)^r
    refine ⟨C,r,by positivity,?_⟩
    intro T hT
    have hT0 : 0 ≤ T := by linarith
    have hE := pickupEnergy_nonneg hT0
    have hI : recordingInnovation T ≤ pickupEnergy (2*T) := by
      rw [pickupEnergy_double_eq hT0]
      linarith
    have hq : (1+2*T)^q ≤ (1+2*T)^(r:ℝ) :=
      Real.rpow_le_rpow_of_exponent_le (by linarith) (Nat.le_ceil q)
    rw [Real.rpow_natCast] at hq
    have hp := pow_le_pow_left₀ (by linarith : 0 ≤ 1+2*T)
      (show 1+2*T ≤ 3*T by linarith) r
    have hmain : recordingInnovation T ≤ C*T^r := by
      calc
        _ ≤ pickupEnergy (2*T) := hI
        _ ≤ A*(1+2*T)^q := hb (2*T) (by linarith)
        _ ≤ A*(1+2*T)^r := mul_le_mul_of_nonneg_left hq hA
        _ ≤ A*(3*T)^r := mul_le_mul_of_nonneg_left hp hA
        _ = _ := by rw [mul_pow]; dsimp [C]; ring
    have hC : 0 ≤ C := by positivity
    have h2 : (1:ℝ) ≤ 2^r := one_le_pow₀ (by norm_num)
    have h2' : (1:ℝ) ≤ 2^(r+1) := one_le_pow₀ (by norm_num)
    have hcost : C*T^r ≤ C*(2:ℝ)^r*T^r := by
      nlinarith [mul_nonneg hC (pow_nonneg hT0 r)]
    have hbase : 0 ≤ ((2:ℝ)^(r+1)-1)*pickupEnergy T :=
      mul_nonneg (by linarith) hE
    exact hmain.trans (by linarith)

theorem exists_recordingScaleBound_iff_p04 :
    (∃ C : ℝ, ∃ r : ℕ, 0 ≤ C ∧ RecordingScaleBound C r) ↔ PickupCrossPoly :=
  exists_recordingScaleBound_iff_energyPoly.trans pickupCrossPoly_iff_pickupEnergyPoly.symm

end GRWTSK.RiemannHypothesis.CCC
