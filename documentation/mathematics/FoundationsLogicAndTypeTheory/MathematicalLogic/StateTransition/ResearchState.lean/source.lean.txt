/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.Invariant
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.RuleSoundness

/-!
# Conservative transitions of a source-bound mathematical research state

The catalog is immutable throughout a lineage. Its propositions, hypotheses,
source identities, and Lean proofs are distinct from verification and planning
metadata. A contextual claim means exactly its displayed hypotheses imply its
statement; discharging it does not erase those hypotheses from that theorem.
Every additional premise of a reduction is explicit in its sound rule.

The constructors below implement mathematical operations, not execution of an
external ledger. Source strings are identity data, not authenticated custody.
Specification revision only restricts the present operation language. Arbitrary
new transition languages and their executable correspondence are not supplied.
-/

namespace GRWTSK.Logic.StateTransition.ResearchState

open GRWTSK.Logic.Inference
open GRWTSK.ProofHorizon.CorkscrewChamberCap

/-- Serialized source identity, separate from the proposition it names. -/
structure SourceIdentity where
  repository : String := ""
  commit : String := ""
  tree : String := ""
  path : String := ""
  blob : String := ""
  declarationName : String := ""
  deriving DecidableEq, Repr

/-- A fixed lineage catalog supplies actual propositions and their exact context. -/
structure Catalog (Claim : Type) where
  statement : Claim → Prop
  hypotheses : Claim → List Prop
  source : Claim → SourceIdentity

/-- Mathematical meaning retains every displayed contextual hypothesis. -/
def Meaning {Claim : Type} (catalog : Catalog Claim) (claim : Claim) : Prop :=
  (∀ hypothesis ∈ catalog.hypotheses claim, hypothesis) → catalog.statement claim

/-- Every exact contextual proposition in a finite frontier remains assumed. -/
def Holds {Claim : Type} (catalog : Catalog Claim) (frontier : Finset Claim) : Prop :=
  ∀ claim ∈ frontier, Meaning catalog claim

/-- The existing sound-rule interface supplies the actual conditional implication. -/
abbrev Reduction {Claim : Type} (catalog : Catalog Claim) :=
  SoundRule Unit Claim (fun _ claim ↦ Meaning catalog claim)

/-- Logical edges carry terms. Descriptive edges have no proof-producing coercion. -/
inductive TypedRelation {Claim : Type} (catalog : Catalog Claim) : Type
  | implication (source target : Claim) (proof : Meaning catalog source → Meaning catalog target)
  | equivalence (left right : Claim) (proof : Meaning catalog left ↔ Meaning catalog right)
  | conditional (premises : Finset Claim) (conclusion : Claim)
      (proof : Holds catalog premises → Meaning catalog conclusion)
  | dependency (consumer prerequisite : Claim)
  | premiseSupply (supplier consumer : Claim)
      (proof : Meaning catalog supplier → Meaning catalog consumer)
  | discharge (claim : Claim) (proof : Meaning catalog claim)
  | scopedRefutation (claim : Claim) (proof : ¬ Meaning catalog claim)
  | provenance (claim : Claim) (source : SourceIdentity)
  | relevance (left right : Claim) (score : Nat) (description : String)
  | pathRevision (before after : Finset Claim)
      (proof : Holds catalog after → Holds catalog before)

/-- An external verification label cannot construct a mathematical proof. -/
inductive VerificationStatus where
  | unverified
  | kernelReported
  | verificationFailed
  | externalCandidate
  deriving DecidableEq, Repr

structure VerificationMetadata where
  source : SourceIdentity
  status : VerificationStatus
  description : String := ""
  deriving DecidableEq, Repr

structure Metadata where
  verification : List VerificationMetadata := []
  planning : List String := []
  deriving DecidableEq, Repr

/-- Every permitted kind of mathematical or observational event is explicit. -/
inductive Operation where
  | initializeTarget
  | introduceObligation
  | registerProof
  | conditionalReduction
  | transferDebt
  | dischargeDebt
  | scopedCounterexample
  | replaceCore
  | revisePath
  | incorporateSource
  | reviseSpecification
  | observe
  deriving DecidableEq, Repr

instance : Fintype Operation where
  elems := {.initializeTarget, .introduceObligation, .registerProof, .conditionalReduction,
    .transferDebt, .dischargeDebt, .scopedCounterexample, .replaceCore, .revisePath,
    .incorporateSource, .reviseSpecification, .observe}
  complete := by intro operation; cases operation <;> simp

structure SelfSpecification where
  version : Nat := 0
  permitted : Finset Operation
  deriving DecidableEq

/-- The initial language admits every operation, with each constructor's evidence. -/
def SelfSpecification.unrestricted : SelfSpecification :=
  ⟨0, Finset.univ⟩

structure Event where
  id : Nat := 0
  description : String := ""
  deriving DecidableEq, Repr

/-- Pure mathematical state; the catalog is a parameter and cannot be mutated. -/
structure State {Claim : Type} (catalog : Catalog Claim) (Core : Type) where
  target : Option Claim
  obligations : Finset Claim
  frontier : Finset Claim
  proved : Finset Claim
  core : Core
  sources : List SourceIdentity
  specification : SelfSpecification
  relations : List (TypedRelation catalog)
  metadata : Metadata
  version : Nat
  history : List (Operation × Event)

/-- Append one mathematical event description and advance the state version. -/
def advance {Claim Core : Type} {catalog : Catalog Claim}
    (s : State catalog Core) (operation : Operation) (event : Event) : State catalog Core :=
  { s with version := s.version + 1, history := s.history ++ [(operation, event)] }

/-- No theorem or arithmetic target is selected in the initial state. -/
def initialState {Claim Core : Type} (catalog : Catalog Claim) (core : Core)
    (sources : List SourceIdentity) : State catalog Core where
  target := none
  obligations := ∅
  frontier := ∅
  proved := ∅
  core := core
  sources := sources
  specification := .unrestricted
  relations := []
  metadata := {}
  version := 0
  history := []

/-- Validity is an inspected semantic predicate, never an authority field. -/
structure Valid {Claim Core : Type} (catalog : Catalog Claim) (CoreMeaning : Core → Prop)
    (s : State catalog Core) : Prop where
  frontier_declared : s.frontier ⊆ s.obligations
  proved_declared : s.proved ⊆ s.obligations
  sources_bound : ∀ claim ∈ s.obligations, catalog.source claim ∈ s.sources
  proved_sound : ∀ claim ∈ s.proved, Meaning catalog claim
  core_sound : CoreMeaning s.core
  target_declared : ∀ claim, s.target = some claim → claim ∈ s.obligations
  route : ∀ claim, s.target = some claim → Holds catalog s.frontier → Meaning catalog claim

section Transitions

variable {Claim Core : Type} [DecidableEq Claim] {catalog : Catalog Claim}
  (CoreMeaning : Core → Prop)

/-- Admissibility is given by concrete operations and their exact evidence.
The self specification can restrict operations but cannot weaken their premises. -/
inductive Change (CoreMeaning : Core → Prop) : State catalog Core → State catalog Core → Prop
  | selectTarget (s : State catalog Core) (event : Event) (claim : Claim)
      (allowed : Operation.initializeTarget ∈ s.specification.permitted)
      (unselected : s.target = none) (declared : claim ∈ s.obligations) :
      Change CoreMeaning s (advance { s with target := some claim, frontier := insert claim s.frontier } .initializeTarget event)
  | introduce (s : State catalog Core) (event : Event) (claim : Claim)
      (allowed : Operation.introduceObligation ∈ s.specification.permitted)
      (source : catalog.source claim ∈ s.sources) :
      Change CoreMeaning s (advance { s with obligations := insert claim s.obligations, frontier := insert claim s.frontier } .introduceObligation event)
  | registerProof (s : State catalog Core) (event : Event) (claim : Claim)
      (allowed : Operation.registerProof ∈ s.specification.permitted)
      (declared : claim ∈ s.obligations) (proof : Meaning catalog claim) :
      Change CoreMeaning s (advance { s with proved := insert claim s.proved, relations := s.relations ++ [.discharge claim proof] } .registerProof event)
  | conditional (s : State catalog Core) (event : Event) (rule : Reduction catalog)
      (allowed : Operation.conditionalReduction ∈ s.specification.permitted)
      (declared : rule.rule.conclusion ∈ s.obligations)
      (premises : rule.rule.premises ⊆ s.obligations)
      (side : rule.rule.sideCondition ()) :
      Change CoreMeaning s (advance { s with relations := s.relations ++ [.conditional rule.rule.premises rule.rule.conclusion (rule.sound () side)] }
        .conditionalReduction event)
  | transfer (s : State catalog Core) (event : Event) (rule : Reduction catalog)
      (allowed : Operation.transferDebt ∈ s.specification.permitted)
      (pending : rule.rule.conclusion ∈ s.frontier)
      (premises : rule.rule.premises ⊆ s.obligations)
      (side : rule.rule.sideCondition ()) :
      Change CoreMeaning s (advance { s with frontier := (s.frontier.erase rule.rule.conclusion) ∪ rule.rule.premises, relations := s.relations ++ [.conditional rule.rule.premises rule.rule.conclusion (rule.sound () side)] }
        .transferDebt event)
  | discharge (s : State catalog Core) (event : Event) (claim : Claim)
      (allowed : Operation.dischargeDebt ∈ s.specification.permitted)
      (pending : claim ∈ s.frontier) (proof : Meaning catalog claim) :
      Change CoreMeaning s (advance { s with frontier := s.frontier.erase claim, relations := s.relations ++ [.discharge claim proof] } .dischargeDebt event)
  | counterexample (s : State catalog Core) (event : Event) (claim : Claim)
      (allowed : Operation.scopedCounterexample ∈ s.specification.permitted)
      (declared : claim ∈ s.obligations) (refutation : ¬ Meaning catalog claim) :
      Change CoreMeaning s (advance { s with relations := s.relations ++ [.scopedRefutation claim refutation] }
        .scopedCounterexample event)
  | replaceCore (s : State catalog Core) (event : Event) (core : Core)
      (allowed : Operation.replaceCore ∈ s.specification.permitted)
      (compatible : CoreMeaning s.core ↔ CoreMeaning core) :
      Change CoreMeaning s (advance { s with core := core } .replaceCore event)
  | revisePath (s : State catalog Core) (event : Event) (frontier : Finset Claim)
      (allowed : Operation.revisePath ∈ s.specification.permitted)
      (declared : frontier ⊆ s.obligations)
      (coverage : Holds catalog frontier → Holds catalog s.frontier) :
      Change CoreMeaning s (advance { s with frontier := frontier, relations := s.relations ++ [.pathRevision s.frontier frontier coverage] } .revisePath event)
  | incorporateSource (s : State catalog Core) (event : Event) (source : SourceIdentity)
      (allowed : Operation.incorporateSource ∈ s.specification.permitted) :
      Change CoreMeaning s (advance { s with sources := s.sources ++ [source] } .incorporateSource event)
  | reviseSpecification (s : State catalog Core) (event : Event) (specification : SelfSpecification)
      (allowed : Operation.reviseSpecification ∈ s.specification.permitted)
      (newer : s.specification.version < specification.version)
      (conservative : specification.permitted ⊆ s.specification.permitted) :
      Change CoreMeaning s (advance { s with specification := specification } .reviseSpecification event)
  | observe (s : State catalog Core) (event : Event) (metadata : Metadata)
      (allowed : Operation.observe ∈ s.specification.permitted) :
      Change CoreMeaning s (advance { s with metadata := metadata } .observe event)

variable {CoreMeaning}

/-- A transferred debt is supported by every exact new rule premise; all other
old tokens remain literally present. This statement is stronger than target-route preservation. -/
theorem change_conserves {s t : State catalog Core} (change : Change CoreMeaning s t) :
    Holds catalog t.frontier → Holds catalog s.frontier := by
  cases change with
  | selectTarget event claim allowed unselected declared =>
      intro holds old member
      exact holds old (by simp [advance, member])
  | introduce event claim allowed source =>
      intro holds old member
      exact holds old (by simp [advance, member])
  | transfer event rule allowed pending premises side =>
      intro holds old member
      by_cases same : old = rule.rule.conclusion
      · subst old
        apply rule.sound () side
        intro premise required
        exact holds premise (by simp [advance, required])
      · exact holds old (by simp [advance, member, same])
  | discharge event claim allowed pending proof =>
      intro holds old member
      by_cases same : old = claim
      · exact same.symm ▸ proof
      · exact holds old (by simp [advance, member, same])
  | revisePath event frontier allowed declared coverage => exact coverage
  | registerProof | conditional | counterexample | replaceCore | incorporateSource |
      reviseSpecification | observe => exact fun holds ↦ holds

/-- A selected target cannot be silently replaced, including during a path revision. -/
theorem change_preserves_locked_target {s t : State catalog Core} (change : Change CoreMeaning s t)
    {claim : Claim} (locked : s.target = some claim) : t.target = some claim := by
  cases change with
  | selectTarget event target allowed unselected declared =>
      rw [unselected] at locked
      contradiction
  | introduce | registerProof | conditional | transfer | discharge | counterexample |
      replaceCore | revisePath | incorporateSource | reviseSpecification | observe => exact locked

/-- Every admitted transition extends its mathematical event history by exactly one entry. -/
theorem change_history_extends {s t : State catalog Core} (change : Change CoreMeaning s t) :
    ∃ operation event, t.history = s.history ++ [(operation, event)] ∧ t.version = s.version + 1 := by
  cases change <;> exact ⟨_, _, rfl, rfl⟩

/-- Each concrete operation preserves the semantic validity conditions. -/
theorem change_preserves_valid {s t : State catalog Core} (change : Change CoreMeaning s t)
    (valid : Valid catalog CoreMeaning s) : Valid catalog CoreMeaning t := by
  have conserve := change_conserves change
  cases change with
  | selectTarget event claim allowed unselected declared =>
      refine { valid with frontier_declared := ?_, target_declared := ?_, route := ?_ }
      · intro q member
        simp only [advance, Finset.mem_insert] at member
        rcases member with rfl | member
        · exact declared
        · exact valid.frontier_declared member
      · intro q target
        have same : claim = q := Option.some.inj target
        exact same ▸ declared
      · intro q target holds
        have same : claim = q := Option.some.inj target
        exact same ▸ holds claim (by simp [advance])
  | introduce event claim allowed source =>
      refine { valid with frontier_declared := ?_, proved_declared := ?_, sources_bound := ?_, target_declared := ?_, route := ?_ }
      · intro q member
        simp only [advance, Finset.mem_insert] at member ⊢
        exact member.imp_right (fun member ↦ valid.frontier_declared member)
      · intro q member
        exact Finset.mem_insert_of_mem (valid.proved_declared member)
      · intro q member
        simp only [advance, Finset.mem_insert] at member
        rcases member with rfl | member
        · exact source
        · exact valid.sources_bound q member
      · intro q target
        exact Finset.mem_insert_of_mem (valid.target_declared q target)
      · intro q target holds
        exact valid.route q target (conserve holds)
  | registerProof event claim allowed declared proof =>
      refine { valid with proved_declared := ?_, proved_sound := ?_ }
      · intro q member
        simp only [advance, Finset.mem_insert] at member
        rcases member with rfl | member
        · exact declared
        · exact valid.proved_declared member
      · intro q member
        simp only [advance, Finset.mem_insert] at member
        rcases member with rfl | member
        · exact proof
        · exact valid.proved_sound q member
  | transfer event rule allowed pending premises side =>
      refine { valid with frontier_declared := ?_, route := ?_ }
      · intro q member
        simp only [advance, Finset.mem_union, Finset.mem_erase] at member
        rcases member with ⟨_, member⟩ | member
        · exact valid.frontier_declared member
        · exact premises member
      · intro q target holds
        exact valid.route q target (conserve holds)
  | discharge event claim allowed pending proof =>
      refine { valid with frontier_declared := ?_, route := ?_ }
      · intro q member
        exact valid.frontier_declared (Finset.mem_of_mem_erase member)
      · intro q target holds
        exact valid.route q target (conserve holds)
  | replaceCore event core allowed compatible =>
      exact { valid with core_sound := compatible.mp valid.core_sound }
  | revisePath event frontier allowed declared coverage =>
      refine { valid with frontier_declared := declared, route := ?_ }
      intro q target holds
      exact valid.route q target (coverage holds)
  | incorporateSource event source allowed =>
      refine { valid with sources_bound := ?_ }
      intro q member
      exact List.mem_append_left _ (valid.sources_bound q member)
  | conditional | counterexample | reviseSpecification | observe => exact { valid with }

omit [DecidableEq Claim] in
/-- The empty unselected state is valid whenever its chosen core specification holds. -/
theorem initialState_valid (catalog : Catalog Claim) (core : Core) (sources : List SourceIdentity)
    (core_sound : CoreMeaning core) : Valid catalog CoreMeaning (initialState catalog core sources) := by
  refine ⟨?_, ?_, ?_, ?_, core_sound, ?_, ?_⟩ <;>
    simp [initialState, Holds]

/-- Reachability reuses the established state-invariant induction principle. -/
abbrev Reachable (initial final : State catalog Core) : Prop :=
  StateInvariant.Reachable (Change CoreMeaning) initial final

/-- Semantic preservation is proved from the operations, not assumed by the state. -/
theorem reachable_preserves_valid {initial final : State catalog Core}
    (valid : Valid catalog CoreMeaning initial) (reachable : Reachable (CoreMeaning := CoreMeaning) initial final) :
    Valid catalog CoreMeaning final :=
  StateInvariant.reachable_invariant (Change CoreMeaning) (Valid catalog CoreMeaning) initial valid
    (fun _ _ change valid ↦ change_preserves_valid change valid) reachable

/-- Every original obligation is still a consequence of the final frontier. -/
theorem reachable_conserves {initial final : State catalog Core}
    (reachable : Reachable (CoreMeaning := CoreMeaning) initial final) :
    Holds catalog final.frontier → Holds catalog initial.frontier := by
  induction reachable with
  | initial => exact fun holds ↦ holds
  | next previous edge ih => exact fun holds ↦ ih (change_conserves edge holds)

/-- A locked target has the same immutable source-bound claim after any later history. -/
theorem reachable_preserves_locked_target {initial final : State catalog Core}
    (reachable : Reachable (CoreMeaning := CoreMeaning) initial final) {claim : Claim}
    (locked : initial.target = some claim) : final.target = some claim := by
  induction reachable with
  | initial => exact locked
  | next previous edge ih => exact change_preserves_locked_target edge ih

omit [DecidableEq Claim] in
/-- Empty frontier plus validity supplies the selected exact contextual theorem. -/
theorem selected_of_empty_frontier {s : State catalog Core} (valid : Valid catalog CoreMeaning s)
    {claim : Claim} (selected : s.target = some claim) (closed : s.frontier = ∅) :
    Meaning catalog claim := by
  apply valid.route claim selected
  simp [Holds, closed]

omit [DecidableEq Claim] in
/-- Erasing a contextual hypothesis requires an actual proof of every such hypothesis. -/
theorem statement_of_meaning {claim : Claim} (meaning : Meaning catalog claim)
    (hypotheses : ∀ hypothesis ∈ catalog.hypotheses claim, hypothesis) : catalog.statement claim :=
  meaning hypotheses

end Transitions

end GRWTSK.Logic.StateTransition.ResearchState
