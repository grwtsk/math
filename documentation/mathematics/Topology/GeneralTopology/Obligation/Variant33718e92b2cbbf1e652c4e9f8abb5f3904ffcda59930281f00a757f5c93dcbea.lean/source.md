# Complete source: GRWTSK.Topology.GeneralTopology.Obligation.Variant33718e92b2cbbf1e652c4e9f8abb5f3904ffcda59930281f00a757f5c93dcbea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af86d3436a47b3bc7c9f123a96565fe46c0f79cb` · SHA-256 `33718e92b2cbbf1e652c4e9f8abb5f3904ffcda59930281f00a757f5c93dcbea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.WorldModel.TrustedBase

/-!
# Explicit unresolved obligations

Research targets and missing implementation bridges are data in this ledger.
Only a discharged record may name a discharge artifact, and no constructor
contains a proof of the target statement.
-/

namespace Surface.ContinuousAssurance.WorldModel

/-- Honest lifecycle state of an obligation. -/
inductive ObligationStatus
  | open
  | blocked
  | discharged
  | superseded
  deriving DecidableEq, Repr

/-- A finite-scope research, proof, implementation, or governance obligation. -/
structure ObligationRecord where
  identity : ObligationId
  statement : String
  owner : Project
  assumptions : List AssumptionId
  affectedObjects : List MathematicalObjectId
  status : ObligationStatus
  dischargeArtifact : Option ArtifactIdentity
  discharged_names_artifact :
    status = .discharged → ∃ artifact, dischargeArtifact = some artifact
  supersedes : Option ObligationId

/-- Every discharged obligation names an explicit artifact. -/
theorem ObligationRecord.discharged_has_artifact
    (record : ObligationRecord)
    (h : record.status = .discharged) :
    ∃ artifact, record.dischargeArtifact = some artifact :=
  record.discharged_names_artifact h

/-- Open obligations cannot be consumed as proof terms by this API. -/
def ObligationRecord.IsOpen (record : ObligationRecord) : Prop :=
  record.status = .open ∨ record.status = .blocked

end Surface.ContinuousAssurance.WorldModel
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=091f3136e8ebb0899afe3fb24a0ae9bb64b2db2a0f19ebdf09d49e38063c3506 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Obligation/Variant33718e92b2cbbf1e652c4e9f8abb5f3904ffcda59930281f00a757f5c93dcbea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
