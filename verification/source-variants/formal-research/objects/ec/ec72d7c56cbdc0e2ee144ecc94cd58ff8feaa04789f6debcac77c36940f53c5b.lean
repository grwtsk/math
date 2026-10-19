
/- source-tree-label: STL1|L|addr=00001000|role=proof_code_atom|slug=pipeline-leaves-leafnonoverlap|owner=canonical_owner|core=Pipeline/Leaves/LeafNonOverlap.lean|leaf=M506970656c696e652f4c65617665732f4c6561664e6f6e4f7665726c61702e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Leaves.LeafNonOverlap

def surfaceId : String := "Pipeline/Leaves/LeafNonOverlap"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Leaves/LeafNonOverlap" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Leaves.LeafNonOverlap
