# Merge Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52fa623b0f68122541f77e9d6f08a9bcc2a26fe4` · SHA-256 `4968d9043c6c62b51e9ccea32247069b82c67d431f50df6f4e0188a2ce8c2bea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Extractor.Serialization

/-!
# Incremental shard-merge boundary
-/

namespace Mathematics.Extractor

open Mathematics

structure ShardMergeCertificate where
  cleanDigest : Digest
  incrementalDigest : Digest
  comparedFileDigests : Array (CanonicalPath × Digest)
  deriving DecidableEq, Repr, Inhabited

namespace ShardMergeCertificate

/-- Incremental and clean extraction agree only when their canonical digests do. -/
def Valid (certificate : ShardMergeCertificate) : Prop :=
  certificate.cleanDigest = certificate.incrementalDigest

end ShardMergeCertificate

end Mathematics.Extractor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f49375c096df7d088eb32af458187d45e7a0005cff021f66c22fc0d67e2ee2cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant4968d9043c6c62b51e9ccea32247069b82c67d431f50df6f4e0188a2ce8c2bea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
