import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SeparationBounds
import Mathlib.Data.Finset.Max
import Mathlib.Data.Finset.Powerset
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Monoid.WithTop

/-!
# Minimum sufficient observation size and declared cost

These minima enumerate all subfamilies of an explicit finite inventory and retain
only families proved to separate the specified target. The value `⊤` means that
no such family exists. It does not mean that a search failed to find one.
Costs have a declared additive codomain; none of these quantities changes the
heterogeneous resource vector or supplies theorem publication authority.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

variable {Object Test Value Result OtherResult Cost : Type*}
variable [Fintype Object] [DecidableEq Value] [DecidableEq Result]

/-- The exhaustive finite collection of admitted subfamilies sufficient for this target. -/
def sufficientObservationFamilies (obs : Test → Object → Value) (admitted : Finset Test)
    (target : Object → Result) : Finset (Finset Test) :=
  admitted.powerset.filter (fun selected => SeparatesTarget obs selected target)

/-- Membership combines admission with exact target separation. -/
@[simp] theorem mem_sufficientObservationFamilies (obs : Test → Object → Value)
    (admitted selected : Finset Test) (target : Object → Result) :
    selected ∈ sufficientObservationFamilies obs admitted target ↔
      selected ⊆ admitted ∧ SeparatesTarget obs selected target := by
  simp [sufficientObservationFamilies]

/-- Some admitted subfamily suffices exactly when the full admitted family suffices. -/
theorem sufficientObservationFamilies_nonempty_iff (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    (sufficientObservationFamilies obs admitted target).Nonempty ↔
      SeparatesTarget obs admitted target := by
  constructor
  · rintro ⟨selected, member⟩
    obtain ⟨subset, separates⟩ := (mem_sufficientObservationFamilies obs _ _ target).mp member
    exact separates.mono subset
  · intro separates
    exact ⟨admitted, (mem_sufficientObservationFamilies obs _ _ target).mpr
      ⟨Finset.Subset.refl _, separates⟩⟩

/-- Exhaustive emptiness means no admitted subfamily can determine the target. -/
theorem sufficientObservationFamilies_eq_empty_iff (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    sufficientObservationFamilies obs admitted target = ∅ ↔
      ¬ SeparatesTarget obs admitted target := by
  rw [← Finset.not_nonempty_iff_eq_empty, sufficientObservationFamilies_nonempty_iff]

/-- The least number of sufficient admitted tests, or infinity if there is no sufficient family. -/
def TargetSeparationRank (obs : Test → Object → Value) (admitted : Finset Test)
    (target : Object → Result) : WithTop ℕ :=
  ((sufficientObservationFamilies obs admitted target).image Finset.card).min

/-- The minimum total declared additive cost of a sufficient subfamily, or infinity. -/
def TargetSeparationCost [LinearOrder Cost] [AddCommMonoid Cost]
    (obs : Test → Object → Value) (admitted : Finset Test) (target : Object → Result)
    (cost : Test → Cost) : WithTop Cost :=
  ((sufficientObservationFamilies obs admitted target).image
    (fun selected => ∑ test ∈ selected, cost test)).min

/-- Counting observations is the special case of assigning unit natural-number cost. -/
theorem targetSeparationCost_unit_eq_rank (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    TargetSeparationCost obs admitted target (fun _ => (1 : ℕ)) =
      TargetSeparationRank obs admitted target := by
  simp [TargetSeparationCost, TargetSeparationRank]

/-- Every sufficient admitted family gives a rank upper bound. -/
theorem targetSeparationRank_le_of_sufficient {obs : Test → Object → Value}
    {admitted selected : Finset Test} {target : Object → Result}
    (subset : selected ⊆ admitted) (separates : SeparatesTarget obs selected target) :
    TargetSeparationRank obs admitted target ≤ (selected.card : WithTop ℕ) :=
  Finset.min_le (Finset.mem_image.mpr ⟨selected,
    (mem_sufficientObservationFamilies obs _ _ target).mpr ⟨subset, separates⟩, rfl⟩)

/-- A lower bound for every sufficient family is a lower bound for the exact minimum. -/
theorem le_targetSeparationRank {obs : Test → Object → Value} {admitted : Finset Test}
    {target : Object → Result} {lower : WithTop ℕ}
    (bound : ∀ selected ⊆ admitted, SeparatesTarget obs selected target →
      lower ≤ (selected.card : WithTop ℕ)) :
    lower ≤ TargetSeparationRank obs admitted target := by
  apply Finset.le_min
  intro size member
  obtain ⟨selected, hselected, rfl⟩ := Finset.mem_image.mp member
  obtain ⟨subset, separates⟩ := (mem_sufficientObservationFamilies obs _ _ target).mp hselected
  exact bound selected subset separates

/-- Every sufficient admitted family bounds the minimum declared cost. -/
theorem targetSeparationCost_le_of_sufficient [LinearOrder Cost] [AddCommMonoid Cost]
    {obs : Test → Object → Value} {admitted selected : Finset Test} {target : Object → Result}
    (cost : Test → Cost) (subset : selected ⊆ admitted)
    (separates : SeparatesTarget obs selected target) :
    TargetSeparationCost obs admitted target cost ≤
      (↑(∑ test ∈ selected, cost test) : WithTop Cost) :=
  Finset.min_le (Finset.mem_image.mpr ⟨selected,
    (mem_sufficientObservationFamilies obs _ _ target).mpr ⟨subset, separates⟩, rfl⟩)

/-- A bound valid for all sufficient families bounds the exact cost minimum. -/
theorem le_targetSeparationCost [LinearOrder Cost] [AddCommMonoid Cost]
    {obs : Test → Object → Value} {admitted : Finset Test} {target : Object → Result}
    (cost : Test → Cost) {lower : WithTop Cost}
    (bound : ∀ selected ⊆ admitted, SeparatesTarget obs selected target →
      lower ≤ (↑(∑ test ∈ selected, cost test) : WithTop Cost)) :
    lower ≤ TargetSeparationCost obs admitted target cost := by
  apply Finset.le_min
  intro value member
  obtain ⟨selected, hselected, rfl⟩ := Finset.mem_image.mp member
  obtain ⟨subset, separates⟩ := (mem_sufficientObservationFamilies obs _ _ target).mp hselected
  exact bound selected subset separates

/-- A finite rank is attained by an actual sufficient admitted family. -/
theorem targetSeparationRank_attained {obs : Test → Object → Value}
    {admitted : Finset Test} {target : Object → Result} {size : ℕ}
    (finite : TargetSeparationRank obs admitted target = (size : WithTop ℕ)) :
    ∃ selected ⊆ admitted, SeparatesTarget obs selected target ∧ selected.card = size := by
  obtain ⟨selected, member, cardinality⟩ := Finset.mem_image.mp (Finset.mem_of_min finite)
  obtain ⟨subset, separates⟩ := (mem_sufficientObservationFamilies obs _ _ target).mp member
  exact ⟨selected, subset, separates, cardinality⟩

/-- A finite declared-cost minimum is attained by a sufficient admitted family. -/
theorem targetSeparationCost_attained [LinearOrder Cost] [AddCommMonoid Cost]
    {obs : Test → Object → Value} {admitted : Finset Test} {target : Object → Result}
    {cost : Test → Cost} {value : Cost}
    (finite : TargetSeparationCost obs admitted target cost = (value : WithTop Cost)) :
    ∃ selected ⊆ admitted, SeparatesTarget obs selected target ∧
      ∑ test ∈ selected, cost test = value := by
  obtain ⟨selected, member, total⟩ := Finset.mem_image.mp (Finset.mem_of_min finite)
  obtain ⟨subset, separates⟩ := (mem_sufficientObservationFamilies obs _ _ target).mp member
  exact ⟨selected, subset, separates, total⟩

/-- Infinity denotes exact insufficiency of the full declared observation language. -/
theorem targetSeparationRank_eq_top_iff (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    TargetSeparationRank obs admitted target = ⊤ ↔ ¬ SeparatesTarget obs admitted target := by
  simp [TargetSeparationRank, sufficientObservationFamilies_eq_empty_iff]

/-- Cost infinity has the same semantic obstruction regardless of the declared cost values. -/
theorem targetSeparationCost_eq_top_iff [LinearOrder Cost] [AddCommMonoid Cost]
    (obs : Test → Object → Value) (admitted : Finset Test) (target : Object → Result)
    (cost : Test → Cost) :
    TargetSeparationCost obs admitted target cost = ⊤ ↔ ¬ SeparatesTarget obs admitted target := by
  simp [TargetSeparationCost, sufficientObservationFamilies_eq_empty_iff]

/-- Infinite rank has a target-distinct pair with the same complete observation tuple. -/
theorem targetSeparationRank_eq_top_iff_collision (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    TargetSeparationRank obs admitted target = ⊤ ↔
      ∃ x y, target x ≠ target y ∧ observationCarrier obs admitted x =
        observationCarrier obs admitted y := by
  classical
  rw [targetSeparationRank_eq_top_iff]
  constructor
  · intro insufficient
    change ¬ (∀ x y, target x ≠ target y → ∃ test ∈ admitted, obs test x ≠ obs test y)
      at insufficient
    push Not at insufficient
    obtain ⟨x, y, different, equal⟩ := insufficient
    exact ⟨x, y, different, (observationCarrier_eq_iff obs admitted x y).mpr equal⟩
  · rintro ⟨x, y, different, equal⟩ separates
    exact different ((separates_iff_descends obs admitted target).mp separates equal)

/-- Infinite rank is equivalent to the existing proof-bearing descent obstruction. -/
theorem targetSeparationRank_eq_top_iff_obstructed (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    TargetSeparationRank obs admitted target = ⊤ ↔
      Nonempty (DescentObstruction (observationCarrier obs admitted) target) := by
  rw [targetSeparationRank_eq_top_iff_collision]
  constructor
  · rintro ⟨x, y, different, equal⟩
    exact ⟨⟨x, y, equal, different⟩⟩
  · rintro ⟨obstruction⟩
    exact ⟨obstruction.left, obstruction.right, obstruction.targetSeparated,
      obstruction.sameCarrier⟩

/-- Rank zero means pairwise constancy of the target, including on the empty domain. -/
theorem targetSeparationRank_eq_zero_iff (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    TargetSeparationRank obs admitted target = 0 ↔ ∀ x y, target x = target y := by
  constructor
  · intro zero
    obtain ⟨selected, _, separates, cardinality⟩ := targetSeparationRank_attained zero
    have empty : selected = ∅ := Finset.card_eq_zero.mp cardinality
    rw [empty] at separates
    exact (separates_empty_iff obs target).mp separates
  · intro constant
    have zeroMember : 0 ∈
        (sufficientObservationFamilies obs admitted target).image Finset.card :=
      Finset.mem_image.mpr ⟨∅,
        (mem_sufficientObservationFamilies obs admitted ∅ target).mpr
          ⟨Finset.empty_subset admitted, (separates_empty_iff obs target).mpr constant⟩,
        Finset.card_empty⟩
    obtain ⟨size, minimum⟩ := Finset.min_of_mem zeroMember
    have zeroSize : size = 0 :=
      Nat.eq_zero_of_le_zero (Finset.min_le_of_eq zeroMember minimum)
    simpa only [TargetSeparationRank, zeroSize, WithTop.coe_zero] using minimum

/-- A larger admitted language cannot increase the minimum sufficient observation size. -/
theorem targetSeparationRank_mono_admitted {obs : Test → Object → Value}
    {small large : Finset Test} {target : Object → Result} (subset : small ⊆ large) :
    TargetSeparationRank obs large target ≤ TargetSeparationRank obs small target := by
  apply le_targetSeparationRank
  intro selected member separates
  exact targetSeparationRank_le_of_sufficient (member.trans subset) separates

/-- A larger admitted language cannot increase minimum cost, with the same cost assignment. -/
theorem targetSeparationCost_mono_admitted [LinearOrder Cost] [AddCommMonoid Cost]
    {obs : Test → Object → Value} {small large : Finset Test} {target : Object → Result}
    (cost : Test → Cost) (subset : small ⊆ large) :
    TargetSeparationCost obs large target cost ≤ TargetSeparationCost obs small target cost := by
  apply le_targetSeparationCost
  intro selected member separates
  exact targetSeparationCost_le_of_sufficient cost (member.trans subset) separates

/-- A target determined by a finer target requires no more observations than that finer target. -/
theorem targetSeparationRank_mono_target [DecidableEq OtherResult]
    {obs : Test → Object → Value} {admitted : Finset Test}
    {fineTarget : Object → Result} {coarseTarget : Object → OtherResult}
    (refinement : DescendsThrough fineTarget coarseTarget) :
    TargetSeparationRank obs admitted coarseTarget ≤
      TargetSeparationRank obs admitted fineTarget := by
  apply le_targetSeparationRank
  intro selected subset separates
  exact targetSeparationRank_le_of_sufficient subset (separates.of_target_refinement refinement)

/-- Target refinement gives the same minimum-cost monotonicity for a fixed cost assignment. -/
theorem targetSeparationCost_mono_target [LinearOrder Cost] [AddCommMonoid Cost]
    [DecidableEq OtherResult] {obs : Test → Object → Value} {admitted : Finset Test}
    {fineTarget : Object → Result} {coarseTarget : Object → OtherResult}
    (cost : Test → Cost) (refinement : DescendsThrough fineTarget coarseTarget) :
    TargetSeparationCost obs admitted coarseTarget cost ≤
      TargetSeparationCost obs admitted fineTarget cost := by
  apply le_targetSeparationCost
  intro selected subset separates
  exact targetSeparationCost_le_of_sufficient cost subset
    (separates.of_target_refinement refinement)

/-- Union gives a rank upper bound for the paired target; no strict gain is asserted. -/
theorem targetSeparationRank_pair_le [DecidableEq OtherResult]
    {obs : Test → Object → Value} {admitted firstTests secondTests : Finset Test}
    {first : Object → Result} {second : Object → OtherResult}
    (firstSubset : firstTests ⊆ admitted) (secondSubset : secondTests ⊆ admitted)
    (firstSeparates : SeparatesTarget obs firstTests first)
    (secondSeparates : SeparatesTarget obs secondTests second) :
    TargetSeparationRank obs admitted (fun x => (first x, second x)) ≤
      ((firstTests.card + secondTests.card : ℕ) : WithTop ℕ) := by
  classical
  refine (targetSeparationRank_le_of_sufficient
    (Finset.union_subset firstSubset secondSubset)
    (firstSeparates.union_pair secondSeparates)).trans ?_
  exact WithTop.coe_le_coe.mpr (Finset.card_union_le firstTests secondTests)

/-- Disjoint separator requirements give a lower bound for the exact target rank. -/
theorem card_le_targetSeparationRank_of_disjoint_separators {I : Type*}
    (obs : Test → Object → Value) (admitted : Finset Test) (target : Object → Result)
    (pairs : Finset I) (left right : I → Object)
    (different : ∀ i ∈ pairs, target (left i) ≠ target (right i))
    (disjoint : (pairs : Set I).Pairwise
      (fun i j => Disjoint (separatorSet obs admitted (left i) (right i))
        (separatorSet obs admitted (left j) (right j)))) :
    (pairs.card : WithTop ℕ) ≤ TargetSeparationRank obs admitted target := by
  apply le_targetSeparationRank
  intro selected subset separates
  exact WithTop.coe_le_coe.mpr (card_le_of_pairwise_disjoint_separator_sets
    obs admitted selected target pairs left right different disjoint subset separates)

/-- Minimum sufficient size inside the existing finite notion's exact affordable inventory. -/
def FiniteNotion.targetSeparationRank (notion : FiniteNotion Object Test Value)
    (budget : ℕ) (target : Object → Result) : WithTop ℕ :=
  TargetSeparationRank notion.policy.observe
    (notion.tests.filter (fun test => notion.policy.cost test ≤ budget)) target

/-- Finite target rank is equivalent to the existing finite-notion determination predicate. -/
theorem FiniteNotion.targetSeparationRank_ne_top_iff (notion : FiniteNotion Object Test Value)
    (budget : ℕ) (target : Object → Result) :
    notion.targetSeparationRank budget target ≠ ⊤ ↔ notion.DeterminesAt budget target := by
  change ¬ (TargetSeparationRank notion.policy.observe
    (notion.tests.filter (fun test => notion.policy.cost test ≤ budget)) target = ⊤) ↔ _
  rw [targetSeparationRank_eq_top_iff, not_not]
  exact (notion.determinesAt_iff_separatesTarget budget target).symm

/-- Increasing the existing per-test budget cannot increase minimum sufficient size. -/
theorem FiniteNotion.targetSeparationRank_of_budget_le
    (notion : FiniteNotion Object Test Value) {small large : ℕ} (le : small ≤ large)
    (target : Object → Result) :
    notion.targetSeparationRank large target ≤ notion.targetSeparationRank small target := by
  apply targetSeparationRank_mono_admitted
  intro test member
  obtain ⟨admitted, affordable⟩ := Finset.mem_filter.mp member
  exact Finset.mem_filter.mpr ⟨admitted, affordable.trans le⟩

/-- The sufficient-family enumeration is exactly the finite separator hitting-set enumeration. -/
theorem sufficientObservationFamilies_eq_hitting_sets [DecidableEq Test]
    (obs : Test → Object → Value) (admitted : Finset Test) (target : Object → Result) :
    sufficientObservationFamilies obs admitted target =
      admitted.powerset.filter (fun selected => ∀ pair ∈ targetDistinctions target,
        (selected ∩ separatorSet obs admitted pair.1 pair.2).Nonempty) := by
  ext selected
  simp only [mem_sufficientObservationFamilies, Finset.mem_filter, Finset.mem_powerset]
  constructor
  · rintro ⟨subset, separates⟩
    exact ⟨subset, (separates_iff_hits_separators obs selected admitted target subset).mp separates⟩
  · rintro ⟨subset, hits⟩
    exact ⟨subset, (separates_iff_hits_separators obs selected admitted target subset).mpr hits⟩

/-- Target rank is literally the minimum cardinality of a finite separator hitting set. -/
theorem targetSeparationRank_eq_minimum_hitting_set_size
    [DecidableEq Test]
    (obs : Test → Object → Value) (admitted : Finset Test) (target : Object → Result) :
    TargetSeparationRank obs admitted target =
      ((admitted.powerset.filter (fun selected => ∀ pair ∈ targetDistinctions target,
        (selected ∩ separatorSet obs admitted pair.1 pair.2).Nonempty)).image Finset.card).min := by
  rw [TargetSeparationRank, sufficientObservationFamilies_eq_hitting_sets]

/-- Minimum declared observation cost is the minimum weight of a finite separator hitting set. -/
theorem targetSeparationCost_eq_minimum_hitting_set_cost
    [DecidableEq Test] [LinearOrder Cost] [AddCommMonoid Cost]
    (obs : Test → Object → Value) (admitted : Finset Test) (target : Object → Result)
    (cost : Test → Cost) :
    TargetSeparationCost obs admitted target cost =
      ((admitted.powerset.filter (fun selected => ∀ pair ∈ targetDistinctions target,
        (selected ∩ separatorSet obs admitted pair.1 pair.2).Nonempty)).image
          (fun selected => ∑ test ∈ selected, cost test)).min := by
  rw [TargetSeparationCost, sufficientObservationFamilies_eq_hitting_sets]

/-- The union bound for declared costs requires nonnegative costs in the admitted language. -/
theorem targetSeparationCost_pair_le [DecidableEq OtherResult]
    [LinearOrder Cost] [AddCommMonoid Cost] [IsOrderedAddMonoid Cost]
    {obs : Test → Object → Value} {admitted firstTests secondTests : Finset Test}
    {first : Object → Result} {second : Object → OtherResult}
    (cost : Test → Cost) (nonnegative : ∀ test ∈ admitted, 0 ≤ cost test)
    (firstSubset : firstTests ⊆ admitted) (secondSubset : secondTests ⊆ admitted)
    (firstSeparates : SeparatesTarget obs firstTests first)
    (secondSeparates : SeparatesTarget obs secondTests second) :
    TargetSeparationCost obs admitted (fun x => (first x, second x)) cost ≤
      (↑((∑ test ∈ firstTests, cost test) + ∑ test ∈ secondTests, cost test) : WithTop Cost) := by
  classical
  apply (targetSeparationCost_le_of_sufficient cost
    (Finset.union_subset firstSubset secondSubset)
    (firstSeparates.union_pair secondSeparates)).trans
  apply WithTop.coe_le_coe.mpr
  rw [← Finset.sum_sdiff (Finset.subset_union_left :
    firstTests ⊆ firstTests ∪ secondTests)]
  rw [Finset.union_sdiff_left, add_comm]
  exact add_le_add (le_refl _) (Finset.sum_le_sum_of_subset_of_nonneg Finset.sdiff_subset
    (fun test member _ => nonnegative test (secondSubset member)))

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
