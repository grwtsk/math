import Mathlib.Data.Setoid.Basic

/-!
# Information-preserving descent

A target descends through a carrier precisely when it is constant on its fibers.
This is a semantic property, independent of computation, observation success, or
proof search. Quotient transport below always consumes a proof of this property.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- The carrier never identifies two states on which the target differs. -/
def DescendsThrough {X Q Y : Type*} (carrier : X → Q) (target : X → Y) : Prop :=
  ∀ ⦃x y⦄, carrier x = carrier y → target x = target y

/-- Predicate truth is invariant on every fiber of the carrier. -/
def PredicateDescendsThrough {X Q : Type*} (carrier : X → Q)
    (target : X → Prop) : Prop :=
  ∀ ⦃x y⦄, carrier x = carrier y → (target x ↔ target y)

/-- An explicit pair witnessing information lost by a carrier relative to a target. -/
structure DescentObstruction {X Q Y : Type*} (carrier : X → Q) (target : X → Y) where
  /-- First state in the collision. -/
  left : X
  /-- Second state in the collision. -/
  right : X
  /-- The retained information agrees. -/
  sameCarrier : carrier left = carrier right
  /-- The target information differs. -/
  targetSeparated : target left ≠ target right

/-- An explicit fiber collision whose predicate truth values disagree. -/
structure PredicateDescentObstruction {X Q : Type*}
    (carrier : X → Q) (target : X → Prop) where
  /-- First state in the collision. -/
  left : X
  /-- Second state in the collision. -/
  right : X
  /-- The retained information agrees. -/
  sameCarrier : carrier left = carrier right
  /-- Logical equivalence of the target truth values fails. -/
  targetSeparated : ¬(target left ↔ target right)

/-- A witnessed collision prevents function-valued descent. -/
theorem descent_obstruction_not_descends {X Q Y : Type*} {carrier : X → Q}
    {target : X → Y} (obstruction : DescentObstruction carrier target) :
    ¬DescendsThrough carrier target :=
  fun h => obstruction.targetSeparated (h obstruction.sameCarrier)

/-- A witnessed truth-value collision prevents predicate descent. -/
theorem predicate_descent_obstruction_not_descends {X Q : Type*} {carrier : X → Q}
    {target : X → Prop} (obstruction : PredicateDescentObstruction carrier target) :
    ¬PredicateDescendsThrough carrier target :=
  fun h => obstruction.targetSeparated (h obstruction.sameCarrier)

/-- Identity retains enough information for every function target. -/
theorem descendsThrough_id {X Y : Type*} (target : X → Y) :
    DescendsThrough id target :=
  fun {_ _} h => congrArg target h

/-- Identity retains enough information for every predicate target. -/
theorem predicateDescendsThrough_id {X : Type*} (target : X → Prop) :
    PredicateDescendsThrough id target :=
  fun {_ _} h => Iff.of_eq (congrArg target h)

/-- Postprocessing a determined target preserves descent. -/
theorem descendsThrough_comp_target {X Q Y Z : Type*} {carrier : X → Q}
    {target : X → Y} (h : DescendsThrough carrier target) (postprocess : Y → Z) :
    DescendsThrough carrier (postprocess ∘ target) :=
  fun {_ _} equal => congrArg postprocess (h equal)

/-- Pulling a carrier and target back along the same map preserves descent. -/
theorem descendsThrough_comp_carrier {W X Q Y : Type*} {carrier : X → Q}
    {target : X → Y} (h : DescendsThrough carrier target) (preprocess : W → X) :
    DescendsThrough (carrier ∘ preprocess) (target ∘ preprocess) :=
  fun {_ _} equal => h equal

/-- Predicate descent is preserved by pulling back carrier and predicate together. -/
theorem predicateDescendsThrough_comp_carrier {W X Q : Type*} {carrier : X → Q}
    {target : X → Prop} (h : PredicateDescendsThrough carrier target) (preprocess : W → X) :
    PredicateDescendsThrough (carrier ∘ preprocess) (target ∘ preprocess) :=
  fun {_ _} equal => h equal

/-- If a finer carrier determines the old carrier, it determines every old target. -/
theorem descendsThrough_of_refines {X Q R Y : Type*} {carrier : X → Q}
    {finer : X → R} {target : X → Y} (h : DescendsThrough carrier target)
    (refinement : DescendsThrough finer carrier) : DescendsThrough finer target :=
  fun {_ _} equal => h (refinement equal)

/-- The same receiver-dominance principle holds for predicates. -/
theorem predicateDescendsThrough_of_refines {X Q R : Type*} {carrier : X → Q}
    {finer : X → R} {target : X → Prop} (h : PredicateDescendsThrough carrier target)
    (refinement : DescendsThrough finer carrier) : PredicateDescendsThrough finer target :=
  fun {_ _} equal => h (refinement equal)

/-- Descent is exactly constancy on each fiber, with the fiber value explicit. -/
theorem descendsThrough_iff_constant_on_fibers {X Q Y : Type*}
    (carrier : X → Q) (target : X → Y) :
    DescendsThrough carrier target ↔
      ∀ value x y, carrier x = value → carrier y = value → target x = target y := by
  constructor
  · intro h value x y hx hy
    exact h (hx.trans hy.symm)
  · intro h x y equal
    exact h (carrier y) x y equal rfl

/-- A recovered function must be constant on the fibers used to recover it. -/
theorem descendsThrough_of_factorization {X Q Y : Type*} {carrier : X → Q}
    {target : X → Y} (recover : Q → Y) (exact : ∀ x, recover (carrier x) = target x) :
    DescendsThrough carrier target := by
  intro x y equal
  rw [← exact x, ← exact y, equal]

/-- No carrier-only classifier can reproduce a target with an explicit obstruction. -/
theorem descent_obstruction_no_factorization {X Q Y : Type*} {carrier : X → Q}
    {target : X → Y} (obstruction : DescentObstruction carrier target) :
    ¬∃ recover : Q → Y, ∀ x, recover (carrier x) = target x := by
  rintro ⟨recover, exact⟩
  exact descent_obstruction_not_descends obstruction
    (descendsThrough_of_factorization recover exact)

/-- Quotient descent is equivalent to invariance under the given setoid relation. -/
theorem descendsThrough_quotient_iff {X Y : Type*} (s : Setoid X) (target : X → Y) :
    DescendsThrough (Quotient.mk s) target ↔
      ∀ x y, s.r x y → target x = target y := by
  constructor
  · intro h x y related
    exact h (Quotient.sound related)
  · intro h x y equal
    exact h x y (Quotient.exact equal)

/-- The quotient evaluator exists only after descent has been proved. -/
def descentQuotientLift {X Y : Type*} (s : Setoid X) (target : X → Y)
    (h : DescendsThrough (Quotient.mk s) target) : Quotient s → Y :=
  Quotient.lift target (fun _ _ related => h (Quotient.sound related))

/-- Quotient evaluation after projection reproduces the original target. -/
@[simp] theorem descentQuotientLift_mk {X Y : Type*} (s : Setoid X) (target : X → Y)
    (h : DescendsThrough (Quotient.mk s) target) (x : X) :
    descentQuotientLift s target h (Quotient.mk s x) = target x := rfl

/-- Descent and factorization are equivalent for the surjective quotient projection. -/
theorem quotient_factorization_iff {X Y : Type*} (s : Setoid X) (target : X → Y) :
    DescendsThrough (Quotient.mk s) target ↔
      ∃ recover : Quotient s → Y, ∀ x, recover (Quotient.mk s x) = target x := by
  constructor
  · intro h
    exact ⟨descentQuotientLift s target h, fun _ => rfl⟩
  · rintro ⟨recover, exact⟩
    exact descendsThrough_of_factorization recover exact

/-- Uniqueness here is restricted to the surjective quotient projection. -/
theorem descentQuotientLift_unique {X Y : Type*} (s : Setoid X) (target : X → Y)
    (h : DescendsThrough (Quotient.mk s) target) (recover : Quotient s → Y)
    (exact : ∀ x, recover (Quotient.mk s x) = target x) :
    recover = descentQuotientLift s target h := by
  funext q
  induction q using Quotient.inductionOn with
  | h x => exact exact x

/-- A two-state collision supplies a concrete obstruction to identity recovery. -/
def booleanCollapseObstruction : DescentObstruction (fun _ : Bool => ()) id where
  left := false
  right := true
  sameCarrier := rfl
  targetSeparated := by decide

/-- The constant carrier cannot recover the two-state identity function. -/
theorem boolean_collapse_not_descends : ¬DescendsThrough (fun _ : Bool => ()) id :=
  descent_obstruction_not_descends booleanCollapseObstruction

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
