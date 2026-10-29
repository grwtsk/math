# HEN05 HSGCriterion Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01a9c50a604ee2dc347d90b6e54a74e54b0dfbcb` · SHA-256 `5ab8f051272e04ee4f6190aed5c62059648a8d892d1a20d4659702bdde09b021`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen05HsgCriterion.Variantfeea90707c3976e900ce9c55c5463eb0da0baa164f934b3fa2fdc8f06a590bdd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"feea90707c3976e900ce9c55c5463eb0da0baa164f934b3fa2fdc8f06a590bdd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Hen05HsgCriterion.Variantfeea90707c3976e900ce9c55c5463eb0da0baa164f934b3fa2fdc8f06a590bdd","mathematical_subject":"Foundations.Unclassified","original_sha256":"feea90707c3976e900ce9c55c5463eb0da0baa164f934b3fa2fdc8f06a590bdd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/HEN05_HSGCriterion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Theorems.HEN03_EssentialImageCharacterization


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen05HsgCriterion.Variantfeea90707c3976e900ce9c55c5463eb0da0baa164f934b3fa2fdc8f06a590bdd

namespace FCRS.Algebraization.Theorems

/--
Unrestricted essential surjectivity is equivalent to Henselian Serre
generation, after the scoped essential-image characterization is available.
-/
theorem hen05_hsgCriterion
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    EssentiallySurjective S.functors.HenPullback ↔
    HenselianSerreGeneration S.generators S.cohHenEpi := by
  have hCharacterization :=
    hen03_essentialImageCharacterization
      S registry hProfile hSource
  constructor
  · intro hEssential Y
    exact (hCharacterization Y).mpr (hEssential Y)
  · intro hHSG Y
    exact (hCharacterization Y).mp (hHSG Y)

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b534469430d44546e1a9b03a89b714f90bf9e514da930b1bd733e097b695ca99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN05HSGCriterion/Variant3bbd20c41a4dae21c871da303440d147734be36bb848481a3099fa3a0fd947e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
