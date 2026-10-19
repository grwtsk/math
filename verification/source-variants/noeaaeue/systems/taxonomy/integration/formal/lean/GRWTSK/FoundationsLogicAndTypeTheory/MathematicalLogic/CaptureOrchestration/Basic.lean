import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CaptureConstruction.Basic

/-!
The capture driver has five fallible phases: four host callbacks and the direct
v11 pure constructor, followed by an infallible result projection. Phase state is
threaded explicitly. Each phase occurrence is recorded even when it fails, and
no later phase runs. The generic phase interpreter is separate from the typed
host driver below. Host callbacks have declared interfaces: this model does not
infer authentic filesystem observations from successful IO, digest labels, or
native exit codes.
-/
namespace GRWTSK.CaptureOrchestration

inductive Stage where
  | prepare | observe | construct | digest | validate
  deriving DecidableEq

def stages : List Stage := [.prepare, .observe, .construct, .digest, .validate]

structure Execution (State Error : Type) where
  result : Except Error State
  trace : List Stage
  deriving DecidableEq

def run {State Error : Type} (invoke : Stage → State → Except Error State) :
    List Stage → State → Execution State Error
  | [], state => ⟨.ok state, []⟩
  | stage :: rest, state =>
      match invoke stage state with
      | .error error => ⟨.error error, [stage]⟩
      | .ok next =>
          let execution := run invoke rest next
          ⟨execution.result, stage :: execution.trace⟩

def capture {State Error : Type} (invoke : Stage → State → Except Error State)
    (state : State) : Execution State Error := run invoke stages state

def finish {State Error Output : Type} (project : State → Output)
    (execution : Execution State Error) : Except Error Output := execution.result.map project

theorem run_empty {State Error : Type} (invoke : Stage → State → Except Error State)
    (state : State) : run invoke [] state = ⟨.ok state, []⟩ := rfl

theorem run_first_error {State Error : Type} (invoke : Stage → State → Except Error State)
    (stage : Stage) (rest : List Stage) (state : State) (error : Error)
    (failed : invoke stage state = .error error) :
    run invoke (stage :: rest) state = ⟨.error error, [stage]⟩ := by simp [run, failed]

theorem run_first_success {State Error : Type} (invoke : Stage → State → Except Error State)
    (stage : Stage) (rest : List Stage) (state next : State)
    (accepted : invoke stage state = .ok next) :
    run invoke (stage :: rest) state =
      ⟨(run invoke rest next).result, stage :: (run invoke rest next).trace⟩ := by
  simp [run, accepted]

theorem run_success_trace {State Error : Type} (invoke : Stage → State → Except Error State)
    (steps : List Stage) (state final : State)
    (accepted : (run invoke steps state).result = .ok final) :
    (run invoke steps state).trace = steps := by
  induction steps generalizing state with
  | nil => rfl
  | cons stage rest ih =>
      cases called : invoke stage state with
      | error error => simp [run, called] at accepted
      | ok next =>
          simp only [run, called] at accepted ⊢
          exact congrArg (List.cons stage) (ih next accepted)

theorem run_trace_successfulPrefix {State Error : Type} (invoke : Stage → State → Except Error State)
    (steps : List Stage) (state : State) :
    ∃ suffix, steps = (run invoke steps state).trace ++ suffix := by
  induction steps generalizing state with
  | nil => exact ⟨[], rfl⟩
  | cons stage rest ih =>
      cases called : invoke stage state with
      | error error => exact ⟨rest, by simp [run, called]⟩
      | ok next =>
          obtain ⟨suffix, exact⟩ := ih next
          exact ⟨suffix, by simpa [run, called] using congrArg (List.cons stage) exact⟩

theorem run_trace_length {State Error : Type} (invoke : Stage → State → Except Error State)
    (steps : List Stage) (state : State) : (run invoke steps state).trace.length ≤ steps.length := by
  obtain ⟨suffix, exact⟩ := run_trace_successfulPrefix invoke steps state
  have lengths := congrArg List.length exact
  simp only [List.length_append] at lengths
  omega

theorem run_failure_exact {State Error : Type} (invoke : Stage → State → Except Error State)
    (steps : List Stage) (state : State) (error : Error)
    (failed : (run invoke steps state).result = .error error) :
    ∃ before stage after reached,
      steps = before ++ stage :: after ∧
      (run invoke before state).result = .ok reached ∧
      invoke stage reached = .error error ∧
      (run invoke steps state).trace = before ++ [stage] := by
  induction steps generalizing state with
  | nil => simp [run] at failed
  | cons stage rest ih =>
      cases called : invoke stage state with
      | error observed =>
          have same : observed = error := by simpa [run, called] using failed
          subst observed
          exact ⟨[], stage, rest, state, rfl, rfl, called, by simp [run, called]⟩
      | ok next =>
          have tail : (run invoke rest next).result = .error error := by
            simpa [run, called] using failed
          obtain ⟨before, failing, after, reached, split, successfulPrefix, failure, trace⟩ := ih next tail
          exact ⟨stage :: before, failing, after, reached, by simp [split],
            by simpa [run, called] using successfulPrefix, failure, by simp [run, called, trace]⟩

theorem run_append_success {State Error : Type} (invoke : Stage → State → Except Error State)
    (before after : List Stage) (state reached : State)
    (accepted : (run invoke before state).result = .ok reached) :
    run invoke (before ++ after) state =
      ⟨(run invoke after reached).result, before ++ (run invoke after reached).trace⟩ := by
  induction before generalizing state with
  | nil =>
      have same : state = reached := by simpa [run] using accepted
      subst state
      rfl
  | cons stage rest ih =>
      cases called : invoke stage state with
      | error error => simp [run, called] at accepted
      | ok next =>
          have tail : (run invoke rest next).result = .ok reached := by
            simpa [run, called] using accepted
          simp [run, called, ih next tail]

theorem run_failure_stops_suffix {State Error : Type}
    (invoke : Stage → State → Except Error State) (before after : List Stage)
    (stage : Stage) (state reached : State) (error : Error)
    (successfulPrefix : (run invoke before state).result = .ok reached)
    (failed : invoke stage reached = .error error) :
    run invoke (before ++ stage :: after) state = ⟨.error error, before ++ [stage]⟩ := by
  rw [run_append_success invoke before (stage :: after) state reached successfulPrefix]
  simp [run, failed]

theorem capture_success_trace {State Error : Type}
    (invoke : Stage → State → Except Error State) (state final : State)
    (accepted : (capture invoke state).result = .ok final) :
    (capture invoke state).trace = [.prepare, .observe, .construct, .digest, .validate] :=
  run_success_trace _ _ _ _ accepted

theorem capture_invocation_bound {State Error : Type}
    (invoke : Stage → State → Except Error State) (state : State) :
    (capture invoke state).trace.length ≤ 5 := by
  exact run_trace_length invoke stages state

theorem capture_success_chain {State Error : Type}
    (invoke : Stage → State → Except Error State) (state final : State) :
    (capture invoke state).result = .ok final ↔
      ∃ prepared observed constructed digested,
        invoke .prepare state = .ok prepared ∧
        invoke .observe prepared = .ok observed ∧
        invoke .construct observed = .ok constructed ∧
        invoke .digest constructed = .ok digested ∧
        invoke .validate digested = .ok final := by
  simp only [capture, stages, run]
  cases prepare : invoke .prepare state with
  | error error => simp
  | ok prepared =>
    cases observe : invoke .observe prepared with
    | error error => simp [observe]
    | ok observed =>
      cases construct : invoke .construct observed with
      | error error => simp [observe, construct]
      | ok constructed =>
        cases digest : invoke .digest constructed with
        | error error => simp [observe, construct, digest]
        | ok digested =>
          cases validate : invoke .validate digested with
          | error error => simp [observe, construct, digest, validate]
          | ok accepted => simp [observe, construct, digest, validate, eq_comm]

theorem finish_success {State Error Output : Type} (project : State → Output)
    (execution : Execution State Error) (state : State) (accepted : execution.result = .ok state) :
    finish project execution = .ok (project state) := by simp [finish, accepted, Except.map]

theorem finish_error {State Error Output : Type} (project : State → Output)
    (execution : Execution State Error) (error : Error) (failed : execution.result = .error error) :
    finish project execution = .error error := by simp [finish, failed, Except.map]

structure State where
  observations : List CaptureConstruction.Observation
  captured : CaptureConstruction.Captured
  deriving DecidableEq

/-- A reusable interface for the generic phase model. The typed host driver
below instead binds construction directly to the v11 pure constructor. Generic
post-construction phases must retain the exact literal maps and observations. -/
def ConstructionInterface {Error : Type} (invoke : Stage → State → Except Error State) : Prop :=
  (∀ before after, invoke .construct before = .ok after →
    after.observations = before.observations ∧
      CaptureConstruction.construct before.observations = some after.captured) ∧
  (∀ stage before after, stage ∈ [Stage.digest, Stage.validate] →
    invoke stage before = .ok after →
      after.observations = before.observations ∧ after.captured = before.captured)

theorem capture_success_constructed {Error : Type}
    (invoke : Stage → State → Except Error State) (state final : State)
    (interface : ConstructionInterface invoke)
    (accepted : (capture invoke state).result = .ok final) :
    CaptureConstruction.construct final.observations = some final.captured := by
  obtain ⟨prepared, observed, constructed, digested, _, _, built, digestedStep, validated⟩ :=
    (capture_success_chain _ _ _).mp accepted
  obtain ⟨observations, exact⟩ := interface.1 _ _ built
  obtain ⟨digestObservations, digestCaptured⟩ := interface.2 .digest _ _ (by simp) digestedStep
  obtain ⟨finalObservations, finalCaptured⟩ := interface.2 .validate _ _ (by simp) validated
  simpa [finalObservations, digestObservations, observations, finalCaptured, digestCaptured] using exact

theorem capture_success_literal_coherence {Error : Type}
    (invoke : Stage → State → Except Error State) (state final : State)
    (interface : ConstructionInterface invoke)
    (accepted : (capture invoke state).result = .ok final) :
    CaptureConstruction.coherent final.captured ∧ PlanOutputBounds.unique final.captured.records := by
  have exact := capture_success_constructed invoke state final interface accepted
  exact ⟨CaptureConstruction.construct_success_coherent _ _ exact,
    CaptureConstruction.construct_success_unique _ _ exact⟩

theorem capture_success_literal_bounds {Error : Type}
    (invoke : Stage → State → Except Error State) (state final : State)
    (interface : ConstructionInterface invoke)
    (accepted : (capture invoke state).result = .ok final) :
    final.captured.records.length ≤ PlanResources.maxFiles ∧
      (final.captured.records.map fun row => row.2.bytes).sum ≤ PlanResources.maxTotalBytes := by
  exact (PlanOutputBounds.recordsWithin_exact _).mp
    (CaptureConstruction.construct_success_metadata_quota _ _
      (capture_success_constructed invoke state final interface accepted))

theorem capture_success_observation_keys {Error : Type}
    (invoke : Stage → State → Except Error State) (state final : State)
    (interface : ConstructionInterface invoke)
    (accepted : (capture invoke state).result = .ok final) :
    final.captured.records.map Prod.fst = final.observations.reverse.map CaptureConstruction.Observation.path := by
  simpa [List.map_map, Function.comp_def] using congrArg (List.map Prod.fst)
    (CaptureConstruction.construct_success_records _ _
      (capture_success_constructed invoke state final interface accepted))

def successfulInvoke (stage : Stage) (state : State) : Except String State :=
  if stage = .construct then
    match CaptureConstruction.construct state.observations with
    | none => .error "construction-rejected"
    | some captured => .ok {state with captured := captured}
  else .ok state

theorem successfulInvoke_interface : ConstructionInterface successfulInvoke := by
  constructor
  · intro before after accepted
    simp only [successfulInvoke, ↓reduceIte] at accepted
    cases built : CaptureConstruction.construct before.observations with
    | none => simp [built] at accepted
    | some captured =>
        have exact : {before with captured := captured} = after := by simpa [built] using accepted
        subst after
        exact ⟨rfl, rfl⟩
  · intro stage before after selected accepted
    have other : stage ≠ .construct := by
      simp only [List.mem_cons, List.not_mem_nil, or_false] at selected
      rcases selected with rfl | rfl <;> decide
    have exact : before = after := by simpa [successfulInvoke, other] using accepted
    subst after
    exact ⟨rfl, rfl⟩

theorem successful_capture_nonvacuous (events : List CaptureConstruction.Observation)
    (admitted : CaptureConstruction.admitted events) :
    (capture successfulInvoke ⟨events, ⟨[], []⟩⟩).result =
      .ok ⟨events, CaptureConstruction.eventFold events ⟨[], []⟩⟩ := by
  apply (capture_success_chain _ _ _).mpr
  refine ⟨⟨events, ⟨[], []⟩⟩, ⟨events, ⟨[], []⟩⟩,
    ⟨events, CaptureConstruction.eventFold events ⟨[], []⟩⟩,
    ⟨events, CaptureConstruction.eventFold events ⟨[], []⟩⟩, ?_, ?_, ?_, ?_, ?_⟩
  all_goals simp [successfulInvoke, CaptureConstruction.construct_complete events admitted]

theorem fixture_empty_capture_success :
    (capture successfulInvoke ⟨[], ⟨[], []⟩⟩).result = .ok ⟨[], ⟨[], []⟩⟩ := by decide

theorem fixture_prepare_failure_stops :
    (capture (fun _ (_ : Nat) => Except.error "prepare-failed") 0).trace = [.prepare] := rfl

theorem fixture_validation_failure_preserves_error :
    (capture (fun stage (state : Nat) => if stage = .validate then .error "invalid" else .ok (state+1)) 0) =
      ⟨.error "invalid", stages⟩ := by decide

/-- The context contains every Inventory field other than files and its digest.
It is intentionally opaque: root/role/schema/directory authenticity is a host
obligation, while the driver preserves the context returned by observation. -/
structure Inventory (Context : Type) where
  context : Context
  files : PlanOutputBounds.Files PlanOutputBounds.Record
  inventoryDigest : String
  deriving DecidableEq

structure DriverState (Context Native : Type) where
  inventory : Inventory Context
  observations : List CaptureConstruction.Observation
  payloads : PlanOutputBounds.Files LiteralLengthBounds.Payload
  native : Native
  deriving DecidableEq

/-- Callback results expose the exact native-state threading. Digest and
validation cannot replace Inventory or payload maps in this interface. -/
structure Host (Context Native Error : Type) where
  prepare : Native → Except Error (Inventory Context × Native)
  observe : Inventory Context → Native →
    Except Error ((Inventory Context × List CaptureConstruction.Observation) × Native)
  digest : Inventory Context → Native → Except Error (String × Native)
  validate : Inventory Context → Native → Except Error Native

def invokeHost {Context Native Error : Type} (host : Host Context Native Error)
    (constructionError : Error) (stage : Stage) (state : DriverState Context Native) :
    Except Error (DriverState Context Native) :=
  match stage with
  | .prepare => match host.prepare state.native with
      | .error error => .error error
      | .ok (inventory, native) => .ok {state with inventory, native}
  | .observe => match host.observe state.inventory state.native with
      | .error error => .error error
      | .ok ((inventory, observations), native) => .ok {state with inventory, observations, native}
  | .construct => match CaptureConstruction.construct state.observations with
      | none => .error constructionError
      | some captured => .ok {state with inventory.files := captured.records, payloads := captured.payloads}
  | .digest => match host.digest state.inventory state.native with
      | .error error => .error error
      | .ok (digest, native) => .ok {state with inventory.inventoryDigest := digest, native}
  | .validate => match host.validate state.inventory state.native with
      | .error error => .error error
      | .ok native => .ok {state with native}

def orchestrate {Context Native Error : Type} (host : Host Context Native Error)
    (constructionError : Error) (state : DriverState Context Native) :
    Execution (DriverState Context Native) Error := capture (invokeHost host constructionError) state

theorem invokeHost_construct_exact {Context Native Error : Type} (host : Host Context Native Error)
    (error : Error) (before after : DriverState Context Native)
    (accepted : invokeHost host error .construct before = .ok after) :
    after.observations = before.observations ∧ after.inventory.context = before.inventory.context ∧
      CaptureConstruction.construct before.observations =
        some ⟨after.inventory.files, after.payloads⟩ := by
  simp only [invokeHost] at accepted
  cases built : CaptureConstruction.construct before.observations with
  | none => simp [built] at accepted
  | some captured =>
      have same : {before with inventory.files := captured.records, payloads := captured.payloads} = after := by
        simpa [built] using accepted
      subst after
      exact ⟨rfl, rfl, by cases captured; rfl⟩

theorem invokeHost_construct_failure {Context Native Error : Type} (host : Host Context Native Error)
    (error : Error) (state : DriverState Context Native)
    (rejected : CaptureConstruction.construct state.observations = none) :
    invokeHost host error .construct state = .error error := by simp [invokeHost, rejected]

theorem invokeHost_tail_preserves {Context Native Error : Type} (host : Host Context Native Error)
    (error : Error) (stage : Stage) (before after : DriverState Context Native)
    (selected : stage ∈ [Stage.digest, Stage.validate])
    (accepted : invokeHost host error stage before = .ok after) :
    after.observations = before.observations ∧ after.inventory.context = before.inventory.context ∧
      after.inventory.files = before.inventory.files ∧ after.payloads = before.payloads := by
  simp only [List.mem_cons, List.not_mem_nil, or_false] at selected
  rcases selected with rfl | rfl
  · simp only [invokeHost] at accepted
    cases called : host.digest before.inventory before.native with
    | error failure => simp [called] at accepted
    | ok pair =>
        have same : {before with inventory.inventoryDigest := pair.1, native := pair.2} = after := by
          simpa [called] using accepted
        subst after
        exact ⟨rfl, rfl, rfl, rfl⟩
  · simp only [invokeHost] at accepted
    cases called : host.validate before.inventory before.native with
    | error failure => simp [called] at accepted
    | ok native =>
        have same : {before with native} = after := by simpa [called] using accepted
        subst after
        exact ⟨rfl, rfl, rfl, rfl⟩

theorem orchestrate_success_literal_constructor {Context Native Error : Type}
    (host : Host Context Native Error) (error : Error) (state final : DriverState Context Native)
    (accepted : (orchestrate host error state).result = .ok final) :
    CaptureConstruction.construct final.observations =
      some ⟨final.inventory.files, final.payloads⟩ := by
  obtain ⟨prepared, observed, constructed, digested, _, _, built, digestStep, validated⟩ :=
    (capture_success_chain _ _ _).mp accepted
  obtain ⟨observations, _, exact⟩ := invokeHost_construct_exact host error observed constructed built
  obtain ⟨digestObservations, _, digestFiles, digestPayloads⟩ :=
    invokeHost_tail_preserves host error .digest constructed digested (by simp) digestStep
  obtain ⟨finalObservations, _, finalFiles, finalPayloads⟩ :=
    invokeHost_tail_preserves host error .validate digested final (by simp) validated
  simpa [finalObservations, digestObservations, observations, finalFiles, digestFiles,
    finalPayloads, digestPayloads] using exact

theorem orchestrate_success_observed_context {Context Native Error : Type}
    (host : Host Context Native Error) (error : Error) (state final : DriverState Context Native)
    (accepted : (orchestrate host error state).result = .ok final) :
    ∃ prepared observed,
      invokeHost host error .prepare state = .ok prepared ∧
      invokeHost host error .observe prepared = .ok observed ∧
      final.inventory.context = observed.inventory.context := by
  obtain ⟨prepared, observed, constructed, digested, prepare, observe, built, digestStep, validated⟩ :=
    (capture_success_chain _ _ _).mp accepted
  have builtContext := (invokeHost_construct_exact host error observed constructed built).2.1
  have digestContext := (invokeHost_tail_preserves host error .digest constructed digested (by simp) digestStep).2.1
  have finalContext := (invokeHost_tail_preserves host error .validate digested final (by simp) validated).2.1
  exact ⟨prepared, observed, prepare, observe, finalContext.trans (digestContext.trans builtContext)⟩

theorem orchestrate_success_literal_coherence {Context Native Error : Type}
    (host : Host Context Native Error) (error : Error) (state final : DriverState Context Native)
    (accepted : (orchestrate host error state).result = .ok final) :
    PlanOutputBounds.lower PlanOutputBounds.Record.bytes final.inventory.files =
      PlanOutputBounds.lower List.length final.payloads ∧ PlanOutputBounds.unique final.inventory.files := by
  have exact := orchestrate_success_literal_constructor host error state final accepted
  exact ⟨CaptureConstruction.construct_success_coherent _ _ exact,
    CaptureConstruction.construct_success_unique _ _ exact⟩

theorem orchestrate_success_actual_byte_bounds {Context Native Error : Type}
    (host : Host Context Native Error) (error : Error) (state final : DriverState Context Native)
    (accepted : (orchestrate host error state).result = .ok final) :
    final.payloads.length ≤ PlanResources.maxFiles ∧
      (final.payloads.map fun row => row.2.length).sum ≤ PlanResources.maxTotalBytes := by
  have exact := orchestrate_success_literal_constructor host error state final accepted
  have counts := CaptureConstruction.construct_success_counts _ _ exact
  have bounds := CaptureConstruction.construct_success_bounds _ _ exact
  have totals := CaptureConstruction.construct_success_exact_byte_totals _ _ exact
  simpa [counts.1, counts.2, totals.2] using bounds

theorem orchestrate_success_mandatory_validation {Context Native Error : Type}
    (host : Host Context Native Error) (error : Error) (state final : DriverState Context Native)
    (accepted : (orchestrate host error state).result = .ok final) :
    ∃ digested, invokeHost host error .validate digested = .ok final := by
  obtain ⟨_, _, _, digested, _, _, _, _, validated⟩ := (capture_success_chain _ _ _).mp accepted
  exact ⟨digested, validated⟩

theorem orchestrate_success_trace {Context Native Error : Type}
    (host : Host Context Native Error) (error : Error) (state final : DriverState Context Native)
    (accepted : (orchestrate host error state).result = .ok final) :
    (orchestrate host error state).trace = stages := capture_success_trace _ _ _ accepted

theorem orchestrate_error_stops {Context Native Error : Type}
    (host : Host Context Native Error) (constructionError error : Error)
    (state : DriverState Context Native)
    (failed : (orchestrate host constructionError state).result = .error error) :
    ∃ before stage after reached,
      stages = before ++ stage :: after ∧
      (run (invokeHost host constructionError) before state).result = .ok reached ∧
      invokeHost host constructionError stage reached = .error error ∧
      (orchestrate host constructionError state).trace = before ++ [stage] :=
  run_failure_exact _ _ _ _ failed

theorem invokeHost_validate_inventory {Context Native Error : Type} (host : Host Context Native Error)
    (error : Error) (before after : DriverState Context Native)
    (accepted : invokeHost host error .validate before = .ok after) :
    after.inventory = before.inventory ∧ host.validate before.inventory before.native = .ok after.native := by
  simp only [invokeHost] at accepted
  cases called : host.validate before.inventory before.native with
  | error failure => simp [called] at accepted
  | ok native =>
      have same : {before with native} = after := by simpa [called] using accepted
      subst after
      exact ⟨rfl, rfl⟩

theorem invokeHost_digest_label {Context Native Error : Type} (host : Host Context Native Error)
    (error : Error) (before after : DriverState Context Native)
    (accepted : invokeHost host error .digest before = .ok after) :
    host.digest before.inventory before.native = .ok (after.inventory.inventoryDigest, after.native) := by
  simp only [invokeHost] at accepted
  cases called : host.digest before.inventory before.native with
  | error failure => simp [called] at accepted
  | ok pair =>
      have same : {before with inventory.inventoryDigest := pair.1, native := pair.2} = after := by
        simpa [called] using accepted
      subst after
      cases pair
      rfl

theorem orchestrate_success_digest_label {Context Native Error : Type}
    (host : Host Context Native Error) (error : Error) (state final : DriverState Context Native)
    (accepted : (orchestrate host error state).result = .ok final) :
    ∃ (constructed : DriverState Context Native) (native : Native), host.digest constructed.inventory constructed.native =
      .ok (final.inventory.inventoryDigest, native) := by
  obtain ⟨_, _, constructed, digested, _, _, _, digestedStep, validated⟩ :=
    (capture_success_chain _ _ _).mp accepted
  have digestExact := invokeHost_digest_label host error constructed digested digestedStep
  have preserved := (invokeHost_validate_inventory host error digested final validated).1
  exact ⟨constructed, digested.native, by rw [preserved]; exact digestExact⟩

theorem orchestrate_success_final_validation {Context Native Error : Type}
    (host : Host Context Native Error) (error : Error) (state final : DriverState Context Native)
    (accepted : (orchestrate host error state).result = .ok final) :
    ∃ nativeBefore, host.validate final.inventory nativeBefore = .ok final.native := by
  obtain ⟨_, _, _, digested, _, _, _, _, validated⟩ :=
    (capture_success_chain _ _ _).mp accepted
  obtain ⟨preserved, validated⟩ := invokeHost_validate_inventory host error digested final validated
  exact ⟨digested.native, by rw [preserved]; exact validated⟩

def returned {Context Native : Type} (state : DriverState Context Native) :
    Inventory Context × PlanOutputBounds.Files LiteralLengthBounds.Payload :=
  (state.inventory, state.payloads)

def result {Context Native Error : Type} (host : Host Context Native Error)
    (constructionError : Error) (state : DriverState Context Native) :
    Except Error (Inventory Context × PlanOutputBounds.Files LiteralLengthBounds.Payload) :=
  (orchestrate host constructionError state).result.map returned

theorem result_success_exact {Context Native Error : Type} (host : Host Context Native Error)
    (error : Error) (state final : DriverState Context Native)
    (accepted : (orchestrate host error state).result = .ok final) :
    result host error state = .ok (final.inventory, final.payloads) := by
  simp [result, accepted, Except.map, returned]

def admittedHost (events : List CaptureConstruction.Observation) : Host Unit Nat String where
  prepare native := .ok (⟨(), [], "initial"⟩, native+1)
  observe inventory native := .ok ((inventory, events), native+1)
  digest _ native := .ok ("observed-digest", native+1)
  validate _ native := .ok (native+1)

def emptyState : DriverState Unit Nat := ⟨⟨(), [], ""⟩, [], [], 0⟩

theorem admittedHost_success_nonvacuous (events : List CaptureConstruction.Observation)
    (admitted : CaptureConstruction.admitted events) :
    result (admittedHost events) "construction-failed" emptyState = .ok
      (⟨(), (CaptureConstruction.eventFold events ⟨[], []⟩).records, "observed-digest"⟩,
        (CaptureConstruction.eventFold events ⟨[], []⟩).payloads) := by
  simp [result, orchestrate, capture, stages, run, invokeHost, admittedHost, emptyState,
    CaptureConstruction.construct_complete events admitted, Except.map, returned]

theorem fixture_actual_empty_capture : result (admittedHost []) "construction-failed" emptyState =
    .ok (⟨(), [], "observed-digest"⟩, []) := by decide

end GRWTSK.CaptureOrchestration
