# Rebirth — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99445c0dd69c0177f590610c2af438fedc60d73d` · SHA-256 `85fc3eea455060d5ede49554c4d765269194bd3bcb52a0601cfd94f447d83d17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Operational.Surgery
import Mathematics.TensorNetwork.Anchor

/-!
# Beacon-preserving anchor rebirth

Anchor replacement is surgery, not gauge.  The active state is unchanged when
candidate verification fails, and accepted surgery preserves permanent beacon
labels through an injective continuation.
-/

namespace Mathematics.TensorNetwork

universe u v

/-- Proof-bearing state surgery into one reproductive anchor. -/
structure AnchorRebirthCertificate
    (Context : Type u)
    (N D : Nat)
    (SourceLabel TargetLabel : Type v)
    (sourceBeacon : SourceLabel → TensorState N D)
    (targetBeacon : TargetLabel → TensorState N D)
    (active : TensorState N D) where
  anchor : ReproductiveAnchorCertificate Context N D
  surgery : TensorState N D → TensorState N D
  selectsAnchor :
    surgery active = anchor.anchorState
  beaconPreservation :
    Mathematics.Operational.BeaconPreservationCertificate
      sourceBeacon targetBeacon surgery
  prestate : TensorState N D
  prestateExact : prestate = active

/-- Immutable candidate application: rejection preserves the exact prestate. -/
def applyCandidate
    (accepted : Bool)
    (active candidate : TensorState N D) :
    TensorState N D :=
  if accepted then candidate else active

@[simp] theorem rejectedCandidate_preserves_active
    (active candidate : TensorState N D) :
    applyCandidate false active candidate = active := by
  simp [applyCandidate]

end Mathematics.TensorNetwork
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=685a4b763c7a56df9d80186225ce5b932cab2e734ca170aae3c2504d03d4896c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rebirth/Variant85fc3eea455060d5ede49554c4d765269194bd3bcb52a0601cfd94f447d83d17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
