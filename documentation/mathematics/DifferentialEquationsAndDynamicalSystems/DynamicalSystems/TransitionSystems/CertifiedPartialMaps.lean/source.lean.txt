/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Logic.Certificates.ProofCoverage
import GRWTSK.DynamicalSystems.TransitionSystems.GuardedFiniteBudget
import GRWTSK.Analysis.ErrorBounds.PartialMapComposition

/-!
# CCC proof-level admission linkage

An admitted traversal binds the controller's exact `EndpointIdentity` source to
the source endpoint, carries its actual guard proof, and certifies membership in
the port's traversal domain. The consumers below derive safe ledger updates,
retention of source obligations, and the exact observer residual and error bound.
They never require safety of the updated state as an admission premise.

Terminal-cap adapters consume actual proofs of the source-bound propositions.
This module links the proof interfaces; it implements no runtime dispatch,
authentication, revision freshness, or dependency invalidation.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w x y z

section Admission

variable {Observer : Type v} {Obligation : Type w} {Effect : Type x}
  {Grant : Type y} {Surface : Type z}

local notation "State" => ControllerState EndpointIdentity Obligation Effect Grant Surface
local notation "Proposal" => ControllerProposal EndpointIdentity Obligation Effect Grant Surface
local notation "Policy" => ControllerPolicy EndpointIdentity Obligation Effect Grant Surface

/-- The controller source is exactly the port's source identity. Traversal
requires the actual admission guard and the port's protected input domain. -/
structure AdmittedTraversal (policy : Policy)
    (A B : FiberEndpoint.{u, v} Observer) (port : FramedPort A B) (input : A.Carrier)
    (state : State) (proposal : Proposal) : Prop where
  guard : Guard policy state proposal
  source_eq : state.source = A.identity
  input_mem_domain : input ∈ port.domain

/-- Checked terminal caps supply precisely the mathematical-evidence field of
the guard. They provide none of its operational or rights evidence. -/
theorem mathematical_evidence_of_terminal_caps (policy : Policy)
    (state : State) (proposal : Proposal)
    (caps : ∀ o ∈ proposal.discharged,
      TerminalCap state.source (policy.statement state.source o)) :
    ∀ o ∈ proposal.discharged, policy.statement state.source o :=
  fun o ho => (caps o ho).proved

/-- Every other admission check remains an explicit, independent premise. -/
theorem guard_of_terminal_caps (policy : Policy) (state : State) (proposal : Proposal)
    (caps : ∀ o ∈ proposal.discharged,
      TerminalCap state.source (policy.statement state.source o))
    (source_eq : proposal.source = state.source)
    (discharged_pending : proposal.discharged ⊆ state.pending)
    (effects_source : ∀ r ∈ proposal.effects, r.source = proposal.source)
    (effects_typed : ∀ r ∈ proposal.effects, policy.typed state.source r.effect)
    (operational_evidence : ∀ r ∈ proposal.effects,
      policy.authenticated r.grant ∧ policy.permits r.grant state.source r.effect)
    (rights_evidence : ∀ r ∈ proposal.effects,
      policy.rights state.source r.surface r.effect)
    (cost_positive : 0 < proposal.cost) (cost_available : proposal.cost ≤ state.remaining) :
    Guard policy state proposal where
  source_eq := source_eq
  discharged_pending := discharged_pending
  mathematical_evidence := mathematical_evidence_of_terminal_caps policy state proposal caps
  effects_source := effects_source
  effects_typed := effects_typed
  operational_evidence := operational_evidence
  rights_evidence := rights_evidence
  cost_positive := cost_positive
  cost_available := cost_available

variable [DecidableEq Obligation]

/-- Verified ledger membership yields a terminal cap for that exact source and
proposition. This extraction does not establish revision freshness. -/
theorem verified_to_terminal_cap (policy : Policy) (source : EndpointIdentity)
    (budget : ℕ) (state : State) (hsafe : Safe policy source budget state)
    (o : Obligation) (hverified : o ∈ state.verified) :
    TerminalCap source (policy.statement source o) :=
  ⟨hsafe.verified_sound o hverified⟩

/-- One admitted traversal preserves ledger safety and accounts for every
protected readout by the port's actual residual and certified observer budget. -/
theorem admitted_traversal_safe_and_accounted (policy : Policy)
    (A B : FiberEndpoint.{u, v} Observer) (port : FramedPort A B) (input : A.Carrier)
    (state : State) (proposal : Proposal) (budget : ℕ)
    (hsafe : Safe policy state.source budget state)
    (admitted : AdmittedTraversal policy A B port input state proposal) :
    Safe policy A.identity budget (update state proposal) ∧
      ∀ i, B.observe i (port.map input) - A.observe i input = port.residual input i ∧
        |B.observe i (port.map input) - A.observe i input| ≤ port.errorBudget i := by
  have hsource : Safe policy A.identity budget state := by
    simpa only [admitted.source_eq] using hsafe
  refine ⟨guard_preserves_safe policy A.identity budget hsource admitted.guard, ?_⟩
  intro i
  exact ⟨(port.residual_eq_defect input admitted.input_mem_domain i).symm,
    port.defect_bound input admitted.input_mem_domain i⟩

/-- Every previously pending obligation remains pending or becomes verified
with an actual proof. The actual guard, not the traversal label, supplies evidence. -/
theorem admitted_traversal_retains_obligation (policy : Policy)
    (A B : FiberEndpoint.{u, v} Observer) (port : FramedPort A B) (input : A.Carrier)
    (state : State) (proposal : Proposal) (budget : ℕ)
    (hsafe : Safe policy state.source budget state)
    (admitted : AdmittedTraversal policy A B port input state proposal)
    (o : Obligation) (hpending : o ∈ state.pending) :
    o ∈ (update state proposal).pending ∨
      (o ∈ (update state proposal).verified ∧ policy.statement A.identity o) := by
  have hnext := (admitted_traversal_safe_and_accounted policy A B port input state
    proposal budget hsafe admitted).1
  rcases update_retains_pending state proposal hpending with hp | hv
  · exact Or.inl hp
  · exact Or.inr ⟨hv, hnext.verified_sound o hv⟩

end Admission

end GRWTSK.ProofHorizon.CorkscrewChamberCap
