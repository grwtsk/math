import Mathematics.RHIsolation.GraphIntegration
import Mathematics.RHIsolation.Refinement

/-!
# Analytic isolation state and atomic events

The state stores finite identifiers rather than mutable cells.  The registry is
immutable, and the only event that replaces a parent is parameterized by a
complete `CountPreservingRefinement`.
-/

namespace Mathematics.RHIsolation

open Mathematics.GraphAccess

universe uCell uRefinement

structure RHIsolationState
    (CellId : Type uCell)
    (RefinementId : Type uRefinement)
    [DecidableEq CellId]
    [DecidableEq RefinementId] where
  certifiedLeaves : Finset CellId
  unresolvedFrontier : List CellId
  currentlyProcessing : Finset CellId
  pendingRefinements : Finset RefinementId
  certifiedCountMass : Nat
  unresolvedParentMass : Nat
  spectralPriorities : CellId → PriorityKey
  zeroLineages : Finset ZeroLineageId
  consumedBudget : TraversalUsage

structure RHIsolationInvariant
    {CellId : Type uCell}
    {RefinementId : Type uRefinement}
    [DecidableEq CellId]
    [DecidableEq RefinementId]
    (cell : CellId → AnalyticCell)
    (count : CellId → Nat)
    (unresolved : CellId → Prop)
    (rootCount : Nat)
    (committedRefinementsCountPreserving :
      Prop)
    (noSpectralPruning : Prop)
    (lineageSound : Prop)
    (state :
      RHIsolationState CellId RefinementId) :
    Prop where
  frontierComplete :
    AnalyticFrontierComplete
      unresolved
      state.unresolvedFrontier
      state.currentlyProcessing
  certifiedLeavesDisjoint :
    ∀ ⦃left right⦄,
      left ∈ state.certifiedLeaves →
      right ∈ state.certifiedLeaves →
      left ≠ right →
      Disjoint
        (cell left).interior
        (cell right).interior
  leafCountsSound :
    ∀ leaf ∈ state.certifiedLeaves,
      0 < count leaf
  committedRefinementsCountPreservingProof :
    committedRefinementsCountPreserving
  noSpectralPruningProof : noSpectralPruning
  lineageSoundProof : lineageSound
  massAccounted :
    state.certifiedCountMass +
      state.unresolvedParentMass =
      rootCount

def reorderBySpectralPriority
    {CellId : Type uCell}
    {RefinementId : Type uRefinement}
    [DecidableEq CellId]
    [DecidableEq RefinementId]
    (policy : SpectralPriorityPolicy CellId)
    (state :
      RHIsolationState CellId RefinementId) :
    RHIsolationState CellId RefinementId :=
  { state with
    unresolvedFrontier :=
      policy.reorder state.unresolvedFrontier
    spectralPriorities := policy.priority
  }

theorem spectralPriority_preserves_analytic_frontier
    {CellId : Type uCell}
    {RefinementId : Type uRefinement}
    [DecidableEq CellId]
    [DecidableEq RefinementId]
    (unresolved : CellId → Prop)
    (policy : SpectralPriorityPolicy CellId)
    (state :
      RHIsolationState CellId RefinementId)
    (complete :
      AnalyticFrontierComplete
        unresolved
        state.unresolvedFrontier
        state.currentlyProcessing) :
    AnalyticFrontierComplete
      unresolved
      (reorderBySpectralPriority
        policy state).unresolvedFrontier
      (reorderBySpectralPriority
        policy state).currentlyProcessing := by
  exact
    spectralPriority_preserves_completeFrontier
      unresolved
      state.unresolvedFrontier
      state.currentlyProcessing
      policy complete

inductive RHIsolationEvent
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
  | proposeRefinement
      (parent : AnalyticCell)
      (partition :
        CellPartitionCertificate xi parent)
  | commitRefinement
      (parent : AnalyticCell)
      (certificate :
        CountPreservingRefinement
          authority parent)
  | reprioritize
      (digest : CertificateDigest)

def RHIsolationEvent.hasCommittedAnalyticEffect
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime} :
    RHIsolationEvent authority → Bool
  | .proposeRefinement _ _ => false
  | .commitRefinement _ _ => true
  | .reprioritize _ => false

end Mathematics.RHIsolation
