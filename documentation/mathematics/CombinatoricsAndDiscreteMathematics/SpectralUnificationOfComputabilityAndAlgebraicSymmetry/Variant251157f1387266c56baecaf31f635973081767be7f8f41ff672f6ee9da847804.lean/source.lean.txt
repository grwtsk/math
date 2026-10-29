-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ObservationPolicy.Variantb5dc8b8e422913c560ffb43bb67e29ab1575f0311dbc6463a71c6923ddcb8e33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b5dc8b8e422913c560ffb43bb67e29ab1575f0311dbc6463a71c6923ddcb8e33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ObservationPolicy.Variantb5dc8b8e422913c560ffb43bb67e29ab1575f0311dbc6463a71c6923ddcb8e33","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"b5dc8b8e422913c560ffb43bb67e29ab1575f0311dbc6463a71c6923ddcb8e33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/b5dc8b8e422913c560ffb43bb67e29ab1575f0311dbc6463a71c6923ddcb8e33.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Recoverability
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Setoid.Basic

/-!
# Semantic notions and finite observation realizations

The semantic quotient quantifies over all affordable tests. Only an explicitly
listed finite family receives an executable comparison; it is not a canonical
algorithm for unrestricted future behavior.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ObservationPolicy.Variantb5dc8b8e422913c560ffb43bb67e29ab1575f0311dbc6463a71c6923ddcb8e33

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- An observation policy supplies tests and costs, rather than defining notion identity. -/
structure ObservationPolicy (Object Test Value : Type*) where
  /-- Logical finite cost of one test. -/
  cost : Test → ℕ
  /-- Extensional observation produced by a test. -/
  observe : Test → Object → Value

/-- Two objects have the same observations under every affordable semantic test. -/
def ObservationallyEquivalent {Object Test Value : Type*}
    (policy : ObservationPolicy Object Test Value) (budget : ℕ) (x y : Object) : Prop :=
  ∀ test, policy.cost test ≤ budget → policy.observe test x = policy.observe test y

/-- Budget-indexed semantic observation equality is an equivalence relation. -/
def notionSetoid {Object Test Value : Type*}
    (policy : ObservationPolicy Object Test Value) (budget : ℕ) : Setoid Object where
  r := ObservationallyEquivalent policy budget
  iseqv := ⟨fun _ _ _ => rfl, fun h t ht => (h t ht).symm,
    fun hxy hyz t ht => (hxy t ht).trans (hyz t ht)⟩

/-- The extensional semantic quotient has no claimed executable canonical representative. -/
def notionQuotient {Object Test Value : Type*}
    (policy : ObservationPolicy Object Test Value) (budget : ℕ) :=
  Quotient (notionSetoid policy budget)

/-- Lower budgets can merge semantic equivalence classes and cannot split them. -/
theorem observationallyEquivalent_of_budget_le {Object Test Value : Type*}
    {policy : ObservationPolicy Object Test Value} {small large : ℕ} {x y : Object}
    (hbudget : small ≤ large) (h : ObservationallyEquivalent policy large x y) :
    ObservationallyEquivalent policy small x y :=
  fun test hcost => h test (hcost.trans hbudget)

/-- A source-bound finite realization specifies exactly which tests were made available. -/
structure FiniteNotion (Object Test Value : Type*) where
  /-- Immutable profile identity supplied by the source-binding layer. -/
  sourceIdentity : String
  /-- Policy whose observations this finite realization samples. -/
  policy : ObservationPolicy Object Test Value
  /-- Complete finite inventory for this realization, not for all possible future tests. -/
  tests : Finset Test

/-- Equivalence relative to an explicit finite observation aperture and budget. -/
def FiniteNotion.Equivalent {Object Test Value : Type*}
    (notion : FiniteNotion Object Test Value) (budget : ℕ) (x y : Object) : Prop :=
  ∀ test ∈ notion.tests,
    notion.policy.cost test ≤ budget → notion.policy.observe test x = notion.policy.observe test y

/-- The realized finite relation is itself an equivalence relation. -/
def FiniteNotion.setoid {Object Test Value : Type*}
    (notion : FiniteNotion Object Test Value) (budget : ℕ) : Setoid Object where
  r := notion.Equivalent budget
  iseqv := ⟨fun _ _ _ _ => rfl, fun h t hm hc => (h t hm hc).symm,
    fun hxy hyz t hm hc => (hxy t hm hc).trans (hyz t hm hc)⟩

/-- Exact executable comparison, restricted to the declared finite test family. -/
def FiniteNotion.compare {Object Test Value : Type*} [DecidableEq Value]
    (notion : FiniteNotion Object Test Value) (budget : ℕ) (x y : Object) : Bool :=
  decide (∀ test ∈ notion.tests,
    notion.policy.cost test ≤ budget → notion.policy.observe test x = notion.policy.observe test y)

/-- The finite Boolean comparison is precisely its bounded extensional specification. -/
theorem FiniteNotion.compare_eq_true {Object Test Value : Type*}
    [DecidableEq Value]
    (notion : FiniteNotion Object Test Value) (budget : ℕ) (x y : Object) :
    notion.compare budget x y = true ↔ notion.Equivalent budget x y := by
  simp [FiniteNotion.compare, FiniteNotion.Equivalent]

/-- Budget reduction coarsens the executable finite notion as well. -/
theorem FiniteNotion.equivalent_of_budget_le {Object Test Value : Type*}
    {notion : FiniteNotion Object Test Value} {small large : ℕ} {x y : Object}
    (hbudget : small ≤ large) (h : notion.Equivalent large x y) :
    notion.Equivalent small x y :=
  fun test hmem hcost => h test hmem (hcost.trans hbudget)

/-- Full semantic equivalence implies equivalence in each finite subfamily. -/
theorem FiniteNotion.equivalent_of_semantic {Object Test Value : Type*}
    (notion : FiniteNotion Object Test Value) {budget : ℕ} {x y : Object}
    (h : ObservationallyEquivalent notion.policy budget x y) :
    notion.Equivalent budget x y :=
  fun test _ hcost => h test hcost

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- Exact recovery of a named target from the existing budgeted observation quotient. -/
def RecoverableAtBudget {Object Test Value Target : Type*}
    (policy : ObservationPolicy Object Test Value) (budget : ℕ)
    (target : Object → Target) : Prop :=
  RecoverableFrom (fun x => Quotient.mk (notionSetoid policy budget) x) target

/-- Recovery at a budget means precisely constancy of the target on observation classes. -/
theorem recoverableAtBudget_iff {Object Test Value Target : Type*}
    (policy : ObservationPolicy Object Test Value) (budget : ℕ) (target : Object → Target) :
    RecoverableAtBudget policy budget target ↔
      ∀ x y, ObservationallyEquivalent policy budget x y → target x = target y :=
  recoverableFrom_quotient_iff (notionSetoid policy budget) target

/-- Increasing the observation budget preserves an already proved target factorization. -/
theorem recoverableAtBudget_of_le {Object Test Value Target : Type*}
    {policy : ObservationPolicy Object Test Value} {target : Object → Target}
    {small large : ℕ} (hbudget : small ≤ large)
    (hrecover : RecoverableAtBudget policy small target) :
    RecoverableAtBudget policy large target := by
  apply (recoverableAtBudget_iff policy large target).mpr
  intro x y hxy
  exact (recoverableAtBudget_iff policy small target).mp hrecover x y
    (observationallyEquivalent_of_budget_le hbudget hxy)

/-- A target distinction inside one observation class rules out recovery at that budget. -/
theorem not_recoverableAtBudget_of_equivalent_ne {Object Test Value Target : Type*}
    (policy : ObservationPolicy Object Test Value) (budget : ℕ) (target : Object → Target)
    {x y : Object} (hxy : ObservationallyEquivalent policy budget x y)
    (hne : target x ≠ target y) : ¬RecoverableAtBudget policy budget target :=
  quotient_target_not_recoverable (notionSetoid policy budget) target hxy hne

/-- A collision at a larger budget obstructs recovery at every smaller budget. -/
theorem not_recoverableAtBudget_of_equivalent_ne_of_le {Object Test Value Target : Type*}
    {policy : ObservationPolicy Object Test Value} {target : Object → Target}
    {small large : ℕ} {x y : Object} (hbudget : small ≤ large)
    (hxy : ObservationallyEquivalent policy large x y) (hne : target x ≠ target y) :
    ¬RecoverableAtBudget policy small target :=
  not_recoverableAtBudget_of_equivalent_ne policy small target
    (observationallyEquivalent_of_budget_le hbudget hxy) hne

/-- A proof-bearing obstruction, restricted to its exact policy, budget and target. -/
@[nolint structureInType]
structure BudgetRecoveryObstruction {Object Test Value Target : Type*}
    (policy : ObservationPolicy Object Test Value) (budget : ℕ)
    (target : Object → Target) : Type _ where
  /-- First source object in the obstructing observation class. -/
  left : Object
  /-- Second source object in the same observation class. -/
  right : Object
  /-- The declared observation budget cannot distinguish the two objects. -/
  observationallyEquivalent : ObservationallyEquivalent policy budget left right
  /-- The named target does distinguish them. -/
  differentTarget : target left ≠ target right

/-- The budgeted witness induces a collision of the actual notion quotient projection. -/
def BudgetRecoveryObstruction.toRecoveryObstruction {Object Test Value Target : Type*}
    {policy : ObservationPolicy Object Test Value} {budget : ℕ} {target : Object → Target}
    (o : BudgetRecoveryObstruction policy budget target) :
    RecoveryObstruction (fun x => Quotient.mk (notionSetoid policy budget) x) target where
  left := o.left
  right := o.right
  sameObservation := Quotient.sound o.observationallyEquivalent
  differentTarget := o.differentTarget

/-- This witness proves only nonrecovery of its indexed target at its indexed budget. -/
theorem BudgetRecoveryObstruction.notRecoverable {Object Test Value Target : Type*}
    {policy : ObservationPolicy Object Test Value} {budget : ℕ} {target : Object → Target}
    (o : BudgetRecoveryObstruction policy budget target) :
    ¬RecoverableAtBudget policy budget target :=
  o.toRecoveryObstruction.notRecoverable

/-- The same pair remains a proof-bearing obstruction after reducing the budget. -/
def BudgetRecoveryObstruction.atSmallerBudget {Object Test Value Target : Type*}
    {policy : ObservationPolicy Object Test Value} {target : Object → Target}
    {small large : ℕ} (o : BudgetRecoveryObstruction policy large target)
    (hbudget : small ≤ large) : BudgetRecoveryObstruction policy small target where
  left := o.left
  right := o.right
  observationallyEquivalent :=
    observationallyEquivalent_of_budget_le hbudget o.observationallyEquivalent
  differentTarget := o.differentTarget

/-- A budgeted obstruction rules out every smaller-budget recovery of the same target. -/
theorem BudgetRecoveryObstruction.notRecoverable_of_le {Object Test Value Target : Type*}
    {policy : ObservationPolicy Object Test Value} {target : Object → Target}
    {small large : ℕ} (o : BudgetRecoveryObstruction policy large target)
    (hbudget : small ≤ large) : ¬RecoverableAtBudget policy small target :=
  (o.atSmallerBudget hbudget).notRecoverable

/-- All ordered target-separating observation collisions in the declared source domain.
For finite `Object` this is the finite obstruction frontier; no search is asserted. -/
def obstructionFrontier {Object Test Value Target : Type*}
    (policy : ObservationPolicy Object Test Value) (budget : ℕ)
    (target : Object → Target) : Set (Object × Object) :=
  {pair | ObservationallyEquivalent policy budget pair.1 pair.2 ∧
    target pair.1 ≠ target pair.2}

/-- More observations can only remove, and cannot add, target-relevant collision pairs. -/
theorem obstructionFrontier_subset_of_le {Object Test Value Target : Type*}
    {policy : ObservationPolicy Object Test Value} {target : Object → Target}
    {small large : ℕ} (hbudget : small ≤ large) :
    obstructionFrontier policy large target ⊆ obstructionFrontier policy small target :=
  fun _ h => ⟨observationallyEquivalent_of_budget_le hbudget h.1, h.2⟩

/-- Exact target recovery from the setoid of one declared finite test inventory. -/
def FiniteNotion.RecoverableAtBudget {Object Test Value Target : Type*}
    (notion : FiniteNotion Object Test Value) (budget : ℕ)
    (target : Object → Target) : Prop :=
  RecoverableFrom (fun x => Quotient.mk (notion.setoid budget) x) target

/-- Finite-aperture recovery is target constancy under that finite notion's equivalence. -/
theorem FiniteNotion.recoverableAtBudget_iff {Object Test Value Target : Type*}
    (notion : FiniteNotion Object Test Value) (budget : ℕ) (target : Object → Target) :
    notion.RecoverableAtBudget budget target ↔
      ∀ x y, notion.Equivalent budget x y → target x = target y :=
  recoverableFrom_quotient_iff (notion.setoid budget) target

/-- Increasing budget preserves recovery within the same declared finite inventory. -/
theorem FiniteNotion.recoverableAtBudget_of_le {Object Test Value Target : Type*}
    {notion : FiniteNotion Object Test Value} {target : Object → Target}
    {small large : ℕ} (hbudget : small ≤ large)
    (hrecover : notion.RecoverableAtBudget small target) :
    notion.RecoverableAtBudget large target := by
  apply (notion.recoverableAtBudget_iff large target).mpr
  intro x y hxy
  exact (notion.recoverableAtBudget_iff small target).mp hrecover x y
    (FiniteNotion.equivalent_of_budget_le hbudget hxy)

/-- A collision in the finite observation inventory obstructs recovery from its quotient. -/
theorem FiniteNotion.not_recoverableAtBudget_of_equivalent_ne
    {Object Test Value Target : Type*} (notion : FiniteNotion Object Test Value)
    (budget : ℕ) (target : Object → Target) {x y : Object}
    (hxy : notion.Equivalent budget x y) (hne : target x ≠ target y) :
    ¬notion.RecoverableAtBudget budget target :=
  quotient_target_not_recoverable (notion.setoid budget) target hxy hne

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
