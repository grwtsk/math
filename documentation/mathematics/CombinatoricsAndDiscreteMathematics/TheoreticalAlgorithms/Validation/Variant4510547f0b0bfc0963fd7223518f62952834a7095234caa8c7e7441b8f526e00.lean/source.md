# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Validation.Variant4510547f0b0bfc0963fd7223518f62952834a7095234caa8c7e7441b8f526e00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afc8bbaf6bcf41da93f3f815e2a63da3f2c42f2b` · SHA-256 `4510547f0b0bfc0963fd7223518f62952834a7095234caa8c7e7441b8f526e00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ProofStrategy.Registry

/-! # Proof-motif and strategy validation -/

namespace Mathematics.ProofStrategy

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

end Mathematics.ProofStrategy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55d2800898f5e8d823628b7ce3d3832ac1e8f9b32724603e694ff4f5b2e0b9c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variant4510547f0b0bfc0963fd7223518f62952834a7095234caa8c7e7441b8f526e00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
