import Mathematics.Operational.Coordinates

/-!
# Exact priority from beacon coordinates

The priority key contains only derived beacon position and velocity, certified
boundary and stratum defects, and structural rank.  A priority relation is
admitted only through a comparator carrying proofs of the declared order laws.
-/

namespace Mathematics.Operational

universe u v w z

/-- Exact inputs to an operational priority comparison. -/
structure PriorityKey (Coordinate : Type u) where
  position : Coordinate
  velocity : Coordinate
  surgeryBoundaryDefect : ℝ
  targetStratumDefect : ℝ
  structuralRank : Nat

/-- Build the priority key directly from beacon-relative derived observables. -/
noncomputable def BeaconFamily.priorityKey
    {State : Type v}
    {Time : Type w}
    {Automorphism : Type z}
    {Label : Type u}
    {intrinsic : Setoid State}
    {action : Automorphism → State → State}
    {flow : Time → State → State}
    (family : BeaconFamily intrinsic action flow Label)
    (trajectory : ℝ → State)
    (time : ℝ)
    (surgeryBoundaryDefect targetStratumDefect : ℝ)
    (structuralRank : Nat) :
    PriorityKey (Label → ℝ × ℝ) where
  position :=
    BeaconFamily.position (State := State)
      family (trajectory time)
  velocity :=
    BeaconFamily.velocity
      (State := State)
      (Time := Time)
      (Automorphism := Automorphism)
      (intrinsic := intrinsic)
      (action := action)
      (flow := flow)
      family trajectory time
  surgeryBoundaryDefect := surgeryBoundaryDefect
  targetStratumDefect := targetStratumDefect
  structuralRank := structuralRank

/-- Whether the certified comparator declares a strict partial or total order. -/
inductive ComparatorOrderKind
  | partialOrder
  | totalOrder
  deriving DecidableEq, Repr

/-- An executable comparison accompanied by proofs of its exact order relation. -/
structure ProofCarryingComparator (Key : Type u) where
  orderKind : ComparatorOrderKind
  Less : Key → Key → Prop
  compare : Key → Key → Ordering
  less_iff :
    ∀ left right, compare left right = .lt ↔ Less left right
  irreflexive : ∀ key, ¬ Less key key
  transitive :
    ∀ ⦃first second third⦄,
      Less first second → Less second third → Less first third
  totality :
    orderKind = .totalOrder →
      ∀ left right, left ≠ right → Less left right ∨ Less right left

/-- Priority is exactly the relation certified by the supplied comparator. -/
def PriorityLess
    (comparator : ProofCarryingComparator Key)
    (key : State → Key)
    (left right : State) : Prop :=
  comparator.Less (key left) (key right)

/-- Executable comparison and declared priority relation coincide exactly. -/
theorem priorityLess_iff_compare
    (comparator : ProofCarryingComparator Key)
    (key : State → Key)
    (left right : State) :
    PriorityLess comparator key left right ↔
      comparator.compare (key left) (key right) = .lt :=
  (comparator.less_iff (key left) (key right)).symm

/-- The derived priority relation is irreflexive. -/
theorem priorityLess_irreflexive
    (comparator : ProofCarryingComparator Key)
    (key : State → Key)
    (state : State) :
    ¬ PriorityLess comparator key state state :=
  comparator.irreflexive (key state)

/-- The derived priority relation is transitive. -/
theorem priorityLess_transitive
    (comparator : ProofCarryingComparator Key)
    (key : State → Key)
    {first second third : State}
    (firstSecond : PriorityLess comparator key first second)
    (secondThird : PriorityLess comparator key second third) :
    PriorityLess comparator key first third :=
  comparator.transitive firstSecond secondThird

end Mathematics.Operational
