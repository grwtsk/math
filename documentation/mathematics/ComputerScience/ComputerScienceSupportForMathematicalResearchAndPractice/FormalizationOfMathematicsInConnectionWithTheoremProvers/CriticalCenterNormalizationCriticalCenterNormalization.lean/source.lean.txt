import Folder.DerivedSheaf.BaseCaseLFunction

/-!
# Folder.DerivedSheaf.CriticalCenterNormalization

Radiation role: research-boundary
BinaryMatrix spine: This module records critical-center normalization contracts, not BinaryMatrix data.
Ontology: base.critical_center_normalization
Pivot role: spectral
Zero typology: l-function
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

/--
A normalization map from a raw L-function coordinate to the project's spectral
coordinate.
-/
structure CriticalCenterNormalization
    (L : BaseCaseLFunctionData) where
  normalize : ℝ → ℝ
  sends_raw_to_spectral :
    normalize L.rawCriticalCenter = Core.spectralPivot
  compatibleWithDeclaredCenter :
    normalize L.rawCriticalCenter = L.normalizedCriticalCenter
  sourceLabel : String

theorem normalization_sends_raw_to_spectral
    {L : BaseCaseLFunctionData}
    (N : CriticalCenterNormalization L) :
    N.normalize L.rawCriticalCenter = Core.spectralPivot :=
  N.sends_raw_to_spectral

theorem normalization_matches_declared_center
    {L : BaseCaseLFunctionData}
    (N : CriticalCenterNormalization L) :
    N.normalize L.rawCriticalCenter = L.normalizedCriticalCenter :=
  N.compatibleWithDeclaredCenter

/--
Optional stronger affine form. This is useful for elliptic curves whose
completed L-function has raw center `1` but normalized center `1/2`.
-/
structure AffineCriticalShift
    (L : BaseCaseLFunctionData) where
  shift : ℝ
  raw_plus_shift :
    L.rawCriticalCenter + shift = Core.spectralPivot

def AffineCriticalShift.normalize
    {L : BaseCaseLFunctionData}
    (A : AffineCriticalShift L)
    (s : ℝ) : ℝ :=
  s + A.shift

theorem affine_shift_sends_raw_to_spectral
    {L : BaseCaseLFunctionData}
    (A : AffineCriticalShift L) :
    A.normalize L.rawCriticalCenter = Core.spectralPivot := by
  exact A.raw_plus_shift

end DerivedSheaf
end Folder
