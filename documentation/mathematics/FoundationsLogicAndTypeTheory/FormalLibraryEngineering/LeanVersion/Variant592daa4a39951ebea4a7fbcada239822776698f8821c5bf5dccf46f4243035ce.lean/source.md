# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanVersion.Variant592daa4a39951ebea4a7fbcada239822776698f8821c5bf5dccf46f4243035ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f42fc4fbcb8bf0ba6f2521b78d97fd20182d6da6` · SHA-256 `d50d4b209493e3826d0782bbbdfa6020af8373c56dac2824191493662652ea1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanVersion.Variant2b44f1e2641f029791508c49c3907eb67ec9890b08bd0237c99e6824b61f94b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b44f1e2641f029791508c49c3907eb67ec9890b08bd0237c99e6824b61f94b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LeanVersion.Variant2b44f1e2641f029791508c49c3907eb67ec9890b08bd0237c99e6824b61f94b3","mathematical_subject":"Foundations.Unclassified","original_sha256":"2b44f1e2641f029791508c49c3907eb67ec9890b08bd0237c99e6824b61f94b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Toolchain/LeanVersion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.Id

/-! # Exact Lean toolchain versions -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanVersion.Variant2b44f1e2641f029791508c49c3907eb67ec9890b08bd0237c99e6824b61f94b3

namespace Mathematics.Toolchain

structure LeanVersion where
  release : String
  compilerDigest : Digest
  kernelDigest : Digest
  deriving DecidableEq, Repr

def LeanVersion.Valid (version : LeanVersion) : Prop :=
  version.release ≠ "" ∧
    version.compilerDigest.Valid ∧
    version.kernelDigest.Valid

end Mathematics.Toolchain
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b36072d7578b317e42afdbcce81f23979215e39128d47c55c28a6d8847b98ad2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanVersion/Variant592daa4a39951ebea4a7fbcada239822776698f8821c5bf5dccf46f4243035ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
