import Folder.Basic

/-!
# Folder.CrystallineTensor.InfinitesimalThickening

Radiation role: research-boundary
BinaryMatrix spine: This module records nilpotent thickening metadata, not a BinaryMatrix construction.
Ontology: crystalline.infinitesimal_thickening
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

/--
Abstract nilpotent-thickening metadata.

This is a proof-carrying boundary record: it does not construct a crystalline
site or an ideal sheaf, but it prevents nilpotence from being asserted without
a supplied certificate.
-/
structure InfinitesimalThickening where
  Base : Type _
  Thickened : Type _
  closedImmersion : Thickened → Base
  ideal : Type _
  nilpotentIdeal : Prop
  nilpotentIdeal_certified : nilpotentIdeal
  label : String

theorem thickening_has_nilpotent_ideal
    (T : InfinitesimalThickening) :
    T.nilpotentIdeal :=
  T.nilpotentIdeal_certified

end CrystallineTensor
end Folder
