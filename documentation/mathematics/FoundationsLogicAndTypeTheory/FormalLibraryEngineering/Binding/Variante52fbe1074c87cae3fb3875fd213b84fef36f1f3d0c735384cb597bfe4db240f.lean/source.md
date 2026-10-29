# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Binding.Variante52fbe1074c87cae3fb3875fd213b84fef36f1f3d0c735384cb597bfe4db240f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69f9b972ec53296d58f7357049851a56cb4afda3` · SHA-256 `e52fbe1074c87cae3fb3875fd213b84fef36f1f3d0c735384cb597bfe4db240f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SourceAnalysis.Context

/-! # Exact source/compiled alignment records -/

namespace Mathematics.SourceAnalysis

open Mathematics

inductive BindingClassification
  | direct
  | generated
  | external
  | sourceOnly
  | ambiguous
  deriving DecidableEq, Repr, Inhabited

structure CommandDeclarationBinding where
  commandId : SourceCommandId
  declarationId : Option ExtractorDeclarationId
  classification : BindingClassification
  evidenceDigest : Digest
  exact : Bool
  deriving DecidableEq, Repr

end Mathematics.SourceAnalysis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=662840fd4d53972cac6fcbba3bcb99e0ad08ae4f11244c6bfe3078ff23429af4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binding/Variante52fbe1074c87cae3fb3875fd213b84fef36f1f3d0c735384cb597bfe4db240f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
