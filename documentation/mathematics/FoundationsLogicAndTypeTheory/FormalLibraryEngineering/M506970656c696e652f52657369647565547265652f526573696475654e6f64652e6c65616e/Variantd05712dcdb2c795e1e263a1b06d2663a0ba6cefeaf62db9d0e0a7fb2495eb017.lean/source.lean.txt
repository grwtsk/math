
/- source-tree-label: STL1|L|addr=0101001101|role=proof_code_atom|slug=pipeline-residuetree-residuenode|owner=canonical_owner|core=Pipeline/ResidueTree/ResidueNode.lean|leaf=M506970656c696e652f52657369647565547265652f526573696475654e6f64652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.ResidueTree.ResidueNode

def surfaceId : String := "Pipeline/ResidueTree/ResidueNode"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/ResidueTree/ResidueNode" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.ResidueTree.ResidueNode
