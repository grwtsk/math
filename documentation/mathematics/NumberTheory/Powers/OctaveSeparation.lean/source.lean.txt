/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Status: candidate proof source; not elaborated in the pinned environment.
-/
import Mathlib

/-! # A fixed base contributes at most one power to (X,2X]

Primality is unnecessary for this separation fact. Its application to the
original Mangoldt inventory additionally uses uniqueness of the prime base.
The binomial/Chebyshev estimates in the accompanying note are not postulated here.
-/
set_option autoImplicit false
namespace GRWTSK.NumberTheory.PrimeCounting.OctaveBaseSeparation

theorem one_le_power (p k : ℕ) (hp : 1≤p) : 1≤p^k := by
  induction k with
  | zero => simp
  | succ k ih =>
    rw [pow_succ]
    nlinarith

theorem two_le_positive_power (p k : ℕ) (hp : 2≤p) (hk : 0<k) : 2≤p^k := by
  cases k with
  | zero => omega
  | succ k =>
    rw [pow_succ]
    have h := one_le_power p k (by omega)
    nlinarith

theorem later_power_at_least_double (p k l : ℕ) (hp : 2≤p) (hkl : k<l) :
    2*p^k≤p^l := by
  have hd : 0<l-k := Nat.sub_pos_of_lt hkl
  have hpow := two_le_positive_power p (l-k) hp hd
  have he : k+(l-k)=l := by omega
  rw [← he, pow_add]
  nlinarith

/-- Strict lower and closed upper endpoints are both required. -/
theorem exponent_unique (X p k l : ℕ) (hp : 2≤p)
    (hklo : X<p^k) (hkhi : p^k≤2*X)
    (hllo : X<p^l) (hlhi : p^l≤2*X) : k=l := by
  rcases lt_trichotomy k l with h|h|h
  · have hd := later_power_at_least_double p k l hp h
    omega
  · exact h
  · have hd := later_power_at_least_double p l k hp h
    omega

/-- A boundary power belongs to exactly the preceding octave. -/
theorem lower_endpoint_excluded (X p k : ℕ) (h : p^k=X) : ¬ X<p^k := by omega

theorem upper_endpoint_allowed (X : ℕ) (hX : 0<X) : X<2*X ∧ 2*X≤2*X := by omega

end GRWTSK.NumberTheory.PrimeCounting.OctaveBaseSeparation
