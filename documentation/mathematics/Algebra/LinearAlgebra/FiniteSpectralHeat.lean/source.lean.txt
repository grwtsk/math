import GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat

noncomputable section

namespace GRWTSK.LinearAlgebra.FiniteSpectralHeat

open scoped BigOperators
open GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat

universe u v

variable {ι : Type u} [Fintype ι]
variable {E : Type v} [AddCommGroup E] [Module ℝ E]

/-- Diagonal operator with the selected eigenvalue list. -/
def spectralOperator (eigenvalues : ι → ℝ) :
    (ι → ℝ) →ₗ[ℝ] (ι → ℝ) :=
  diagonal eigenvalues

/-- Exact finite spectral heat multiplier. -/
def spectralHeat (eigenvalues : ι → ℝ) (t : ℝ) :
    (ι → ℝ) →ₗ[ℝ] (ι → ℝ) :=
  diagonal fun i => Real.exp (-t * eigenvalues i)

/-- A proof-carrying finite diagonalization of one operator.

No spectral theorem is inferred: the frame, eigenvalues, and diagonalization equality are data. -/
structure Model (ι : Type u) [Fintype ι]
    (E : Type v) [AddCommGroup E] [Module ℝ E] where
  frame : E ≃ₗ[ℝ] (ι → ℝ)
  operator : E →ₗ[ℝ] E
  eigenvalue : ι → ℝ
  eigenvalue_nonneg : ∀ i, 0 ≤ eigenvalue i
  diagonalizes :
    frame.toLinearMap.comp operator =
      (spectralOperator eigenvalue).comp frame.toLinearMap

namespace Model

/-- Pulled-back positive coordinate pairing. -/
def pairing (M : Model ι E) (x y : E) : ℝ :=
  dot (M.frame x) (M.frame y)

/-- The pulled-back coordinate pairing is positive definite. -/
theorem pairing_self_eq_zero_iff (M : Model ι E) (x : E) :
    M.pairing x x = 0 ↔ x = 0 := by
  rw [pairing, dot_self_eq_zero_iff]
  exact M.frame.map_eq_zero_iff

/-- Coordinate form of the diagonalized operator. -/
theorem operator_coordinates (M : Model ι E) (x : E) :
    M.frame (M.operator x) = spectralOperator M.eigenvalue (M.frame x) := by
  have h := congrArg (fun L : E →ₗ[ℝ] (ι → ℝ) => L x) M.diagonalizes
  simpa [LinearMap.comp_apply] using h

/-- Exact heat operator transported through the selected frame. -/
def heat (M : Model ι E) (t : ℝ) : E →ₗ[ℝ] E :=
  M.frame.symm.toLinearMap.comp
    ((spectralHeat M.eigenvalue t).comp M.frame.toLinearMap)

/-- Coordinate formula for transported heat. -/
theorem heat_coordinates (M : Model ι E) (t : ℝ) (x : E) :
    M.frame (M.heat t x) = spectralHeat M.eigenvalue t (M.frame x) := by
  simp [heat, LinearMap.comp_apply]

/-- Heat at time zero is identity. -/
theorem heat_zero (M : Model ι E) : M.heat 0 = LinearMap.id := by
  ext x
  apply M.frame.injective
  funext i
  simp [heat_coordinates, spectralHeat, diagonal]

/-- Exact finite heat semigroup law. -/
theorem heat_add (M : Model ι E) (s t : ℝ) :
    M.heat (s + t) = (M.heat s).comp (M.heat t) := by
  ext x
  apply M.frame.injective
  funext i
  simp only [LinearMap.comp_apply]
  rw [M.heat_coordinates, M.heat_coordinates, M.heat_coordinates]
  change
    Real.exp (-(s + t) * M.eigenvalue i) * M.frame x i =
      Real.exp (-s * M.eigenvalue i) *
        (Real.exp (-t * M.eigenvalue i) * M.frame x i)
  rw [show -(s + t) * M.eigenvalue i =
      (-s * M.eigenvalue i) + (-t * M.eigenvalue i) by ring]
  rw [Real.exp_add]
  ring

/-- Exact heat commutes with its diagonalized operator. -/
theorem heat_operator_comm (M : Model ι E) (t : ℝ) :
    (M.heat t).comp M.operator = M.operator.comp (M.heat t) := by
  ext x
  apply M.frame.injective
  funext i
  simp only [LinearMap.comp_apply]
  rw [M.heat_coordinates, M.operator_coordinates,
    M.operator_coordinates, M.heat_coordinates]
  change
    Real.exp (-t * M.eigenvalue i) *
        (M.eigenvalue i * M.frame x i) =
      M.eigenvalue i *
        (Real.exp (-t * M.eigenvalue i) * M.frame x i)
  ring

/-- Kernel vectors are fixed by exact finite heat. -/
theorem heat_fixed_of_operator_eq_zero
    (M : Model ι E) {x : E} (hx : M.operator x = 0) (t : ℝ) :
    M.heat t x = x := by
  apply M.frame.injective
  funext i
  rw [M.heat_coordinates]
  have hi : M.eigenvalue i * M.frame x i = 0 := by
    have hcoord := congrFun (M.operator_coordinates x) i
    rw [hx] at hcoord
    simpa [spectralOperator, diagonal] using hcoord.symm
  by_cases hEigenvalue : M.eigenvalue i = 0
  · simp [spectralHeat, diagonal, hEigenvalue]
  · have hxi : M.frame x i = 0 :=
      (mul_eq_zero.mp hi).resolve_left hEigenvalue
    simp [spectralHeat, diagonal, hxi]

/-- Nonnegative finite spectral heat contracts the pulled-back positive pairing. -/
theorem heat_contracts
    (M : Model ι E) (x : E) {t : ℝ} (ht : 0 ≤ t) :
    M.pairing (M.heat t x) (M.heat t x) ≤ M.pairing x x := by
  unfold pairing dot
  rw [M.heat_coordinates]
  apply Finset.sum_le_sum
  intro i _
  let e : ℝ := Real.exp (-t * M.eigenvalue i)
  have he0 : 0 ≤ e := (Real.exp_pos _).le
  have he1 : e ≤ 1 := by
    apply Real.exp_le_one_iff.mpr
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr ht) (M.eigenvalue_nonneg i)
  have he2 : e ^ 2 ≤ 1 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr he1) (add_nonneg he0 (show (0 : ℝ) ≤ 1 by norm_num))]
  change (e * M.frame x i) * (e * M.frame x i) ≤
    M.frame x i * M.frame x i
  calc
    (e * M.frame x i) * (e * M.frame x i) =
        e ^ 2 * (M.frame x i) ^ 2 := by ring
    _ ≤ 1 * (M.frame x i) ^ 2 :=
      mul_le_mul_of_nonneg_right he2 (sq_nonneg (M.frame x i))
    _ = M.frame x i * M.frame x i := by ring

/-- Coordinate mask transported through the selected spectral frame. -/
def sectorProjector (M : Model ι E) (mask : ι → Bool) : E →ₗ[ℝ] E :=
  M.frame.symm.toLinearMap.comp
    ((maskProjector mask).comp M.frame.toLinearMap)

/-- A spectral coordinate sector is an idempotent projector. -/
theorem sectorProjector_idempotent
    (M : Model ι E) (mask : ι → Bool) :
    (M.sectorProjector mask).comp (M.sectorProjector mask) =
      M.sectorProjector mask := by
  ext x
  apply M.frame.injective
  funext i
  cases h : mask i <;>
    simp [sectorProjector, maskProjector, diagonal, LinearMap.comp_apply, h]

/-- Exact finite heat preserves every spectral coordinate sector. -/
theorem heat_sector_comm
    (M : Model ι E) (mask : ι → Bool) (t : ℝ) :
    (M.heat t).comp (M.sectorProjector mask) =
      (M.sectorProjector mask).comp (M.heat t) := by
  ext x
  apply M.frame.injective
  funext i
  cases h : mask i <;>
    simp [heat, sectorProjector, spectralHeat, maskProjector,
      diagonal, LinearMap.comp_apply, h]

end Model

end GRWTSK.LinearAlgebra.FiniteSpectralHeat
