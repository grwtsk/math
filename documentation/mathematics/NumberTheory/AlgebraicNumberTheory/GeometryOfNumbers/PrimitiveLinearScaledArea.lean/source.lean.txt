/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.GeometryOfNumbers.PrimitiveLinearUnimodularFrame
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.LinearAlgebra.CrossProduct
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Anisotropic area of the primitive linear-kernel frame

The integral frame from `PrimitiveLinearUnimodularFrame` is scaled by the
three independent box lengths `X,Y,Z`.  Its cross product is exactly

`(-a/(YZ), -b/(ZX), c/(XY))`.

Consequently the squared parallelogram area is

`((aX)^2 + (bY)^2 + (cZ)^2) / (XYZ)^2`.

This exposes the coefficient-height denominator
`max(aX,bY,cZ)` without replacing the lopsided box by a cube.  It is the
algebraic covolume normalization needed by a future finite lattice-point
argument.  No Blichfeldt, Minkowski, reduced-basis, successive-minima, or
Heath--Brown counting theorem is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #427. Draft PR: #429.
-/

namespace GRWTSK.GeometryOfNumbers.PrimitiveLinearScaledArea

open Matrix
open scoped Matrix
open GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount
open GRWTSK.GeometryOfNumbers.PrimitiveLinearUnimodularFrame

noncomputable section

/-- Cast an integer three-vector to a real three-vector. -/
def castIntVector (vector : Fin 3 → ℤ) : Fin 3 → ℝ :=
  fun i => (vector i : ℝ)

/-- Divide the three coordinates by the independent box lengths. -/
def anisotropicScale (data : Data) (vector : Fin 3 → ℝ) : Fin 3 → ℝ :=
  ![vector 0 / data.X, vector 1 / data.Y, vector 2 / data.Z]

/-- First scaled kernel vector. -/
def scaledFirstVector (data : Data) : Fin 3 → ℝ :=
  anisotropicScale data (castIntVector (firstKernelVector data))

/-- Second scaled kernel vector. -/
def scaledSecondVector (data : Data) : Fin 3 → ℝ :=
  anisotropicScale data (castIntVector (secondKernelVector data))

/-- Exact target of the scaled cross product. -/
def scaledNormalCross (data : Data) : Fin 3 → ℝ :=
  ![-(data.a : ℝ) / ((data.Y : ℝ) * data.Z),
    -(data.b : ℝ) / ((data.Z : ℝ) * data.X),
    (data.c : ℝ) / ((data.X : ℝ) * data.Y)]

/-- Casting commutes with the three-dimensional cross product. -/
theorem castIntVector_cross
    (left right : Fin 3 → ℤ) :
    castIntVector (left ⨯₃ right) =
      castIntVector left ⨯₃ castIntVector right := by
  rw [Matrix.cross_apply, Matrix.cross_apply]
  apply Matrix.vec3_eq <;>
    simp [castIntVector]

/-- General diagonal-scaling rule for the cross product. -/
theorem anisotropicScale_cross
    (data : Data) (left right : Fin 3 → ℝ) :
    anisotropicScale data left ⨯₃ anisotropicScale data right =
      ![(left ⨯₃ right) 0 / ((data.Y : ℝ) * data.Z),
        (left ⨯₃ right) 1 / ((data.Z : ℝ) * data.X),
        (left ⨯₃ right) 2 / ((data.X : ℝ) * data.Y)] := by
  have hX : (data.X : ℝ) ≠ 0 := by exact_mod_cast data.X_pos.ne'
  have hY : (data.Y : ℝ) ≠ 0 := by exact_mod_cast data.Y_pos.ne'
  have hZ : (data.Z : ℝ) ≠ 0 := by exact_mod_cast data.Z_pos.ne'
  rw [Matrix.cross_apply]
  apply Matrix.vec3_eq <;>
    simp [anisotropicScale, Matrix.cross_apply] <;>
    field_simp [hX, hY, hZ] <;>
    ring

/-- The scaled frame has the exact transformed primitive normal as cross
product. -/
theorem scaledFirst_cross_scaledSecond (data : Data) :
    scaledFirstVector data ⨯₃ scaledSecondVector data =
      scaledNormalCross data := by
  unfold scaledFirstVector scaledSecondVector
  rw [anisotropicScale_cross]
  have unscaled :
      castIntVector (firstKernelVector data) ⨯₃
          castIntVector (secondKernelVector data) =
        -castIntVector (normalVector data) := by
    rw [← castIntVector_cross, first_cross_second]
    rfl
  rw [unscaled]
  apply Matrix.vec3_eq <;>
    simp [scaledNormalCross, castIntVector, normalVector]

/-- Sum of coordinate squares for a real three-vector. -/
def squaredNorm3 (vector : Fin 3 → ℝ) : ℝ :=
  vector 0 ^ 2 + vector 1 ^ 2 + vector 2 ^ 2

/-- Squared area of the scaled frame parallelogram. -/
def scaledAreaSq (data : Data) : ℝ :=
  squaredNorm3 (scaledFirstVector data ⨯₃ scaledSecondVector data)

/-- Squared length of the box-scaled coefficient normal. -/
def scaledNormalSq (data : Data) : ℝ :=
  ((data.a * data.X : ℕ) : ℝ) ^ 2 +
    ((data.b * data.Y : ℕ) : ℝ) ^ 2 +
    ((data.c * data.Z : ℕ) : ℝ) ^ 2

/-- Real volume of the anisotropic coordinate box. -/
def boxVolume (data : Data) : ℝ :=
  ((data.X * data.Y * data.Z : ℕ) : ℝ)

/-- The box volume is positive. -/
theorem boxVolume_pos (data : Data) : 0 < data.boxVolume := by
  unfold boxVolume
  exact_mod_cast Nat.mul_pos (Nat.mul_pos data.X_pos data.Y_pos) data.Z_pos

@[simp] theorem boxVolume_ne_zero (data : Data) :
    data.boxVolume ≠ 0 :=
  data.boxVolume_pos.ne'

/-- The squared area is manifestly nonnegative. -/
theorem scaledAreaSq_nonneg (data : Data) :
    0 ≤ scaledAreaSq data := by
  unfold scaledAreaSq squaredNorm3
  positivity

/-- Exact anisotropic area identity. -/
theorem scaledAreaSq_eq_scaledNormalSq_div (data : Data) :
    scaledAreaSq data =
      scaledNormalSq data / data.boxVolume ^ 2 := by
  have hX : (data.X : ℝ) ≠ 0 := by exact_mod_cast data.X_pos.ne'
  have hY : (data.Y : ℝ) ≠ 0 := by exact_mod_cast data.Y_pos.ne'
  have hZ : (data.Z : ℝ) ≠ 0 := by exact_mod_cast data.Z_pos.ne'
  rw [scaledAreaSq, scaledFirst_cross_scaledSecond]
  unfold squaredNorm3 scaledNormalCross scaledNormalSq boxVolume
  field_simp [hX, hY, hZ]
  ring

/-- Equivalent multiplication form of the exact area identity. -/
theorem scaledAreaSq_mul_boxVolume_sq (data : Data) :
    scaledAreaSq data * data.boxVolume ^ 2 =
      scaledNormalSq data := by
  rw [scaledAreaSq_eq_scaledNormalSq_div]
  field_simp [data.boxVolume_ne_zero]

/-- The largest scaled coefficient is bounded by the Euclidean squared normal. -/
theorem scaleHeight_sq_le_scaledNormalSq (data : Data) :
    ((data.scaleHeight : ℕ) : ℝ) ^ 2 ≤
      scaledNormalSq data := by
  unfold Data.scaleHeight scaledNormalSq
  by_cases hA :
      max (data.b * data.Y) (data.c * data.Z) ≤ data.a * data.X
  · rw [max_eq_left hA]
    nlinarith [sq_nonneg (((data.b * data.Y : ℕ) : ℝ)),
      sq_nonneg (((data.c * data.Z : ℕ) : ℝ))]
  · have hA' :
        data.a * data.X ≤
          max (data.b * data.Y) (data.c * data.Z) :=
      Nat.le_of_lt (lt_of_not_ge hA)
    rw [max_eq_right hA']
    by_cases hB : data.c * data.Z ≤ data.b * data.Y
    · rw [max_eq_left hB]
      nlinarith [sq_nonneg (((data.a * data.X : ℕ) : ℝ)),
        sq_nonneg (((data.c * data.Z : ℕ) : ℝ))]
    · have hB' : data.b * data.Y ≤ data.c * data.Z :=
        Nat.le_of_lt (lt_of_not_ge hB)
      rw [max_eq_right hB']
      nlinarith [sq_nonneg (((data.a * data.X : ℕ) : ℝ)),
        sq_nonneg (((data.b * data.Y : ℕ) : ℝ))]

/-- Exact squared denominator bridge from the frame area to the maximum
coefficient height. -/
theorem scaleHeight_sq_le_scaledAreaSq_mul_boxVolume_sq
    (data : Data) :
    ((data.scaleHeight : ℕ) : ℝ) ^ 2 ≤
      scaledAreaSq data * data.boxVolume ^ 2 := by
  rw [scaledAreaSq_mul_boxVolume_sq]
  exact scaleHeight_sq_le_scaledNormalSq data

/-- The scaled frame is nondegenerate. -/
theorem scaledAreaSq_pos (data : Data) : 0 < scaledAreaSq data := by
  have height_pos : 0 < ((data.scaleHeight : ℕ) : ℝ) ^ 2 := by
    have : 0 < (data.scaleHeight : ℝ) := by
      exact_mod_cast data.scaleHeight_pos
    positivity
  have bridge := scaleHeight_sq_le_scaledAreaSq_mul_boxVolume_sq data
  have volume_sq_nonneg : 0 ≤ data.boxVolume ^ 2 := sq_nonneg _
  nlinarith

/-- Positive square-root area of the scaled frame. -/
def scaledArea (data : Data) : ℝ :=
  Real.sqrt (scaledAreaSq data)

/-- The square of the selected positive area is the exact squared area. -/
theorem scaledArea_sq (data : Data) :
    scaledArea data ^ 2 = scaledAreaSq data := by
  unfold scaledArea
  exact Real.sq_sqrt (scaledAreaSq_nonneg data)

/-- The coefficient-height divided by box volume is nonnegative. -/
theorem normalizedHeight_nonneg (data : Data) :
    0 ≤ (data.scaleHeight : ℝ) / data.boxVolume := by
  positivity

/-- Squared lower bound in the exact target normalization. -/
theorem normalizedHeight_sq_le_scaledAreaSq (data : Data) :
    ((data.scaleHeight : ℝ) / data.boxVolume) ^ 2 ≤
      scaledAreaSq data := by
  rw [div_pow]
  apply (div_le_iff₀ (sq_pos_of_pos data.boxVolume_pos)).2
  simpa [mul_comm, mul_left_comm, mul_assoc] using
    scaleHeight_sq_le_scaledAreaSq_mul_boxVolume_sq data

/-- The scaled parallelogram area is at least
`max(aX,bY,cZ)/(XYZ)`. -/
theorem normalizedHeight_le_scaledArea (data : Data) :
    (data.scaleHeight : ℝ) / data.boxVolume ≤
      scaledArea data := by
  rw [← sq_le_sq₀ (normalizedHeight_nonneg data) (Real.sqrt_nonneg _)]
  rw [scaledArea_sq]
  exact normalizedHeight_sq_le_scaledAreaSq data

/-- Pure certificate exposing the complete algebraic covolume normalization. -/
structure ScaledAreaCertificate (data : Data) : Prop where
  cross_identity :
    scaledFirstVector data ⨯₃ scaledSecondVector data =
      scaledNormalCross data
  exact_area :
    scaledAreaSq data * data.boxVolume ^ 2 =
      scaledNormalSq data
  denominator_lower :
    (data.scaleHeight : ℝ) / data.boxVolume ≤
      scaledArea data

/-- Canonical scaled-area certificate for every primitive positive datum. -/
theorem canonicalScaledAreaCertificate (data : Data) :
    ScaledAreaCertificate data where
  cross_identity := scaledFirst_cross_scaledSecond data
  exact_area := scaledAreaSq_mul_boxVolume_sq data
  denominator_lower := normalizedHeight_le_scaledArea data

end
end GRWTSK.GeometryOfNumbers.PrimitiveLinearScaledArea
