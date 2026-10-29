
/- source-tree-label: STL1|L|addr=1001110|role=proof_code_atom|slug=pipeline-center-compactpipeline|owner=canonical_owner|core=Pipeline/Center/CompactPipeline.lean|leaf=M506970656c696e652f43656e7465722f436f6d70616374506970656c696e652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Compact

structure CompactPipelineMachine where
  phaseCount : Nat
  centerOrdered : Bool
  emitsResidue : Bool
deriving Repr

def compactPipelineMachine : CompactPipelineMachine :=
  { phaseCount := 61
    centerOrdered := true
    emitsResidue := true }

theorem compactPipelineMachine_phaseCount :
    compactPipelineMachine.phaseCount = 61 := by
  rfl

theorem compactPipelineMachine_centerOrdered :
    compactPipelineMachine.centerOrdered = true := by
  rfl

theorem compactPipelineMachine_emitsResidue :
    compactPipelineMachine.emitsResidue = true := by
  rfl

end Think.Compact
