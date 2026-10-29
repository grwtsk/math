# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Discovery.Variant0b47be2b665de7db30a54a5c07d6bbb23899bebe60e5da028b37d96ee0003230

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `183b0d1fba5ea19232dc17aeff88a768decec0c2` · SHA-256 `0b47be2b665de7db30a54a5c07d6bbb23899bebe60e5da028b37d96ee0003230`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.Registry

/-! # Continuous discovery with explicit exceptions -/

namespace Mathematics.Ecosystem

/-- One legally and technically unjudged discovery candidate. -/
structure DiscoveryCandidate where
  candidateId : StableId
  locator : String
  observedDigest : Digest
  deriving DecidableEq, Repr

/-- Every candidate receives an explicit finite-snapshot disposition. -/
inductive DiscoveryDisposition
  | admitted (snapshot : ProjectSnapshotKey)
  | rejected (reason : String)
  | pending (reason : String)
  deriving DecidableEq, Repr

structure DiscoveryRecord where
  candidate : DiscoveryCandidate
  disposition : DiscoveryDisposition
  decisionDigest : Digest
  deriving DecidableEq, Repr

/--
Coverage is finite and explicit.  It makes no claim that discovery of the
open ecosystem has terminated.
-/
structure DiscoveryLedger where
  candidates : List DiscoveryCandidate
  records : List DiscoveryRecord
  candidateIdsUnique :
    (candidates.map DiscoveryCandidate.candidateId).Nodup
  records_exact :
    ∀ candidate,
      candidate ∈ candidates ↔
        ∃ record ∈ records, record.candidate = candidate
  continuousDiscoveryNonclaim : Nonclaim

end Mathematics.Ecosystem
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79c5e382204742a39153f8048c28c37fa6ade4a9591163016564175e59697158 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Discovery/Variant0b47be2b665de7db30a54a5c07d6bbb23899bebe60e5da028b37d96ee0003230.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
