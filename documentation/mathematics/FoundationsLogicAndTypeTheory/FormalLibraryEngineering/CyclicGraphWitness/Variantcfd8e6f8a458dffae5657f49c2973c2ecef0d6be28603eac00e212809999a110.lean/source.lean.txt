import FormalResearch.FiniteLatticeArithmetic.CyclicRepresentation
import FormalResearch.FiniteLatticeArithmetic.GraphCriterion
import Mathlib.Tactic.FinCases
import Mathlib.Data.Fin.VecNotation

/-!
# Cyclic group principal congruences as exact finite graph witnesses

The algebra retains addition, negation and zero with their respective arities
two, one, and zero. Its congruences are exactly those of the additive group.

The witness is constructed by the principal-congruence theorem; it does not
require listing all selfmaps of the carrier.
-/

namespace FormalResearch.FiniteLatticeArithmetic

open OAI.FiniteCongruence

variable {M : ℕ} [NeZero M]

/-- The actual additive-group operations, including the nullary zero operation. -/
def cyclicGroupAlgebra (M : ℕ) : Algebra (ZMod M) where
  numOps := 3
  arity := ![2, 1, 0]
  op := Fin.cases (fun (inputs : Fin 2 → ZMod M) => inputs 0 + inputs 1)
    (Fin.cases (fun (inputs : Fin 1 → ZMod M) => -inputs 0)
      (Fin.cases (fun (_ : Fin 0 → ZMod M) => 0) (fun i => Fin.elim0 i)))

/-- These finite-signature congruences are exactly the additive group congruences. -/
def groupAlgebraCongruenceOrderIso : AddCon (ZMod M) ≃o Congruence (cyclicGroupAlgebra M) where
  toFun c := ⟨c.toSetoid, by
    intro index left right related
    fin_cases index
    · change ∀ coord : Fin 2, c (left coord) (right coord) at related
      exact c.add (related 0) (related 1)
    · change ∀ coord : Fin 1, c (left coord) (right coord) at related
      exact c.neg (related 0)
    · exact c.refl 0⟩
  invFun c :=
    { toSetoid := c.val
      add' := by
        intro a b u v hab huv
        have h := c.compatible (0 : Fin 3) ![a, u] ![b, v] (by
          intro coord
          fin_cases coord
          · exact hab
          · exact huv)
        exact h }
  left_inv c := by rfl
  right_inv c := by rfl
  map_rel_iff' := Iff.rfl

/-- In an additive commutative group every subgroup is normal. -/
def subgroupNormalOrderIso :
    AddSubgroup (ZMod M) ≃o {H : AddSubgroup (ZMod M) // H.Normal} where
  toFun H := ⟨H, inferInstance⟩
  invFun H := H.val
  left_inv _ := rfl
  right_inv _ := rfl
  map_rel_iff' := Iff.rfl

/-- Full congruence lattice, with the actual additive group operations. -/
noncomputable def cyclicGroupCongruenceOrderIso :
    Divisor M ≃o Congruence (cyclicGroupAlgebra M) :=
  cyclicSubgroupOrderIso.trans
    ((subgroupNormalOrderIso.trans AddSubgroup.orderIsoAddCon).trans
      groupAlgebraCongruenceOrderIso)

/-- The threshold congruence has precisely the prescribed arithmetic difference relation. -/
theorem cyclicGroupCongruence_apply (d : Divisor M) (x y : ZMod M) :
    cyclicGroupCongruenceOrderIso d x y ↔ x - y ∈ cyclicSubgroup d := by
  change QuotientAddGroup.leftRel (cyclicSubgroup d) x y ↔ x - y ∈ cyclicSubgroup d
  rw [QuotientAddGroup.leftRel_apply]
  rw [← AddSubgroup.neg_mem_iff]
  simp only [neg_add_rev, neg_neg, sub_eq_add_neg]
  rw [add_comm]

/-- Arithmetic additive-order colors are the transported principal congruences. -/
theorem cyclicColor_eq_principalColor (x y : ZMod M) :
    cyclicColor x y = principalColor cyclicGroupCongruenceOrderIso x y := by
  apply le_antisymm
  · rw [cyclicColor_threshold, ← cyclicGroupCongruence_apply]
    exact (principalColor_le cyclicGroupCongruenceOrderIso).mp le_rfl
  · apply (principalColor_le cyclicGroupCongruenceOrderIso).mpr
    rw [cyclicGroupCongruence_apply, ← cyclicColor_threshold]

/-- All graph conditions, including saturation under every finite seed set. -/
theorem cyclicColor_isGraphWitness : IsGraphWitness (cyclicColor (M := M)) := by
  have h : cyclicColor (M := M) = principalColor cyclicGroupCongruenceOrderIso :=
    funext fun x => funext fun y => cyclicColor_eq_principalColor x y
  rw [h]
  exact principalColor_isGraphWitness cyclicGroupCongruenceOrderIso

/-- Saturation is obtained from the principal-congruence proof, for every modulus. -/
theorem cyclicColor_saturation (seeds : Finset (ZMod M × ZMod M))
    (hne : seeds.Nonempty) (x y : ZMod M)
    (hle : cyclicColor x y ≤ seeds.sup (fun edge => cyclicColor edge.1 edge.2)) :
    Connected cyclicColor seeds x y :=
  cyclicColor_isGraphWitness.2.2.2.2 seeds hne x y hle

end FormalResearch.FiniteLatticeArithmetic
