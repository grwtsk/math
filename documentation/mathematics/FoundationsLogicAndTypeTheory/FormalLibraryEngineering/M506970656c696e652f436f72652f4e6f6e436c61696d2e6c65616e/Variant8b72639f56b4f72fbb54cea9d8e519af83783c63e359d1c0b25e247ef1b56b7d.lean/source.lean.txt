
/- source-tree-label: STL1|L|addr=000101|role=proof_code_atom|slug=pipeline-core-nonclaim|owner=canonical_owner|core=Pipeline/Core/NonClaim.lean|leaf=M506970656c696e652f436f72652f4e6f6e436c61696d2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Core.NonClaim

def surfaceId : String := "Pipeline/Core/NonClaim"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Core/NonClaim" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Core.NonClaim
