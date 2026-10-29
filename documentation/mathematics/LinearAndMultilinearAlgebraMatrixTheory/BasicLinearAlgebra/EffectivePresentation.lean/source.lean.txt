import Mathlib.Data.ZMod.Basic
import Mathlib.LinearAlgebra.Matrix.Permutation
import Mathematics.Resolution.CryptographicProblem

/-!
# Resource-sensitive effective presentation

Ordinary equivalence erases the cost of evaluating a coordinate change and
its inverse.  Cryptographic hardness therefore belongs to a category whose
morphisms retain those costs.
-/

namespace Mathematics.Resolution

universe u v

/-- Conservative time-and-space cost carried by an effective morphism. -/
structure ResourceCost where
  time : Nat
  queries : Nat
  space : Nat
  deriving DecidableEq, Repr

namespace ResourceCost

def zero : ResourceCost :=
  ⟨0, 0, 0⟩

def unit : ResourceCost :=
  ⟨1, 1, 1⟩

/-- Sequential addition is a conservative compositional upper bound. -/
def sequential (first second : ResourceCost) : ResourceCost :=
  ⟨first.time + second.time,
    first.queries + second.queries,
    first.space + second.space⟩

def Le (left right : ResourceCost) : Prop :=
  left.time ≤ right.time ∧
    left.queries ≤ right.queries ∧
    left.space ≤ right.space

theorem le_refl (cost : ResourceCost) :
    cost.Le cost :=
  ⟨le_rfl, le_rfl, le_rfl⟩

end ResourceCost

/-- A bijection together with explicit forward and inverse resource profiles. -/
structure CostedEquiv (Source : Type u) (Target : Type v) where
  equivalence : Source ≃ Target
  forwardCost : ResourceCost
  inverseCost : ResourceCost

namespace CostedEquiv

def withCosts
    {Source : Type u} {Target : Type v}
    (equivalence : Source ≃ Target)
    (forwardCost inverseCost : ResourceCost) :
    CostedEquiv Source Target :=
  ⟨equivalence, forwardCost, inverseCost⟩

def refl (State : Type u) : CostedEquiv State State :=
  withCosts (Equiv.refl State) .zero .zero

/-- Effective composition retains the resource cost in both directions. -/
def trans
    {Source : Type u} {Middle : Type v} {Target : Type*}
    (first : CostedEquiv Source Middle)
    (second : CostedEquiv Middle Target) :
    CostedEquiv Source Target :=
  withCosts
    (first.equivalence.trans second.equivalence)
    (first.forwardCost.sequential second.forwardCost)
    (second.inverseCost.sequential first.inverseCost)

@[simp]
theorem erase_trans
    {Source : Type u} {Middle : Type v} {Target : Type*}
    (first : CostedEquiv Source Middle)
    (second : CostedEquiv Middle Target) :
    (first.trans second).erase =
      first.erase.trans second.erase :=
  rfl

/-- A uniform polynomial certificate for one resource-profile family. -/
structure PolynomialResourceBound (cost : Nat → ResourceCost) where
  timeConstant : Nat
  timeDegree : Nat
  spaceConstant : Nat
  spaceDegree : Nat
  queryConstant : Nat
  queryDegree : Nat
  timeBound :
    ∀ parameter,
      (cost parameter).time ≤
        timeConstant * (parameter + 1) ^ timeDegree
  spaceBound :
    ∀ parameter,
      (cost parameter).space ≤
        spaceConstant * (parameter + 1) ^ spaceDegree
  queryBound :
    ∀ parameter,
      (cost parameter).queries ≤
        queryConstant * (parameter + 1) ^ queryDegree

/-- Resource-sensitive analogue of a polynomial-time automorphism family. -/
structure PolynomialAutomorphismFamily
    (State : Nat → Type u) where
  presentation :
    ∀ parameter, CostedEquiv (State parameter) (State parameter)
  forwardPolynomial :
    PolynomialResourceBound
      (fun parameter => (presentation parameter).forwardCost)
  inversePolynomial :
    PolynomialResourceBound
      (fun parameter => (presentation parameter).inverseCost)

/-- Forgetting resource costs recovers the ordinary algebraic equivalence. -/
def erase
    {Source : Type u} {Target : Type v}
    (presentation : CostedEquiv Source Target) :
    Source ≃ Target :=
  presentation.equivalence

/-- Ordinary equivalence cannot reconstruct the inverse cost. -/
def InverseCostFactorsThroughErasure (State : Type u) : Prop :=
  ∃ cost : (State ≃ State) → ResourceCost,
    ∀ presentation : CostedEquiv State State,
      cost presentation.erase = presentation.inverseCost

theorem erase_not_injective (State : Type u) :
    ¬ Function.Injective
      (erase : CostedEquiv State State → State ≃ State) := by
  intro injective
  let zeroCost : CostedEquiv State State :=
    withCosts (Equiv.refl State) .zero .zero
  let oneCost : CostedEquiv State State :=
    withCosts (Equiv.refl State) .zero .unit
  have equalPresentations : zeroCost = oneCost :=
    injective rfl
  have equalCosts :=
    congrArg CostedEquiv.inverseCost equalPresentations
  have impossible : (0 : Nat) = 1 := by
    simpa [zeroCost, oneCost, withCosts, ResourceCost.zero,
      ResourceCost.unit] using
      congrArg ResourceCost.time equalCosts
  exact Nat.zero_ne_one impossible

theorem inverseCost_does_not_factor_through_erasure
    (State : Type u) :
    ¬ InverseCostFactorsThroughErasure State := by
  rintro ⟨cost, recovers⟩
  let zeroCost : CostedEquiv State State :=
    withCosts (Equiv.refl State) .zero .zero
  let oneCost : CostedEquiv State State :=
    withCosts (Equiv.refl State) .zero .unit
  have zeroEquation := recovers zeroCost
  have oneEquation := recovers oneCost
  have impossible : (0 : Nat) = 1 := by
    calc
      0 = (cost (Equiv.refl State)).time := by
        simpa [zeroCost, withCosts, erase, ResourceCost.zero] using
          congrArg ResourceCost.time zeroEquation.symm
      _ = 1 := by
        simpa [oneCost, withCosts, erase, ResourceCost.unit] using
          congrArg ResourceCost.time oneEquation
  exact Nat.zero_ne_one impossible

/-- A keyed permutation exposes efficient inversion to a holder of the key. -/
structure KeyedPermutationFamily
    (Key : Type u) (Block : Type v) where
  permutation : Key → Block ≃ Block
  encryptionCost : Key → ResourceCost
  decryptionCost : Key → ResourceCost

theorem keyedPermutation_has_no_collision
    {Key : Type u} {Block : Type v}
    (family : KeyedPermutationFamily Key Block)
    (key : Key) (left right : Block) :
    ¬ Collision (family.permutation key) left right :=
  permutation_has_no_collision (family.permutation key) left right

/-- The easy cyclic shift and its inverse each carry unit presentation cost. -/
def cyclicShift (modulus : Nat) :
    CostedEquiv (ZMod modulus) (ZMod modulus) :=
  withCosts (Equiv.addRight (1 : ZMod modulus)) .unit .unit

@[simp]
theorem cyclicShift_apply
    (modulus : Nat) (value : ZMod modulus) :
    (cyclicShift modulus).equivalence value = value + 1 := by
  rfl

@[simp]
theorem cyclicShift_inverseCost (modulus : Nat) :
    (cyclicShift modulus).inverseCost = .unit :=
  rfl

theorem cyclicShift_inverse_time_lt_two (modulus : Nat) :
    (cyclicShift modulus).inverseCost.time < 2 := by
  simp [cyclicShift, withCosts, ResourceCost.unit]

open scoped Matrix.Norms.L2Operator

/--
Every finite permutation matrix has l2 operator norm one, independently of
the resource cost assigned to evaluating the permutation.
-/
theorem permutation_l2_operator_norm_eq_one
    {State : Type u}
    [Fintype State] [DecidableEq State] [Nonempty State]
    (presentation : CostedEquiv State State) :
    ‖presentation.equivalence.permMatrix ℂ‖ = 1 :=
  Matrix.permMatrix_l2_opNorm_eq presentation.equivalence

end CostedEquiv

end Mathematics.Resolution
