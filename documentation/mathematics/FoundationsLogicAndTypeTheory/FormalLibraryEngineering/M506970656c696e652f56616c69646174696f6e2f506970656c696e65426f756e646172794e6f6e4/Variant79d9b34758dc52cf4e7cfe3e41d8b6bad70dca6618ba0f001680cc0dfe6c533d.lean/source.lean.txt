
/- source-tree-label: STL1|L|addr=001111011|role=proof_code_atom|slug=pipeline-validation-pipelineboundarynonclaim|owner=canonical_owner|core=Pipeline/Validation/PipelineBoundaryNonClaim.lean|leaf=M506970656c696e652f56616c69646174696f6e2f506970656c696e65426f756e646172794e6f6e436c61696d2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation.PipelineBoundaryNonClaim

def surfaceId : String := "Pipeline/Validation/PipelineBoundaryNonClaim"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Validation/PipelineBoundaryNonClaim" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Validation.PipelineBoundaryNonClaim
