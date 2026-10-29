# Pole Coverage Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2916f900f303f7a102e86799f5dba91ca8785eea` · SHA-256 `21faad1b38ee326e97d6a1da0eb4246ef764da8e853c868116308976dca2ce5f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PoleAssignmentComplete.Variant18e45cea1371700ce4b759a6247a60f673bb845392d0027c43b681a32fcf6f74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"18e45cea1371700ce4b759a6247a60f673bb845392d0027c43b681a32fcf6f74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PoleAssignmentComplete.Variant18e45cea1371700ce4b759a6247a60f673bb845392d0027c43b681a32fcf6f74","mathematical_subject":"Foundations.Unclassified","original_sha256":"18e45cea1371700ce4b759a6247a60f673bb845392d0027c43b681a32fcf6f74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/Validation/PoleCoverage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Validation.ResidueCoverage


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PoleAssignmentComplete.Variant18e45cea1371700ce4b759a6247a60f673bb845392d0027c43b681a32fcf6f74

set_option autoImplicit false

namespace Think.Validation

theorem poleAssignmentComplete :
    Think.SourceTree.allPhasePlacements.length = 61 := by
  exact Think.SourceTree.pole_assignment_complete

theorem noDuplicatePhasePlacements :
    Think.SourceTree.allPhasePlacements.Nodup := by
  exact Think.SourceTree.no_duplicate_phase_placements

end Think.Validation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc66f2cee3f2be37d010f8b15fdb1e8df54876fcd961b63b0c426bcd9b78575c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PoleCoverage/Variantd738e8c2f01299222284a6bed9e699bb07972ac9261649ba8ed7a24ffeb2e446.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
