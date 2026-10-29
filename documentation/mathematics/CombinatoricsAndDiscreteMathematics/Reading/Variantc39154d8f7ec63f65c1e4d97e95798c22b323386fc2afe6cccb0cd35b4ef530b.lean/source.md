# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Reading.Variantc39154d8f7ec63f65c1e4d97e95798c22b323386fc2afe6cccb0cd35b4ef530b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f813d33deea5ff64ae8192ab09cf0543af46da56` · SHA-256 `45d5e8182ea2bd06765ee86e7e89f030ed7f734997794d36f3dd69653c56a383`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.LiteralReading.Variant9d5a76f41fbe8a01d57f98d5f9bf7333c9c3db9a131bbc6ac0929ae3dd6936b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d5a76f41fbe8a01d57f98d5f9bf7333c9c3db9a131bbc6ac0929ae3dd6936b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.LiteralReading.Variant9d5a76f41fbe8a01d57f98d5f9bf7333c9c3db9a131bbc6ac0929ae3dd6936b9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"9d5a76f41fbe8a01d57f98d5f9bf7333c9c3db9a131bbc6ac0929ae3dd6936b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Reading.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Composition

/-!
# Literal candidates and externally certified contextual readings
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.LiteralReading.Variant9d5a76f41fbe8a01d57f98d5f9bf7333c9c3db9a131bbc6ac0929ae3dd6936b9

namespace Mathematics.SemanticTokenization

structure LiteralReading
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  composition : CompositionCertificate cut phrase
  lexicalEvidence : Finset EvidenceId
  syntacticEvidence : Finset EvidenceId

structure ContextualReading
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  interpretation : CertifiedInterpretation cut
  sourceMatches :
    interpretation.external.source =
      phrase.spans.toList.toFinset
  contextMatches :
    interpretation.external.context =
      phrase.context

theorem certified_interpretation_has_external_source
    {cut : EvidenceCut}
    (interpretation : CertifiedInterpretation cut) :
    ∃ external,
      interpretation.external = external ∧
      AcceptedInterpretation cut external :=
  no_interpretation_without_external_assertion interpretation

theorem model_candidate_not_theorem_authority
    {cut : EvidenceCut}
    {candidate : CandidateInterpretation cut.text}
    (member : candidate ∈ generateCandidates cut) :
    candidate.authoritative = false :=
  generated_candidates_not_certified member

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=235a42ae8f07b016d6f719515127e03183a281b0e5afe829cacb37c629c873db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Reading/Variantc39154d8f7ec63f65c1e4d97e95798c22b323386fc2afe6cccb0cd35b4ef530b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
