-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SphereAdapterScope.Variant8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SphereAdapterScope.Variant8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084","mathematical_subject":"Foundations.Unclassified","original_sha256":"8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/tmp/ca03/BranchSphereAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.RiemannSphere

/-!
# CA-03 sphere adapter branch

This non-canonical scratch module records only the already checked
stereographic representation facts used by visualization:

* the added point `infinity` is represented by `north`;
* the finite complex origin is represented by `south`.

These identities carry no contour-integral, seam-cancellation, residue, or
single-hole-excision authority.  In particular, this file introduces no
theorem connecting a rectangle boundary to an inner circle.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SphereAdapterScope.Variant8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084

namespace Surface.Core.ComplexAnalysis.CA03Scratch.BranchSphereAdapter

noncomputable section

open Surface.Core.RiemannCompactification

/-- Machine-readable branch scope.  This is presentation metadata, not a
mathematical hypothesis or theorem authority. -/
inductive SphereAdapterScope where
  | visualizationOnly
deriving DecidableEq, Repr

/-- The sphere branch is explicitly restricted to visualization. -/
def scope : SphereAdapterScope := .visualizationOnly

/-- The compactification point at infinity is exactly the north pole in the
checked stereographic homeomorphism. -/
theorem infinity_maps_to_north :
    riemannSphereHomeomorph infinity =
      ⟨north, by simp [norm_north]⟩ := by
  exact riemannSphereHomeomorph_infinity

/-- The coerced finite complex origin is exactly the south pole in the checked
stereographic homeomorphism. -/
theorem finite_origin_maps_to_south :
    riemannSphereHomeomorph ((0 : ℂ) : RiemannSphere) =
      ⟨south, by simp [norm_south]⟩ := by
  exact riemannSphereHomeomorph_zero

/-- The affine tangent-plane representative of the complex origin is also the
south-pole anchor. -/
theorem tangent_origin_eq_south : tangentPlanePoint 0 = south := by
  exact tangentPlanePoint_zero

/-!
The following probes intentionally document that this representation module
does not expose a seam integral or an excision theorem.  Should such an API be
added later, these probes will fail and force this audit to be revisited.
-/

#check_failure riemannSphereSeamIntegral
#check_failure riemannSphereRectangleCircleExcision
#check_failure stereographicContourIntegral_eq

#print axioms infinity_maps_to_north
#print axioms finite_origin_maps_to_south
#print axioms tangent_origin_eq_south

end


end Surface.Core.ComplexAnalysis.CA03Scratch.BranchSphereAdapter
