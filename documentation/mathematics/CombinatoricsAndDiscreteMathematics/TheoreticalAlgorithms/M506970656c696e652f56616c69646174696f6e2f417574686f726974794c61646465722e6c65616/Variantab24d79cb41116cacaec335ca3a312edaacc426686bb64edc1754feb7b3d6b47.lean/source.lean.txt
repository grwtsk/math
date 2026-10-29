import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f56616c69646174696f6e2f536f7572636543617272792e6c65616e


/- source-tree-label: STL1|L|addr=01111111|role=proof_code_atom|slug=pipeline-validation-authorityladder|owner=canonical_owner|core=Pipeline/Validation/AuthorityLadder.lean|leaf=M506970656c696e652f56616c69646174696f6e2f417574686f726974794c61646465722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.AuthorityLadder

inductive AuthorityPhase where
  | phase0ObservedResidue
  | phase1ResearchQuestion
  | phase2ResearchContext
  | phase3FormalStatement
  | phase4LocalDefinition
  | phase5ExecutableValidator
  | phase6CheckedLean
  | phase7CheckedTheoremOrCheckedRefusal
  | phase8RefereeReinspection
  | phase9ReleaseOrResidue
deriving DecidableEq, Repr

namespace AuthorityPhase

def label : AuthorityPhase -> String
  | phase0ObservedResidue => "phase_0_observed_residue"
  | phase1ResearchQuestion => "phase_1_research_question"
  | phase2ResearchContext => "phase_2_research_context"
  | phase3FormalStatement => "phase_3_formal_statement"
  | phase4LocalDefinition => "phase_4_local_definition"
  | phase5ExecutableValidator => "phase_5_executable_validator"
  | phase6CheckedLean => "phase_6_checked_lean"
  | phase7CheckedTheoremOrCheckedRefusal => "phase_7_checked_theorem_or_checked_refusal"
  | phase8RefereeReinspection => "phase_8_referee_reinspection"
  | phase9ReleaseOrResidue => "phase_9_release_or_residue"

end AuthorityPhase

def allAuthorityPhases : List AuthorityPhase :=
  [ AuthorityPhase.phase0ObservedResidue,
    AuthorityPhase.phase1ResearchQuestion,
    AuthorityPhase.phase2ResearchContext,
    AuthorityPhase.phase3FormalStatement,
    AuthorityPhase.phase4LocalDefinition,
    AuthorityPhase.phase5ExecutableValidator,
    AuthorityPhase.phase6CheckedLean,
    AuthorityPhase.phase7CheckedTheoremOrCheckedRefusal,
    AuthorityPhase.phase8RefereeReinspection,
    AuthorityPhase.phase9ReleaseOrResidue ]

theorem allAuthorityPhases_complete (p : AuthorityPhase) : p ∈ allAuthorityPhases := by
  cases p <;> simp [allAuthorityPhases]

theorem allAuthorityPhases_nodup : allAuthorityPhases.Nodup := by
  decide

inductive TerminalAuthority where
  | checkedLean
  | checkedRust
  | checkedEvidence
  | checkedTheorem
  | residue
deriving DecidableEq, Repr

inductive ForceAction where
  | eliminateNow
  | formalizeNext
  | validateNext
  | researchNext
  | splitResidue
  | blockAsOverclaim
  | fixedPointResidue
deriving DecidableEq, Repr

inductive ResiduePriority where
  | p0BlocksSoundness
  | p1BlocksPipelineClosure
  | p2BlocksFormalNormalization
  | p3BlocksDocumentationHygiene
  | p4AdvisoryCleanup
deriving DecidableEq, Repr

inductive VerdictClassifier where
  | acceptedCheckedNoResidue
  | acceptedCheckedWithResiduePlan
  | majorRevisionResidueNotForced
  | rejectedOverclaim
  | rejectedMissingAuthorityLadder
  | rejectedMissingResearchToFormalization
  | rejectedMissingValidation
  | rejectedHiddenResidue
deriving DecidableEq, Repr

structure ResidueMatrixRow where
  residueId : String
  forceAction : ForceAction
  currentPhase : AuthorityPhase
  nextPhase : AuthorityPhase
  requiredArtifact : String
  requiredFileOrModule : String
  validationCommand : String
  ownerSurface : String
  authorityStatus : TerminalAuthority
  expectedDischargeCondition : String
  fallbackResidue : String
  priority : ResiduePriority
  blockingDependencies : List String
deriving DecidableEq, Repr

structure ResearchResiduePacket where
  residueId : String
  researchQuestion : String
  expectedFormalStatement : String
  nextRepositoryArtifact : String
  validationAfterResearch : String
deriving DecidableEq, Repr

structure FixedPointResidue where
  residueId : String
  currentMachineryExhausted : Bool
  notImpossibilityTheorem : Bool
  nextResearchAction : String
deriving DecidableEq, Repr

structure RefereeResidueEliminator where
  verdict : VerdictClassifier
  matrix : List ResidueMatrixRow
  researchPackets : List ResearchResiduePacket
  fixedPointResidue : List FixedPointResidue
  refereeIsTheoremAuthority : Bool
deriving DecidableEq, Repr

namespace RefereeResidueEliminator

def nonemptyMatrix (r : RefereeResidueEliminator) : Prop :=
  r.matrix ≠ []

def theoremAuthorityRefused (r : RefereeResidueEliminator) : Prop :=
  r.refereeIsTheoremAuthority = false

theorem referee_not_theorem_authority
    (verdict : VerdictClassifier)
    (matrix : List ResidueMatrixRow)
    (researchPackets : List ResearchResiduePacket)
    (fixedPointResidue : List FixedPointResidue) :
    theoremAuthorityRefused
      { verdict := verdict,
        matrix := matrix,
        researchPackets := researchPackets,
        fixedPointResidue := fixedPointResidue,
        refereeIsTheoremAuthority := false } := by
  rfl

end RefereeResidueEliminator

end Think.Pipeline.AuthorityLadder
