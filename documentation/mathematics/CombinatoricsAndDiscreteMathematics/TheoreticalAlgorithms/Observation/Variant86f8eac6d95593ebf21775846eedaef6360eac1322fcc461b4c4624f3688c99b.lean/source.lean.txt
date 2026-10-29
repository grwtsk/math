-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MotifAuthority.Variant3336d1fbc166db1452ca210a1a717d25afb3194faf6a05fd88987fc4525c0ffa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3336d1fbc166db1452ca210a1a717d25afb3194faf6a05fd88987fc4525c0ffa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MotifAuthority.Variant3336d1fbc166db1452ca210a1a717d25afb3194faf6a05fd88987fc4525c0ffa","mathematical_subject":"Computation.DataStructures","original_sha256":"3336d1fbc166db1452ca210a1a717d25afb3194faf6a05fd88987fc4525c0ffa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/ProofStrategy/Observation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ProofStrategy.Kind
import Mathematics.Extractor.Schema

/-! # Exact structural proof observations -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MotifAuthority.Variant3336d1fbc166db1452ca210a1a717d25afb3194faf6a05fd88987fc4525c0ffa

namespace Mathematics.ProofStrategy

open Mathematics Mathematics.Extractor

inductive MotifAuthority
  | compiledProofTerm
  | elaboratorInformationTree
  | sourceAnnotation
  deriving DecidableEq, Inhabited

structure MotifObservation where
  id : ProofObservationId
  theoremId : DeclarationId
  motifId : ProofMotifId
  proofPath : List Nat
  witnessConstants : List Lean.Name
  dependencies : List DependencyEdgeId
  authority : MotifAuthority
  proofDigest : Digest
  digest : Digest
  deriving DecidableEq

namespace MotifObservation

def Valid (observation : MotifObservation) : Prop :=
  observation.id.Valid ∧
  observation.theoremId.Valid ∧
  observation.motifId.Valid ∧
  observation.witnessConstants.Nodup ∧
  observation.dependencies.Nodup ∧
  (∀ dependency ∈ observation.dependencies, dependency.Valid) ∧
  observation.proofDigest.Valid ∧
  observation.digest.Valid

end MotifObservation

end Mathematics.ProofStrategy
