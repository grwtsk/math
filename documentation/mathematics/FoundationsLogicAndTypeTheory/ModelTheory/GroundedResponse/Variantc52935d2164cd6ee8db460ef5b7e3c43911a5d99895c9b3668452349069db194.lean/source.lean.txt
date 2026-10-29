-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.GroundedResponse.Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.GroundedResponse.Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e","mathematical_subject":"Logic.ModelTheory","original_sha256":"0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/audit/evidence-resume-workspaces/producer/39345ad947523e3af478efb266789a4935c0776ae7063c64b814ded0a6dc79de/workspace/Surface/DAF/Language/GroundedResponse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Language.GroundedClause

/-!
# Grounded responses

Response validation stops at the first rejected clause.  It never repairs a
model response, and a successful response contains a proof that every
assertive clause passed the exact source and terrain checks.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.GroundedResponse.Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e

namespace DAF.Language

open DAF.Universe

/-- Snapshot-pinned response emitted by an external language model. -/
structure GroundedResponse where
  responseId : StableId
  snapshotId : SnapshotId
  clauses : List GroundedClause

inductive ResponseGroundingError
  | staleSnapshot
  | clauseRejected (clauseId : ClaimId) (reason : GroundingError)
  deriving DecidableEq, Repr

/-- Every clause in a list has a proof-bearing grounding certificate. -/
structure CheckedClauseList
    (context : GroundingContext)
    (clauses : List GroundedClause) : Type where
  checked : ∀ clause ∈ clauses, clause.Accepted context

/-- Recursively validate a response without silently deleting failed clauses. -/
noncomputable def validateClauseList
    (context : GroundingContext)
    (clauses : List GroundedClause) :
    Except ResponseGroundingError (CheckedClauseList context clauses) := by
  induction clauses with
  | nil =>
      exact .ok { checked := by simp }
  | cons first remaining inductionHypothesis =>
      cases firstResult : validateGroundedClause context first with
      | error reason => exact .error (.clauseRejected first.clauseId reason)
      | ok firstChecked =>
          cases remainingResult : inductionHypothesis with
          | error reason => exact .error reason
          | ok remainingChecked =>
              exact .ok
                { checked := by
                    intro clause membership
                    simp only [List.mem_cons] at membership
                    rcases membership with same | later
                    · subst clause
                      exact ⟨firstChecked⟩
                    · exact remainingChecked.checked clause later }

/-- Successful validation for a whole response. -/
structure CheckedGroundedResponse
    (context : GroundingContext)
    (response : GroundedResponse) : Type where
  snapshotMatches : response.snapshotId = context.terrain.manifest.snapshotId
  clausesChecked : CheckedClauseList context response.clauses

/-- Fail closed on a stale snapshot or the first invalid clause. -/
noncomputable def validateGroundedResponse
    (context : GroundingContext)
    (response : GroundedResponse) :
    Except ResponseGroundingError (CheckedGroundedResponse context response) := by
  by_cases snapshotMatches :
      response.snapshotId = context.terrain.manifest.snapshotId
  · cases clausesResult : validateClauseList context response.clauses with
    | error reason => exact .error reason
    | ok clausesChecked => exact .ok { snapshotMatches, clausesChecked }
  · exact .error .staleSnapshot

/-- Every clause in an accepted response has a grounding certificate. -/
theorem CheckedGroundedResponse.clause_accepted
    {context : GroundingContext}
    {response : GroundedResponse}
    (checked : CheckedGroundedResponse context response)
    {clause : GroundedClause}
    (membership : clause ∈ response.clauses) :
    clause.Accepted context :=
  checked.clausesChecked.checked clause membership

/-- An accepted assertive clause cannot be supported by an embedding alone. -/
theorem CheckedAssertion.not_embedding_only
    {context : GroundingContext}
    {clause : GroundedClause}
    (checked : CheckedAssertion context clause) :
    checked.claim.binding.support ≠ .embeddingOnly := by
  exact checked.assertiveSupportValid checked.clauseIsAssertion

/-- Model-only support cannot promote itself to an established claim. -/
theorem CheckedAssertion.model_authored_not_established
    {context : GroundingContext}
    {clause : GroundedClause}
    (checked : CheckedAssertion context clause)
    (modelAuthored : checked.claim.binding.support = .modelAuthored) :
    checked.claim.binding.establishment ≠ .established :=
  (checked.modelSupportValid modelAuthored).1

end DAF.Language
