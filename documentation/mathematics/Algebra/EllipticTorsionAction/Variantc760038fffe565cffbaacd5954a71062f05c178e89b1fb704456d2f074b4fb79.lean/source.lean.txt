import Folder.Arithmetic.Torsion

/-!
# Folder.Monodromy.EllipticTorsionAction

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: monodromy.elliptic_torsion_action
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: torsion
-/


namespace Folder
namespace Monodromy

abbrev FiberAut (α : Type _) := α ≃ α

structure TorsionAction
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    (G : Arithmetic.ECGroupLaw E)
    (α : Type _) where
  act : Arithmetic.ECPoint E → FiberAut α
  act_zero :
    act (Arithmetic.ECPoint.infinity (E := E)) = Equiv.refl α
  act_add_apply :
    ∀ P Q x, act (G.add P Q) x = act Q (act P x)

structure TorsionPoint
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    (G : Arithmetic.ECGroupLaw E) where
  point : Arithmetic.ECPoint E
  torsion : Arithmetic.IsTorsion G point

def TorsionAction.actTorsion
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : TorsionAction G α)
    (P : TorsionPoint G) :
    α ≃ α :=
  A.act P.point

theorem torsion_action_roundtrip
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    (x : α) :
    (A.act (G.neg P)) ((A.act P) x) = x := by
  have h := A.act_add_apply P (G.neg P) x
  rw [G.add_right_neg P, A.act_zero] at h
  exact h.symm

end Monodromy
end Folder
