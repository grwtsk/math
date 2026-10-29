import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.AssemblyFixtures

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

open FullFixtures AssemblyFixtures

/-- The actual admitted relation identifies the first and third catalog indices. -/
theorem recoverability_fixture_related :
    (0, 2) ∈ relationPairs checkedCongruence.candidate := by
  rw [checked_candidate_exact]
  decide

/-- The checked catalog identifies these representatives, despite their distinct indices. -/
theorem recoverability_fixture_same_quotient :
    Quotient.mk (catalogSetoid checkedFull checkedAlgebra checkedGrammar checkedCongruence)
        (⟨0, by decide⟩ : Fin checkedFull.value.catalog.length) =
      Quotient.mk (catalogSetoid checkedFull checkedAlgebra checkedGrammar checkedCongruence)
        (⟨2, by decide⟩ : Fin checkedFull.value.catalog.length) :=
  Quotient.sound recoverability_fixture_related

/-- The original catalog index cannot be recovered from this checked catalog quotient. -/
theorem recoverability_fixture_index_not_recoverable :
    ¬ RecoverableFrom
      (Quotient.mk (catalogSetoid checkedFull checkedAlgebra checkedGrammar checkedCongruence))
      (fun index : Fin checkedFull.value.catalog.length => index.val) := by
  apply catalog_target_not_recoverable_of_related_ne checkedFull checkedAlgebra checkedGrammar
    checkedCongruence (fun index => index.val)
    (left := ⟨0, by decide⟩) (right := ⟨2, by decide⟩) recoverability_fixture_related
  decide

/-- The admitted interpreter remains recoverable through its existing checked evaluator. -/
theorem recoverability_fixture_interpreter_recoverable :
    RecoverableFrom
      (Quotient.mk (catalogSetoid checkedFull checkedAlgebra checkedGrammar checkedCongruence))
      (fun index : Fin checkedFull.value.catalog.length =>
        evaluateTerm checkedFull.value.interpreter.table []
          (catalogTermAt checkedFull.value index.val)) :=
  catalog_interpreter_target_recoverable checkedFull checkedAlgebra checkedGrammar
    checkedCongruence checkedDescent

#print recoverability_fixture_related
#print axioms recoverability_fixture_related
#print recoverability_fixture_same_quotient
#print axioms recoverability_fixture_same_quotient
#print recoverability_fixture_index_not_recoverable
#print axioms recoverability_fixture_index_not_recoverable
#print recoverability_fixture_interpreter_recoverable
#print axioms recoverability_fixture_interpreter_recoverable

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
