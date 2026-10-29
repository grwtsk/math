import Folder.Arithmetic.WeilPairing

/-!
# Folder.Arithmetic.HeisenbergExtension

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.heisenberg_extension
Pivot role: none
Zero typology: elliptic
Contract boundary: contract
Composite stack role: torsion
-/


namespace Folder
namespace Arithmetic

universe u

structure HeisenbergExtension
    {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E)
    (m : Nat)
    (W : WeilPairingContract G m) where
  H : Type u
  one : H
  mul : H → H → H
  inv : H → H
  center : Cellular.Phase m → H
  lift : MTorsionPoint G m → H
  commutator : H → H → H
  commutator_lift :
    ∀ P Q,
      commutator (lift P) (lift Q) =
        center (W.pairing P Q)

theorem heisenberg_commutator_lift
    {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {G : ECGroupLaw E}
    {m : Nat}
    {W : WeilPairingContract G m}
    (H : HeisenbergExtension G m W)
    (P Q : MTorsionPoint G m) :
    H.commutator (H.lift P) (H.lift Q) =
      H.center (W.pairing P Q) :=
  H.commutator_lift P Q

end Arithmetic
end Folder
