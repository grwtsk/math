-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConsistencyDimension.Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ConsistencyDimension.Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8","mathematical_subject":"Computation.DataStructures","original_sha256":"4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Concept/Consistency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.PointUniverse

/-!
# Multidimensional self-consistency

Consistency is not one Boolean shadow.  Each required dimension has an
independent finding, and unresolved findings remain visible.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConsistencyDimension.Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8

namespace Mathematics.Concept

inductive ConsistencyDimension
  | identity
  | referential
  | type_
  | denotational
  | boundary
  | authority
  | provenance
  | version
  | label
  | projection
  deriving DecidableEq, Repr, Inhabited

inductive ConsistencyStatus
  | valid
  | invalid
  | unresolved
  deriving DecidableEq, Repr, Inhabited

structure ConsistencyFinding where
  findingId : StableId
  subjectId : ElementId
  dimension : ConsistencyDimension
  status : ConsistencyStatus
  evidenceIds : List EvidenceId
  diagnosticDigest : Digest
  deriving DecidableEq, Repr

structure ConsistencyLedger (pointUniverse : PointUniverse) where
  universeDigest : Digest
  universe_digest_exact :
    universeDigest = pointUniverse.universeDigest
  findings : List ConsistencyFinding
  dimensionsCovered :
    ∀ point ∈ pointUniverse.points,
      ∀ dimension,
        ∃ finding ∈ findings,
          finding.subjectId = point.pointId ∧
          finding.dimension = dimension
  findingsResolve :
    ∀ finding ∈ findings,
      finding.subjectId ∈
        pointUniverse.points.map MathematicalPoint.pointId
  ledgerDigest : Digest

def ConsistencyLedger.SelfConsistent
    {pointUniverse : PointUniverse}
    (ledger : ConsistencyLedger pointUniverse) : Prop :=
  ∀ finding ∈ ledger.findings,
    finding.status = .valid

/-- An unresolved finding prevents a claim of complete self-consistency. -/
theorem ConsistencyLedger.not_selfConsistent_of_unresolved
    {pointUniverse : PointUniverse}
    (ledger : ConsistencyLedger pointUniverse)
    {finding : ConsistencyFinding}
    (member : finding ∈ ledger.findings)
    (unresolved : finding.status = .unresolved) :
    ¬ ledger.SelfConsistent := by
  intro consistent
  have valid := consistent finding member
  simp [unresolved] at valid

end Mathematics.Concept
