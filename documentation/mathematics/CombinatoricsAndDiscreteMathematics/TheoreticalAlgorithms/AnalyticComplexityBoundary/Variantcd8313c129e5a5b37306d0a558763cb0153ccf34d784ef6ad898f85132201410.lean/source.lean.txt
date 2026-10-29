-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AnalyticClaim.Variant590e7f90f52b3873949aeefd6d6287bacf8e3fa88f206e74d5b8af7d0f39e715","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"590e7f90f52b3873949aeefd6d6287bacf8e3fa88f206e74d5b8af7d0f39e715","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.AnalyticClaim.Variant590e7f90f52b3873949aeefd6d6287bacf8e3fa88f206e74d5b8af7d0f39e715","mathematical_subject":"Computation.Algorithms","original_sha256":"590e7f90f52b3873949aeefd6d6287bacf8e3fa88f206e74d5b8af7d0f39e715","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/AnalyticComplexityBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Typed analytic--computational authority boundary

Analytic and computational certificates have disjoint constructors.  The
declared transition system contains no direct analytic-to-computational rule;
only a separately typed arithmetic-security bridge can authorize a crossing.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AnalyticClaim.Variant590e7f90f52b3873949aeefd6d6287bacf8e3fa88f206e74d5b8af7d0f39e715

namespace Mathematics.Resolution

/-- Analytic and computational propositions are distinct indexed languages. -/
structure AnalyticClaim where
  proposition : Prop

structure ComplexityClaim where
  proposition : Prop

/-- Trace, bias, purity, multiplicity, Jordan, and uniformity authority. -/
structure AnalyticCertificate (claim : AnalyticClaim) where
  traceIdentity : Prop
  traceIdentityProof : traceIdentity
  biasControl : Prop
  biasControlProof : biasControl
  purityOnTraceSpectrum : Prop
  purityOnTraceSpectrumProof : purityOnTraceSpectrum
  multiplicityControl : Prop
  multiplicityControlProof : multiplicityControl
  jordanControl : Prop
  jordanControlProof : jordanControl
  uniformity : Prop
  uniformityProof : uniformity
  conclusion : claim.proposition

/-- Game, presentation, oracle, adversary, and resource-reduction authority. -/
structure ComplexityCertificate (claim : ComplexityClaim) where
  securityGame : Prop
  securityGameProof : securityGame
  effectivePresentation : Prop
  effectivePresentationProof : effectivePresentation
  oracleInterface : Prop
  oracleInterfaceProof : oracleInterface
  adversaryWitness : Prop
  adversaryWitnessProof : adversaryWitness
  queryToWorkReduction : Prop
  queryToWorkReductionProof : queryToWorkReduction
  conclusion : claim.proposition

/-- The additional proof-bearing data required to cross the boundary. -/
structure ArithmeticSecurityBridgeCertificate
    (analyticClaim : AnalyticClaim)
    (complexityClaim : ComplexityClaim) where
  analytic : AnalyticCertificate analyticClaim
  effectiveArithmeticFunctor : Prop
  effectiveArithmeticFunctorProof : effectiveArithmeticFunctor
  traceToAdversary : Prop
  traceToAdversaryProof : traceToAdversary
  purityToHardness : Prop
  purityToHardnessProof : purityToHardness
  computational : ComplexityCertificate complexityClaim

def ArithmeticSecurityBridgeCertificate.complexityConclusion
    {analyticClaim : AnalyticClaim}
    {complexityClaim : ComplexityClaim}
    (certificate :
      ArithmeticSecurityBridgeCertificate
        analyticClaim complexityClaim) :
    complexityClaim.proposition :=
  certificate.computational.conclusion

/-- Intentionally empty: no direct analytic certificate conversion exists. -/
inductive DirectAnalyticToComplexity
    {analyticClaim : AnalyticClaim}
    {complexityClaim : ComplexityClaim}
    (analytic : AnalyticCertificate analyticClaim)
    (complexity : ComplexityCertificate complexityClaim) : Prop

theorem no_direct_analytic_to_complexity
    {analyticClaim : AnalyticClaim}
    {complexityClaim : ComplexityClaim}
    (analytic : AnalyticCertificate analyticClaim)
    (complexity : ComplexityCertificate complexityClaim) :
    ¬ DirectAnalyticToComplexity analytic complexity := by
  intro impossible
  cases impossible

/-- The only declared crossing constructor requires a bridge certificate. -/
inductive AnalyticToComplexityAuthorization
    (analyticClaim : AnalyticClaim)
    (complexityClaim : ComplexityClaim) : Type
  | viaBridge
      (certificate :
        ArithmeticSecurityBridgeCertificate
          analyticClaim complexityClaim)

inductive AuthorityChannel
  | analytic
  | bridge
  | computational
  deriving DecidableEq, Repr

/-- Allowed channel transitions; analytic-to-computational is absent. -/
inductive AuthorityChannelTransition :
    AuthorityChannel → AuthorityChannel → Prop
  | analyticStay : AuthorityChannelTransition .analytic .analytic
  | computationalStay :
      AuthorityChannelTransition .computational .computational
  | bridgeStay : AuthorityChannelTransition .bridge .bridge
  | analyticToBridge :
      AuthorityChannelTransition .analytic .bridge
  | bridgeToComputational :
      AuthorityChannelTransition .bridge .computational

theorem no_direct_analytic_channel_transition :
    ¬ AuthorityChannelTransition .analytic .computational := by
  intro transition
  cases transition

/-- Named category errors rejected by the typing rule. -/
inductive ProhibitedAnalyticInference
  | purityToQueryHardness
  | functionalEquationToAdversaryBound
  | spectralGapToCryptographicSecurity
  | automorphismToComputationalIntractability
  | discrepancyBoundToWorkLowerBound
  deriving DecidableEq, Repr

def ProhibitedAnalyticInference.admissible
    (_ : ProhibitedAnalyticInference) : Prop :=
  False

theorem prohibitedAnalyticInference_rejected
    (inference : ProhibitedAnalyticInference) :
    ¬ inference.admissible :=
  id

end Mathematics.Resolution
