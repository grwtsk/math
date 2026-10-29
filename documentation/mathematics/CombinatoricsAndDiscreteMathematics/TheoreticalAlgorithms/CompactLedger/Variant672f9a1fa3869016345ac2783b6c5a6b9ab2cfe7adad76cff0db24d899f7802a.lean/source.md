# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompactLedger.Variant672f9a1fa3869016345ac2783b6c5a6b9ab2cfe7adad76cff0db24d899f7802a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09759255af5cd67df3b5eeb665f4543aaaf9dbb2` · SHA-256 `672f9a1fa3869016345ac2783b6c5a6b9ab2cfe7adad76cff0db24d899f7802a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf8e56cf8bb1f1813cc1634e5e78c2c9692095fbdb9400b1168f9dafac4f435f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompactLedger/Variant672f9a1fa3869016345ac2783b6c5a6b9ab2cfe7adad76cff0db24d899f7802a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
