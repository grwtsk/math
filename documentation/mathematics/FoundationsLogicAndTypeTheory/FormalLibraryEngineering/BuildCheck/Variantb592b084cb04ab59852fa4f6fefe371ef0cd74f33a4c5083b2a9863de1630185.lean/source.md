# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuildCheck.Variantb592b084cb04ab59852fa4f6fefe371ef0cd74f33a4c5083b2a9863de1630185

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4b4930bf3aaecff70dd6fc6f23f5bbc303e9af5` · SHA-256 `cf0a443ffeb58ec18ca765d9e0e9e35eec9d30c0bcab801a02e2d0bfbff57c92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuildCheck.Variant15fc2f1580123d7d887bee37469fc70fbc32b9842b0527e2f9aef0d50350c65e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15fc2f1580123d7d887bee37469fc70fbc32b9842b0527e2f9aef0d50350c65e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BuildCheck.Variant15fc2f1580123d7d887bee37469fc70fbc32b9842b0527e2f9aef0d50350c65e","mathematical_subject":"Foundations.Unclassified","original_sha256":"15fc2f1580123d7d887bee37469fc70fbc32b9842b0527e2f9aef0d50350c65e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Reflection/BuildCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Reflection.Patch
import Mathematics.Toolchain.BuildReceipt

/-! # Reflection build and test checks -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuildCheck.Variant15fc2f1580123d7d887bee37469fc70fbc32b9842b0527e2f9aef0d50350c65e

namespace Mathematics.Reflection

structure BuildCheck (patch : Patch) where
  receipt : Toolchain.BuildReceipt
  target_capsule_exact :
    receipt.capsuleKey = patch.candidate.targetCapsule
  status_succeeded : receipt.status = .succeeded
  testSuiteDigest : Digest
  styleCheckDigest : Digest
  allRequiredTestsPassed : Bool
  targetConventionsPassed : Bool
  targetRevisionChecked : Bool

theorem BuildCheck.is_success
    {patch : Patch}
    (check : BuildCheck patch) :
    check.receipt.status = .succeeded :=
  check.status_succeeded

end Mathematics.Reflection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b94e6bee4ee71a7cbc6ae8750d79459cf46f15dca374fbae61f8a70923cf8bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuildCheck/Variantb592b084cb04ab59852fa4f6fefe371ef0cd74f33a4c5083b2a9863de1630185.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
