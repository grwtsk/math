# Opaque — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87b9f71d45efcd5dbb5fb79311fa9141f462910f` · SHA-256 `4e46ca37c6552a9c0387cd0dd1dced2751cb73c1db9c8f56f2bef3062321bde0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Raw

/-! # Explicit opaque-artifact retention -/

namespace Mathematics.Ingestion

inductive OpacityReason
  | unsupportedMedia
  | parserUnavailable
  | toolchainUnavailable
  | encrypted
  | intentionallyOpaque
  deriving DecidableEq, Repr

/-- An unparsed artifact remains byte-addressed and queryable. -/
structure OpaqueArtifact where
  artifact : Ecosystem.RawArtifact
  reason : OpacityReason
  diagnosticArtifactIds : List StableId
  classificationDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Ingestion
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1697b3933daed115fcc283590635bb9e29cd1d58dd6f058c40e44679e21182c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opaque/Variant4e46ca37c6552a9c0387cd0dd1dced2751cb73c1db9c8f56f2bef3062321bde0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
