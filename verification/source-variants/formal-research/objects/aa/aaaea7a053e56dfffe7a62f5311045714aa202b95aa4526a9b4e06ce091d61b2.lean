
/- source-tree-label: STL1|L|addr=11111000|role=proof_code_atom|slug=pipeline-leaves-leafid|owner=canonical_owner|core=Pipeline/Leaves/LeafId.lean|leaf=M506970656c696e652f4c65617665732f4c65616649642e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Leaves.LeafId

def surfaceId : String := "Pipeline/Leaves/LeafId"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Leaves/LeafId" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Leaves.LeafId
