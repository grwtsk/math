import Mathlib.Algebra.BigOperators.Fin

/-!
# Folder.Rebuild.Derived.TorsionComplex

A finite combinatorial shadow complex for the rebuild branch.
-/

namespace Folder
namespace Rebuild
namespace Derived

open scoped BigOperators

structure FiniteTorsionComplex where
  degreeBound : Nat
  C : Fin degreeBound → Type
  zero : ∀ i, C i
  torsionRank : Fin degreeBound → Nat
  differentialRank : Fin degreeBound → Nat

def torsionMass
    (K : FiniteTorsionComplex) : Nat :=
  ∑ i : Fin K.degreeBound, K.torsionRank i

def eulerShadow
    (K : FiniteTorsionComplex) : Int :=
  ∑ i : Fin K.degreeBound,
    (-1 : Int) ^ i.val * (K.torsionRank i : Int)

theorem torsionMass_nonnegative
    (K : FiniteTorsionComplex) :
    0 ≤ torsionMass K :=
  Nat.zero_le _

theorem torsionMass_identity
    (K : FiniteTorsionComplex) :
    torsionMass K = torsionMass K :=
  rfl

theorem eulerShadow_identity
    (K : FiniteTorsionComplex) :
    eulerShadow K = eulerShadow K :=
  rfl

theorem mass_nonincreasing_comp
    {A B C : FiniteTorsionComplex}
    (hAB : torsionMass B ≤ torsionMass A)
    (hBC : torsionMass C ≤ torsionMass B) :
    torsionMass C ≤ torsionMass A :=
  le_trans hBC hAB

end Derived
end Rebuild
end Folder
