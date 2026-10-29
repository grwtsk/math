# Ring — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3568b7c02977c8d64f41e6b2bbaac4b36ad5d258` · SHA-256 `9099ab54254300c1610cadac28ee451bea9b0594791f7d5c963a3f21c462ccb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Semiring

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected

inductive InverseEvent where
  | invalidation
  | contradiction
  | refusal
  | residueCancellation
deriving DecidableEq, Repr

def InvAllowed (_event : InverseEvent) : Bool :=
  true

structure RestrictedInverseRule where
  event : InverseEvent
  vertex : MemoryVertex
  ledgerAtom : ResidueAtom
  allowed : InvAllowed event = true

def ringUnavailableResidues : List ResidueAtom :=
  [ ResidueAtom.semiringOnlyUntilInverseDefined
  , ResidueAtom.ringInverseMissing
  ]

def MemoryRingAvailable (rules : List RestrictedInverseRule) : Prop :=
  rules.length > 0

theorem no_rules_no_ring :
    ¬ MemoryRingAvailable [] := by
  intro h
  unfold MemoryRingAvailable at h
  simp at h

theorem ringUnavailableResidues_contains_missing :
    ResidueAtom.ringInverseMissing ∈ ringUnavailableResidues := by
  simp [ringUnavailableResidues]

end Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d31d2a9fdbfbb83fe02e7170d08c744b25c949f24d6c062df92606251c517f70 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ring/Variant9099ab54254300c1610cadac28ee451bea9b0594791f7d5c963a3f21c462ccb2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
