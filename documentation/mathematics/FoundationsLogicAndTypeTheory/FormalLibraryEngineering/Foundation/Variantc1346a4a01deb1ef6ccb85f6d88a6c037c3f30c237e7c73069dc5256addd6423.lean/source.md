# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foundation.Variantc1346a4a01deb1ef6ccb85f6d88a6c037c3f30c237e7c73069dc5256addd6423

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccc1ac2d8ac8681ea7d7fef8e0da77a5f31626e3` · SHA-256 `f1ed9470a4e6ae36f7a3fdb6ea8a2adc413aea63cefea8c80764db8fe21acfac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemiLocalDefectFoundation.Variant27fface5f41c737bc6aacbcc47b148fb1f01d0a5a48ba1075d87c0a4e65dc0bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27fface5f41c737bc6aacbcc47b148fb1f01d0a5a48ba1075d87c0a4e65dc0bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SemiLocalDefectFoundation.Variant27fface5f41c737bc6aacbcc47b148fb1f01d0a5a48ba1075d87c0a4e65dc0bc","mathematical_subject":"Foundations.Unclassified","original_sha256":"27fface5f41c737bc6aacbcc47b148fb1f01d0a5a48ba1075d87c0a4e65dc0bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Foundation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Noninterference

/-!
# Semi-local defect foundation
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemiLocalDefectFoundation.Variant27fface5f41c737bc6aacbcc47b148fb1f01d0a5a48ba1075d87c0a4e65dc0bc

namespace Mathematics.SemiLocalDefect

structure SemiLocalDefectFoundation
    (primeUniverse : FinitePrimeUniverse)
    (model : OperatorModel) where
  capacity :
    PrimeCutDefectCapacity
      model primeUniverse.Prime
  graph :
    PrimeCutGraphAdapter primeUniverse
  ledger : SemiLocalUnknownLedger
  immutableCut : Prop
  immutableCutProof : immutableCut

end Mathematics.SemiLocalDefect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9718b3d8bba0f267a11dc336f1619fa7640dc7c3b9d1994185aae8fb4ad53c39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundation/Variantc1346a4a01deb1ef6ccb85f6d88a6c037c3f30c237e7c73069dc5256addd6423.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
