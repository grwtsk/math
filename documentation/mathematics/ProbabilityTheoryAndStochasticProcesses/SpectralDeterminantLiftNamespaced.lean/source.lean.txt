-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.DeterminantTransitionPreservesIfSupplied.Variantf30f51bbaa46746c37fb930879c6f0999de20d6b578e782367745a3fd18abab7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f30f51bbaa46746c37fb930879c6f0999de20d6b578e782367745a3fd18abab7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.DeterminantTransitionPreservesIfSupplied.Variantf30f51bbaa46746c37fb930879c6f0999de20d6b578e782367745a3fd18abab7","mathematical_subject":"Probability.Independence","original_sha256":"f30f51bbaa46746c37fb930879c6f0999de20d6b578e782367745a3fd18abab7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CanonicalPath/SpectralDeterminantLift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.SpectralDeterminantLift

/-!
# Folder.Theorem.CanonicalPath.SpectralDeterminantLift

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectral determinant lift contract facts.
Ontology: proof.spectral_determinant_lift
Pivot role: determinant
Zero typology: determinant-obstruction
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.DeterminantTransitionPreservesIfSupplied.Variantf30f51bbaa46746c37fb930879c6f0999de20d6b578e782367745a3fd18abab7

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem determinant_transition_preserves_if_supplied
    (T : Folder.CanonicalPath.DeterminantTransition) :
    T.preservesDeterminant :=
  Folder.CanonicalPath.determinant_transition_preserves_if_supplied T

theorem determinant_atlas_covers_if_supplied
    (A : Folder.CanonicalPath.PrecomputedSpectralDeterminantAtlas) :
    A.coversFrames :=
  Folder.CanonicalPath.determinant_atlas_covers_if_supplied A

theorem determinant_atlas_cocycle_if_supplied
    (A : Folder.CanonicalPath.PrecomputedSpectralDeterminantAtlas) :
    A.cocycleCompatible :=
  Folder.CanonicalPath.determinant_atlas_cocycle_if_supplied A

theorem determinant_atlas_path_independent_if_supplied
    (A : Folder.CanonicalPath.PrecomputedSpectralDeterminantAtlas) :
    A.pathIndependent :=
  Folder.CanonicalPath.determinant_atlas_path_independent_if_supplied A

theorem determinant_atlas_regularization_if_supplied
    (A : Folder.CanonicalPath.PrecomputedSpectralDeterminantAtlas) :
    A.regularizationCompatible :=
  Folder.CanonicalPath.determinant_atlas_regularization_if_supplied A

theorem determinant_quasi_iso_preserves_line_if_supplied
    (Q : Folder.CanonicalPath.DeterminantPreservingQuasiIsomorphism) :
    Q.preservesDeterminantLine :=
  Folder.CanonicalPath.determinant_quasi_iso_preserves_line_if_supplied Q

theorem determinant_quasi_iso_preserves_spectral_if_supplied
    (Q : Folder.CanonicalPath.DeterminantPreservingQuasiIsomorphism) :
    Q.preservesSpectralDeterminant :=
  Folder.CanonicalPath.determinant_quasi_iso_preserves_spectral_if_supplied Q

theorem determinant_lift_atlas_descends_if_supplied
    (L : Folder.CanonicalPath.SpectralDeterminantLift) :
    L.atlasDescendsToGlobalDeterminant :=
  Folder.CanonicalPath.determinant_lift_atlas_descends_if_supplied L

theorem determinant_lift_quasi_iso_computes_same_if_supplied
    (L : Folder.CanonicalPath.SpectralDeterminantLift) :
    L.quasiIsoComputesSameDeterminant :=
  Folder.CanonicalPath.determinant_lift_quasi_iso_computes_same_if_supplied L

theorem determinant_lift_agrees_if_supplied
    (L : Folder.CanonicalPath.SpectralDeterminantLift) :
    L.twoRepresentationsAgree :=
  Folder.CanonicalPath.determinant_lift_agrees_if_supplied L

theorem determinant_lift_atlas_to_quasi_iso_if_supplied
    (L : Folder.CanonicalPath.SpectralDeterminantLift) :
    L.atlasToQuasiIso :=
  Folder.CanonicalPath.determinant_lift_atlas_to_quasi_iso_if_supplied L

theorem determinant_lift_quasi_iso_to_atlas_if_supplied
    (L : Folder.CanonicalPath.SpectralDeterminantLift) :
    L.quasiIsoToAtlas :=
  Folder.CanonicalPath.determinant_lift_quasi_iso_to_atlas_if_supplied L

end CanonicalPath
end Theorem
end Folder
