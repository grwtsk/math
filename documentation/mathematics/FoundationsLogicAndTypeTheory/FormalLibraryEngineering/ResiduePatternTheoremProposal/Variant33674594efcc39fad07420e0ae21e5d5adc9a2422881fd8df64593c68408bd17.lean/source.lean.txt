import AnalyticNumber.AnalyticResidueReduction

/-!
# Residue pattern theorem proposals

This module records theorem-candidate proposals produced from finite residue
patterns. A proposal is not analytic theorem authority.  The only theorem here
is the firewall: a proposal remains non-authoritative unless it is routed
through Lean or approved theorem authority.
-/

namespace AnalyticNumber
namespace ResiduePatternTheoremProposal

/-- Finite pattern recognition method labels. -/
inductive PatternRecognitionMethod where
  | connectedComponent
  | localPatchFrequency
  | residueGradient
  | motifExtraction
  | sparseRule
  | spectralFeature
  | custom : String → PatternRecognitionMethod
deriving Repr, DecidableEq

/-- A finite feature extracted from a residue canvas stream. -/
structure ResiduePatternFeature where
  featureId : Nat
  method : PatternRecognitionMethod
  supportCellCount : Nat
  scoreHash : Nat
  finiteEvidenceOnly : Prop
  finiteEvidenceOnlyProof : finiteEvidenceOnly

/-- Candidate status for a generated residue-reduction theorem. -/
inductive CandidateStatus where
  | proposed
  | residueTodo
  | leanProved
  | rejected
deriving Repr, DecidableEq

/-- Theorem-candidate metadata. -/
structure ResidueReductionTheoremCandidate where
  candidateId : Nat
  feature : ResiduePatternFeature
  statementHash : Nat
  status : CandidateStatus
  proofAuthorityRequired : String
  patternRecognitionNotProof : Prop
  patternRecognitionNotProofProof : patternRecognitionNotProof
  leanOrApprovedAuthorityRequired : Prop
  leanOrApprovedAuthorityProof : leanOrApprovedAuthorityRequired

/-- A proof attempt record. It may report a checked proof, but the proposal
record itself does not become authority by pattern recognition. -/
structure ResidueProofAttempt where
  attemptId : Nat
  candidateId : Nat
  leanModule : String
  checkedByLean : Bool
  approvedExternalAuthority : Bool

/-- Pattern recognition alone never proves mathematics. -/
theorem pattern_recognition_firewall
    (C : ResidueReductionTheoremCandidate) :
    C.patternRecognitionNotProof ∧ C.leanOrApprovedAuthorityRequired :=
  by
    exact ⟨C.patternRecognitionNotProofProof, C.leanOrApprovedAuthorityProof⟩

/-- A generated candidate may be treated as theorem-routed only if an explicit
checked route is supplied as a proposition. -/
theorem theorem_candidate_requires_authority
    (C : ResidueReductionTheoremCandidate)
    (theoremRouted : Prop)
    (theoremRoutedProof : theoremRouted) :
    C.leanOrApprovedAuthorityRequired ∧ theoremRouted :=
  by
    exact ⟨C.leanOrApprovedAuthorityProof, theoremRoutedProof⟩

end ResiduePatternTheoremProposal
end AnalyticNumber
