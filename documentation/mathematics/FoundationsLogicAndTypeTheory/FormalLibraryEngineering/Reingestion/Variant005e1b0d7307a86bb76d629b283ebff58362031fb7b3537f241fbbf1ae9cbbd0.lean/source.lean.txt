-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reingestion.Variant4d51f54233dda0ff2d10140c64acc56cc5c4caa490b2d5f1152cc55f9b336ef8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d51f54233dda0ff2d10140c64acc56cc5c4caa490b2d5f1152cc55f9b336ef8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Reingestion.Variant4d51f54233dda0ff2d10140c64acc56cc5c4caa490b2d5f1152cc55f9b336ef8","mathematical_subject":"Foundations.Unclassified","original_sha256":"4d51f54233dda0ff2d10140c64acc56cc5c4caa490b2d5f1152cc55f9b336ef8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Reflection/Reingestion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Receipt
import Mathematics.Reflection.UpstreamBundle

/-! # Accepted-upstream re-ingestion -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reingestion.Variant4d51f54233dda0ff2d10140c64acc56cc5c4caa490b2d5f1152cc55f9b336ef8

namespace Mathematics.Reflection

/--
An accepted upstream revision is re-ingested as a new immutable snapshot.  It
does not rewrite the source snapshot used to produce the patch.
-/
structure Reingestion where
  bundle : UpstreamBundle
  upstream_accepted : bundle.maintainerStatus = .accepted
  acceptedSnapshot : Ecosystem.ProjectSnapshot
  receipt : Ingestion.IngestionReceipt
  sameProject :
    acceptedSnapshot.identity.projectId =
      bundle.patch.candidate.targetSnapshot.identity.projectId
  newRevision :
    acceptedSnapshot.revision.revisionId ≠
      bundle.patch.baseSnapshot.revision.revisionId
  receipt_snapshot_exact :
    receipt.raw.snapshot = acceptedSnapshot
  reflectedObjectsRecovered :
    ∀ element ∈ bundle.patch.elements,
      ∀ outputDigest,
        element.outputDigest = some outputDigest →
          ∃ artifact ∈ acceptedSnapshot.manifest.artifacts,
            artifact.address.contentDigest = outputDigest
  upstreamAcceptanceDigest : Digest
  reingestionDigest : Digest

theorem Reingestion.source_snapshot_not_rewritten
    (reingestion : Reingestion) :
    reingestion.acceptedSnapshot.revision.revisionId ≠
      reingestion.bundle.patch.baseSnapshot.revision.revisionId :=
  reingestion.newRevision

/-- Every patch output is recovered under the accepted upstream snapshot. -/
theorem Reingestion.reflected_object_recovered
    (reingestion : Reingestion)
    {element : PatchElement}
    (member : element ∈ reingestion.bundle.patch.elements)
    {outputDigest : Digest}
    (hasOutput : element.outputDigest = some outputDigest) :
    ∃ artifact ∈ reingestion.acceptedSnapshot.manifest.artifacts,
      artifact.address.contentDigest = outputDigest :=
  reingestion.reflectedObjectsRecovered element member outputDigest hasOutput

inductive ReflectionLifecycle
  | candidate (value : Candidate)
  | upstreamAccepted (value : Reingestion)

theorem ReflectionLifecycle.candidate_not_accepted
    (candidate : Candidate)
    (accepted : Reingestion) :
    ReflectionLifecycle.candidate candidate ≠
      ReflectionLifecycle.upstreamAccepted accepted := by
  intro equality
  cases equality

end Mathematics.Reflection
