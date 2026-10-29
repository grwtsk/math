import DAF.FiniteDynamics.FirstReturn

/-!
# DAF graded first-return permutations

A family of finite first-return systems assembles fiberwise over a dependent
sum.  The resulting permutation never changes the grading index: only the
valid state inside its current fiber advances.

An arbitrary source representation equivalent to that graded valid space can
then carry the action by conjugation.  This transport remains an equivalence,
and decoding the transported result back through the same representation
shows that its grade is exactly the original grade.

This module is generic.  It has no filesystem, finite-field, SAT, avalanche,
or homology dependency; later layers instantiate its ambient fibers and code.
-/

namespace GradedFirstReturn

open FirstReturn

universe u v w

variable {ι : Type u}
variable (Ambient : ι → Type v)
variable (Valid : ∀ i, Ambient i → Prop)
variable (P : ∀ i, Equiv.Perm (Ambient i))
variable [∀ i, Fintype (Ambient i)]
variable [∀ i, DecidableEq (Ambient i)]

/-- The dependent sum of valid states, retaining each ambient grade. -/
abbrev GradedValid :=
  Σ i, {x : Ambient i // Valid i x}

/-- Assemble the first-return permutation independently in every grade. -/
noncomputable def gradedFirstReturnPerm :
    Equiv.Perm (GradedValid Ambient Valid) :=
  Equiv.sigmaCongrRight fun i => firstReturnPerm (P i) (Valid i)

/-- Fiberwise first return preserves the grading index definitionally. -/
@[simp]
theorem gradedFirstReturnPerm_grade
    (x : GradedValid Ambient Valid) :
    (gradedFirstReturnPerm Ambient Valid P x).1 = x.1 :=
  rfl

/-- The value component is the first-return permutation in its own fiber. -/
@[simp]
theorem gradedFirstReturnPerm_value
    (i : ι)
    (x : {x : Ambient i // Valid i x}) :
    (gradedFirstReturnPerm Ambient Valid P ⟨i, x⟩).2 =
      firstReturnPerm (P i) (Valid i) x :=
  rfl

/-- The assembled dependent-sum action is bijective. -/
theorem gradedFirstReturnPerm_bijective :
    Function.Bijective (gradedFirstReturnPerm Ambient Valid P) :=
  (gradedFirstReturnPerm Ambient Valid P).bijective

/-- Its inverse is the fiberwise first return for inverse ambient maps. -/
theorem gradedFirstReturnPerm_symm :
    (gradedFirstReturnPerm Ambient Valid P).symm =
      gradedFirstReturnPerm Ambient Valid (fun i => (P i).symm) := by
  rfl

/-! ## Transport through a graded representation -/

variable {Source : Type w}

/-- Conjugate graded first return through a lossless representation. -/
noncomputable def transportGradedFirstReturn
    (code : Source ≃ GradedValid Ambient Valid) :
    Equiv.Perm Source :=
  (code.trans (gradedFirstReturnPerm Ambient Valid P)).trans code.symm

/-- Explicit application order of the transported first-return action. -/
@[simp]
theorem transportGradedFirstReturn_apply
    (code : Source ≃ GradedValid Ambient Valid)
    (source : Source) :
    transportGradedFirstReturn Ambient Valid P code source =
      code.symm (gradedFirstReturnPerm Ambient Valid P (code source)) :=
  rfl

/-- Conjugated graded first return remains bijective on the source model. -/
theorem transportGradedFirstReturn_bijective
    (code : Source ≃ GradedValid Ambient Valid) :
    Function.Bijective
      (transportGradedFirstReturn Ambient Valid P code) :=
  (transportGradedFirstReturn Ambient Valid P code).bijective

/-- Encoding after transport has exactly the original grading index. -/
theorem transportGradedFirstReturn_preserves_grade
    (code : Source ≃ GradedValid Ambient Valid)
    (source : Source) :
    (code (transportGradedFirstReturn Ambient Valid P code source)).1 =
      (code source).1 := by
  rw [transportGradedFirstReturn_apply, code.apply_symm_apply]
  exact gradedFirstReturnPerm_grade Ambient Valid P (code source)

end GradedFirstReturn
