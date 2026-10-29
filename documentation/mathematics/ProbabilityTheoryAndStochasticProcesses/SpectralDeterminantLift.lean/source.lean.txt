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
