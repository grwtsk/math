# Kind Lane — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7abcd2d85c86bcfaeeedb548e2143a2493117c31` · SHA-256 `fd3171f36bd54fcb7ddb6f3f70c9fb00063b970c1b4b954dfe1570292a2a408f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Authority.Evidence

/-! # Irreducible network and project kinds -/

namespace URSM.Network

inductive Lane
  | command
  | outcome
  | state
  | telemetry
  deriving DecidableEq, Repr

def Lane.durable : Lane → Bool
  | .command => false
  | .outcome => true
  | .state => false
  | .telemetry => false

inductive ProjectKind
  | rust
  | lean
  | composite
  deriving DecidableEq, Repr

inductive OutcomeStatus
  | committed
  | rejected
  | failed
  | stale
  | cancelled
  | quarantined
  deriving DecidableEq, Repr

inductive AuthorityLabel
  | kernelTheorem
  | checkedOperational
  | runtimeObservation
  | contractPayload
  | unresolved
  deriving DecidableEq, Repr

def AuthorityLabel.evidenceKind : AuthorityLabel → Mathematics.Authority.EvidenceKind
  | .kernelTheorem => .fixedLeanPredicate
  | .checkedOperational => .runtimeObservation
  | .runtimeObservation => .runtimeObservation
  | .contractPayload => .contractProposition
  | .unresolved => .runtimeObservation

end URSM.Network
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b019a1e94ea1e8fe4c050d51c899b16879735bca97646ccea30e14ce72a79612 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Kind/Variantfd3171f36bd54fcb7ddb6f3f70c9fb00063b970c1b4b954dfe1570292a2a408f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
