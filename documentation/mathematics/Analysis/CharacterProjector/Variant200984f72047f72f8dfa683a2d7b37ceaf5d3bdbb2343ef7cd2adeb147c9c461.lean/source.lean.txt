import DAF.Arithmetic.DirichletCharacterProfile
import DAF.Hilbert.Finite
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.InnerProductSpace.Dual
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum

/-!
# Exact finite character projector

For a primitive Dirichlet character, its values on `(ZMod q)ˣ` form a
unit vector after exact cardinality normalization.  The associated rank-one
operator is the orthogonal projector onto the character channel.  This is an
exact finite construction, not a numerical approximation to a spectral
projector.
-/

noncomputable section

namespace DAF.Arithmetic

open scoped BigOperators
open scoped ComplexConjugate
open Complex

abbrev CharacterIndex (chi : PrimitiveDirichletCharacter) :=
  (ZMod chi.conductor)ˣ

noncomputable instance characterIndexFintype
    (chi : PrimitiveDirichletCharacter) : Fintype (CharacterIndex chi) :=
  Fintype.ofFinite _

abbrev CharacterHilbert (chi : PrimitiveDirichletCharacter) :=
  Hilbert.FiniteHilbert (CharacterIndex chi)

/-- The right-regular action matrix, with
`(R_g f)(x) = f(xg)`. -/
def rightRegularMatrix
    (chi : PrimitiveDirichletCharacter)
    (g : CharacterIndex chi) :
    Matrix (CharacterIndex chi) (CharacterIndex chi) ℂ :=
  fun x y ↦ if y = x * g then 1 else 0

@[simp]
theorem rightRegularMatrix_apply
    (chi : PrimitiveDirichletCharacter)
    (g x y : CharacterIndex chi) :
    rightRegularMatrix chi g x y = if y = x * g then 1 else 0 :=
  rfl

/-- The exact regular-representation average
`|G_q|⁻¹ ∑_g conj(χ(g)) R_g`. -/
def characterRegularAverageMatrix
    (chi : PrimitiveDirichletCharacter) :
    Matrix (CharacterIndex chi) (CharacterIndex chi) ℂ :=
  (((Fintype.card (CharacterIndex chi) : ℝ)⁻¹ : ℝ) : ℂ) •
    ∑ g : CharacterIndex chi,
      conj (chi.character g) • rightRegularMatrix chi g

namespace PrimitiveDirichletCharacter

/-- Exact normalization scalar `1 / √|G_q|`. -/
def characterNormalization (chi : PrimitiveDirichletCharacter) : ℝ :=
  1 / Real.sqrt (Fintype.card (CharacterIndex chi))

theorem characterIndex_card_pos (chi : PrimitiveDirichletCharacter) :
    0 < Fintype.card (CharacterIndex chi) :=
  Fintype.card_pos

theorem characterNormalization_nonnegative
    (chi : PrimitiveDirichletCharacter) :
    0 ≤ chi.characterNormalization := by
  exact div_nonneg zero_le_one (Real.sqrt_nonneg _)

theorem characterNormalization_sq
    (chi : PrimitiveDirichletCharacter) :
    chi.characterNormalization ^ 2 =
      1 / Fintype.card (CharacterIndex chi) := by
  have card_nonnegative :
      (0 : ℝ) ≤ Fintype.card (CharacterIndex chi) := by positivity
  rw [characterNormalization, div_pow, one_pow,
    Real.sq_sqrt card_nonnegative]

/-- Normalized character-value vector on the unit group. -/
def characterVector (chi : PrimitiveDirichletCharacter) :
    CharacterHilbert chi :=
  WithLp.toLp 2 fun unit ↦
    ((chi.characterNormalization : ℝ) : ℂ) * chi.character unit

@[simp]
theorem characterVector_apply
    (chi : PrimitiveDirichletCharacter)
    (unit : CharacterIndex chi) :
    chi.characterVector unit =
      ((chi.characterNormalization : ℝ) : ℂ) * chi.character unit :=
  rfl

/-- The normalized character vector has exact squared norm one. -/
theorem characterVector_norm_sq (chi : PrimitiveDirichletCharacter) :
    ‖chi.characterVector‖ ^ 2 = 1 := by
  rw [EuclideanSpace.norm_sq_eq]
  simp_rw [characterVector_apply, norm_mul, Complex.norm_real,
    Real.norm_eq_abs, abs_of_nonneg chi.characterNormalization_nonnegative,
    chi.character.unit_norm_eq_one, mul_one]
  rw [Finset.sum_const, Finset.card_univ, nsmul_eq_mul,
    chi.characterNormalization_sq]
  have card_ne_zero :
      (Fintype.card (CharacterIndex chi) : ℝ) ≠ 0 := by
    exact_mod_cast ne_of_gt chi.characterIndex_card_pos
  field_simp

/-- The normalized character vector has norm one. -/
theorem characterVector_norm (chi : PrimitiveDirichletCharacter) :
    ‖chi.characterVector‖ = 1 := by
  have square := chi.characterVector_norm_sq
  nlinarith [norm_nonneg chi.characterVector]

/-- Unitarity turns the conjugate value at `x⁻¹y` into the matrix
coefficient `χ(x) conj(χ(y))`. -/
theorem conj_character_inv_mul
    (chi : PrimitiveDirichletCharacter)
    (x y : CharacterIndex chi) :
    conj (chi.character (x⁻¹ * y)) =
      chi.character x * conj (chi.character y) := by
  simp only [map_mul]
  have mapInv :
      chi.character (↑(x⁻¹) : ZMod chi.conductor) =
        (chi.character (↑x : ZMod chi.conductor))⁻¹ := by
    simpa only [MulChar.coe_equivToUnitHom, Units.val_inv_eq_inv_val] using
      congrArg Units.val ((MulChar.equivToUnitHom chi.character).map_inv x)
  rw [mapInv]
  rw [Complex.inv_eq_conj (chi.character.unit_norm_eq_one x)]
  simp

/-- Entry formula for the regular average. -/
theorem characterRegularAverageMatrix_apply
    (chi : PrimitiveDirichletCharacter)
    (x y : CharacterIndex chi) :
    characterRegularAverageMatrix chi x y =
      (((Fintype.card (CharacterIndex chi) : ℝ)⁻¹ : ℝ) : ℂ) *
        (chi.character x * conj (chi.character y)) := by
  classical
  unfold characterRegularAverageMatrix
  simp only [Matrix.smul_apply, Matrix.sum_apply, rightRegularMatrix_apply,
    smul_eq_mul]
  rw [Finset.sum_eq_single (x⁻¹ * y)]
  · rw [if_pos]
    · simp only [mul_one]
      exact congrArg
        (((((Fintype.card (CharacterIndex chi) : ℝ)⁻¹ : ℝ) : ℂ) * ·))
        (chi.conj_character_inv_mul x y)
    · simp
  · intro g _ different
    rw [if_neg]
    · simp
    · intro equality
      apply different
      calc
        g = x⁻¹ * (x * g) := by simp
        _ = x⁻¹ * y := by rw [equality]
  · simp

/-- The regular average is exactly the outer-product matrix of the normalized
character vector. -/
theorem characterRegularAverageMatrix_eq_outer
    (chi : PrimitiveDirichletCharacter) :
    characterRegularAverageMatrix chi =
      Matrix.vecMulVec chi.characterVector (star chi.characterVector) := by
  classical
  ext x y
  rw [characterRegularAverageMatrix_apply]
  simp only [Matrix.vecMulVec_apply, characterVector_apply, Pi.star_apply,
    map_mul, Complex.star_def]
  have normalizationReal :
      conj (chi.characterNormalization : ℂ) =
        (chi.characterNormalization : ℂ) := by simp
  rw [normalizationReal]
  have normalizationProduct :
      (chi.characterNormalization : ℂ) *
          (chi.characterNormalization : ℂ) =
        (((Fintype.card (CharacterIndex chi) : ℝ)⁻¹ : ℝ) : ℂ) := by
    exact_mod_cast (by
      simpa [pow_two, one_div] using chi.characterNormalization_sq)
  rw [← normalizationProduct]
  ring

/-- The orthogonal rank-one projector onto the character channel. -/
def characterProjector (chi : PrimitiveDirichletCharacter) :
    CharacterHilbert chi →L[ℂ] CharacterHilbert chi :=
  InnerProductSpace.rankOne ℂ chi.characterVector chi.characterVector

/-- The rank-one channel projector is the required right-regular
representation average. -/
theorem characterProjector_eq_regularAverage
    (chi : PrimitiveDirichletCharacter) :
    chi.characterProjector =
      (Matrix.toEuclideanCLM
        (n := CharacterIndex chi) (𝕜 := ℂ))
        (characterRegularAverageMatrix chi) := by
  have matrixIdentity :
      Matrix.toEuclideanLin.symm chi.characterProjector.toLinearMap =
        Matrix.vecMulVec chi.characterVector (star chi.characterVector) := by
    exact InnerProductSpace.symm_toEuclideanLin_rankOne
      chi.characterVector chi.characterVector
  have linearIdentity := congrArg Matrix.toEuclideanLin matrixIdentity
  rw [LinearEquiv.apply_symm_apply] at linearIdentity
  rw [characterRegularAverageMatrix_eq_outer]
  exact ContinuousLinearMap.coe_injective linearIdentity

/-- The character projector is idempotent. -/
theorem characterProjector_idempotent (chi : PrimitiveDirichletCharacter) :
    IsIdempotentElem chi.characterProjector :=
  InnerProductSpace.isIdempotentElem_rankOne_self chi.characterVector_norm

/-- The character projector equals its Hilbert adjoint. -/
theorem characterProjector_selfAdjoint (chi : PrimitiveDirichletCharacter) :
    chi.characterProjector.adjoint = chi.characterProjector := by
  simp [characterProjector]

/-- Combined orthogonal-projection law. -/
theorem characterProjector_orthogonal (chi : PrimitiveDirichletCharacter) :
    IsStarProjection chi.characterProjector :=
  InnerProductSpace.isStarProjection_rankOne_self chi.characterVector_norm

end PrimitiveDirichletCharacter

/-- Public proof-carrying projector package used by finite runtimes. -/
structure CharacterProjector (chi : PrimitiveDirichletCharacter) where
  op : CharacterHilbert chi →L[ℂ] CharacterHilbert chi
  idempotent : IsIdempotentElem op
  selfAdjoint : op.adjoint = op

def canonicalCharacterProjector
    (chi : PrimitiveDirichletCharacter) : CharacterProjector chi where
  op := chi.characterProjector
  idempotent := chi.characterProjector_idempotent
  selfAdjoint := chi.characterProjector_selfAdjoint

end DAF.Arithmetic
