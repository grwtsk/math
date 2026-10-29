-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.ClaimPolarity.Variant2f00e4abd99637bcb1d47b90bcffff2706897bf7de10b3185352a4bfba34cc6d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f00e4abd99637bcb1d47b90bcffff2706897bf7de10b3185352a4bfba34cc6d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.ClaimPolarity.Variant2f00e4abd99637bcb1d47b90bcffff2706897bf7de10b3185352a4bfba34cc6d","mathematical_subject":"Logic.ModelTheory","original_sha256":"2f00e4abd99637bcb1d47b90bcffff2706897bf7de10b3185352a4bfba34cc6d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Language/ClaimPayload.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Universe.Terrain

/-!
# Grounded claim payloads

Free-form language is never evidence in this layer.  An assertive clause names
one of the payloads below and separately binds that payload to immutable
terrain data.  The four establishment states are metadata about what has been
established; none of them is a Boolean proof.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.ClaimPolarity.Variant2f00e4abd99637bcb1d47b90bcffff2706897bf7de10b3185352a4bfba34cc6d

namespace DAF.Language

open DAF.Universe

/-- Polarity of the normalized proposition rendered by a clause. -/
inductive ClaimPolarity
  | positive
  | negative
  deriving DecidableEq, Repr, Inhabited

/-- Arithmetic spectral clauses are subject to an additional named-certificate gate. -/
inductive ClaimDomain
  | general
  | arithmeticSpectral
  deriving DecidableEq, Repr, Inhabited

/-- An exact, source-digested hypothesis retained by a claim. -/
structure HypothesisBinding where
  id : StableId
  normalizedStatement : NormalizedType
  sourceDigest : Digest
  deriving DecidableEq, Repr

/-- One typed assignment in a theorem specialization. -/
structure FormalBinding where
  variableName : String
  assignedType : NormalizedType
  assignedTerm : String
  deriving DecidableEq, Repr

/-- A substitution is pinned by its normalized digest. -/
structure FormalSubstitution where
  bindings : List FormalBinding
  normalizedDigest : Digest
  deriving DecidableEq, Repr

/-- A theorem-instance certificate must name both theorem and substitution. -/
structure InstantiationCertificate where
  theoremId : TerrainNodeId
  substitutionDigest : Digest
  checkerNode : TerrainNodeId
  deriving DecidableEq, Repr

/-- Stable inference-rule identity and its evidence ceiling. -/
structure InferenceRule where
  id : StableId
  name : String
  authorityCeiling : ResponseAuthority
  deriving DecidableEq, Repr

/-- A checked inference binds the exact rule, premises, conclusion, and checker. -/
structure InferenceCertificate where
  ruleId : StableId
  premises : Finset ClaimId
  conclusionNode : TerrainNodeId
  checkerNode : TerrainNodeId
  deriving DecidableEq

/-- Runtime output remains ungrounded until a soundness declaration is named. -/
structure RuntimeFact where
  traceId : RuntimeTraceId
  soundnessTheorem : Option TerrainNodeId
  deriving DecidableEq, Repr

/-- The only evidence-shaped payloads accepted by the grounded-language layer. -/
inductive ClaimPayload
  | exactTheorem (theoremId : TerrainNodeId)
  | theoremInstance
      (theoremId : TerrainNodeId)
      (substitution : FormalSubstitution)
      (certificate : InstantiationCertificate)
  | computedFact (fact : RuntimeFact)
  | importedMathematics
      (authorityId : ExternalAuthorityId)
      (specialization : Option TerrainNodeId)
  | checkedInference
      (premises : Finset ClaimId)
      (rule : InferenceRule)
      (certificate : InferenceCertificate)
  | boundedReviewerInference
      (anchors : Finset TerrainAnchor)
      (nonclaim : Nonclaim)
  | proposal (candidateId : CandidatePatchId)
  deriving DecidableEq

/-- How the proposed clause claims to be supported. -/
inductive ClauseSupport
  | locatedEvidence
  | embeddingOnly
  | modelAuthored
  deriving DecidableEq, Repr, Inhabited

/--
The maximum response authority intrinsic to a payload constructor.  The
source node supplies an independent ceiling; validation requires both.
-/
def ClaimPayload.authorityCeiling : ClaimPayload → ResponseAuthority
  | .exactTheorem _ => .kernelChecked
  | .theoremInstance _ _ _ => .kernelChecked
  | .computedFact _ => .executable
  | .importedMathematics _ _ => .imported
  | .checkedInference _ rule _ => rule.authorityCeiling
  | .boundedReviewerInference _ _ => .illustrative
  | .proposal _ => .proposal

/-- Explicit translation from repository authority to response authority. -/
def sourceAuthorityCeiling : SourceAuthority → ResponseAuthority
  | .kernelTrustedBase => .kernelChecked
  | .declaredAxiomaticExtension => .conditional
  | .certifiedSource => .kernelChecked
  | .declarativeArtifact => .illustrative
  | .externalCapability => .imported

/--
Authoritative normalized claim data.  A grounding context, not a model
response, owns these records.
-/
structure ClaimSource where
  node : TerrainNodeId
  sourceDigest : Digest
  normalizedStatement : NormalizedType
  canonicalRendering : String
  dependencies : Finset TerrainNodeId
  requiredHypotheses : Finset HypothesisBinding
  polarity : ClaimPolarity
  authority : ResponseAuthority
  establishment : EstablishmentStatus
  domain : ClaimDomain
  spectralCertificate : Option TerrainNodeId
  deriving DecidableEq

/-- Payload constructors do not silently change the four establishment states. -/
theorem proposal_ceiling_is_proposal (candidateId : CandidatePatchId) :
    (ClaimPayload.proposal candidateId).authorityCeiling = .proposal :=
  rfl

/-- Embedding support is represented separately from located evidence. -/
theorem embedding_support_ne_located :
    ClauseSupport.embeddingOnly ≠ ClauseSupport.locatedEvidence := by
  decide

/-- Absence, irrelevance, open obligation, and establishment remain disjoint. -/
theorem establishment_states_pairwise_distinct :
    [EstablishmentStatus.unknown,
      EstablishmentStatus.notApplicable,
      EstablishmentStatus.notEstablished,
      EstablishmentStatus.established].Nodup := by
  decide

end DAF.Language
