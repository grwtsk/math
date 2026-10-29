
/- source-tree-label: STL1|L|addr=0101110|role=proof_code_atom|slug=pipeline-core-id|owner=canonical_owner|core=Pipeline/Core/Id.lean|leaf=M506970656c696e652f436f72652f49642e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Core.Id

def surfaceId : String := "Pipeline/Core/Id"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Core/Id" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Core.Id
