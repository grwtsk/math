# Grounded Laplacian Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c24fa4b765c73b0a675cf26d74d0e939cb20a4fd` · SHA-256 `75fbccba41c2f9790616ed34893c33e65c738df2bbfc918a0dd543df30231787`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ExactRationalEdge.Variant2f002e0b98b84545d69c05f6b6f5fc4acc4c817e1a5e40852e8dd38f1f39f9e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f002e0b98b84545d69c05f6b6f5fc4acc4c817e1a5e40852e8dd38f1f39f9e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ExactRationalEdge.Variant2f002e0b98b84545d69c05f6b6f5fc4acc4c817e1a5e40852e8dd38f1f39f9e3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"2f002e0b98b84545d69c05f6b6f5fc4acc4c817e1a5e40852e8dd38f1f39f9e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Memory/GroundedLaplacian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Rat.Defs


namespace GRWTSK.FoundationsLogicAndTypeTheory.ExactRationalEdge.Variant2f002e0b98b84545d69c05f6b6f5fc4acc4c817e1a5e40852e8dd38f1f39f9e3

namespace Noeoueue.TypeMemory

structure ExactRationalEdge where
  numerator : Nat
  denominator : Nat
  positive : 0 < numerator
  nonzero : denominator ≠ 0

def componentKernelDimension (valid grounded : Bool) : Nat := if valid && !grounded then 1 else 0

end Noeoueue.TypeMemory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1da4ad270ffbb8848d763a625a48665a5d036d3450bef43bdcd863d35ea2fe9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/GroundedLaplacian/Variant9ac33df7eeba001b0802a2012ac55d6e03bb9aec80b403bc4a99a9d0c41b9648.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
