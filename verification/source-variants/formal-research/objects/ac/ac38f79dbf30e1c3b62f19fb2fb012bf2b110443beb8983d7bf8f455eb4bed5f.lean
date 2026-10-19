import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent
import Mathlib.Data.Fintype.Prod

/-!
# Separation of a specified target by selected observations

The observation carrier retains exactly the values of the selected tests.
Separation concerns a specified target, and its quotient characterization uses
the actual carrier fibers. Finite separator sets express the same requirement
as hitting every target-distinct pair; they do not certify a search procedure.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

variable {Object Test Value Result OtherResult : Type*}

/-- The complete tuple of observations retained by this selected finite test family. -/
def observationCarrier (obs : Test → Object → Value) (selected : Finset Test)
    (x : Object) : ↥selected → Value :=
  fun test => obs test.val x

/-- Every pair distinguished by the target is distinguished by a selected test. -/
def SeparatesTarget (obs : Test → Object → Value) (selected : Finset Test)
    (target : Object → Result) : Prop :=
  ∀ x y, target x ≠ target y → ∃ test ∈ selected, obs test x ≠ obs test y

/-- The actual fiber equivalence relation of the selected observation carrier. -/
def observationSetoid (obs : Test → Object → Value) (selected : Finset Test) : Setoid Object :=
  Setoid.ker (observationCarrier obs selected)

/-- Carrier equality means equality of every selected observation, and nothing more. -/
theorem observationCarrier_eq_iff (obs : Test → Object → Value) (selected : Finset Test)
    (x y : Object) :
    observationCarrier obs selected x = observationCarrier obs selected y ↔
      ∀ test ∈ selected, obs test x = obs test y := by
  constructor
  · intro equal test member
    exact congrFun equal ⟨test, member⟩
  · intro equal
    funext test
    exact equal test.val test.property

/-- An added observation splits a previously equal carrier pair exactly when its values differ. -/
theorem observationCarrier_insert_ne_iff [DecidableEq Test]
    (obs : Test → Object → Value) (selected : Finset Test) (test : Test) (x y : Object)
    (oldEqual : observationCarrier obs selected x = observationCarrier obs selected y) :
    observationCarrier obs (insert test selected) x ≠
        observationCarrier obs (insert test selected) y ↔ obs test x ≠ obs test y := by
  constructor
  · intro newDifferent sameValue
    apply newDifferent
    apply (observationCarrier_eq_iff obs (insert test selected) x y).mpr
    intro observed member
    obtain rfl | oldMember := Finset.mem_insert.mp member
    · exact sameValue
    · exact (observationCarrier_eq_iff obs selected x y).mp oldEqual observed oldMember
  · intro different sameCarrier
    exact different ((observationCarrier_eq_iff obs (insert test selected) x y).mp
      sameCarrier test (Finset.mem_insert_self test selected))

/-- Target separation is exactly semantic descent through the retained observation tuple. -/
theorem separates_iff_descends (obs : Test → Object → Value) (selected : Finset Test)
    (target : Object → Result) :
    SeparatesTarget obs selected target ↔
      DescendsThrough (observationCarrier obs selected) target := by
  classical
  constructor
  · intro separates x y equal
    by_contra different
    obtain ⟨test, member, distinguishes⟩ := separates x y different
    exact distinguishes ((observationCarrier_eq_iff obs selected x y).mp equal test member)
  · intro descends x y different
    by_contra noTest
    apply different
    apply descends
    apply (observationCarrier_eq_iff obs selected x y).mpr
    intro test member
    by_contra distinguishes
    exact noTest ⟨test, member, distinguishes⟩

/-- Separation is equivalent to a decoder on the actual observation quotient. -/
theorem separates_iff_quotient_factorization (obs : Test → Object → Value)
    (selected : Finset Test) (target : Object → Result) :
    SeparatesTarget obs selected target ↔
      ∃ recover : Quotient (observationSetoid obs selected) → Result,
        ∀ x, recover (Quotient.mk (observationSetoid obs selected) x) = target x := by
  rw [← quotient_factorization_iff, descendsThrough_quotient_iff]
  exact separates_iff_descends obs selected target

/-- A nonempty target type permits a total decoder on all observation tuples.
The default value is used only outside the image of the actual observation carrier. -/
theorem separates_iff_carrier_factorization [Nonempty Result]
    (obs : Test → Object → Value) (selected : Finset Test) (target : Object → Result) :
    SeparatesTarget obs selected target ↔
      ∃ decode : (↥selected → Value) → Result,
        ∀ x, decode (observationCarrier obs selected x) = target x := by
  classical
  constructor
  · intro separates
    have descends := (separates_iff_descends obs selected target).mp separates
    let decode (tuple : ↥selected → Value) : Result :=
      if preimage : ∃ x, observationCarrier obs selected x = tuple then
        target (Classical.choose preimage)
      else Classical.choice ‹Nonempty Result›
    refine ⟨decode, ?_⟩
    intro x
    have preimage : ∃ y, observationCarrier obs selected y =
        observationCarrier obs selected x := ⟨x, rfl⟩
    dsimp only [decode]
    rw [dif_pos preimage]
    exact descends (Classical.choose_spec preimage)
  · rintro ⟨decode, recovers⟩
    exact (separates_iff_descends obs selected target).mpr
      (descendsThrough_of_factorization decode recovers)

/-- Adding selected tests preserves separation of the same target. -/
theorem SeparatesTarget.mono {obs : Test → Object → Value} {small large : Finset Test}
    {target : Object → Result} (separates : SeparatesTarget obs small target)
    (subset : small ⊆ large) : SeparatesTarget obs large target := by
  intro x y different
  obtain ⟨test, member, distinguishes⟩ := separates x y different
  exact ⟨test, subset member, distinguishes⟩

/-- No selected tests suffice exactly when the target takes the same value on all inputs. -/
theorem separates_empty_iff (obs : Test → Object → Value) (target : Object → Result) :
    SeparatesTarget obs ∅ target ↔ ∀ x y, target x = target y := by
  classical
  constructor
  · intro separates x y
    by_contra different
    obtain ⟨test, member, _⟩ := separates x y different
    exact Finset.notMem_empty test member
  · intro constant x y different
    exact (different (constant x y)).elim

/-- A constant target is separated by every finite family, including the empty family. -/
theorem separates_constant (obs : Test → Object → Value) (selected : Finset Test)
    (value : Result) : SeparatesTarget obs selected (fun _ => value) := by
  intro x y different
  exact (different rfl).elim

/-- Separation of a finer target transports to every target determined by that finer target. -/
theorem SeparatesTarget.of_target_refinement {obs : Test → Object → Value}
    {selected : Finset Test} {fineTarget : Object → Result}
    {coarseTarget : Object → OtherResult} (separates : SeparatesTarget obs selected fineTarget)
    (refinement : DescendsThrough fineTarget coarseTarget) :
    SeparatesTarget obs selected coarseTarget := by
  intro x y different
  exact separates x y (fun equal => different (refinement equal))

/-- Separating a pair of targets is equivalent to separating both component targets. -/
theorem separates_pair_iff (obs : Test → Object → Value) (selected : Finset Test)
    (first : Object → Result) (second : Object → OtherResult) :
    SeparatesTarget obs selected (fun x => (first x, second x)) ↔
      SeparatesTarget obs selected first ∧ SeparatesTarget obs selected second := by
  simp only [separates_iff_descends]
  constructor
  · intro descends
    exact ⟨fun {_ _} equal => congrArg Prod.fst (descends equal),
      fun {_ _} equal => congrArg Prod.snd (descends equal)⟩
  · rintro ⟨firstDescends, secondDescends⟩ x y equal
    exact Prod.ext (firstDescends equal) (secondDescends equal)

/-- The union of sufficient test families separates the paired target. -/
theorem SeparatesTarget.union_pair [DecidableEq Test] {obs : Test → Object → Value}
    {firstTests secondTests : Finset Test} {first : Object → Result}
    {second : Object → OtherResult} (hfirst : SeparatesTarget obs firstTests first)
    (hsecond : SeparatesTarget obs secondTests second) :
    SeparatesTarget obs (firstTests ∪ secondTests) (fun x => (first x, second x)) :=
  (separates_pair_iff obs _ first second).mpr
    ⟨hfirst.mono Finset.subset_union_left, hsecond.mono Finset.subset_union_right⟩

/-- The admitted tests that distinguish this specific ordered pair of objects. -/
def separatorSet [DecidableEq Value] (obs : Test → Object → Value) (admitted : Finset Test)
    (x y : Object) : Finset Test :=
  admitted.filter (fun test => obs test x ≠ obs test y)

/-- Membership requires both admission and unequal observation values on the given pair. -/
@[simp]
theorem mem_separatorSet [DecidableEq Value] (obs : Test → Object → Value)
    (admitted : Finset Test) (x y : Object) (test : Test) :
    test ∈ separatorSet obs admitted x y ↔ test ∈ admitted ∧ obs test x ≠ obs test y :=
  Finset.mem_filter

/-- The finite set of ordered object pairs distinguished by the specified target. -/
def targetDistinctions [Fintype Object] [DecidableEq Result]
    (target : Object → Result) : Finset (Object × Object) :=
  Finset.univ.filter (fun pair => target pair.1 ≠ target pair.2)

/-- Membership in the distinction set is exactly inequality of the two target values. -/
@[simp]
theorem mem_targetDistinctions [Fintype Object] [DecidableEq Result]
    (target : Object → Result) (pair : Object × Object) :
    pair ∈ targetDistinctions target ↔ target pair.1 ≠ target pair.2 := by
  simp [targetDistinctions]

/-- A target has no distinctions exactly when it takes the same value on every input. -/
theorem targetDistinctions_eq_empty_iff [Fintype Object] [DecidableEq Result]
    (target : Object → Result) :
    targetDistinctions target = ∅ ↔ ∀ x y, target x = target y := by
  constructor
  · intro empty x y
    by_contra different
    have member : (x, y) ∈ targetDistinctions target :=
      (mem_targetDistinctions target (x, y)).mpr different
    rw [empty] at member
    exact Finset.notMem_empty _ member
  · intro constant
    apply Finset.eq_empty_iff_forall_notMem.mpr
    intro pair member
    exact ((mem_targetDistinctions target pair).mp member) (constant pair.1 pair.2)

/-- A sufficient selected subfamily hits the separator set of each target-distinct pair. -/
theorem SeparatesTarget.hits_separator [DecidableEq Test] [DecidableEq Value]
    {obs : Test → Object → Value} {selected admitted : Finset Test}
    {target : Object → Result} (separates : SeparatesTarget obs selected target)
    (subset : selected ⊆ admitted) {x y : Object} (different : target x ≠ target y) :
    (selected ∩ separatorSet obs admitted x y).Nonempty := by
  obtain ⟨test, member, distinguishes⟩ := separates x y different
  exact ⟨test, Finset.mem_inter.mpr ⟨member,
    (mem_separatorSet obs admitted x y test).mpr ⟨subset member, distinguishes⟩⟩⟩

/-- Finite separation is exactly hitting every admitted separator set for a target distinction. -/
theorem separates_iff_hits_separators [Fintype Object] [DecidableEq Result]
    [DecidableEq Test] [DecidableEq Value]
    (obs : Test → Object → Value) (selected admitted : Finset Test) (target : Object → Result)
    (subset : selected ⊆ admitted) :
    SeparatesTarget obs selected target ↔
      ∀ pair ∈ targetDistinctions target,
        (selected ∩ separatorSet obs admitted pair.1 pair.2).Nonempty := by
  constructor
  · intro separates pair member
    exact separates.hits_separator subset ((mem_targetDistinctions target pair).mp member)
  · intro hits x y different
    obtain ⟨test, member⟩ := hits (x, y) ((mem_targetDistinctions target (x, y)).mpr different)
    obtain ⟨selectedMember, separatorMember⟩ := Finset.mem_inter.mp member
    exact ⟨test, selectedMember, ((mem_separatorSet obs admitted x y test).mp separatorMember).2⟩

/-- Finite object and decidable value types make the exact separation predicate decidable. -/
instance instDecidableSeparatesTarget [Fintype Object] [DecidableEq Value] [DecidableEq Result]
    (obs : Test → Object → Value) (selected : Finset Test) (target : Object → Result) :
    Decidable (SeparatesTarget obs selected target) := by
  unfold SeparatesTarget
  infer_instance

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
