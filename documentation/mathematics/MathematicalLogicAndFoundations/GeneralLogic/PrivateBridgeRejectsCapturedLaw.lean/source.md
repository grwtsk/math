# Private Bridge Rejects Captured Law — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48d5a8e1e356c945c8b4d5d648ede76f253e00e3` · SHA-256 `a1de12ab89aa4af845f88e6fbe630980b4bc3d8b3e19d5a4f465b96d74dbbd93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.TheoremTransfer.Adapters.FCRSFullDerivation

namespace FCRS.TheoremTransfer.Cycle6.PrivateBridge

open FCRS.Transport
open FCRS.TheoremTransfer.Adapters.FCRSTransport

universe uInput uWitness uCoordinate uEdge

variable {Input : Type uInput} {Witness : Type uWitness}
variable {Coordinate : Type uCoordinate} {Edge : Type uEdge}
variable {profile : IntervalProfile Input Witness} {input : Input}
variable {graph : CoordinateGraph .Materialized Coordinate Edge}
variable {consequence : GraphConsequence graph}
variable (capturedTargetProof : consequence.statement)

/--
The cycle-5 arbitrary-law attack is submitted independently against the public
API.  `fail_if_success` makes this audit reproduction compile only when Lean
rejects direct construction of the module-private bridge constructor.
-/
example : True := by
  fail_if_success
    exact ({
      bridgeArtifact := projectionVersion "cycle-6-forbidden-captured-bridge"
      law := fun _sourceProof => capturedTargetProof
    } : FullNativePreservationBridge
      (profile := profile) (input := input) (consequence := consequence))
  trivial

end FCRS.TheoremTransfer.Cycle6.PrivateBridge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f833719d2a4ece596a22c80de86fdd61353fc2ce3132787270ece7286d6c7b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/01PrivateBridgeRejectsCapturedLaw/Varianta1de12ab89aa4af845f88e6fbe630980b4bc3d8b3e19d5a4f465b96d74dbbd93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
