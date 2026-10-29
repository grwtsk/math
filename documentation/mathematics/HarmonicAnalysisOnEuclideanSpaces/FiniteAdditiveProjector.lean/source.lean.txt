/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex. Mathlib's canonical standard additive
character and its orthogonality theorem retain Apache-2.0 licensing and their
upstream attribution. This module proves exact finite identities only. -/
import Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar

set_option autoImplicit false

namespace GRWTSK.Analysis.Fourier.FiniteAdditiveProjector

open scoped BigOperators

/-- The normalized finite average of the canonical complex additive character
on `ZMod q`, with the full frequency set retained. -/
noncomputable def characterAverage (q : ℕ) [NeZero q] (x : ZMod q) : ℂ :=
  (q : ℂ)⁻¹ * ∑ k : ZMod q, ZMod.stdAddChar (k * x)

/-- Canonical additive-character orthogonality, with the normalization factor
explicit. No integer equality is inferred from equality modulo `q` here. -/
theorem characterAverage_eq_indicator (q : ℕ) [NeZero q] (x : ZMod q) :
    characterAverage q x = if x = 0 then 1 else 0 := by
  unfold characterAverage
  rw [AddChar.sum_mulShift x (ZMod.isPrimitive_stdAddChar q)]
  simp only [ZMod.card]
  by_cases hx : x = 0
  · rw [if_pos hx, if_pos hx]
    exact inv_mul_cancel₀ (Nat.cast_ne_zero.mpr (NeZero.ne q))
  · simp only [if_neg hx, Nat.cast_zero, mul_zero]

/-- The finite Fourier projector for the unscaled additive equation. Natural
numbers are cast individually before subtraction, so this uses ring subtraction
in `ZMod q`, rather than truncated natural-number subtraction. -/
noncomputable def characterProjector (q : ℕ) [NeZero q] (u v w : ℕ) : ℂ :=
  characterAverage q ((u : ZMod q) + (v : ZMod q) - (w : ZMod q))

/-- The explicit full-frequency formula for the projector. -/
theorem characterProjector_eq_average (q : ℕ) [NeZero q] (u v w : ℕ) :
    characterProjector q u v w =
      (q : ℂ)⁻¹ * ∑ k : ZMod q,
        ZMod.stdAddChar (k * ((u : ZMod q) + (v : ZMod q) - (w : ZMod q))) :=
  rfl

/-- Without a no-wrap bound the projector asserts exactly a modular additive
equation. This statement contains no lift from modular to integer equality. -/
theorem characterProjector_eq_modular_indicator (q : ℕ) [NeZero q] (u v w : ℕ) :
    characterProjector q u v w =
      if (u : ZMod q) + (v : ZMod q) = (w : ZMod q) then 1 else 0 := by
  simpa only [characterProjector, sub_eq_zero] using
    characterAverage_eq_indicator q ((u : ZMod q) + (v : ZMod q) - (w : ZMod q))

/-- Congruence becomes exact equality when both sides lie strictly below the
modulus. The left side is cast before subtracting. -/
theorem nat_add_sub_eq_zero_iff_of_lt {q u v w : ℕ}
    (hsum : u + v < q) (hw : w < q) :
    (u : ZMod q) + (v : ZMod q) - (w : ZMod q) = 0 ↔ u + v = w := by
  rw [sub_eq_zero, ← Nat.cast_add, ZMod.natCast_eq_natCast_iff']
  simp only [Nat.mod_eq_of_lt hsum, Nat.mod_eq_of_lt hw]

/-- Positive coordinates in the closed cube `1..M`, together with `2*M < q`,
exclude modular wraparound for the unscaled equation `u + v = w`. -/
theorem nat_add_sub_eq_zero_iff_of_noWrap {q M u v w : ℕ}
    (hq : 2 * M < q) (hu : u ∈ Finset.Icc 1 M) (hv : v ∈ Finset.Icc 1 M)
    (hw : w ∈ Finset.Icc 1 M) :
    (u : ZMod q) + (v : ZMod q) - (w : ZMod q) = 0 ↔ u + v = w := by
  obtain ⟨_, huM⟩ := Finset.mem_Icc.mp hu
  obtain ⟨_, hvM⟩ := Finset.mem_Icc.mp hv
  obtain ⟨_, hwM⟩ := Finset.mem_Icc.mp hw
  exact nat_add_sub_eq_zero_iff_of_lt (by omega) (by omega)

/-- The normalized character projector is the exact additive indicator on the
declared closed cube under the explicit no-wrap bound `2*M < q`. -/
theorem characterProjector_eq_indicator_of_noWrap {q M u v w : ℕ} [NeZero q]
    (hq : 2 * M < q) (hu : u ∈ Finset.Icc 1 M) (hv : v ∈ Finset.Icc 1 M)
    (hw : w ∈ Finset.Icc 1 M) :
    characterProjector q u v w = if u + v = w then 1 else 0 := by
  unfold characterProjector
  rw [characterAverage_eq_indicator]
  simp only [nat_add_sub_eq_zero_iff_of_noWrap hq hu hv hw]

end GRWTSK.Analysis.Fourier.FiniteAdditiveProjector
