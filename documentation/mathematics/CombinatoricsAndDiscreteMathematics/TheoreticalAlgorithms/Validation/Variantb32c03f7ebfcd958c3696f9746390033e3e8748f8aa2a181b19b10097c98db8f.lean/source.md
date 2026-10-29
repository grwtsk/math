# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Validation.Variantb32c03f7ebfcd958c3696f9746390033e3e8748f8aa2a181b19b10097c98db8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5fb9c11aece8ab6677425a8937416a5e5991cc5` · SHA-256 `b32c03f7ebfcd958c3696f9746390033e3e8748f8aa2a181b19b10097c98db8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.ProofStrategy.Registry

/-! # Proof-motif and strategy validation -/

namespace MathDiscovery.ProofStrategy

structure Ledger where
  motifs : List MotifObservation
  strategies : List StrategyEvidence

namespace Ledger

def Valid (ledger : Ledger) : Prop :=
  (ledger.motifs.map (·.id)).Nodup ∧
  (ledger.strategies.map (·.id)).Nodup ∧
  (∀ motif ∈ ledger.motifs, motif.Valid) ∧
  (∀ strategy ∈ ledger.strategies,
    strategy.Valid ∧
    ∀ motifId ∈ strategy.motifObservationIds,
      ∃ motif ∈ ledger.motifs,
        motif.id = motifId ∧ motif.theoremId = strategy.theoremId)

end Ledger

end MathDiscovery.ProofStrategy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60f38aa63daca187db5f0d469f925cc491000563bef5e211686cd78d3b9f67d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variantb32c03f7ebfcd958c3696f9746390033e3e8748f8aa2a181b19b10097c98db8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
