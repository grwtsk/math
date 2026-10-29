import Think.Bit1.Bit1.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f436c61696d5374617475732e6c65616e

/- source-tree-label: STL1|L|addr=11101011|role=proof_code_atom|slug=pipeline-proofboundary|owner=canonical_owner|core=Pipeline/ProofBoundary.lean|leaf=M506970656c696e652f50726f6f66426f756e646172792e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Braid.Law

def crossesProofBoundary : ClaimStatus -> Bool :=
  ClaimStatus.crossesTheoremBoundary

theorem finite_witness_stays_below_boundary :
    crossesProofBoundary ClaimStatus.finiteWitness = false := rfl

theorem checked_theorem_crosses_boundary :
    crossesProofBoundary ClaimStatus.checkedTheorem = true := rfl

end Think.Braid.Law
