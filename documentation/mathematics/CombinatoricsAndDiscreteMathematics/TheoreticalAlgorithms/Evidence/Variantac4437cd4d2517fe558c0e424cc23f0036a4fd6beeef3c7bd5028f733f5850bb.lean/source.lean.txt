-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InterpretationAuthority.Variant8f49e8d6b37ec55a395d0823222e07a185c0eb517c74f5daa28e9c6c29abeacf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f49e8d6b37ec55a395d0823222e07a185c0eb517c74f5daa28e9c6c29abeacf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.InterpretationAuthority.Variant8f49e8d6b37ec55a395d0823222e07a185c0eb517c74f5daa28e9c6c29abeacf","mathematical_subject":"Computation.DataStructures","original_sha256":"8f49e8d6b37ec55a395d0823222e07a185c0eb517c74f5daa28e9c6c29abeacf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/ProofStrategy/Evidence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ProofStrategy.Observation

/-! # Interpreted proof-strategy evidence -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InterpretationAuthority.Variant8f49e8d6b37ec55a395d0823222e07a185c0eb517c74f5daa28e9c6c29abeacf

namespace Mathematics.ProofStrategy

open Mathematics Mathematics.Extractor

inductive InterpretationAuthority
  | reviewedClassification
  | compiledMotifInterpretation
  | heuristicInference
  deriving DecidableEq, Inhabited

structure StrategyEvidence where
  id : ProofObservationId
  theoremId : DeclarationId
  strategy : Kind
  motifObservationIds : List ProofObservationId
  proofPaths : List (List Nat)
  authority : InterpretationAuthority
  ambiguities : List String
  digest : Digest
  deriving DecidableEq

namespace StrategyEvidence

def Valid (evidence : StrategyEvidence) : Prop :=
  evidence.id.Valid ∧
  evidence.theoremId.Valid ∧
  evidence.strategy.id.Valid ∧
  evidence.motifObservationIds.Nodup ∧
  evidence.motifObservationIds ≠ [] ∧
  evidence.digest.Valid

end StrategyEvidence

end Mathematics.ProofStrategy
