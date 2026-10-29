import Mathematics.BinaryFrontier.Completion.Core
import Mathematics.BinaryFrontier.Presentation.DistinctionAdapter

/-!
# Presentation completion adapters

Adapters translate full mathematical completions into candidate presentation
data.  They do not publish or authorize that candidate.
-/

namespace Mathematics.BinaryFrontier

structure PresentationCompletionAdapter
    (Full Presentation : Type) where
  subjectId : Full → String
  candidatePresentation : Full → Presentation
  presentationSubjectId : Presentation → String
  subject_preserved :
    ∀ full,
      presentationSubjectId
          (candidatePresentation full) =
        subjectId full
  authoritativeEffect : Bool := false
  nonauthoritative :
    authoritativeEffect = false

structure CandidatePresentationCompletion
    {Full Presentation : Type}
    (adapter :
      PresentationCompletionAdapter Full Presentation)
    (full : Full) where
  candidate : Presentation :=
    adapter.candidatePresentation full
  candidate_exact :
    candidate = adapter.candidatePresentation full
  verificationRef : String
  ownerAdmissionRef : Option String

theorem candidate_completion_is_nonauthoritative
    {Full Presentation : Type}
    (adapter :
      PresentationCompletionAdapter Full Presentation) :
    adapter.authoritativeEffect = false :=
  adapter.nonauthoritative

end Mathematics.BinaryFrontier
