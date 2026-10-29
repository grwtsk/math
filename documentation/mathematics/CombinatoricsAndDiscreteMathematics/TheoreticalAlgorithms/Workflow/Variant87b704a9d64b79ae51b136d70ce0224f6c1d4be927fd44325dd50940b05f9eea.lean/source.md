# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Workflow.Variant87b704a9d64b79ae51b136d70ce0224f6c1d4be927fd44325dd50940b05f9eea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2f4ccc5a4730264712357bc55996faa334cb934` · SHA-256 `87b704a9d64b79ae51b136d70ce0224f6c1d4be927fd44325dd50940b05f9eea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Source

/-! # Build and verification workflows -/

namespace Mathematics.Ingestion

structure WorkflowRecord where
  workflowId : StableId
  source : SourceUnit
  triggerDigest : Digest
  commandDigests : List Digest
  environmentVariableNames : List String
  secretValuesRetained : Bool := false
  deriving DecidableEq, Repr

end Mathematics.Ingestion
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b162e1b5fca59b88a51f825f7446e0bb3e418a02ea8844b1c126f09cf75b5d57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Workflow/Variant87b704a9d64b79ae51b136d70ce0224f6c1d4be927fd44325dd50940b05f9eea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
