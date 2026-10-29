# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Adjudication.Variant40a06eb83166d9b8bd2dfd0bbe21704c0636f4a2e7c2cb05674cf8e9e34d8a84

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1800514731603d6a1f1ec4321a20c75723f967c` · SHA-256 `40a06eb83166d9b8bd2dfd0bbe21704c0636f4a2e7c2cb05674cf8e9e34d8a84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.ExternalAssertion

/-!
# Explicit evidence conflict and adjudication
-/

namespace Mathematics.SemanticTokenization

structure EvidenceConflict where
  assertion : AssertionId
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  description : String
deriving Repr

inductive AdjudicationDecision
  | acceptAll
  | acceptOnly (evidence : Finset EvidenceId)
  | retainAmbiguity
  | rejectAll
deriving Repr

structure AdjudicationCertificate where
  conflict : EvidenceConflict
  decision : AdjudicationDecision
  adjudicator : AuthorityClass
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  snapshot : SnapshotId
  certificateDigest : Digest
deriving Repr

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5cb037380d59eb205fa73c2b6bcb0b4a5a217ffca31a08da7641eab5f3f72147 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Adjudication/Variant40a06eb83166d9b8bd2dfd0bbe21704c0636f4a2e7c2cb05674cf8e9e34d8a84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
