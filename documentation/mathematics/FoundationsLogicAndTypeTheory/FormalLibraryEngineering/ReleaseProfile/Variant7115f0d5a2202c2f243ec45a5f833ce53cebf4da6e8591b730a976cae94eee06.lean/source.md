# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReleaseProfile.Variant7115f0d5a2202c2f243ec45a5f833ce53cebf4da6e8591b730a976cae94eee06

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f11e2573e67663c6863c4fd3687e377f684ca933` · SHA-256 `e651ff96a5bcaf16c5377cb691caf2d0354d6c3645afe0181509a318133a8115`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReleaseProfileDescriptor.Variantb461b02ed74c16d7238014c9437b1a8b88ed53b0f25fc3f591772a8a0c0d70ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b461b02ed74c16d7238014c9437b1a8b88ed53b0f25fc3f591772a8a0c0d70ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ReleaseProfileDescriptor.Variantb461b02ed74c16d7238014c9437b1a8b88ed53b0f25fc3f591772a8a0c0d70ba","mathematical_subject":"Foundations.Unclassified","original_sha256":"b461b02ed74c16d7238014c9437b1a8b88ed53b0f25fc3f591772a8a0c0d70ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Access/ReleaseProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReleaseProfileDescriptor.Variantb461b02ed74c16d7238014c9437b1a8b88ed53b0f25fc3f591772a8a0c0d70ba

namespace Mathematics.SemiLocalDefect.Access

structure ReleaseProfileDescriptor where
  profileRef : String
  scoreUnitRef : String
  lowerBoundCertificateRef : Option String
  heuristicAdmissionAllowed : Bool := false
  status : OpenBridgeStatus :=
    openBridgeStatus .releaseProfile

end Mathematics.SemiLocalDefect.Access
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b01363c07227e11c53bd0193780298046d2b185106a166baecbf942250a9808 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseProfile/Variant7115f0d5a2202c2f243ec45a5f833ce53cebf4da6e8591b730a976cae94eee06.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
