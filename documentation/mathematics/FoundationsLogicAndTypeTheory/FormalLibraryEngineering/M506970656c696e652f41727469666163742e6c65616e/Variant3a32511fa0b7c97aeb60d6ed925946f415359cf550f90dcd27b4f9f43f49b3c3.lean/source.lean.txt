import Think.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f436172726965722e6c65616e


/- source-tree-label: STL1|L|addr=1110011|role=proof_code_atom|slug=pipeline-artifact|owner=canonical_owner|core=Pipeline/Artifact.lean|leaf=M506970656c696e652f41727469666163742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline

structure Artifact where
  phase : Think.PhaseId
  residueFree : Bool

def Artifact.centerControlled (a : Artifact) : Prop :=
  a.phase ∈ Think.centerSpine

theorem Artifact.centerControlled_of_artifact (a : Artifact) :
    a.centerControlled := by
  exact Think.centerSpine_complete a.phase

end Think.Pipeline
