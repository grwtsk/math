import FormalResearch.PositiveAtlas.CertificationEquivalence
import FormalResearch.PositiveAtlas.PhaseIIResidualQuotient

/-!
# Coherent comparison of actual solver-choice Structural Quines

The existing solver-choice quotient supplies the actual sufficient representation,
minimality and reconstruction section. Its comparison is unique and preserves
all independently specified residual bilinear pairings.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/

namespace FormalResearch.PositiveAtlas

universe u v

namespace PhaseIIResidualQuotient

variable {P : Type u} {U : Type v}
variable [AddCommGroup P] [Module ℝ P]
variable [AddCommGroup U] [Module ℝ U]
variable {G : PositiveForm (P × U)}

/-- The existing solver-choice Structural Quines have the unique coherent
comparison supplied by their sections and their actual minimality proofs. -/
noncomputable def solverChoiceComparison (Q R : PhaseIIResidualQuotient G) : Unit ≃ Unit :=
  StructuralQuine.comparison Q.solverChoiceStructuralQuine R.solverChoiceStructuralQuine

theorem solverChoiceComparison_eq_refl (Q R : PhaseIIResidualQuotient G) :
    solverChoiceComparison Q R = Equiv.refl Unit := by
  apply Equiv.ext
  intro x
  have hs := StructuralQuine.comparison_compress
    Q.solverChoiceStructuralQuine R.solverChoiceStructuralQuine Q.representative
  cases x
  exact hs

/-- Every residual pairing is preserved by the actual solver-choice comparison. -/
theorem solverChoiceComparison_pairing (Q R : PhaseIIResidualQuotient G)
    (uv : U × U) (x : Unit) :
    R.solverChoiceRepresentation.recover uv (solverChoiceComparison Q R x) =
      Q.solverChoiceRepresentation.recover uv x :=
  StructuralQuine.comparison_recover
    Q.solverChoiceStructuralQuine R.solverChoiceStructuralQuine uv x

end PhaseIIResidualQuotient

end FormalResearch.PositiveAtlas
