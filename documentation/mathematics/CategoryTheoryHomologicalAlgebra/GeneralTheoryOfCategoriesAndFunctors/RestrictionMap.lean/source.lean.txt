import Folder.AdelicInfinityTopos.RestrictionMap

/-!
# Folder.Theorem.AdelicInfinityTopos.RestrictionMap

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports restriction-map boundary compatibility.
Ontology: proof.adelic.restriction_map
Pivot role: dual
Zero typology: mixed
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace RestrictionMap

theorem restriction_compatible_with_boundary
    {S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf}
    {i j : Folder.AdelicInfinityTopos.Place}
    (rho : Folder.AdelicInfinityTopos.AdelicRestrictionMap S i j) :
    rho.compatibleWithBoundary :=
  Folder.AdelicInfinityTopos.restriction_compatible_with_boundary rho

end RestrictionMap
end AdelicInfinityTopos
end Theorem
end Folder
