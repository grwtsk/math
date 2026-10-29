import Folder.AdelicInfinityTopos.AdelicSpectralSheaf

/-!
# Folder.AdelicInfinityTopos.RestrictionMap

Radiation role: research-boundary
BinaryMatrix spine: This module makes adelic place-to-place restriction morphisms explicit.
Ontology: adelic.restriction_map
Pivot role: dual
Zero typology: mixed
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure AdelicRestrictionMap
    (S : AdelicSpectralSheaf)
    (i j : Place) where
  sourcePlace : Place := i
  targetPlace : Place := j
  sourceSpectrum : SpectrumObject
  targetSpectrum : SpectrumObject
  morphism : SpectrumMorphism sourceSpectrum targetSpectrum
  compatibleWithLocalFactors : Prop
  compatibleWithBoundary : Prop
  compatibleWithBoundary_certified : compatibleWithBoundary

theorem restriction_compatible_with_boundary
    {S : AdelicSpectralSheaf}
    {i j : Place}
    (rho : AdelicRestrictionMap S i j) :
    rho.compatibleWithBoundary :=
  rho.compatibleWithBoundary_certified

end AdelicInfinityTopos
end Folder
