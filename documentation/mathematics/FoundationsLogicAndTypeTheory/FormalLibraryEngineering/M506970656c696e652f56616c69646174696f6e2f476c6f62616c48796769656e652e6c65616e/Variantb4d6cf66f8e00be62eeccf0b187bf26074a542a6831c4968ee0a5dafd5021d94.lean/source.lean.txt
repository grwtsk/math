
/- source-tree-label: STL1|L|addr=1001111|role=proof_code_atom|slug=pipeline-validation-globalhygiene|owner=canonical_owner|core=Pipeline/Validation/GlobalHygiene.lean|leaf=M506970656c696e652f56616c69646174696f6e2f476c6f62616c48796769656e652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation.GlobalHygiene

def surfaceId : String := "Pipeline/Validation/GlobalHygiene"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Validation/GlobalHygiene" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Validation.GlobalHygiene
