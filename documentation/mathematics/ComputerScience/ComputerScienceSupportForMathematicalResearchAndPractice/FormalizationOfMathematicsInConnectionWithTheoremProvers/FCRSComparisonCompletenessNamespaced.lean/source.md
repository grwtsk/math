# FCRSComparison Completeness Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8567600660bf29e0d65edaaaf7848be7c7857d1b` · SHA-256 `9a367c216909d8bc0ede4a34946cfaf6e93ad7c0a9b75c1cf8a3cb8bd5abb049`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FcrsComparisonComplete.Variant14061bdefd9b2aef541da20b51106922f80c5ecef3aed7aa988eb9f2db3cbc1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14061bdefd9b2aef541da20b51106922f80c5ecef3aed7aa988eb9f2db3cbc1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FcrsComparisonComplete.Variant14061bdefd9b2aef541da20b51106922f80c5ecef3aed7aa988eb9f2db3cbc1f","mathematical_subject":"Foundations.Unclassified","original_sha256":"14061bdefd9b2aef541da20b51106922f80c5ecef3aed7aa988eb9f2db3cbc1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Theorems/FCRSComparisonCompleteness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Theorems.FCRSConditionalCompleteness


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FcrsComparisonComplete.Variant14061bdefd9b2aef541da20b51106922f80c5ecef3aed7aa988eb9f2db3cbc1f

namespace FCRS

/-- The comparison-equivalence consequence of the full conditional theorem. -/
theorem fcrs_comparison_complete
    (S : RealizationSystem)
    (registry : TheoremRegistry S)
    (h : FullHypotheses S) :
    EquivalenceWitness S.carrier.functors.RB ∧
    EquivalenceWitness S.carrier.functors.BA ∧
    EquivalenceWitness S.carrier.functors.RigEta := by
  have complete :=
    fcrs_full_conditional_completeness S registry h
  exact ⟨
    complete.rigidBerkovichEquivalence,
    ⟨complete.berkovichAdicEquivalence, complete.raynaudEquivalence⟩
  ⟩

end FCRS
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed1120e6efd2ed70cc7698aea990aff037c722a1948bcc843ed9bf4853b979e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FCRSComparisonCompleteness/Variantc03c44c0c84aa61da5694e49162ccd1aa4d21e28d56014702760474c31281d23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
