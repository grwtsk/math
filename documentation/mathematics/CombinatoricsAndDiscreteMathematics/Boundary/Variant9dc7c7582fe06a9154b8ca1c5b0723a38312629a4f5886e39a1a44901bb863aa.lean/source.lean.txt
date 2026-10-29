import Mathematics.SemanticTokenization.Overlap

/-!
# Evidence-bearing boundary decisions and stability
-/

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
