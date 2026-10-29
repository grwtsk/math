import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5370696e652e6c65616e


/- source-tree-label: STL1|L|addr=0000011|role=proof_code_atom|slug=pipeline-center-compressedsequence|owner=canonical_owner|core=Pipeline/Center/CompressedSequence.lean|leaf=M506970656c696e652f43656e7465722f436f6d7072657373656453657175656e63652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center

abbrev CompressedStep := Think.SpineStep

def compressedSequence : List CompressedStep :=
  FWR.Pipeline.CenterWeighted.compressedSpine

theorem compressedSequence_count :
    compressedSequence.length = 20 := by
  rfl

end Think.Pipeline.Center
