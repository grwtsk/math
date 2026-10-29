import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=1101011|role=proof_code_atom|slug=kernel-compact|owner=canonical_owner|core=Kernel/Compact.lean|leaf=M4b65726e656c2f436f6d706163742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Compact

inductive CompactAuthority where
  | finiteWitness
  | externalBoundary
  | residueOnly
  | validationSurface
deriving DecidableEq, Repr

structure CompactKernel where
  authority : CompactAuthority
  finiteOnly : Bool
  theoremAuthorityImported : Bool
deriving Repr

def rootKernel : CompactKernel :=
  { authority := CompactAuthority.finiteWitness
    finiteOnly := true
    theoremAuthorityImported := false }

theorem rootKernel_finiteOnly :
    rootKernel.finiteOnly = true := by
  rfl

theorem rootKernel_noTheoremAuthority :
    rootKernel.theoremAuthorityImported = false := by
  rfl

end Think.Compact
