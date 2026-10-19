
/- source-tree-label: STL1|L|addr=01110100|role=proof_code_atom|slug=pipeline-glue-emlboundaryglue|owner=canonical_owner|core=Pipeline/Glue/EmlBoundaryGlue.lean|leaf=M506970656c696e652f476c75652f456d6c426f756e64617279476c75652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Glue.EmlBoundaryGlue

def surfaceId : String := "Pipeline/Glue/EmlBoundaryGlue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Glue/EmlBoundaryGlue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Glue.EmlBoundaryGlue
