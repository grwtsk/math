# Boundary Namespaced Boundary Decision — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60c0bb262943ae4d9ccbc96f9f8b3ec36cd210be` · SHA-256 `5d1feb5de63a2481246e8ca5c635b6376d16c3e243303b4cf13d4bf27b5a511e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.BoundaryDecision.Variant9dc7c7582fe06a9154b8ca1c5b0723a38312629a4f5886e39a1a44901bb863aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9dc7c7582fe06a9154b8ca1c5b0723a38312629a4f5886e39a1a44901bb863aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.BoundaryDecision.Variant9dc7c7582fe06a9154b8ca1c5b0723a38312629a4f5886e39a1a44901bb863aa","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"9dc7c7582fe06a9154b8ca1c5b0723a38312629a4f5886e39a1a44901bb863aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Overlap

/-!
# Evidence-bearing boundary decisions and stability
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.BoundaryDecision.Variant9dc7c7582fe06a9154b8ca1c5b0723a38312629a4f5886e39a1a44901bb863aa

namespace Mathematics.SemanticTokenization

inductive BoundaryDecision
  | boundary
  | noBoundary
  | unresolved
deriving DecidableEq, Repr

inductive MissingFieldPolicy
  | unresolved
  | assumeNoBoundary
  | assumeBoundary
  | useFallback
deriving DecidableEq, Repr

inductive TiePolicy
  | boundary
  | noBoundary
  | unresolved
deriving DecidableEq, Repr

structure BoundaryRule where
  id : RuleId
  threshold : Option ℚ
  tiePolicy : TiePolicy
  missingFieldPolicy : MissingFieldPolicy
  requiredFields : Finset MetadataType
  calibrationScope : String
  snapshot : SnapshotId
  decide : TypedOverlap → BoundaryDecision

structure BoundaryCertificate
    (cut : EvidenceCut)
    (left right : Span cut.text) where
  adjacent : left.Adjacent right
  context : ContextId
  overlap : TypedOverlap
  rule : BoundaryRule
  decision : BoundaryDecision
  ruleSnapshotMatches :
    rule.snapshot = cut.activeSnapshot
  decisionCorrect :
    rule.decide overlap = decision
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty

structure MetadataPerturbation
    (cut : EvidenceCut)
    (source : Finset (Span cut.text))
    (context : ContextId) where
  radius : ℚ
  radius_nonneg : 0 ≤ radius
  relation :
    MetadataProfile cut source context →
    MetadataProfile cut source context →
    Prop

structure BoundaryStabilityCertificate
    {cut : EvidenceCut}
    {left right : Span cut.text}
    (certificate : BoundaryCertificate cut left right) where
  leftPerturbation :
    MetadataPerturbation cut {left} certificate.context
  rightPerturbation :
    MetadataPerturbation cut {right} certificate.context
  recompute :
    MetadataProfile cut {left} certificate.context →
    MetadataProfile cut {right} certificate.context →
    TypedOverlap
  leftObserved :
    MetadataProfile cut {left} certificate.context
  rightObserved :
    MetadataProfile cut {right} certificate.context
  observedMatches :
    recompute leftObserved rightObserved = certificate.overlap
  stable :
    ∀ leftProfile rightProfile,
      leftPerturbation.relation leftObserved leftProfile →
      rightPerturbation.relation rightObserved rightProfile →
      certificate.rule.decide
        (recompute leftProfile rightProfile) =
      certificate.decision

structure ThresholdMarginCertificate
    {cut : EvidenceCut}
    {left right : Span cut.text}
    (certificate : BoundaryCertificate cut left right) where
  observed : ℚ
  threshold : ℚ
  perturbationBound : ℚ
  scoreMatches :
    certificate.overlap.aggregateScore = some observed
  thresholdMatches :
    certificate.rule.threshold = some threshold
  perturbation_nonneg :
    0 ≤ perturbationBound
  strictMargin :
    perturbationBound < |observed - threshold|

theorem boundary_decision_rule_correct
    {cut : EvidenceCut}
    {left right : Span cut.text}
    (certificate : BoundaryCertificate cut left right) :
    certificate.rule.decide certificate.overlap =
      certificate.decision :=
  certificate.decisionCorrect

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0cb89fc6fcb826925b9d4b9c127cf7c146697cf07d39357335017e7cc849ab8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variantfd2f4b221f568cd427f4b92f1d357ea28292fadc7c1d77cf525e8b31daaa902e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
