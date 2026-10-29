import Think.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.M506970656c696e652f43656e7465722f576569676874656443656e7465722e6c65616e


/- source-tree-label: STL1|L|addr=11100000|role=proof_code_atom|slug=pipeline-center-multinomialplacement|owner=canonical_owner|core=Pipeline/Center/MultinomialPlacement.lean|leaf=M506970656c696e652f43656e7465722f4d756c74696e6f6d69616c506c6163656d656e742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center

abbrev BraidWeight := FWR.Pipeline.CenterWeighted.BraidWeight

def braidWeight (p : Think.PhaseId) : BraidWeight :=
  p.braidWeight

def multinomialWeight (p : Think.PhaseId) : Nat :=
  (braidWeight p).multinomial

theorem multinomial_denominator_pos (w : BraidWeight) :
    0 <
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.left *
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.center *
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.right := by
  exact FWR.Pipeline.CenterWeighted.multinomial_denominator_pos w

end Think.Pipeline.Center
