import Folder.CanonicalPath.SpectralDeterminantLift
import Folder.GrandChallenge.Complexity.RecursiveRuleClosure

/-!
# Folder.GrandChallenge.Complexity.BinaryDeterminantLift

Radiation role: research-boundary
BinaryMatrix spine: This module records determinant lift data for finite BinaryMatrixStream frames.
Ontology: complexity_binary_determinant_lift
Pivot role: determinant
Zero typology: determinant-glitch
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace Complexity

/--
Binary-frame determinant atlas.

This is the finite BinaryMatrixStream-facing version of the precomputed
spectral determinant atlas. The move log and pivot path fields are essential:
matching local determinant values alone is not proof-relevant.
-/
structure BinarySpectralDeterminantAtlas where
  frame : LeanProjectFiniteFrame
  determinantAtlasLabel : String
  precomputedLocalData : Prop
  precomputedLocalData_certified : precomputedLocalData
  moveLogCompatible : Prop
  moveLogCompatible_certified : moveLogCompatible
  pivotPathIndependent : Prop
  pivotPathIndependent_certified : pivotPathIndependent
  regularizationCompatible : Prop
  regularizationCompatible_certified : regularizationCompatible
  sourceLabel : String

/--
Binary determinant quasi-isomorphism lift.

The agreement field states that the finite precomputed atlas and the
determinant-preserving quasi-isomorphism presentation compute the same lifted
determinant invariant, when supplied.
-/
structure BinaryDeterminantQuasiIsoLift where
  frame : LeanProjectFiniteFrame
  determinantAtlas : BinarySpectralDeterminantAtlas
  spectralLift : CanonicalPath.SpectralDeterminantLift
  quasiIsoLiftExists : Prop
  quasiIsoLiftExists_certified : quasiIsoLiftExists
  atlasAndQuasiIsoAgree : Prop
  atlasAndQuasiIsoAgree_certified : atlasAndQuasiIsoAgree
  determinantGlitchDetected : Prop
  determinantGlitchDetected_certified : determinantGlitchDetected
  sourceLabel : String

theorem binary_determinant_atlas_local_data_if_supplied
    (A : BinarySpectralDeterminantAtlas) :
    A.precomputedLocalData :=
  A.precomputedLocalData_certified

theorem binary_determinant_atlas_move_log_if_supplied
    (A : BinarySpectralDeterminantAtlas) :
    A.moveLogCompatible :=
  A.moveLogCompatible_certified

theorem binary_determinant_atlas_path_independent_if_supplied
    (A : BinarySpectralDeterminantAtlas) :
    A.pivotPathIndependent :=
  A.pivotPathIndependent_certified

theorem binary_determinant_atlas_regularization_if_supplied
    (A : BinarySpectralDeterminantAtlas) :
    A.regularizationCompatible :=
  A.regularizationCompatible_certified

theorem binary_determinant_quasi_iso_lift_exists_if_supplied
    (L : BinaryDeterminantQuasiIsoLift) :
    L.quasiIsoLiftExists :=
  L.quasiIsoLiftExists_certified

theorem binary_determinant_lift_if_supplied
    (L : BinaryDeterminantQuasiIsoLift) :
    L.atlasAndQuasiIsoAgree :=
  L.atlasAndQuasiIsoAgree_certified

theorem binary_determinant_glitch_detected_if_supplied
    (L : BinaryDeterminantQuasiIsoLift) :
    L.determinantGlitchDetected :=
  L.determinantGlitchDetected_certified

end Complexity
end GrandChallenge
end Folder
