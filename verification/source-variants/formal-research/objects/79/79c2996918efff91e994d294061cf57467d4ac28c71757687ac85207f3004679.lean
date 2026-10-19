import Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f5068617365732f50686173655461626c652e6c65616e


/- source-tree-label: STL1|L|addr=00111111|role=proof_code_atom|slug=pipeline-phases-phasesymmetry|owner=canonical_owner|core=Pipeline/Phases/PhaseSymmetry.lean|leaf=M506970656c696e652f5068617365732f506861736553796d6d657472792e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Phases

theorem phase37_mirror :
    phaseMirror 37 = 23 := by
  rfl

theorem phase37_weight_matches_phase23 :
    phaseWeight 37 = phaseWeight 23 := by
  rfl

theorem central_phase_fixed :
    phaseMirror 30 = 30 := by
  rfl

end Think.Pipeline.Phases
