import Folder.AdelicInfinityTopos.RestrictionMap

/-!
# Folder.AdelicInfinityTopos.HomotopyCoherence

Radiation role: research-boundary
BinaryMatrix spine: This module stores infinity-categorical coherence as contract fields.
Ontology: adelic.homotopy_coherence
Pivot role: dual
Zero typology: mixed
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure HomotopyCoherentRestrictions
    (S : AdelicSpectralSheaf) where
  restriction :
    Place → Place → Type _
  rho :
    ∀ i j, restriction i j → AdelicRestrictionMap S i j
  identityCoherent : Prop
  identityCoherent_certified : identityCoherent
  compositionCoherent : Prop
  compositionCoherent_certified : compositionCoherent
  higherCoherence : Prop
  higherCoherence_certified : higherCoherence

theorem homotopy_restrictions_identity_coherent
    {S : AdelicSpectralSheaf}
    (H : HomotopyCoherentRestrictions S) :
    H.identityCoherent :=
  H.identityCoherent_certified

theorem homotopy_restrictions_composition_coherent
    {S : AdelicSpectralSheaf}
    (H : HomotopyCoherentRestrictions S) :
    H.compositionCoherent :=
  H.compositionCoherent_certified

theorem homotopy_restrictions_higher_coherent
    {S : AdelicSpectralSheaf}
    (H : HomotopyCoherentRestrictions S) :
    H.higherCoherence :=
  H.higherCoherence_certified

end AdelicInfinityTopos
end Folder
