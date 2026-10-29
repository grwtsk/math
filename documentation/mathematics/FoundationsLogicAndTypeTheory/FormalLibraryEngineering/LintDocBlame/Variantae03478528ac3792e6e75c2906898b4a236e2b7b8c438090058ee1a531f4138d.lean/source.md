# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintDocBlame.Variantae03478528ac3792e6e75c2906898b4a236e2b7b8c438090058ee1a531f4138d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bfc0d36057a35077013c78810b634d8b81d2453` · SHA-256 `590f02c5dc2fbef70cad84f5d9a078daf8ddecca0dfd64ac6291dc31a89930eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtLeastThirtySeven.Variant1eb70267614b6070881277e7e778693d783532df3ce6b8aed0a7272b2a5e60f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1eb70267614b6070881277e7e778693d783532df3ce6b8aed0a7272b2a5e60f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AtLeastThirtySeven.Variant1eb70267614b6070881277e7e778693d783532df3ce6b8aed0a7272b2a5e60f1","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1eb70267614b6070881277e7e778693d783532df3ce6b8aed0a7272b2a5e60f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/lint_docBlame.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Lint


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtLeastThirtySeven.Variant1eb70267614b6070881277e7e778693d783532df3ce6b8aed0a7272b2a5e60f1

set_option linter.missingDocs false

/-- A docstring is needed here -/
structure AtLeastThirtySeven where
  /-- and here -/
  val : Nat := 1
  -- but not here
  prop : 37 ≤ val

-- or here
theorem AtLeastThirtySeven.lt (x : AtLeastThirtySeven) : 36 < x.val := x.prop

#lint- only docBlame
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d2d0372ac5024f8f6f72309e866d8ac05f5e180f32f6dcbf8b3a35d50272769 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintDocBlame/Variantae03478528ac3792e6e75c2906898b4a236e2b7b8c438090058ee1a531f4138d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
