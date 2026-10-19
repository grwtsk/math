import Folder.Rebuild.AnalyticNumberTheory.FiniteEulerExponentVectors

/-!
# Folder.Rebuild.AnalyticNumberTheory.FiniteEulerSmoothNumbers

Finite smooth-number encoding by bounded exponent vectors.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def exponentVectorNat
    (S : Finset Nat)
    (K : Nat)
    (e : ExponentVector S K) : Nat :=
  ∏ p : {p : Nat // p ∈ S}, p.val ^ (e p).val

theorem exponentVectorNat_pos
    (S : Finset Nat)
    (K : Nat)
    (hS : ∀ p ∈ S, 0 < p)
    (e : ExponentVector S K) :
    0 < exponentVectorNat S K e := by
  unfold exponentVectorNat
  exact Finset.prod_pos (fun p _hp => pow_pos (hS p.val p.property) _)

noncomputable def boundedSmoothNumbers
    (S : Finset Nat)
    (K : Nat) : Finset Nat :=
  Finset.image
    (fun e : ExponentVector S K => exponentVectorNat S K e)
    Finset.univ

theorem exponentVectorNat_mem_boundedSmoothNumbers
    (S : Finset Nat)
    (K : Nat)
    (e : ExponentVector S K) :
    exponentVectorNat S K e ∈ boundedSmoothNumbers S K := by
  simp [boundedSmoothNumbers]

end AnalyticNumberTheory
end Rebuild
end Folder
