
/- source-tree-label: STL1|L|addr=111000100|role=proof_code_atom|slug=pipeline-lattice-leaflatticepoint|owner=canonical_owner|core=Pipeline/Lattice/LeafLatticePoint.lean|leaf=M506970656c696e652f4c6174746963652f4c6561664c617474696365506f696e742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Lattice.LeafLatticePoint

def surfaceId : String := "Pipeline/Lattice/LeafLatticePoint"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Lattice/LeafLatticePoint" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Lattice.LeafLatticePoint
