# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kind.Variantb802b55cf49469ab2d01dbb62f87bf2882f7977972853b585f5c699424bf8c7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6e83dbb969da22d984ea39e5899bafaed30a1a2` · SHA-256 `b802b55cf49469ab2d01dbb62f87bf2882f7977972853b585f5c699424bf8c7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity

/-! # Oracle progression kinds -/

namespace Mathematics.Progression

inductive StateKind
  | prompt
  | oracleQuery
  | oracleResult
  | modelProposal
  | agreement
  | validation
  | acceptedEffect
  deriving DecidableEq, Repr

end Mathematics.Progression
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbfcceaa08f721b992f090146bb1485100db3547d8bdb4945b1a8326079f1ad2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Kind/Variantb802b55cf49469ab2d01dbb62f87bf2882f7977972853b585f5c699424bf8c7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
