-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardReversePatchRoundTrip.Variantddb69304807e53fe21413f972d789ced006510dd02d78920513b9bc2199d6f71","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ddb69304807e53fe21413f972d789ced006510dd02d78920513b9bc2199d6f71","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ForwardReversePatchRoundTrip.Variantddb69304807e53fe21413f972d789ced006510dd02d78920513b9bc2199d6f71","mathematical_subject":"Foundations.Unclassified","original_sha256":"ddb69304807e53fe21413f972d789ced006510dd02d78920513b9bc2199d6f71","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0fb42e20fee1ea48f0f02cd1/workspace/lib/SurfaceRefactor/Surface/Refactor/NetworkSurgeryPatch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Surgery.Inverse

/-!
# Network-surgery patch round-trip aliases

The theorem-facing patch pair is backed by exact before/after bytes and guard
observations.  It makes no claim about arbitrary external unified diffs.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardReversePatchRoundTrip.Variantddb69304807e53fe21413f972d789ced006510dd02d78920513b9bc2199d6f71

public section

namespace Surface.Refactor.NetworkSurgery

open Surface.Refactor.Surgery

@[surface_novel, surface_published]
theorem forwardReversePatch_roundTrip (bundle : SurgeryBundle) :
    applyObservedEditSequence bundle.baseSnapshot.canonicalSourceBytes
        bundle.forwardObservations bundle.forwardEdits =
      some bundle.afterSnapshot.canonicalSourceBytes ∧
    applyObservedEditSequence bundle.afterSnapshot.canonicalSourceBytes
        bundle.inverseObservations bundle.inverseEdits =
      some bundle.baseSnapshot.canonicalSourceBytes :=
  ⟨bundle.forwardAppliesExactly, bundle.inverseAppliesExactly⟩

@[surface_novel, surface_published]
theorem reverseForwardPatch_roundTrip (bundle : SurgeryBundle) :
    applyObservedEditSequence bundle.afterSnapshot.canonicalSourceBytes
        bundle.inverseObservations bundle.inverseEdits =
      some bundle.baseSnapshot.canonicalSourceBytes ∧
    applyObservedEditSequence bundle.baseSnapshot.canonicalSourceBytes
        bundle.forwardObservations bundle.forwardEdits =
      some bundle.afterSnapshot.canonicalSourceBytes :=
  ⟨bundle.inverseAppliesExactly, bundle.forwardAppliesExactly⟩

end Surface.Refactor.NetworkSurgery
