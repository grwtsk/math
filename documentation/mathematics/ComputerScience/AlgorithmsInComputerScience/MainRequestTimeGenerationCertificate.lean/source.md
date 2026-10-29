# Main Request Time Generation Certificate — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `226a2cbc3cc41dcffd4c090fb085561d115f0b18` · SHA-256 `946e40d7dc439836cf34879e573186722cfeb4d2a548fb2d4866e85007c04885`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Incremental.RustProtocol

namespace Surface
namespace Incremental

structure RequestTimeGenerationCertificate where
  result : IncrementalGenerationResult
  astDisciplinePreserved : Prop
  astDisciplinePreservedCertified : astDisciplinePreserved
  deterministicRequestTimeGeneration : Prop
  deterministicRequestTimeGenerationCertified : deterministicRequestTimeGeneration
  claimBoundary : List String

theorem requestTime_generation_preserves_AST_discipline
    (C : RequestTimeGenerationCertificate) :
    C.astDisciplinePreserved :=
  C.astDisciplinePreservedCertified

theorem requestTime_generation_is_deterministic
    (C : RequestTimeGenerationCertificate) :
    C.deterministicRequestTimeGeneration :=
  C.deterministicRequestTimeGenerationCertified

end Incremental
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0388a2275b16ecf1025edc1a7e8fdca627d8a84a6b90a39c13a95709bf32f21b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant946e40d7dc439836cf34879e573186722cfeb4d2a548fb2d4866e85007c04885.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
