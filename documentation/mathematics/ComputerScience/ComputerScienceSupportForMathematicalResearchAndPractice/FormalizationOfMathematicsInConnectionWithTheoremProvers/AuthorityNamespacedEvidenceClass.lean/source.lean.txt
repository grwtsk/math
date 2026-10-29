-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityClass.Variant7663c8e6a8f4a2c1047af1f8833fe0317aee1ff613f8f57fb9327a0005e416e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7663c8e6a8f4a2c1047af1f8833fe0317aee1ff613f8f57fb9327a0005e416e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AuthorityClass.Variant7663c8e6a8f4a2c1047af1f8833fe0317aee1ff613f8f57fb9327a0005e416e7","mathematical_subject":"Foundations.Unclassified","original_sha256":"7663c8e6a8f4a2c1047af1f8833fe0317aee1ff613f8f57fb9327a0005e416e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/Authority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Authority classes for continuous assurance

The authority assigned to an artifact is explicit.  Trusted kernels, declared
axiomatic extensions, kernel-checked formal source, declarative artifacts, and
external capabilities are different constructors; none is silently promoted
to another authority class.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityClass.Variant7663c8e6a8f4a2c1047af1f8833fe0317aee1ff613f8f57fb9327a0005e416e7

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
