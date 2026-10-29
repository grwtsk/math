import Think.Pipeline.Residue

set_option autoImplicit false

namespace Think.Residues

def allPipelineResidues : List Think.Residue :=
  Think.pipelineResidues

theorem allPipelineResidues_count :
    allPipelineResidues.length = 71 := by
  rfl

end Think.Residues
