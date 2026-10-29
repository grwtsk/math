import Mathlib
import GRWTSK.LinearAlgebra.FramedFiberPort

noncomputable section

namespace GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat

open scoped BigOperators
open GRWTSK.LinearAlgebra.FramedFiberPort

universe u

variable {ι : Type u}

/-- The standard finite Euclidean pairing in coordinates. -/
def dot [Fintype ι] (x y : ι → ℝ) : ℝ :=
  ∑ i, x i * y i

/-- The standard finite coordinate pairing is positive semidefinite on the diagonal. -/
theorem dot_self_nonneg [Fintype ι] (x : ι → ℝ) : 0 ≤ dot x x := by
  unfold dot
  exact Finset.sum_nonneg fun i _ => mul_self_nonneg (x i)

/-- The standard finite coordinate pairing is positive definite. -/
theorem dot_self_eq_zero_iff [Fintype ι] (x : ι → ℝ) : dot x x = 0 ↔ x = 0 := by
  unfold dot
  exact
    (Finset.sum_eq_zero_iff_of_nonneg fun i _ => mul_self_nonneg (x i)).trans <| by
      simp [funext_iff]

/-- A coordinatewise linear operator. -/
def diagonal (a : ι → ℝ) : (ι → ℝ) →ₗ[ℝ] (ι → ℝ) where
  toFun x i := a i * x i
  map_add' x y := by
    ext i
    dsimp
    ring
  map_smul' r x := by
    ext i
    dsimp
    ring

@[simp]
theorem diagonal_apply (a x : ι → ℝ) (i : ι) :
    diagonal a x i = a i * x i := rfl

/-- A real finite two-term Hodge model whose differential is a diagonal operator and whose
codifferential is its Euclidean adjoint. -/
def positiveDiagonalHodge (a : ι → ℝ) :
    TwoTermHodgeData ℝ (ι → ℝ) (ι → ℝ) where
  delta := diagonal a
  deltaStar := diagonal a

/-- The selected codifferential is the adjoint of the differential for the standard
positive pairing. -/
theorem diagonal_adjoint [Fintype ι] (a x y : ι → ℝ) :
    dot (diagonal a x) y = dot x (diagonal a y) := by
  unfold dot
  apply Finset.sum_congr rfl
  intro i _
  simp only [diagonal_apply]
  ring

/-- The degree-zero Laplacian is the diagonal operator with squared coefficients. -/
@[simp]
theorem positiveDiagonalHodge_laplacian0_apply
    (a x : ι → ℝ) (i : ι) :
    (positiveDiagonalHodge a).laplacian0 x i = a i ^ 2 * x i := by
  change a i * (a i * x i) = a i ^ 2 * x i
  ring

/-- The degree-one Laplacian has the same diagonal formula in this two-term model. -/
@[simp]
theorem positiveDiagonalHodge_laplacian1_apply
    (a x : ι → ℝ) (i : ι) :
    (positiveDiagonalHodge a).laplacian1 x i = a i ^ 2 * x i := by
  change a i * (a i * x i) = a i ^ 2 * x i
  ring

/-- The concrete quadratic Hodge energy. -/
def energy [Fintype ι] (a x : ι → ℝ) : ℝ :=
  dot (diagonal a x) (diagonal a x)

/-- Concrete finite Hodge energy is nonnegative. -/
theorem energy_nonneg [Fintype ι] (a x : ι → ℝ) : 0 ≤ energy a x :=
  dot_self_nonneg _

/-- If every diagonal coefficient is nonzero, the energy is strictly positive away from zero. -/
theorem energy_eq_zero_iff [Fintype ι] (a x : ι → ℝ) (ha : ∀ i, a i ≠ 0) :
    energy a x = 0 ↔ x = 0 := by
  rw [energy, dot_self_eq_zero_iff]
  constructor
  · intro h
    funext i
    have hi := congrFun h i
    simp only [diagonal_apply, Pi.zero_apply] at hi
    exact (mul_eq_zero.mp hi).resolve_left (ha i)
  · intro h
    subst x
    exact (diagonal a).map_zero

/-- In the positive diagonal model, the harmonic kernel is exactly the kernel of `δ`. -/
theorem harmonic0_iff_delta_eq_zero (a x : ι → ℝ) :
    (positiveDiagonalHodge a).IsHarmonic0 x ↔ diagonal a x = 0 := by
  constructor
  · intro h
    unfold TwoTermHodgeData.IsHarmonic0 at h
    funext i
    have hi := congrFun h i
    simp only [positiveDiagonalHodge_laplacian0_apply, Pi.zero_apply] at hi
    have hi' : a i * (a i * x i) = 0 := by
      simpa [pow_two, mul_assoc] using hi
    rcases mul_eq_zero.mp hi' with hai | hax
    · simp [hai]
    · exact hax
  · intro h
    unfold TwoTermHodgeData.IsHarmonic0
    funext i
    have hi := congrFun h i
    simp only [diagonal_apply, Pi.zero_apply] at hi
    rw [positiveDiagonalHodge_laplacian0_apply, Pi.zero_apply]
    calc
      a i ^ 2 * x i = a i * (a i * x i) := by ring
      _ = 0 := by rw [hi, mul_zero]

/-- With nonzero coefficients the degree-zero harmonic kernel is trivial. -/
theorem harmonic0_iff_eq_zero (a x : ι → ℝ) (ha : ∀ i, a i ≠ 0) :
    (positiveDiagonalHodge a).IsHarmonic0 x ↔ x = 0 := by
  unfold TwoTermHodgeData.IsHarmonic0
  constructor
  · intro h
    funext i
    have hi := congrFun h i
    simp only [positiveDiagonalHodge_laplacian0_apply, Pi.zero_apply] at hi
    exact (mul_eq_zero.mp hi).resolve_left (pow_ne_zero 2 (ha i))
  · intro h
    subst x
    simp [TwoTermHodgeData.laplacian0, positiveDiagonalHodge]

/-- Finite diagonal functional calculus for the positive Laplacian. -/
def functionalCalculus (a : ι → ℝ) (f : ℝ → ℝ) :
    (ι → ℝ) →ₗ[ℝ] (ι → ℝ) :=
  diagonal fun i => f (a i ^ 2)

/-- Functional calculus sends the constant-one function to the identity. -/
theorem functionalCalculus_one (a : ι → ℝ) :
    functionalCalculus a (fun _ => 1) = LinearMap.id := by
  ext x i
  simp [functionalCalculus, diagonal]

/-- Pointwise multiplication of scalar functions becomes composition of diagonal operators. -/
theorem functionalCalculus_mul (a : ι → ℝ) (f g : ℝ → ℝ) :
    functionalCalculus a (fun eigenvalue => f eigenvalue * g eigenvalue) =
      (functionalCalculus a f).comp (functionalCalculus a g) := by
  ext x i
  change
    (f (a i ^ 2) * g (a i ^ 2)) * x i =
      f (a i ^ 2) * (g (a i ^ 2) * x i)
  ring

/-- The exact finite heat operator `exp (-t Δ)`. -/
def heat (a : ι → ℝ) (t : ℝ) :
    (ι → ℝ) →ₗ[ℝ] (ι → ℝ) :=
  functionalCalculus a fun eigenvalue => Real.exp (-t * eigenvalue)

/-- Heat at time zero is the identity. -/
theorem heat_zero (a : ι → ℝ) :
    heat a 0 = LinearMap.id := by
  ext x i
  simp [heat, functionalCalculus, diagonal]

/-- The exact finite heat operators satisfy the semigroup law. -/
theorem heat_add (a : ι → ℝ) (s t : ℝ) :
    heat a (s + t) = (heat a s).comp (heat a t) := by
  ext x i
  change
    Real.exp (-(s + t) * (a i ^ 2)) * x i =
      Real.exp (-s * (a i ^ 2)) *
        (Real.exp (-t * (a i ^ 2)) * x i)
  rw [show -(s + t) * (a i ^ 2) =
      (-s * (a i ^ 2)) + (-t * (a i ^ 2)) by ring]
  rw [Real.exp_add]
  ring

/-- The heat operator commutes with the diagonal Hodge Laplacian. -/
theorem heat_laplacian0_comm (a : ι → ℝ) (t : ℝ) :
    (heat a t).comp (positiveDiagonalHodge a).laplacian0 =
      (positiveDiagonalHodge a).laplacian0.comp (heat a t) := by
  ext x i
  change
    Real.exp (-t * (a i ^ 2)) * (a i * (a i * x i)) =
      a i * (a i * (Real.exp (-t * (a i ^ 2)) * x i))
  ring

/-- Harmonic vectors are fixed by the exact finite heat flow. -/
theorem heat_fixed_of_harmonic
    (a x : ι → ℝ) (t : ℝ)
    (hx : (positiveDiagonalHodge a).IsHarmonic0 x) :
    heat a t x = x := by
  unfold TwoTermHodgeData.IsHarmonic0 at hx
  funext i
  have hi := congrFun hx i
  simp only [positiveDiagonalHodge_laplacian0_apply, Pi.zero_apply] at hi
  by_cases ha : a i = 0
  · simp [heat, functionalCalculus, diagonal, ha]
  · have hxi : x i = 0 :=
      (mul_eq_zero.mp hi).resolve_left (pow_ne_zero 2 ha)
    simp [heat, functionalCalculus, diagonal, hxi]

/-- For nonnegative time, exact finite heat flow contracts the standard squared norm. -/
theorem heat_contracts [Fintype ι]
    (a x : ι → ℝ) {t : ℝ} (ht : 0 ≤ t) :
    dot (heat a t x) (heat a t x) ≤ dot x x := by
  unfold dot
  apply Finset.sum_le_sum
  intro i _
  let e : ℝ := Real.exp (-t * (a i ^ 2))
  have he0 : 0 ≤ e := (Real.exp_pos _).le
  have he1 : e ≤ 1 := by
    apply Real.exp_le_one_iff.mpr
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr ht) (sq_nonneg (a i))
  have he2 : e ^ 2 ≤ 1 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr he1) (add_nonneg he0 (show (0 : ℝ) ≤ 1 by norm_num))]
  change (e * x i) * (e * x i) ≤ x i * x i
  calc
    (e * x i) * (e * x i) = e ^ 2 * (x i) ^ 2 := by ring
    _ ≤ 1 * (x i) ^ 2 :=
      mul_le_mul_of_nonneg_right he2 (sq_nonneg (x i))
    _ = x i * x i := by ring

/-- Coordinate projector selected by a Boolean mask. -/
def maskProjector (mask : ι → Bool) :
    (ι → ℝ) →ₗ[ℝ] (ι → ℝ) :=
  diagonal fun i => if mask i = true then 1 else 0

/-- Complementary Boolean mask. -/
def complementMask (mask : ι → Bool) : ι → Bool :=
  fun i => Bool.not (mask i)

@[simp]
theorem maskProjector_apply (mask : ι → Bool) (x : ι → ℝ) (i : ι) :
    maskProjector mask x i = (if mask i = true then 1 else 0) * x i := rfl

/-- Coordinate masks are idempotent projectors. -/
theorem maskProjector_idempotent (mask : ι → Bool) :
    (maskProjector mask).comp (maskProjector mask) = maskProjector mask := by
  ext x i
  cases h : mask i <;> simp [maskProjector, diagonal, h]

/-- A mask and its complement sum to the identity. -/
theorem maskProjector_add_complement (mask : ι → Bool) :
    maskProjector mask + maskProjector (complementMask mask) = LinearMap.id := by
  ext x i
  cases h : mask i <;>
    simp [maskProjector, complementMask, diagonal, h]

/-- Complementary coordinate sectors are orthogonal for the positive pairing. -/
theorem mask_complement_orthogonal [Fintype ι]
    (mask : ι → Bool) (x y : ι → ℝ) :
    dot (maskProjector mask x) (maskProjector (complementMask mask) y) = 0 := by
  unfold dot
  apply Finset.sum_eq_zero
  intro i _
  cases h : mask i <;>
    simp [maskProjector, complementMask, diagonal, h]

/-- A coordinate mask commutes with every diagonal differential. -/
theorem maskProjector_delta_comm (a : ι → ℝ) (mask : ι → Bool) :
    (maskProjector mask).comp (diagonal a) =
      (diagonal a).comp (maskProjector mask) := by
  ext x i
  cases h : mask i <;>
    simp [maskProjector, diagonal, h]

/-- A coordinate mask gives a chain-level Hodge projector for the diagonal model. -/
def coordinateHodgeProjector (a : ι → ℝ) (mask : ι → Bool) :
    HodgeProjector (positiveDiagonalHodge a) where
  p0 := maskProjector mask
  p1 := maskProjector mask
  p0_idempotent := maskProjector_idempotent mask
  p1_idempotent := maskProjector_idempotent mask
  delta_comm := maskProjector_delta_comm a mask
  deltaStar_comm := maskProjector_delta_comm a mask

/-- The positive quadratic energy splits exactly across complementary coordinate sectors. -/
theorem energy_mask_split [Fintype ι] (a x : ι → ℝ) (mask : ι → Bool) :
    energy a x =
      energy a (maskProjector mask x) +
        energy a (maskProjector (complementMask mask) x) := by
  unfold energy dot
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  cases h : mask i <;>
    simp [maskProjector, complementMask, diagonal, h]

/-- Every coordinate mask commutes with the exact diagonal heat flow. -/
theorem heat_maskProjector_comm
    (a : ι → ℝ) (t : ℝ) (mask : ι → Bool) :
    (heat a t).comp (maskProjector mask) =
      (maskProjector mask).comp (heat a t) := by
  ext x i
  cases h : mask i <;>
    simp [heat, functionalCalculus, maskProjector, diagonal, h]

/-- Heat flow splits through the two complementary coordinate sectors. -/
theorem heat_mask_split
    (a x : ι → ℝ) (t : ℝ) (mask : ι → Bool) :
    heat a t x =
      heat a t (maskProjector mask x) +
        heat a t (maskProjector (complementMask mask) x) := by
  funext i
  cases h : mask i <;>
    simp [heat, functionalCalculus, maskProjector, complementMask, diagonal, h]

/-- Any diagonal fiber port commutes with the selected diagonal heat functional calculus. -/
theorem diagonal_heat_comm (a u : ι → ℝ) (t : ℝ) :
    (diagonal u).comp (heat a t) = (heat a t).comp (diagonal u) := by
  ext x i
  change
    u i * (Real.exp (-t * (a i ^ 2)) * x i) =
      Real.exp (-t * (a i ^ 2)) * (u i * x i)
  ring

end GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat
