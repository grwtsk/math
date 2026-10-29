# CS03 Injective S1 Vertex Placement Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72fbea130873fc2855e20d4d84ced31b99f0a350` · SHA-256 `98eab78180fa25059ada80e323d7925bb0b996a56457d2f2ad20d6edcce2c597`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cs03InjectiveS1VertexPlacement.Variant04a72a502c9a233bc574d744efdc5709728cd66a4bd69ecab5b23478da639917","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04a72a502c9a233bc574d744efdc5709728cd66a4bd69ecab5b23478da639917","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cs03InjectiveS1VertexPlacement.Variant04a72a502c9a233bc574d744efdc5709728cd66a4bd69ecab5b23478da639917","mathematical_subject":"Foundations.Unclassified","original_sha256":"04a72a502c9a233bc574d744efdc5709728cd66a4bd69ecab5b23478da639917","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/Theorems/CS03_InjectiveS1VertexPlacement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.Registry


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cs03InjectiveS1VertexPlacement.Variant04a72a502c9a233bc574d744efdc5709728cd66a4bd69ecab5b23478da639917

namespace FCRS.ControlledSpherical.Theorems

/-- CS-03 projects the compact `S¹` claim from one shared witness package. -/
theorem cs03_injectiveS1VertexPlacement
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS03Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs03Claim⟩

end FCRS.ControlledSpherical.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aaba39c3c25455edbb7ea1d4d6dcb8ef180cf58096b92f0ed3644383a06c78a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CS03InjectiveS1VertexPlacement/Variantc7b6c59338fdd5ba611f3b7f9d48aa2aaa8332f1f1cad779dc2d3114cb35aac7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
