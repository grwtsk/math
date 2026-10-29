/-
Copyright (c) 2026 grwtsk contributors. MIT.
Elliptic curve and 32 rational points: Noam Elkies, Zev Klagsbrun,
Samuel Li (ICARM #4239, 2026-10-15).
Quadratic-character/Legendre theorems are from Mathlib, including
Michael Stoll's finite-field quadratic character construction;
upstream authorship and license are retained.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Do not confuse a character on finite residue units with a homomorphism
from the global elliptic-curve point group. The latter is not defined here.
-/
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239FiniteCharacterMatrix
import Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic
import Mathlib.GroupTheory.QuotientGroup.Basic

/-!
# A genuine finite residue quadratic character for record #4239

For any prime p, Mathlib's quadraticChar on F_p is multiplicative,
takes values in {-1,1} on F_p^×, and annihilates unit squares.
Converting the sign to ZMod 2 gives a group homomorphism

    (ZMod p)ˣ ->* Multiplicative (ZMod 2)

which factors through the genuine quotient by unit squares

    (ZMod p)ˣ / ((ZMod p)ˣ)^2.

For the source-labelled 32x32 residue table we distinguish:
  (a) X(P_i)-theta_j when it is nonzero modulo p_j;
  (b) f'(theta_j) when X(P_i)=theta_j modulo p_j.

The selected roots have nonzero derivative, so both branches are units.
The finite 1024 table and Euler residues were independently replayed,
but their equality to the Mathlib quotient-character evaluation has
NOT yet been kernel-checked. It is retained as a named open comparison,
not introduced as an axiom or theorem in this module.

The missing arithmetic-to-local port is more than a naive ring reduction
of every global square class: denominators and even valuations matter.
No global-to-residue group map is assumed to exist here.
-/

set_option autoImplicit false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

/-- Encode the sign of a nonzero quadratic character as a bit.
The construction is used only when its input has been shown to be ±1. -/
private def signBit (z : ℤ) : ZMod 2 :=
  if z = -1 then 1 else 0

/-- Exact sign multiplication in the group {+1,-1}, not a claim about
an arbitrary integer. -/
private theorem signBit_mul (a b : ℤ)
    (ha : a = 1 ∨ a = -1) (hb : b = 1 ∨ b = -1) :
    signBit (a * b) = signBit a + signBit b := by
  rcases ha with rfl | rfl <;> rcases hb with rfl | rfl <;>
    decide

/-- A bona fide quadratic *homomorphism* on finite-field units.
This result uses Mathlib's imported quadratic character multiplicativity. -/
noncomputable def residueUnitBitHom (p : ℕ) [Fact p.Prime] :
    (ZMod p)ˣ →* Multiplicative (ZMod 2) where
  toFun u :=
    Multiplicative.ofAdd (signBit (quadraticChar (ZMod p) (u : ZMod p)))
  map_one' := by
    change Multiplicative.ofAdd
      (signBit (quadraticChar (ZMod p) (1 : ZMod p))) = 1
    simp [signBit]
  map_mul' u v := by
    change Multiplicative.ofAdd
        (signBit (quadraticChar (ZMod p) ((u * v : (ZMod p)ˣ) : ZMod p))) =
      Multiplicative.ofAdd (signBit (quadraticChar (ZMod p) (u : ZMod p))) *
      Multiplicative.ofAdd (signBit (quadraticChar (ZMod p) (v : ZMod p)))
    have hu : quadraticChar (ZMod p) (u : ZMod p) = 1 ∨
        quadraticChar (ZMod p) (u : ZMod p) = -1 :=
      quadraticChar_dichotomy (Units.ne_zero u)
    have hv : quadraticChar (ZMod p) (v : ZMod p) = 1 ∨
        quadraticChar (ZMod p) (v : ZMod p) = -1 :=
      quadraticChar_dichotomy (Units.ne_zero v)
    calc
      Multiplicative.ofAdd
          (signBit (quadraticChar (ZMod p) ((u * v : (ZMod p)ˣ) : ZMod p))) =
        Multiplicative.ofAdd
          (signBit (quadraticChar (ZMod p) (u : ZMod p) *
            quadraticChar (ZMod p) (v : ZMod p))) := by
              simp only [Units.val_mul, map_mul]
      _ = Multiplicative.ofAdd
          (signBit (quadraticChar (ZMod p) (u : ZMod p)) +
            signBit (quadraticChar (ZMod p) (v : ZMod p))) :=
          congrArg Multiplicative.ofAdd (signBit_mul _ _ hu hv)
      _ = _ := rfl

/-- ZMod 2 has exponent two as an additive group. -/
private theorem two_smul_zmod_two (b : ZMod 2) : (2 : ℕ) • b = 0 := by
  fin_cases b <;> decide

/-- In particular the residue quadratic character annihilates each
square of a unit. This makes the square-class quotient map legal. -/
theorem residueUnitBitHom_square (p : ℕ) [Fact p.Prime]
    (u : (ZMod p)ˣ) : residueUnitBitHom p (u ^ 2) = 1 := by
  apply Multiplicative.toAdd.injective
  rw [map_pow]
  change (2 : ℕ) • (residueUnitBitHom p u).toAdd = 0
  exact two_smul_zmod_two _

/-- The actual quotient group of finite residue units modulo squares.
It is not the global elliptic Selmer group or its étale algebra. -/
abbrev ResidueSquareClasses (p : ℕ) [Fact p.Prime] : Type :=
  (ZMod p)ˣ ⧸ (powMonoidHom (α := (ZMod p)ˣ) 2).range

/-- The quadratic bit homomorphism descends to genuine finite square classes.
The only imported group-theoretic fact is quotient lifting through the kernel. -/
noncomputable def residueSquareClassBitHom (p : ℕ) [Fact p.Prime] :
    ResidueSquareClasses p →* Multiplicative (ZMod 2) :=
  QuotientGroup.lift (powMonoidHom (α := (ZMod p)ˣ) 2).range
    (residueUnitBitHom p) (by
      intro u hu
      change residueUnitBitHom p u = 1
      obtain ⟨v, rfl⟩ := hu
      exact residueUnitBitHom_square p v)

/-- The quotient character agrees with the unit character on classes
represented by a unit. -/
theorem residueSquareClassBitHom_mk (p : ℕ) [Fact p.Prime]
    (u : (ZMod p)ˣ) :
    residueSquareClassBitHom p
      ((QuotientGroup.mk' (powMonoidHom (α := (ZMod p)ˣ) 2).range) u) =
        residueUnitBitHom p u := by
  rfl

/-- The exact integer to be reduced for the source entry (point i,
character j). At an exceptional zero reduction use the simple-root
derivative, NEVER assign the character of zero. -/
def sourceLocalInteger (j i : Fin 32) : ℤ :=
  let p : ℤ := primeLabel j
  let theta : ℤ := rootLabel j
  let delta : ℤ := (shortXInt i - theta) % p
  if delta = 0 then 3 * theta ^ 2 + shortA else delta

/-- Both the ordinary and the exceptional branch have nonzero residue.
The exceptional branch consumes the previously checked simple-root
condition rootLabels_valid, not a supplied nonzero witness. -/
theorem sourceLocalInteger_mod_ne_zero (j i : Fin 32) :
    sourceLocalInteger j i % (primeLabel j : ℤ) ≠ 0 := by
  dsimp [sourceLocalInteger]
  split_ifs with h
  · exact (rootLabels_valid j).2
  · simpa only [Int.emod_emod] using h

/-- The integer entry thus represents an actual finite-field unit. -/
theorem sourceLocalInteger_cast_ne_zero (j i : Fin 32) :
    (sourceLocalInteger j i : ZMod (primeLabel j)) ≠ 0 := by
  intro hz
  apply sourceLocalInteger_mod_ne_zero j i
  exact Int.emod_eq_zero_of_dvd
    ((ZMod.intCast_zmod_eq_zero_iff_dvd (sourceLocalInteger j i)
      (primeLabel j)).mp hz)

/-- Every selected point/root pair is carried to a genuine residue-field
unit, with the exceptional derivative explicitly retained. -/
noncomputable def sourceLocalUnit (j i : Fin 32) :
    (ZMod (primeLabel j))ˣ := by
  letI : Fact (Nat.Prime (primeLabel j)) :=
    ⟨(primeLabels_valid j).1⟩
  exact Units.mk0 (sourceLocalInteger j i : ZMod (primeLabel j))
    (sourceLocalInteger_cast_ne_zero j i)

/-- The actual Mathlib quadratic bit of each source-local unit.
Its equality to the existing finite Euler-character bit table is a
separate, explicit remaining finite source-comparison obligation. -/
noncomputable def sourceQuadraticBit (j i : Fin 32) : ZMod 2 := by
  letI : Fact (Nat.Prime (primeLabel j)) :=
    ⟨(primeLabels_valid j).1⟩
  exact (residueUnitBitHom (primeLabel j) (sourceLocalUnit j i)).toAdd

/-- The exact finite source comparison still requiring a proof under
the pinned toolchain. A predicate rather than an axiom or theorem. -/
def SourceBitsMatch : Prop :=
  ∀ j i : Fin 32, sourceQuadraticBit j i = characterMatrix i j

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
