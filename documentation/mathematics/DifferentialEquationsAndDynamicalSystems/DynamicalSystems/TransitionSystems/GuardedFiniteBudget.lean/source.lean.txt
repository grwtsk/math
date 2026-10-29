/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Finset.Basic
import Lean.Elab.Tactic.Omega

/-!
# CCC/0.1 guarded controller

This is a proof-level supervisor model, not a live tool mediator. A proposal is
untrusted data. Admission separately consumes Lean proofs of discharged source
obligations, authenticated scoped operational permission, and source/surface
rights. Those last predicates model external trust boundaries; Lean does not
authenticate a person, inspect a license, or establish implementation fidelity.

The concrete update preserves the source, retains every issued obligation in
the pending or verified ledger, appends effect receipts, and spends a strictly
positive natural-number cost. The guard does not assume safety of the next state.
The safety and finite-budget theorems are derived from this update. They assert
neither convergence to a mathematical proof nor the Riemann Hypothesis.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w x y

/-- Mathematical validity, operational authority, and rights are independent
predicates. A faithful deployment must implement the external checks represented
by `authenticated`, `permits`, `rights`, and `typed`. -/
structure ControllerPolicy (Source : Type u) (Obligation : Type v)
    (Effect : Type w) (Grant : Type x) (Surface : Type y) where
  statement : Source → Obligation → Prop
  typed : Source → Effect → Prop
  authenticated : Grant → Prop
  permits : Grant → Source → Effect → Prop
  rights : Source → Surface → Effect → Prop

/-- An immutable source identity may include its revision and evidence digest.
The receipt retains the operational grant and the surface independently. -/
structure EffectReceipt (Source : Type u) (Effect : Type w)
    (Grant : Type x) (Surface : Type y) where
  source : Source
  effect : Effect
  grant : Grant
  surface : Surface

/-- The minimal ledger retains source identity, all issued obligations, actual
verified obligations, append-only effects, and a finite resource checkpoint. -/
structure ControllerState (Source : Type u) (Obligation : Type v)
    (Effect : Type w) (Grant : Type x) (Surface : Type y) where
  source : Source
  pending : Finset Obligation
  verified : Finset Obligation
  issued : Finset Obligation
  receipts : List (EffectReceipt Source Effect Grant Surface)
  remaining : ℕ
  consumed : ℕ
  lift : ℕ
  checkpoint : ℕ

/-- A proposal has no proof or authority fields. Its claims must be checked
against the separate guard before this data can generate an admitted step. -/
structure ControllerProposal (Source : Type u) (Obligation : Type v)
    (Effect : Type w) (Grant : Type x) (Surface : Type y) where
  source : Source
  discharged : Finset Obligation
  introduced : Finset Obligation
  effects : List (EffectReceipt Source Effect Grant Surface)
  cost : ℕ

section Supervisor

variable {Source : Type u} {Obligation : Type v} {Effect : Type w}
  {Grant : Type x} {Surface : Type y} [DecidableEq Obligation]

local notation "State" => ControllerState Source Obligation Effect Grant Surface
local notation "Proposal" => ControllerProposal Source Obligation Effect Grant Surface
local notation "Policy" => ControllerPolicy Source Obligation Effect Grant Surface
local notation "Receipt" => EffectReceipt Source Effect Grant Surface

/-- Receipt validity is a conjunction, with no coercion between its domains. -/
def ReceiptValid (P : Policy) (source : Source) (r : Receipt) : Prop :=
  r.source = source ∧ P.typed source r.effect ∧ P.authenticated r.grant ∧
    P.permits r.grant source r.effect ∧ P.rights source r.surface r.effect

/-- This invariant records honest evidence and obligation coverage, permitted
effects, an immutable source, and exact finite resource/checkpoint accounting. -/
structure Safe (P : Policy) (source : Source) (budget : ℕ) (s : State) : Prop where
  source_eq : s.source = source
  pending_issued : s.pending ⊆ s.issued
  verified_issued : s.verified ⊆ s.issued
  issued_covered : s.issued ⊆ s.pending ∪ s.verified
  verified_sound : ∀ o ∈ s.verified, P.statement source o
  receipts_valid : ∀ r ∈ s.receipts, ReceiptValid P source r
  budget_balance : s.consumed + s.remaining = budget
  checkpoint_eq_lift : s.checkpoint = s.lift

/-- The initial state asserts no mathematical result and performs no effect.
Every initial obligation is retained with the full finite resource allowance. -/
def initialState (source : Source) (obligations : Finset Obligation) (budget : ℕ) : State where
  source := source
  pending := obligations
  verified := ∅
  issued := obligations
  receipts := []
  remaining := budget
  consumed := 0
  lift := 0
  checkpoint := 0

theorem initial_state_safe (P : Policy) (source : Source)
    (obligations : Finset Obligation) (budget : ℕ) :
    Safe P source budget (initialState source obligations budget) := by
  constructor
  · rfl
  · exact Finset.Subset.refl _
  · exact Finset.empty_subset _
  · simp [initialState]
  · simp [initialState]
  · simp [initialState]
  · simp [initialState]
  · rfl

/-- Admission consumes actual proofs of exactly the discharged obligations.
Operational and rights checks are distinct premises. `Safe (update s p)` is
deliberately absent: preservation is a theorem about the concrete update. -/
structure Guard (P : Policy) (s : State) (p : Proposal) : Prop where
  source_eq : p.source = s.source
  discharged_pending : p.discharged ⊆ s.pending
  mathematical_evidence : ∀ o ∈ p.discharged, P.statement s.source o
  effects_source : ∀ r ∈ p.effects, r.source = p.source
  effects_typed : ∀ r ∈ p.effects, P.typed s.source r.effect
  operational_evidence : ∀ r ∈ p.effects,
    P.authenticated r.grant ∧ P.permits r.grant s.source r.effect
  rights_evidence : ∀ r ∈ p.effects, P.rights s.source r.surface r.effect
  cost_positive : 0 < p.cost
  cost_available : p.cost ≤ s.remaining

/-- Only obligations accompanied by admitted proofs are removed. New residual
obligations are issued and pending; effects and counters have explicit updates. -/
def update (s : State) (p : Proposal) : State where
  source := s.source
  pending := (s.pending \ p.discharged) ∪ p.introduced
  verified := s.verified ∪ p.discharged
  issued := s.issued ∪ p.introduced
  receipts := s.receipts ++ p.effects
  remaining := s.remaining - p.cost
  consumed := s.consumed + p.cost
  lift := s.lift + 1
  checkpoint := s.checkpoint + 1

/-- A guarded update is an admitted transition; arbitrary assignments of a new
state are not constructors of this relation. -/
def GuardedStep (P : Policy) (s t : State) : Prop :=
  ∃ p, Guard P s p ∧ t = update s p

theorem update_source (s : State) (p : Proposal) :
    (update s p).source = s.source := rfl

theorem update_issued_mono (s : State) (p : Proposal) :
    s.issued ⊆ (update s p).issued := Finset.subset_union_left

theorem update_verified_mono (s : State) (p : Proposal) :
    s.verified ⊆ (update s p).verified := Finset.subset_union_left

/-- Every pending obligation survives or acquires a place in the verified
ledger. This does not erase an obligation merely because its name was changed. -/
theorem update_retains_pending (s : State) (p : Proposal) {o : Obligation}
    (ho : o ∈ s.pending) :
    o ∈ (update s p).pending ∨ o ∈ (update s p).verified := by
  by_cases hd : o ∈ p.discharged
  · exact Or.inr (Finset.mem_union_right _ hd)
  · exact Or.inl (Finset.mem_union_left _ (Finset.mem_sdiff.mpr ⟨ho, hd⟩))

/-- Concrete one-step control soundness. New mathematical evidence comes from
the guard; prior evidence and every unaffected obligation are retained. -/
theorem guard_preserves_safe (P : Policy) (source : Source) (budget : ℕ)
    {s : State} {p : Proposal} (hs : Safe P source budget s) (hg : Guard P s p) :
    Safe P source budget (update s p) := by
  constructor
  · exact hs.source_eq
  · intro o ho
    rcases Finset.mem_union.mp ho with ho | ho
    · exact Finset.mem_union_left _ (hs.pending_issued (Finset.mem_sdiff.mp ho).1)
    · exact Finset.mem_union_right _ ho
  · intro o ho
    rcases Finset.mem_union.mp ho with ho | ho
    · exact Finset.mem_union_left _ (hs.verified_issued ho)
    · exact Finset.mem_union_left _ (hs.pending_issued (hg.discharged_pending ho))
  · intro o ho
    rcases Finset.mem_union.mp ho with ho | ho
    · rcases Finset.mem_union.mp (hs.issued_covered ho) with hp | hv
      · exact Finset.mem_union.mpr (update_retains_pending s p hp)
      · exact Finset.mem_union_right _ (Finset.mem_union_left _ hv)
    · exact Finset.mem_union_left _ (Finset.mem_union_right _ ho)
  · intro o ho
    rcases Finset.mem_union.mp ho with ho | ho
    · exact hs.verified_sound o ho
    · simpa only [hs.source_eq] using hg.mathematical_evidence o ho
  · intro r hr
    rcases List.mem_append.mp hr with hr | hr
    · exact hs.receipts_valid r hr
    · refine ⟨?_, ?_, (hg.operational_evidence r hr).1, ?_, ?_⟩
      · exact (hg.effects_source r hr).trans (hg.source_eq.trans hs.source_eq)
      · simpa only [hs.source_eq] using hg.effects_typed r hr
      · simpa only [hs.source_eq] using (hg.operational_evidence r hr).2
      · simpa only [hs.source_eq] using hg.rights_evidence r hr
  · dsimp [update]
    have hcost := hg.cost_available
    have hbalance := hs.budget_balance
    omega
  · dsimp [update]
    rw [hs.checkpoint_eq_lift]

/-- Every admitted effect has separately checked operational and rights
evidence. A mathematical proof is not an authentication mechanism. -/
theorem guarded_step_safe (P : Policy) (source : Source) (budget : ℕ)
    {s t : State} (hs : Safe P source budget s) (hstep : GuardedStep P s t) :
    Safe P source budget t := by
  rcases hstep with ⟨p, hg, rfl⟩
  exact guard_preserves_safe P source budget hs hg

/-- Exactly `n` admitted transitions, including the empty trajectory. -/
inductive GuardedSteps (P : Policy) : ℕ → State → State → Prop
  | refl (s : State) : GuardedSteps P 0 s s
  | next {n : ℕ} {s t v : State} :
      GuardedSteps P n s t → GuardedStep P t v → GuardedSteps P (n + 1) s v

def GuardedReachable (P : Policy) (s t : State) : Prop :=
  ∃ n, GuardedSteps P n s t

/-- The CCC acceptance theorem for this concrete transition system. -/
theorem guarded_steps_safe (P : Policy) (source : Source) (budget : ℕ)
    {n : ℕ} {s t : State} (hs : Safe P source budget s)
    (hsteps : GuardedSteps P n s t) : Safe P source budget t := by
  induction hsteps with
  | refl => exact hs
  | next _ hstep ih => exact guarded_step_safe P source budget (ih hs) hstep

theorem reachable_safe (P : Policy) (source : Source) (budget : ℕ)
    {s t : State} (hs : Safe P source budget s) (hr : GuardedReachable P s t) :
    Safe P source budget t := by
  rcases hr with ⟨n, hsteps⟩
  exact guarded_steps_safe P source budget hs hsteps

theorem guarded_steps_issued_mono (P : Policy) {n : ℕ} {s t : State}
    (hsteps : GuardedSteps P n s t) : s.issued ⊆ t.issued := by
  induction hsteps with
  | refl => exact Finset.Subset.refl _
  | next _ hstep ih =>
      rcases hstep with ⟨p, _, rfl⟩
      exact ih.trans (update_issued_mono _ p)

theorem guarded_steps_verified_mono (P : Policy) {n : ℕ} {s t : State}
    (hsteps : GuardedSteps P n s t) : s.verified ⊆ t.verified := by
  induction hsteps with
  | refl => exact Finset.Subset.refl _
  | next _ hstep ih =>
      rcases hstep with ⟨p, _, rfl⟩
      exact ih.trans (update_verified_mono _ p)

/-- An unresolved initial obligation cannot disappear along any finite admitted
trajectory. It remains pending or is accompanied by a verified ledger entry. -/
theorem guarded_steps_retain_pending (P : Policy) {n : ℕ} {s t : State}
    (hsteps : GuardedSteps P n s t) {o : Obligation} (ho : o ∈ s.pending) :
    o ∈ t.pending ∨ o ∈ t.verified := by
  induction hsteps with
  | refl => exact Or.inl ho
  | next _ hstep ih =>
      rcases hstep with ⟨p, _, rfl⟩
      rcases ih ho with hp | hv
      · exact update_retains_pending _ p hp
      · exact Or.inr (update_verified_mono _ p hv)

/-- The verified alternative in obligation retention contains an actual proof
of the source-bound proposition, not an approval or a finite sample. -/
theorem reachable_obligation_retention (P : Policy) (source : Source) (budget : ℕ)
    {s t : State} (hs : Safe P source budget s) (hr : GuardedReachable P s t)
    {o : Obligation} (ho : o ∈ s.pending) :
    o ∈ t.pending ∨ (o ∈ t.verified ∧ P.statement source o) := by
  rcases hr with ⟨n, hsteps⟩
  rcases guarded_steps_retain_pending P hsteps ho with hp | hv
  · exact Or.inl hp
  · exact Or.inr ⟨hv, (guarded_steps_safe P source budget hs hsteps).verified_sound o hv⟩

theorem guarded_steps_source (P : Policy) {n : ℕ} {s t : State}
    (hsteps : GuardedSteps P n s t) : t.source = s.source := by
  induction hsteps with
  | refl => rfl
  | next _ hstep ih =>
      rcases hstep with ⟨p, _, rfl⟩
      exact ih

/-- Lifted progress is never reduced modulo a phase. Each admitted transition
advances its persistent winding address once. -/
theorem guarded_steps_lift (P : Policy) {n : ℕ} {s t : State}
    (hsteps : GuardedSteps P n s t) : t.lift = s.lift + n := by
  induction hsteps with
  | refl => simp
  | next _ hstep ih =>
      rcases hstep with ⟨p, _, rfl⟩
      dsimp [update]
      rw [ih, Nat.add_assoc]

theorem guarded_steps_checkpoint (P : Policy) {n : ℕ} {s t : State}
    (hsteps : GuardedSteps P n s t) : t.checkpoint = s.checkpoint + n := by
  induction hsteps with
  | refl => simp
  | next _ hstep ih =>
      rcases hstep with ⟨p, _, rfl⟩
      dsimp [update]
      rw [ih, Nat.add_assoc]

theorem guarded_steps_receipts_append (P : Policy) {n : ℕ} {s t : State}
    (hsteps : GuardedSteps P n s t) : ∃ suffix, t.receipts = s.receipts ++ suffix := by
  induction hsteps with
  | refl => exact ⟨[], (List.append_nil _).symm⟩
  | next _ hstep ih =>
      rcases hstep with ⟨p, _, rfl⟩
      rcases ih with ⟨suffix, hreceipt⟩
      refine ⟨suffix ++ p.effects, ?_⟩
      dsimp [update]
      rw [hreceipt, List.append_assoc]

/-- A positive cost accounts for every admitted iteration, even if its proposal
discharges no obligation. This is a resource bound, not a proof-progress claim. -/
theorem guarded_steps_budget (P : Policy) {n : ℕ} {s t : State}
    (hsteps : GuardedSteps P n s t) : n + t.remaining ≤ s.remaining := by
  induction hsteps with
  | refl => simp
  | next _ hstep ih =>
      rcases hstep with ⟨p, hg, rfl⟩
      dsimp [update]
      have hpos := hg.cost_positive
      have havailable := hg.cost_available
      omega

theorem guarded_steps_length_le_budget (P : Policy) {n : ℕ} {s t : State}
    (hsteps : GuardedSteps P n s t) : n ≤ s.remaining := by
  have h := guarded_steps_budget P hsteps
  omega

/-- There is no infinite sequence of admitted positive-cost transitions inside
one fixed budget. A later session needs a separate resource initialization. -/
theorem no_infinite_guarded_trajectory (P : Policy) (trajectory : ℕ → State) :
    ¬ (∀ n, GuardedStep P (trajectory n) (trajectory (n + 1))) := by
  intro htrajectory
  have hsteps : ∀ n, GuardedSteps P n (trajectory 0) (trajectory n) := by
    intro n
    induction n with
    | zero => exact GuardedSteps.refl _
    | succ n ih => exact GuardedSteps.next ih (htrajectory n)
  have h := guarded_steps_length_le_budget P (hsteps ((trajectory 0).remaining + 1))
  omega

omit [DecidableEq Obligation] in
/-- Neither an operational grant nor a rights decision discharges a missing
mathematical proposition: its actual proof is a separate required premise. -/
theorem unproved_obligation_blocks (P : Policy) (s : State) (p : Proposal)
    {o : Obligation} (ho : o ∈ p.discharged) (hmissing : ¬ P.statement s.source o) :
    ¬ Guard P s p := fun hg => hmissing (hg.mathematical_evidence o ho)

omit [DecidableEq Obligation] in
theorem unauthenticated_effect_blocks (P : Policy) (s : State) (p : Proposal)
    {r : Receipt} (hr : r ∈ p.effects) (hmissing : ¬ P.authenticated r.grant) :
    ¬ Guard P s p := fun hg => hmissing (hg.operational_evidence r hr).1

omit [DecidableEq Obligation] in
theorem unauthorized_effect_blocks (P : Policy) (s : State) (p : Proposal)
    {r : Receipt} (hr : r ∈ p.effects)
    (hmissing : ¬ P.permits r.grant s.source r.effect) :
    ¬ Guard P s p := fun hg => hmissing (hg.operational_evidence r hr).2

omit [DecidableEq Obligation] in
theorem forbidden_surface_blocks (P : Policy) (s : State) (p : Proposal)
    {r : Receipt} (hr : r ∈ p.effects)
    (hmissing : ¬ P.rights s.source r.surface r.effect) :
    ¬ Guard P s p := fun hg => hmissing (hg.rights_evidence r hr)

omit [DecidableEq Obligation] in
theorem changed_source_blocks (P : Policy) (s : State) (p : Proposal)
    (hchanged : p.source ≠ s.source) : ¬ Guard P s p :=
  fun hg => hchanged hg.source_eq

omit [DecidableEq Obligation] in
theorem exhausted_budget_blocks (P : Policy) (s : State) (p : Proposal)
    (hexhausted : s.remaining = 0) : ¬ Guard P s p := by
  intro hg
  have hpos := hg.cost_positive
  have havailable := hg.cost_available
  omega

end Supervisor

end GRWTSK.ProofHorizon.CorkscrewChamberCap
