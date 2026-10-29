# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactInductionCorrect.Variant9de6a9ec6f345f73970c0233d8f61f70b1dae8b7cdd020d57370a6fbef6101f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ce81c6af679b5297de1b0370b343ac2c55eff52` · SHA-256 `a6d39f4d41f41bf63086785e58868ee99be4275470182126b1a0059451aad774`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolesOnlyRequireCompactConservativeResidueCover.Variant7f2fe05e717af194e25e0b80bb0da6a4aec25f9120cb5a3b7b480133eea15d32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f2fe05e717af194e25e0b80bb0da6a4aec25f9120cb5a3b7b480133eea15d32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.PolesOnlyRequireCompactConservativeResidueCover.Variant7f2fe05e717af194e25e0b80bb0da6a4aec25f9120cb5a3b7b480133eea15d32","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"7f2fe05e717af194e25e0b80bb0da6a4aec25f9120cb5a3b7b480133eea15d32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/Validation/CompactInductionCorrect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.CompactInduction


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolesOnlyRequireCompactConservativeResidueCover.Variant7f2fe05e717af194e25e0b80bb0da6a4aec25f9120cb5a3b7b480133eea15d32

set_option autoImplicit false

namespace Think.Validation.CompactInductionCorrect

theorem poles_only_require_compact_conservative_residue_cover
    (H : Think.RadoProjectedModularHeatflow.MemoryCore.CompactInductionHypotheses)
    (h : Think.RadoProjectedModularHeatflow.MemoryCore.compactInductiveFromPoles H) :
    H.poleCoversCompactConservative ∧ H.poleResiduesComplete :=
  Think.RadoProjectedModularHeatflow.MemoryCore.poles_alone_need_compact_conservative_residue_cover H h

theorem admitted_compact_induction_has_poles_determine_compacts
    (H : Think.RadoProjectedModularHeatflow.MemoryCore.CompactInductionHypotheses)
    (h : H.admitted) :
    H.polesDetermineCompacts := by
  exact h.1

theorem admitted_compact_induction_has_pair_bound
    (H : Think.RadoProjectedModularHeatflow.MemoryCore.CompactInductionHypotheses)
    (h : H.admitted) :
    H.pairCorrelationBelowTolerance := by
  exact h.2.2.2.2.2

end Think.Validation.CompactInductionCorrect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=041ef711e845c18afd7d7ecf399f6afac528fbe45fd8f29d9f5138225bfe6abc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactInductionCorrect/Variant9de6a9ec6f345f73970c0233d8f61f70b1dae8b7cdd020d57370a6fbef6101f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
