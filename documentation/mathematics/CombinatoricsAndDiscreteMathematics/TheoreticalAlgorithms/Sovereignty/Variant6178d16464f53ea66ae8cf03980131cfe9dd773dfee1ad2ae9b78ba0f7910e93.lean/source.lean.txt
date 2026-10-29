-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TargetNativeRealization.Variant9607fb9b557b2a20a22382300fcac7bfe573e0c24983f59582d926c6cae3f9ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9607fb9b557b2a20a22382300fcac7bfe573e0c24983f59582d926c6cae3f9ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TargetNativeRealization.Variant9607fb9b557b2a20a22382300fcac7bfe573e0c24983f59582d926c6cae3f9ba","mathematical_subject":"Computation.DataStructures","original_sha256":"9607fb9b557b2a20a22382300fcac7bfe573e0c24983f59582d926c6cae3f9ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Reflection/Sovereignty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.GeneratedAncestry
import Mathematics.Reflection.Outcome

/-!
# Target-native reflection sovereignty

Reflection is expressed in the destination project's own source and identity
system.  Every result is reconstructed and re-ingested; a foreign model
ontology is never written directly into the target.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TargetNativeRealization.Variant9607fb9b557b2a20a22382300fcac7bfe573e0c24983f59582d926c6cae3f9ba

namespace Mathematics.Reflection

structure TargetNativeRealization where
  realizationId : StableId
  targetProjectId : ProjectId
  sourcePointIds : List ElementId
  targetSourceAddressIds : List StableId
  targetDescriptorIds : List StableId
  reconstructionDigest : Digest
  deriving DecidableEq, Repr

structure SovereignReflection where
  candidate : Candidate
  realization : TargetNativeRealization
  outcome : Outcome
  generatedAncestry : Ingestion.GeneratedAncestry
  target_project_exact :
    realization.targetProjectId =
      candidate.targetSnapshot.identity.projectId
  outcome_candidate_exact :
    outcome.candidateId = candidate.candidateId
  generated_target_exact :
    generatedAncestry.outputAddress.sourceObject.project =
      realization.targetProjectId
  reflectionDigest : Digest

/-- Every reflected artifact is expressed at the target project. -/
theorem SovereignReflection.target_native
    (reflection : SovereignReflection) :
    reflection.generatedAncestry.outputAddress.sourceObject.project =
      reflection.candidate.targetSnapshot.identity.projectId := by
  rw [reflection.generated_target_exact,
    reflection.target_project_exact]

end Mathematics.Reflection
