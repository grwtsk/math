# Def Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ffdf957f61275edef49451adc89f65c5f4619d1` · SHA-256 `9a93ebf28fed53926ad96b74c6db6bce4fe7802945f9ad0491bc0a38dff4eb18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BadlyDefinedNatWithSorry.Variant26acc316657ef409d3e0fe2b3a60d5852c30eeb8eb8588f3f073819b903e5a52","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26acc316657ef409d3e0fe2b3a60d5852c30eeb8eb8588f3f073819b903e5a52","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BadlyDefinedNatWithSorry.Variant26acc316657ef409d3e0fe2b3a60d5852c30eeb8eb8588f3f073819b903e5a52","mathematical_subject":"Foundations.Unclassified","original_sha256":"26acc316657ef409d3e0fe2b3a60d5852c30eeb8eb8588f3f073819b903e5a52","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraphTest/WithSorry/Def.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BadlyDefinedNatWithSorry.Variant26acc316657ef409d3e0fe2b3a60d5852c30eeb8eb8588f3f073819b903e5a52

/-- warning: declaration uses `sorry` -/
#guard_msgs in
def badly_defined_nat_with_sorry : Nat :=
  let n : Nat := 1 + sorry
  n
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85a8100c70377f68c9b7dca9395988bb64303177275dfa2bb73d831084981931 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Def/Variant7480221012eb6861c4aaaf279c8310ba3ecc0f3082ea171b70a4e2a66e115bdd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
