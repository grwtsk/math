# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintTC.Variant7ff9221672795edb51ebe4b75f85ea88a6c572297341adc0b2cc9c46ed7222cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `197be0528d1c9b3e332b8262a54299943e30c394` · SHA-256 `9fc4e0a12e23c88b4e37f8e381923c7501fc2166bfcb9deb428d8201beb652b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeClass.Variant0dedd781ec5b03aa8acb4cdd50ba88c31a13bed0a3a63d8e57cadd8a154b29e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0dedd781ec5b03aa8acb4cdd50ba88c31a13bed0a3a63d8e57cadd8a154b29e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.TypeClass.Variant0dedd781ec5b03aa8acb4cdd50ba88c31a13bed0a3a63d8e57cadd8a154b29e2","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0dedd781ec5b03aa8acb4cdd50ba88c31a13bed0a3a63d8e57cadd8a154b29e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/lintTC.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Lint.TypeClass

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeClass.Variant0dedd781ec5b03aa8acb4cdd50ba88c31a13bed0a3a63d8e57cadd8a154b29e2

open Std.Tactic.Lint

namespace A
local instance impossible {α β : Type} [Inhabited α] : Nonempty α := ⟨default⟩
#eval do guard (← impossibleInstance.test ``impossible).isSome
end A

namespace B
instance bad : Nat := 1
#eval do guard (← nonClassInstance.test ``bad).isSome
instance good : Inhabited Nat := ⟨1⟩
#eval do guard (← nonClassInstance.test ``good).isNone
end B
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a86900b561b42d7614112bf115caa1e6d242f813995a0d6ccab830094ee73cea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintTC/Variant7ff9221672795edb51ebe4b75f85ea88a6c572297341adc0b2cc9c46ed7222cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
