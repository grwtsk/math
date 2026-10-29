import Think.SourceTree.Legacy.Residues.CompactProfile

set_option autoImplicit false

namespace Think.Compact

structure CompactResidueLedger where
  families : List ActiveResidueFamily
  closedUnderContainment : Bool
  claimsClearance : Bool
deriving Repr

def compactResidueLedger : CompactResidueLedger :=
  { families :=
      [ ActiveResidueFamily.externalTheoremNotImported
      , ActiveResidueFamily.finiteToAsymptoticTransferMissing
      , ActiveResidueFamily.compactShellOrderErasure
      , ActiveResidueFamily.memoryAsTruthBlocked
      , ActiveResidueFamily.jepaPredictionNotProof
      , ActiveResidueFamily.emlCompressionNotAuthority
      , ActiveResidueFamily.radoExtensionNotImported
      , ActiveResidueFamily.montgomeryRegularizerOnly
      , ActiveResidueFamily.gammaPntMotifOnly
      , ActiveResidueFamily.modularLabelNotAuthority
      , ActiveResidueFamily.correctiveContainmentNotClearance
      ]
    closedUnderContainment := true
    claimsClearance := false }

theorem compactResidueLedger_closed :
    compactResidueLedger.closedUnderContainment = true := by
  rfl

theorem compactResidueLedger_doesNotClaimClearance :
    compactResidueLedger.claimsClearance = false := by
  rfl

end Think.Compact
