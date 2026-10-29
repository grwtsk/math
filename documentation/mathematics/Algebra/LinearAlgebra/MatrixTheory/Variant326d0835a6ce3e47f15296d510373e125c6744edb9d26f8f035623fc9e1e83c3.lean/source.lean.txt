-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LieEquivMatrixPrime.Variantb6b0034b2680a7b9e690d00509b434c67447582d1680d1839d2631a5a63d50ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6b0034b2680a7b9e690d00509b434c67447582d1680d1839d2631a5a63d50ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LieEquivMatrixPrime.Variantb6b0034b2680a7b9e690d00509b434c67447582d1680d1839d2631a5a63d50ca","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b6b0034b2680a7b9e690d00509b434c67447582d1680d1839d2631a5a63d50ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Lie/Matrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
module

public import Mathlib.Algebra.Lie.OfAssociative
public import Mathlib.LinearAlgebra.Matrix.Reindex
public import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv

/-!
# Lie algebras of matrices

An important class of Lie algebras are those arising from the associative algebra structure on
square matrices over a commutative ring. This file provides some very basic definitions whose
primary value stems from their utility when constructing the classical Lie algebras using matrices.

## Main definitions

  * `lieEquivMatrix'`
  * `Matrix.lieConj`
  * `Matrix.reindexLieEquiv`

## Tags

lie algebra, matrix
-/


namespace GRWTSK.Algebra.LinearAlgebra.LieEquivMatrixPrime.Variantb6b0034b2680a7b9e690d00509b434c67447582d1680d1839d2631a5a63d50ca

@[expose] public section


universe u v w w₁ w₂

section Matrices

open scoped Matrix

variable {R : Type u} [CommRing R]
variable {n : Type w} [DecidableEq n] [Fintype n]

attribute [local instance 100] LieRing.ofAssociativeRing

/-- The natural equivalence between linear endomorphisms of finite free modules and square matrices
is compatible with the Lie algebra structures. -/
def lieEquivMatrix' : Module.End R (n → R) ≃ₗ⁅R⁆ Matrix n n R :=
  { LinearMap.toMatrix' with
    map_lie' := fun {T S} => by
      let f := @LinearMap.toMatrix' R _ n n _ _
      change f (T.comp S - S.comp T) = f T * f S - f S * f T
      have h : ∀ T S : Module.End R _, f (T.comp S) = f T * f S := LinearMap.toMatrix'_comp
      rw [map_sub, h, h] }

@[simp]
theorem lieEquivMatrix'_apply (f : Module.End R (n → R)) :
    lieEquivMatrix' f = LinearMap.toMatrix' f :=
  rfl

@[simp]
theorem lieEquivMatrix'_symm_apply (A : Matrix n n R) :
    (@lieEquivMatrix' R _ n _ _).symm A = Matrix.toLin' A :=
  rfl

namespace Matrix

/-- An invertible matrix induces a Lie algebra equivalence from the space of matrices to itself. -/
def lieConj (P : Matrix n n R) (h : Invertible P) : Matrix n n R ≃ₗ⁅R⁆ Matrix n n R :=
  ((@lieEquivMatrix' R _ n _ _).symm.trans (P.toLinearEquiv' h).lieConj).trans lieEquivMatrix'

@[simp]
theorem lieConj_apply (P A : Matrix n n R) (h : Invertible P) :
    P.lieConj h A = P * A * P⁻¹ := by
  simp [LinearEquiv.conj_apply, Matrix.lieConj, LinearMap.toMatrix'_comp,
    LinearMap.toMatrix'_toLin']

@[simp]
theorem lieConj_symm_apply (P A : Matrix n n R) (h : Invertible P) :
    (P.lieConj h).symm A = P⁻¹ * A * P := by
  simp [LinearEquiv.symm_conj_apply, Matrix.lieConj, LinearMap.toMatrix'_comp,
    LinearMap.toMatrix'_toLin']

variable {m : Type w₁} [DecidableEq m] [Fintype m] (e : n ≃ m)

/-- For square matrices, the natural map that reindexes a matrix's rows and columns with equivalent
types, `Matrix.reindex`, is an equivalence of Lie algebras. -/
def reindexLieEquiv : Matrix n n R ≃ₗ⁅R⁆ Matrix m m R :=
  { Matrix.reindexLinearEquiv R R e e with
    toFun := Matrix.reindex e e
    map_lie' := fun {_ _} => by
      simp only [LieRing.of_associative_ring_bracket, Matrix.reindex_apply,
        Matrix.submatrix_mul_equiv, Matrix.submatrix_sub, Pi.sub_apply] }

@[simp]
theorem reindexLieEquiv_apply (M : Matrix n n R) :
    Matrix.reindexLieEquiv e M = Matrix.reindex e e M :=
  rfl

@[simp]
theorem reindexLieEquiv_symm :
    (Matrix.reindexLieEquiv e : _ ≃ₗ⁅R⁆ _).symm = Matrix.reindexLieEquiv e.symm :=
  rfl

instance : LieRingModule (Matrix n n R) (n → R) where
  bracket := mulVec
  add_lie := add_mulVec
  lie_add := mulVec_add
  leibniz_lie x y v := by simp only [Ring.lie_def, mulVec_mulVec, sub_mulVec, sub_add_cancel]

instance : LieModule R (Matrix n n R) (n → R) where
  smul_lie := smul_mulVec
  lie_smul t A := mulVec_smul A t

@[simp] lemma lie_apply (A : Matrix n n R) (v : n → R) : ⁅A, v⁆ = A *ᵥ v := rfl

end Matrix

namespace LieModule

@[simp]
theorem toEnd_matrix :
    toEnd R (Matrix n n R) (n → R) = (lieEquivMatrix' (R := R) (n := n)).symm := by
  ext; simp

instance : IsFaithful R (Matrix n n R) (n → R) where
  injective_toEnd := by
    simpa using EmbeddingLike.injective _

end LieModule

end Matrices
