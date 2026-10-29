# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LeanSyntax.Varianteb011ad2dac3304db91be80b6a697c1e8cd16570a1951e5342544e5a569d7be3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `343ea24e720382bcb05bc35bca7e7ed3b99cec47` · SHA-256 `eb011ad2dac3304db91be80b6a697c1e8cd16570a1951e5342544e5a569d7be3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Source

/-! # Lean syntax capture -/

namespace Mathematics.Ingestion

inductive ParseStatus
  | parsed
  | partiallyParsed
  | failed
  deriving DecidableEq, Repr

/-- Parser output and diagnostics are both retained. -/
structure LeanSyntaxCapture where
  source : SourceUnit
  status : ParseStatus
  syntaxTreeDigest : Option Digest
  diagnosticArtifactIds : List StableId
  parserVersionDigest : Digest
  source_is_lean : source.language = .lean
  deriving Repr

end Mathematics.Ingestion
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01b28f3a4047db146130342f29e70c12bc85f81e577a8438b0e35c64965e2b5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LeanSyntax/Varianteb011ad2dac3304db91be80b6a697c1e8cd16570a1951e5342544e5a569d7be3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
