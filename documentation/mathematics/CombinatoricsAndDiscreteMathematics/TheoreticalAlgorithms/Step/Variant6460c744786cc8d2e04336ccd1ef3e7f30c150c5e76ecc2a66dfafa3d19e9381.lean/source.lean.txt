-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StepReceipt.Variant1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.StepReceipt.Variant1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19","mathematical_subject":"Computation.DataStructures","original_sha256":"1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Relaxation/Step.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Relaxation.Energy

/-! # Deterministic relaxation steps -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StepReceipt.Variant1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19

namespace Mathematics.Relaxation

/-- One observed step with exact before/after digests. -/
structure StepReceipt where
  operatorId : StableId
  beforeDigest : Digest
  afterDigest : Digest
  changedElementIds : List StableId
  preservedConstraintIds : List StableId
  receiptDigest : Digest
  deriving DecidableEq, Repr

/-- Proposal output remains separate from the accepted overlay state. -/
structure StepProposal where
  before : State
  proposedAfter : State
  evidenceIds : List StableId
  authority : String

end Mathematics.Relaxation
