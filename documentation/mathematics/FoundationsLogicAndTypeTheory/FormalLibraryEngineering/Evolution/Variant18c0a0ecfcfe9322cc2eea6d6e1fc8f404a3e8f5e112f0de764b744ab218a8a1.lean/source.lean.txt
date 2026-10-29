import Mathematics.Operational.Topology

/-!
# Complete theorem-admissible evolution

`continuationSpace` contains every path satisfying the declared architecture
law.  An authoritative gate must prove that every such path satisfies its
predicate, so applying an authoritative gate cannot truncate this space.
-/

namespace Mathematics.Operational

universe u v w

/--
The complete formal law for trajectories, including the chosen initial time
and the architecture's exact notion of trajectory equivalence.
-/
structure EvolutionLaw (Time : Type u) (State : Type v) where
  initialTime : Time
  admissible : (Time → State) → Prop
  trajectoryEquivalence : Setoid (Time → State)

/-- Every formally admissible continuation beginning at `state`. -/
def continuationSpace
    (law : EvolutionLaw Time State)
    (state : State) :
    Set (Time → State) :=
  {trajectory |
    trajectory law.initialTime = state ∧ law.admissible trajectory}

/-- The subset retained by an arbitrary predicate gate. -/
def gatedContinuationSpace
    (law : EvolutionLaw Time State)
    (state : State)
    (predicate : (Time → State) → Prop) :
    Set (Time → State) :=
  {trajectory |
    trajectory ∈ continuationSpace law state ∧ predicate trajectory}

/--
An intrinsic gate is isomorphism-invariant and comes with a theorem that its
predicate already holds throughout the complete admissible phase space.
-/
structure IntrinsicGate
    (law : EvolutionLaw Time State)
    (state : State) where
  predicate : (Time → State) → Prop
  isomorphismInvariant :
    ∀ ⦃left right⦄,
      law.trajectoryEquivalence.r left right →
      (predicate left ↔ predicate right)
  theoremAdmissible :
    ∀ ⦃trajectory⦄,
      trajectory ∈ continuationSpace law state →
      predicate trajectory

/-- An intrinsic gate leaves the theorem-admissible phase space unchanged. -/
theorem intrinsicGate_untruncated
    (law : EvolutionLaw Time State)
    (state : State)
    (gate : IntrinsicGate law state) :
    gatedContinuationSpace law state gate.predicate =
      continuationSpace law state := by
  ext trajectory
  constructor
  · exact fun member ↦ member.1
  · intro member
    exact ⟨member, gate.theoremAdmissible member⟩

/-- A predicate is authoritative exactly when it is carried by an intrinsic gate. -/
def IsAuthoritativeGate
    (law : EvolutionLaw Time State)
    (state : State)
    (predicate : (Time → State) → Prop) : Prop :=
  ∃ gate : IntrinsicGate law state, gate.predicate = predicate

/--
A genuinely truncating predicate cannot be admitted as an authoritative gate.
This is the formal exclusion of uncertified heuristic pruning.
-/
theorem truncatingGate_not_authoritative
    (law : EvolutionLaw Time State)
    (state : State)
    (predicate : (Time → State) → Prop)
    (truncates :
      gatedContinuationSpace law state predicate ⊂
        continuationSpace law state) :
    ¬ IsAuthoritativeGate law state predicate := by
  rintro ⟨gate, rfl⟩
  rw [intrinsicGate_untruncated law state gate] at truncates
  exact (lt_irrefl _) truncates

/--
An exact derivation carrier for the entire admissible continuation space.
Existence is a profile obligation; this structure does not assume that such an
enumeration can be manufactured for an arbitrary law.
-/
structure CompleteDerivation
    (law : EvolutionLaw Time State)
    (state : State) where
  Index : Type w
  trajectory : Index → Time → State
  sound :
    ∀ index, trajectory index ∈ continuationSpace law state
  exhaustive :
    ∀ ⦃candidate⦄,
      candidate ∈ continuationSpace law state →
      ∃ index, trajectory index = candidate

end Mathematics.Operational
