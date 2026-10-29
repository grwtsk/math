
/- source-tree-label: STL1|L|addr=11000110|role=proof_code_atom|slug=pipeline-claimstatus|owner=canonical_owner|core=Pipeline/ClaimStatus.lean|leaf=M506970656c696e652f436c61696d5374617475732e6c65616e.lean -/

set_option autoImplicit false
namespace Think.Braid.Law

inductive ClaimStatus where
  | definition
  | finiteWitness
  | candidateGeneralization
  | formalizationGap
  | openObstruction
  | refusedOverclaim
  | checkedTheorem
deriving DecidableEq, Repr

def ClaimStatus.crossesTheoremBoundary : ClaimStatus -> Bool
  | .checkedTheorem => true
  | _ => false

def apiMayEmitCheckedTheorem : Bool := false

theorem api_does_not_emit_checked_theorem :
    apiMayEmitCheckedTheorem = false := rfl

end Think.Braid.Law
