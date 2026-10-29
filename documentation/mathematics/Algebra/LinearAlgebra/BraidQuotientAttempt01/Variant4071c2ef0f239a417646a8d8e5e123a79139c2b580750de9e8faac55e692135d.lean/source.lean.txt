import Mathlib.GroupTheory.PresentedGroup
import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup
import Mathlib.Tactic

/-! Literal two-generator Artin presentation and its matrix/exponent homomorphisms.
Research direction grwtsk contributors; scratch construction OpenAI Codex.
No complete kernel classification, geometric braid-model equivalence or RH consequence. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.BraidQuotient
open scoped MatrixGroups

/-- The sole relator of the standard algebraic B3 presentation. -/
def braidRelator : FreeGroup (Fin 2) :=
  (FreeGroup.of 0 * FreeGroup.of 1 * FreeGroup.of 0) *
    (FreeGroup.of 1 * FreeGroup.of 0 * FreeGroup.of 1)⁻¹

def braidRelations : Set (FreeGroup (Fin 2)) := {braidRelator}

def B3 := PresentedGroup braidRelations

def sigma1 : B3 := PresentedGroup.of 0

def sigma2 : B3 := PresentedGroup.of 1

theorem braid_relation : sigma1*sigma2*sigma1 = sigma2*sigma1*sigma2 := by
  have h := PresentedGroup.mk_eq_mk_of_mul_inv_mem
    (rels:=braidRelations)
    (x:=FreeGroup.of 0 * FreeGroup.of 1 * FreeGroup.of 0)
    (y:=FreeGroup.of 1 * FreeGroup.of 0 * FreeGroup.of 1)
    (by exact Set.mem_singleton braidRelator)
  simpa only [map_mul, sigma1, sigma2, PresentedGroup.of] using h

def upperGenerator : SL(2, ℤ) :=
  ⟨!![1,1;0,1], by norm_num [Matrix.det_fin_two]⟩

def lowerGenerator : SL(2, ℤ) :=
  ⟨!![1,0;-1,1], by norm_num [Matrix.det_fin_two]⟩

theorem matrix_braid_relation :
    upperGenerator*lowerGenerator*upperGenerator =
      lowerGenerator*upperGenerator*lowerGenerator := by
  apply Matrix.SpecialLinearGroup.ext
  intro i j
  fin_cases i <;> fin_cases j <;>
    norm_num [upperGenerator,lowerGenerator,Matrix.mul_apply,Fin.sum_univ_succ]

def generatorMatrix : Fin 2 → SL(2, ℤ) := fun i => if i=0 then upperGenerator else lowerGenerator

theorem matrix_relator_identity :
    ∀ r ∈ braidRelations, FreeGroup.lift generatorMatrix r = 1 := by
  intro r hr
  rw [Set.mem_singleton_iff] at hr
  subst r
  simp only [braidRelator,map_mul,map_inv,FreeGroup.lift_apply_of]
  simp only [generatorMatrix,ite_true,show (1:Fin 2)≠0 by decide,ite_false]
  rw [matrix_braid_relation,mul_inv_cancel]

/-- Genuine normal-closure quotient lift; relation satisfaction is proved above. -/
def matrixRepresentation : B3 →* SL(2, ℤ) :=
  PresentedGroup.toGroup matrix_relator_identity

theorem matrixRepresentation_sigma1 : matrixRepresentation sigma1 = upperGenerator := by
  simp [matrixRepresentation,sigma1,generatorMatrix]

theorem matrixRepresentation_sigma2 : matrixRepresentation sigma2 = lowerGenerator := by
  simp [matrixRepresentation,sigma2,generatorMatrix]

/-- Both generators have exponent one. Multiplicative is only the additive-Z type tag. -/
def generatorExponent : Fin 2 → Multiplicative ℤ := fun _ => Multiplicative.ofAdd 1

theorem exponent_relator_identity :
    ∀ r ∈ braidRelations, FreeGroup.lift generatorExponent r = 1 := by
  intro r hr
  rw [Set.mem_singleton_iff] at hr
  subst r
  simp [braidRelator,generatorExponent]

/-- The actual exponent homomorphism on the presented group, not a word-count premise. -/
def exponentHom : B3 →* Multiplicative ℤ :=
  PresentedGroup.toGroup exponent_relator_identity

theorem exponentHom_sigma1 : exponentHom sigma1 = Multiplicative.ofAdd 1 := by
  simp [exponentHom,sigma1,generatorExponent]

theorem exponentHom_sigma2 : exponentHom sigma2 = Multiplicative.ofAdd 1 := by
  simp [exponentHom,sigma2,generatorExponent]

/-- The square of the usual full-twist word. -/
def lostBraid : B3 := (sigma1*sigma2)^6

theorem generator_product_matrix :
    ((upperGenerator*lowerGenerator : SL(2,ℤ)) : Matrix (Fin 2) (Fin 2) ℤ) =
      !![0,1;-1,1] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [upperGenerator,lowerGenerator,Matrix.mul_apply,Fin.sum_univ_succ]

theorem generator_product_sixth : (upperGenerator*lowerGenerator)^6 = (1:SL(2,ℤ)) := by
  apply Matrix.SpecialLinearGroup.ext
  intro i j
  fin_cases i <;> fin_cases j <;>
    norm_num [upperGenerator,lowerGenerator,Matrix.mul_apply,Fin.sum_univ_succ,pow_succ]

theorem lostBraid_matrix_identity : matrixRepresentation lostBraid = 1 := by
  simp only [lostBraid,map_pow,map_mul,matrixRepresentation_sigma1,matrixRepresentation_sigma2]
  exact generator_product_sixth

theorem lostBraid_exponent : Multiplicative.toAdd (exponentHom lostBraid) = (12:ℤ) := by
  simp [lostBraid,exponentHom_sigma1,exponentHom_sigma2]

theorem lostBraid_ne_one : lostBraid≠1 := by
  intro h
  have he := lostBraid_exponent
  rw [h,map_one] at he
  norm_num at he

theorem matrixRepresentation_not_injective : ¬Function.Injective matrixRepresentation := by
  intro h
  exact lostBraid_ne_one (h (lostBraid_matrix_identity.trans (map_one matrixRepresentation).symm))

end ContinuousResearch.BraidQuotient
