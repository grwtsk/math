-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ObstructionDegree.Variant77734b9913e38db94ee209fe73936edaa2405e09701e39dd8e76ff4e041009f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"77734b9913e38db94ee209fe73936edaa2405e09701e39dd8e76ff4e041009f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ObstructionDegree.Variant77734b9913e38db94ee209fe73936edaa2405e09701e39dd8e76ff4e041009f9","mathematical_subject":"Topology.GeneralTopology","original_sha256":"77734b9913e38db94ee209fe73936edaa2405e09701e39dd8e76ff4e041009f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/Communication/Obstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Communication.Cech

/-!
# Stable coherence obstructions

Failed overlap, boundary, translation, global/local, surgery, and
representation squares become stable records.  A nonzero record blocks the
corresponding gluing claim; it is not silently downgraded to prose.
-/


namespace GRWTSK.Topology.GeneralTopology.ObstructionDegree.Variant77734b9913e38db94ee209fe73936edaa2405e09701e39dd8e76ff4e041009f9

namespace Surface.ContinuousAssurance

inductive ObstructionDegree
  | zero
  | one
  | two
  | higher (degree : Nat)
  deriving DecidableEq, Repr

inductive ObstructionKind
  | uncoveredCoordinate
  | overlapMismatch
  | boundaryMismatch
  | translationDefect
  | operatorRestrictionFailure
  | surgeryLocusMismatch
  | representationTriangleFailure
  | thresholdMarginFailure
  | reviewMismatch
  | authorizationMismatch
  | other
  deriving DecidableEq, Repr

/-- Content-addressable obstruction relative to an exact finite context. -/
structure CoherenceObstruction where
  identity : ObligationId
  kind : ObstructionKind
  degree : ObstructionDegree
  objectId : MathematicalObjectId
  representation : RepresentationId
  globalReference : Option MathematicalObjectId
  attentionRegion : Option GlobalLocusRef
  coefficientObject : String
  metricVersion : Option DAF.Version
  horizon : Option Nat
  thresholdConvention : Option String
  indexRoot : EvidenceDigest
  witnessRef : ArtifactIdentity
  status : ClaimStatus
  assuranceLevel : AssuranceLevel
  deriving Repr

/-- An unresolved obstruction remains an explicit obligation. -/
def CoherenceObstruction.IsOpen (obstruction : CoherenceObstruction) : Prop :=
  obstruction.status ≠ .verified ∧ obstruction.status ≠ .refuted

end Surface.ContinuousAssurance
