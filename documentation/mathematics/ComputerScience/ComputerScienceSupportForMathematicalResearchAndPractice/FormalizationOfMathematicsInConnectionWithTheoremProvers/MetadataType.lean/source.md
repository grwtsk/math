# Metadata Type — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25bb35feaed17f4cfee33a0175378194e1cde91e` · SHA-256 `956b3113e5be7f7a47910ccd0225475bdd4d88f4ab3f3f1211b6510707da5a59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Span

/-! # Dependent metadata sorts -/

namespace Mathematics.SemanticTokenization

inductive MetadataType
  | lexeme
  | lemma
  | partOfSpeech
  | syntacticRole
  | concept
  | frame
  | domain
  | register
  | polarity
  | modality
  | figurativeStatus
  | argumentRole
  | discourseRole
  | referent
  | evidence
  deriving DecidableEq, Repr

structure MetadataValue (kind : MetadataType) where
  value : String
  deriving DecidableEq, Repr

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7f930a880dddb32ffe5720a8217c88835821ebf930073abfe7579e7982bc413 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetadataType/Variant956b3113e5be7f7a47910ccd0225475bdd4d88f4ab3f3f1211b6510707da5a59.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
