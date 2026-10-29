import Folder.Rebuild.Derived.TorsionFlow

/-!
# Folder.Rebuild.Derived.RicciInspiredSurgery

This is a Ricci-flow-inspired finite torsion-flow model. It does not formalize
geometric flow, Perelman surgery, Poincare-type results, or geometrization. The
analogy is: canonical-neighborhood control plus a monotone quantity plus surgery
preserving invariants.
-/

namespace Folder
namespace Rebuild
namespace Derived

structure CanonicalTorsionNeighborhood
    (K : FiniteTorsionComplex) where
  centerDegree : Nat
  localMass : Nat
  controlled : Prop

structure TorsionSurgeryStep
    (A B : FiniteTorsionComplex)
    extends TorsionFlowStep A B where
  removedAcyclicShadow : Prop
  canonicalNeighborhoodControlled : Prop

def surgery_step_to_flow_step
    {A B : FiniteTorsionComplex}
    (S : TorsionSurgeryStep A B) :
    TorsionFlowStep A B :=
  S.toTorsionFlowStep

theorem surgery_step_euler_preserved
    {A B : FiniteTorsionComplex}
    (S : TorsionSurgeryStep A B) :
    eulerShadow B = eulerShadow A :=
  S.euler_preserved

theorem surgery_step_mass_nonincreasing
    {A B : FiniteTorsionComplex}
    (S : TorsionSurgeryStep A B) :
    torsionMass B ≤ torsionMass A :=
  S.mass_nonincreasing

theorem surgery_two_step_mass_nonincreasing
    {A B C : FiniteTorsionComplex}
    (S₁ : TorsionSurgeryStep A B)
    (S₂ : TorsionSurgeryStep B C) :
    torsionMass C ≤ torsionMass A :=
  mass_nonincreasing_comp S₁.mass_nonincreasing S₂.mass_nonincreasing

end Derived
end Rebuild
end Folder
