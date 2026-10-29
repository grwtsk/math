/-
Copyright (c) 2026 grwtsk contributors. MIT.
Elliptic-curve construction: Noam D. Elkies, Zev Klagsbrun, Samuel Li,
ICARM elliptic curve rank leaderboard #4239 (October 2026).
Integral rational-root theorem: imported from Mathlib (Anne Baanen et al.).
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This module proves, subject to Lean elaboration, a coordinate-level
no-fixed-point result. It does NOT construct an elliptic curve group,
prove a character homomorphism or establish Mordell–Weil rank.
-/
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239FiniteCharacterMatrix
import Mathlib.RingTheory.Polynomial.RationalRoot

/-!
# ICARM #4239: obstruction to rational two-torsion

The record is y² + xy = x³ - A*x + B. Its genuine elliptic negation on
affine coordinates is (x,y) ↦ (x,-y-x). The absence of rational points
fixed by this involution supplies the arithmetic half of injectivity of
doubling. The remaining group-theoretic port must use Mathlib's actual
nonsingular Weierstrass point group, not a supplied group law.

The short-model change is X=36*x+3, Y=108*(2*y+x).
The short cubic X³+a*X+b reduces modulo 7 to X³+3 and has no root.
By the integral rational-root theorem, it therefore has no rational root.
-/

set_option maxRecDepth 16384
set_option maxHeartbeats 0

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

open Polynomial

/-- Actual monic cubic for the integral short Weierstrass model. -/
noncomputable def shortCubic : ℤ[X] := X ^ 3 + C shortA * X + C shortB

theorem shortCubic_monic : shortCubic.Monic := by
  unfold shortCubic
  monicity!

/-- Exact finite obstruction. This is stronger and cheaper than computing
an entire rational torsion subgroup or a regulator. -/
theorem shortCubic_noRoot_modSeven :
    ∀ t : ZMod 7,
      t ^ 3 + (shortA : ZMod 7) * t + (shortB : ZMod 7) ≠ 0 := by
  decide

/-- Reduction of an integer root would contradict the seven-element check. -/
theorem shortCubic_noIntegerRoot (z : ℤ) :
    z ^ 3 + shortA * z + shortB ≠ 0 := by
  intro hz
  have hcast :
      (z : ZMod 7) ^ 3 + (shortA : ZMod 7) * (z : ZMod 7) +
          (shortB : ZMod 7) = 0 := by
    simpa using congrArg (fun w : ℤ => (w : ZMod 7)) hz
  exact shortCubic_noRoot_modSeven (z : ZMod 7) hcast

/-- Imported integral rational-root theorem plus the local finite obstruction.
This is unconditional arithmetic, not a Mordell-Weil assertion. -/
theorem shortCubic_noRationalRoot (q : ℚ) :
    q ^ 3 + (shortA : ℚ) * q + (shortB : ℚ) ≠ 0 := by
  intro hq
  have hroot : Polynomial.aeval q shortCubic = 0 := by
    simpa [shortCubic] using hq
  obtain ⟨z, hzcast, _⟩ :=
    exists_integer_of_is_root_of_monic (A := ℤ) (K := ℚ)
      shortCubic_monic hroot
  have hcast : ((z ^ 3 + shortA * z + shortB : ℤ) : ℚ) = 0 := by
    rw [hzcast] at hq
    simpa using hq
  have hz : z ^ 3 + shortA * z + shortB = 0 := by
    exact_mod_cast hcast
  exact shortCubic_noIntegerRoot z hz

private theorem shortA_relation :
    shortA = -27 * (1 + 48 * A) := by
  norm_num [shortA, A]

private theorem shortB_relation :
    shortB = 54 * (1 + 72 * A + 864 * B) := by
  norm_num [shortB, A, B]

/-- Exact, reversible-for-affine-points arithmetic identity for the published
record model, without assuming that a supplied law preserves addition.
This direction suffices for excluding the order-two fixed locus. -/
theorem shortEquation_of_record
    (x y : ℚ) (h : OnRecordModel x y) :
    (108 * (2 * y + x)) ^ 2 =
      (36 * x + 3) ^ 3 +
      (shortA : ℚ) * (36 * x + 3) + (shortB : ℚ) := by
  have hbase :
      y ^ 2 + x * y - x ^ 3 + (A : ℚ) * x - (B : ℚ) = 0 := by
    dsimp [OnRecordModel] at h
    linear_combination h
  have hA : (shortA : ℚ) = -27 * (1 + 48 * (A : ℚ)) := by
    exact_mod_cast shortA_relation
  have hB : (shortB : ℚ) = 54 * (1 + 72 * (A : ℚ) + 864 * (B : ℚ)) := by
    exact_mod_cast shortB_relation
  have hidentity :
      (108 * (2 * y + x)) ^ 2 -
          ((36 * x + 3) ^ 3 +
            (shortA : ℚ) * (36 * x + 3) + (shortB : ℚ)) =
        46656 * (y ^ 2 + x * y - x ^ 3 + (A : ℚ) * x - (B : ℚ)) := by
    rw [hA, hB]
    ring
  apply sub_eq_zero.mp
  calc
    (108 * (2 * y + x)) ^ 2 -
        ((36 * x + 3) ^ 3 +
          (shortA : ℚ) * (36 * x + 3) + (shortB : ℚ)) =
        46656 * (y ^ 2 + x * y - x ^ 3 + (A : ℚ) * x - (B : ℚ)) := hidentity
    _ = 0 := by rw [hbase]; ring

/-- The potential rational two-torsion affine locus on the actual record
model is empty: y = -y-x cannot hold at any rational solution. This is the
exact coordinate condition consumed by the native point-negation port. -/
theorem noRationalAffineNegationFixedPoint
    (x y : ℚ) (h : OnRecordModel x y) :
    y ≠ -y - x := by
  intro hfixed
  have hvertical : 2 * y + x = 0 := by
    linear_combination hfixed
  have hshort := shortEquation_of_record x y h
  have hzero :
      (36 * x + 3) ^ 3 +
          (shortA : ℚ) * (36 * x + 3) + (shortB : ℚ) = 0 := by
    simpa [hvertical] using hshort.symm
  exact shortCubic_noRationalRoot (36 * x + 3) hzero

/-- Equivalent vertical-tangent formulation, independent of the group law. -/
theorem noRationalVerticalTangency
    (x y : ℚ) (h : OnRecordModel x y) :
    2 * y + x ≠ 0 := by
  intro hz
  apply noRationalAffineNegationFixedPoint x y h
  linear_combination hz

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
