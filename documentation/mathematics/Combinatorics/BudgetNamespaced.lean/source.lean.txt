-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TraversalBudget.Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TraversalBudget.Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Budget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.ModePlan
import Mathlib.Tactic.DeriveFintype

/-!
# Traversal budgets and monotone usage

Zero is a valid budget.  Resource exhaustion is represented by named exceeded
dimensions and never reinterpreted as target unreachability.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TraversalBudget.Variant847cffb121ee3d519916daeffe6eeeb67847065a4ad3d7802cf67166cfd24668

namespace Mathematics.GraphAccess

structure TraversalBudget where
  maxSteps : Nat
  maxVisitedNodes : Nat
  maxFrontierSize : Nat
  maxPathLength : Nat
  maxPersistedBytes : Nat
  maxVerifierSubmissions : Nat
  maxProposals : Nat
deriving DecidableEq, Repr

structure TraversalUsage where
  steps : Nat
  visitedNodes : Nat
  peakFrontierSize : Nat
  peakPathLength : Nat
  persistedBytes : Nat
  verifierSubmissions : Nat
  proposals : Nat
deriving DecidableEq, Repr

def TraversalUsage.zero : TraversalUsage where
  steps := 0
  visitedNodes := 0
  peakFrontierSize := 0
  peakPathLength := 0
  persistedBytes := 0
  verifierSubmissions := 0
  proposals := 0

def WithinBudget
    (usage : TraversalUsage)
    (budget : TraversalBudget) : Prop :=
  usage.steps ≤ budget.maxSteps ∧
  usage.visitedNodes ≤ budget.maxVisitedNodes ∧
  usage.peakFrontierSize ≤ budget.maxFrontierSize ∧
  usage.peakPathLength ≤ budget.maxPathLength ∧
  usage.persistedBytes ≤ budget.maxPersistedBytes ∧
  usage.verifierSubmissions ≤
    budget.maxVerifierSubmissions ∧
  usage.proposals ≤ budget.maxProposals

instance
    (usage : TraversalUsage)
    (budget : TraversalBudget) :
    Decidable (WithinBudget usage budget) :=
  by
    unfold WithinBudget
    infer_instance

inductive BudgetDimension
  | steps
  | visitedNodes
  | frontierSize
  | pathLength
  | persistedBytes
  | verifierSubmissions
  | proposals
deriving DecidableEq, Ord, Repr, Fintype

def BudgetDimension.exceeded
    (usage : TraversalUsage)
    (budget : TraversalBudget) :
    BudgetDimension → Bool
  | .steps =>
      decide (budget.maxSteps < usage.steps)
  | .visitedNodes =>
      decide
        (budget.maxVisitedNodes < usage.visitedNodes)
  | .frontierSize =>
      decide
        (budget.maxFrontierSize <
          usage.peakFrontierSize)
  | .pathLength =>
      decide
        (budget.maxPathLength <
          usage.peakPathLength)
  | .persistedBytes =>
      decide
        (budget.maxPersistedBytes <
          usage.persistedBytes)
  | .verifierSubmissions =>
      decide
        (budget.maxVerifierSubmissions <
          usage.verifierSubmissions)
  | .proposals =>
      decide
        (budget.maxProposals < usage.proposals)

def exceededDimensions
    (usage : TraversalUsage)
    (budget : TraversalBudget) :
    Finset BudgetDimension :=
  Finset.univ.filter fun dimension =>
    dimension.exceeded usage budget = true

theorem withinBudget_iff_no_exceeded
    (usage : TraversalUsage)
    (budget : TraversalBudget) :
    WithinBudget usage budget ↔
      exceededDimensions usage budget = ∅ := by
  constructor
  · rintro ⟨steps, visited, frontier, path, bytes,
      submissions, proposals⟩
    apply Finset.eq_empty_iff_forall_notMem.mpr
    intro dimension
    cases dimension <;>
      simp_all [exceededDimensions,
        BudgetDimension.exceeded]
  · intro clear
    have absent :=
      Finset.eq_empty_iff_forall_notMem.mp clear
    have steps : usage.steps ≤ budget.maxSteps := by
      simpa [exceededDimensions,
        BudgetDimension.exceeded] using
        absent .steps
    have visited :
        usage.visitedNodes ≤ budget.maxVisitedNodes := by
      simpa [exceededDimensions,
        BudgetDimension.exceeded] using
        absent .visitedNodes
    have frontier :
        usage.peakFrontierSize ≤
          budget.maxFrontierSize := by
      simpa [exceededDimensions,
        BudgetDimension.exceeded] using
        absent .frontierSize
    have path :
        usage.peakPathLength ≤ budget.maxPathLength := by
      simpa [exceededDimensions,
        BudgetDimension.exceeded] using
        absent .pathLength
    have bytes :
        usage.persistedBytes ≤
          budget.maxPersistedBytes := by
      simpa [exceededDimensions,
        BudgetDimension.exceeded] using
        absent .persistedBytes
    have submissions :
        usage.verifierSubmissions ≤
          budget.maxVerifierSubmissions := by
      simpa [exceededDimensions,
        BudgetDimension.exceeded] using
        absent .verifierSubmissions
    have proposals :
        usage.proposals ≤ budget.maxProposals := by
      simpa [exceededDimensions,
        BudgetDimension.exceeded] using
        absent .proposals
    exact ⟨steps, visited, frontier, path, bytes,
      submissions, proposals⟩

def UsageMonotone
    (before after : TraversalUsage) : Prop :=
  before.steps ≤ after.steps ∧
  before.visitedNodes ≤ after.visitedNodes ∧
  before.peakFrontierSize ≤
    after.peakFrontierSize ∧
  before.peakPathLength ≤ after.peakPathLength ∧
  before.persistedBytes ≤ after.persistedBytes ∧
  before.verifierSubmissions ≤
    after.verifierSubmissions ∧
  before.proposals ≤ after.proposals

end Mathematics.GraphAccess
