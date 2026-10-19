import Mathematics.BinaryFrontier.Obstruction.MUS

/-!
# Obstruction factorization

This data layer keeps the branch boundary, primitive core, and later canonical
record separate.  It does not derive infeasibility from a build failure.
-/

namespace Mathematics.BinaryFrontier

structure ObstructionFactorization where
  subjectRef : String
  stateRef : String
  lastFeasibleAncestorRef : String
  firstInfeasibleBoundaryRef : String
  primitiveCoreRef : String
  canonicalRecordRef : Option String
  sourceOccurrenceRefs : List String
  sourceOccurrenceRefs_nonempty :
    sourceOccurrenceRefs ≠ []

theorem obstruction_factorization_retains_occurrence
    (factorization : ObstructionFactorization) :
    ∃ occurrence,
      occurrence ∈ factorization.sourceOccurrenceRefs := by
  cases occurrencesEquation :
      factorization.sourceOccurrenceRefs with
  | nil =>
      exact False.elim
        (factorization.sourceOccurrenceRefs_nonempty
          occurrencesEquation)
  | cons head tail =>
      exact ⟨head, by simp⟩

end Mathematics.BinaryFrontier
