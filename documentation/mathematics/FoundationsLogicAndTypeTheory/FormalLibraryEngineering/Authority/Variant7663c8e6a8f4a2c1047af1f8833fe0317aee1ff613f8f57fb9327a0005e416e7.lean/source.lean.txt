/-!
# Authority classes for continuous assurance

The authority assigned to an artifact is explicit.  Trusted kernels, declared
axiomatic extensions, kernel-checked formal source, declarative artifacts, and
external capabilities are different constructors; none is silently promoted
to another authority class.
-/

namespace Surface.ContinuousAssurance

/-- The five disjoint authority classes used by the assurance ledger. -/
inductive AuthorityClass
  | kernelTrustedBase
  | declaredAxiomaticExtension
  | certifiedSource
  | declarativeArtifact
  | externalCapability
  deriving DecidableEq, Repr

/-- Evidence describes how a fact was obtained, independently of its owner. -/
inductive EvidenceClass
  | kernelProof
  | translatedProof
  | conditionalTheorem
  | executableConformance
  | testEvidence
  | proseOrMetadata
  deriving DecidableEq, Repr

/-- The authority constructors are pairwise distinct. -/
theorem authorityClass_pairwise_disjoint :
    [AuthorityClass.kernelTrustedBase,
      AuthorityClass.declaredAxiomaticExtension,
      AuthorityClass.certifiedSource,
      AuthorityClass.declarativeArtifact,
      AuthorityClass.externalCapability].Nodup := by
  decide

/-- The four checking-boundary roles cannot be conflated. -/
theorem checkingBoundaryRoles_pairwise_disjoint :
    [AuthorityClass.kernelTrustedBase,
      AuthorityClass.certifiedSource,
      AuthorityClass.declarativeArtifact,
      AuthorityClass.externalCapability].Nodup := by
  decide

/-- The evidence constructors are pairwise distinct. -/
theorem evidenceClass_pairwise_disjoint :
    [EvidenceClass.kernelProof,
      EvidenceClass.translatedProof,
      EvidenceClass.conditionalTheorem,
      EvidenceClass.executableConformance,
      EvidenceClass.testEvidence,
      EvidenceClass.proseOrMetadata].Nodup := by
  decide

end Surface.ContinuousAssurance
