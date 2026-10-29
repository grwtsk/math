
/- source-tree-label: STL1|L|addr=01010000|role=proof_code_atom|slug=pipeline-leaves-boundary-poleboundaryleaf|owner=canonical_owner|core=Pipeline/Leaves/Boundary/PoleBoundaryLeaf.lean|leaf=M506970656c696e652f4c65617665732f426f756e646172792f506f6c65426f756e646172794c6561662e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Leaves.Boundary.PoleBoundaryLeaf

def surfaceId : String := "Pipeline/Leaves/Boundary/PoleBoundaryLeaf"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Leaves/Boundary/PoleBoundaryLeaf" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Leaves.Boundary.PoleBoundaryLeaf
