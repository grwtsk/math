import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TransactionConstruction.Basic

/-!
The post-journal application driver has a frozen action order, two separately
bounded raw-source loops, an output-readback callback, and a receipt callback.
The exact receipt supplied to recording is returned unchanged. IO, publication,
locks, pre-journal setup, failure-journal observations, and retirement retain
separate host contracts; successful receipt construction is not proof authority.
-/
namespace GRWTSK.ApplicationOrchestration

inductive Action where
  | stageTaxonomy | stageArchive | recordPrepared | verifyInputs | verifyCertificate
  | publishArchive | recordArchivePublished | verifySource | verifyPreservation
  | retainSource | retainPreservation | verifyRaw | retainRaw | publishTaxonomy
  deriving DecidableEq

structure Operation where
  action : Action
  index : Nat
  deriving DecidableEq

def initial : List Operation :=
  [.stageTaxonomy, .stageArchive, .recordPrepared, .verifyInputs, .verifyCertificate,
    .publishArchive, .recordArchivePublished, .verifySource, .verifyPreservation,
    .retainSource, .retainPreservation].map fun action => ⟨action, 0⟩

def program (rawCount certificateRawCount : Nat) : List Operation :=
  initial ++ (List.range rawCount).map (fun index => ⟨.verifyRaw, index⟩) ++
    (List.range certificateRawCount).map (fun index => ⟨.retainRaw, index⟩) ++ [⟨.publishTaxonomy, 0⟩]

theorem initial_length : initial.length = 11 := rfl

theorem program_length (rawCount certificateRawCount : Nat) :
    (program rawCount certificateRawCount).length = rawCount + certificateRawCount + 12 := by
  simp [program, initial_length]
  omega

theorem program_initial_order (rawCount certificateRawCount : Nat) :
    (program rawCount certificateRawCount).take 11 = initial := by
  simp only [program, List.append_assoc]
  rw [show 11 = initial.length from rfl, List.take_left]

theorem program_verify_raw (rawCount certificateRawCount index : Nat) (bounded : index < rawCount) :
    (program rawCount certificateRawCount)[11 + index]? = some ⟨.verifyRaw, index⟩ := by
  simp [program, List.getElem?_append, initial_length, show ¬11 + index < 11 by omega, bounded,
    show 11 + index - 11 = index by omega]

theorem program_retain_raw (rawCount certificateRawCount index : Nat)
    (bounded : index < certificateRawCount) :
    (program rawCount certificateRawCount)[11 + rawCount + index]? = some ⟨.retainRaw, index⟩ := by
  simp [program, List.getElem?_append, initial_length, bounded,
    show ¬11 + rawCount + index < 11 by omega,
    show ¬11 + rawCount + index - 11 < rawCount by omega,
    show 11 + rawCount + index - 11 - rawCount = index by omega]

theorem program_publication_last (rawCount certificateRawCount : Nat) :
    (program rawCount certificateRawCount).getLast? = some ⟨.publishTaxonomy, 0⟩ := by
  simp [program]

inductive Event (Receipt : Type) where
  | step (operation : Operation)
  | outputs
  | receipt (value : Receipt)
  deriving DecidableEq

structure Execution (State Error Receipt : Type) where
  result : Except Error (Receipt × State)
  trace : List (Event Receipt)
  deriving DecidableEq

structure Host (State Error Receipt : Type) where
  step : Operation → State → Except Error State
  verifyOutputs : State → Except Error (Receipt × State)
  recordReceipt : Receipt → State → Except Error State

structure StepExecution (State Error : Type) where
  result : Except Error State
  trace : List Operation
  deriving DecidableEq

def runSteps {State Error : Type} (invoke : Operation → State → Except Error State) :
    List Operation → State → StepExecution State Error
  | [], state => ⟨.ok state, []⟩
  | operation :: rest, state => match invoke operation state with
      | .error error => ⟨.error error, [operation]⟩
      | .ok next => let tail := runSteps invoke rest next; ⟨tail.result, operation :: tail.trace⟩

def execute {State Error Receipt : Type} (host : Host State Error Receipt)
    (rawCount certificateRawCount : Nat) (state : State) : Execution State Error Receipt :=
  let steps := runSteps host.step (program rawCount certificateRawCount) state
  match steps.result with
  | .error error => ⟨.error error, steps.trace.map Event.step⟩
  | .ok prepared => match host.verifyOutputs prepared with
      | .error error => ⟨.error error, steps.trace.map Event.step ++ [.outputs]⟩
      | .ok (receipt, verified) => match host.recordReceipt receipt verified with
          | .error error => ⟨.error error, steps.trace.map Event.step ++ [.outputs, .receipt receipt]⟩
          | .ok recorded => ⟨.ok (receipt, recorded), steps.trace.map Event.step ++ [.outputs, .receipt receipt]⟩

theorem runSteps_success_trace {State Error : Type} (invoke : Operation → State → Except Error State)
    (operations : List Operation) (state final : State)
    (accepted : (runSteps invoke operations state).result = .ok final) :
    (runSteps invoke operations state).trace = operations := by
  induction operations generalizing state with
  | nil => rfl
  | cons operation rest ih =>
      cases called : invoke operation state with
      | error error => simp [runSteps, called] at accepted
      | ok next =>
          simp only [runSteps, called] at accepted ⊢
          exact congrArg (List.cons operation) (ih next accepted)

theorem runSteps_failure_exact {State Error : Type} (invoke : Operation → State → Except Error State)
    (operations : List Operation) (state : State) (error : Error)
    (failed : (runSteps invoke operations state).result = .error error) :
    ∃ before operation after reached, operations = before ++ operation :: after ∧
      (runSteps invoke before state).result = .ok reached ∧ invoke operation reached = .error error ∧
      (runSteps invoke operations state).trace = before ++ [operation] := by
  induction operations generalizing state with
  | nil => simp [runSteps] at failed
  | cons operation rest ih =>
      cases called : invoke operation state with
      | error observed =>
          have same : observed = error := by simpa [runSteps, called] using failed
          subst observed
          exact ⟨[], operation, rest, state, rfl, rfl, called, by simp [runSteps, called]⟩
      | ok next =>
          have tail : (runSteps invoke rest next).result = .error error := by simpa [runSteps, called] using failed
          obtain ⟨before, failing, after, reached, split, earlier, failure, trace⟩ := ih next tail
          exact ⟨operation :: before, failing, after, reached, by simp [split],
            by simpa [runSteps, called] using earlier, failure, by simp [runSteps, called, trace]⟩

theorem execute_success_exact {State Error Receipt : Type} (host : Host State Error Receipt)
    (rawCount certificateRawCount : Nat) (state final : State) (receipt : Receipt)
    (accepted : (execute host rawCount certificateRawCount state).result = .ok (receipt, final)) :
    ∃ prepared verified,
      (runSteps host.step (program rawCount certificateRawCount) state).result = .ok prepared ∧
      host.verifyOutputs prepared = .ok (receipt, verified) ∧
      host.recordReceipt receipt verified = .ok final := by
  unfold execute at accepted
  cases steps : (runSteps host.step (program rawCount certificateRawCount) state).result with
  | error error => simp [steps] at accepted
  | ok prepared =>
      cases outputs : host.verifyOutputs prepared with
      | error error => simp [steps, outputs] at accepted
      | ok pair =>
          cases recorded : host.recordReceipt pair.1 pair.2 with
          | error error => simp [steps, outputs, recorded] at accepted
          | ok finalState =>
              have same : pair.1 = receipt ∧ finalState = final := by
                simpa [steps, outputs, recorded] using accepted
              obtain ⟨receiptSame, finalSame⟩ := same
              exact ⟨prepared, pair.2, rfl, by cases pair; simp_all,
                by simpa [receiptSame, finalSame] using recorded⟩

theorem execute_success_trace {State Error Receipt : Type} (host : Host State Error Receipt)
    (rawCount certificateRawCount : Nat) (state final : State) (receipt : Receipt)
    (accepted : (execute host rawCount certificateRawCount state).result = .ok (receipt, final)) :
    (execute host rawCount certificateRawCount state).trace =
      (program rawCount certificateRawCount).map Event.step ++ [.outputs, .receipt receipt] := by
  obtain ⟨prepared, verified, steps, outputs, recorded⟩ := execute_success_exact _ _ _ _ _ _ accepted
  have ordered := runSteps_success_trace host.step (program rawCount certificateRawCount) state prepared steps
  simp [execute, steps, outputs, recorded, ordered]

theorem execute_success_receipt_identity {State Error Receipt : Type} (host : Host State Error Receipt)
    (rawCount certificateRawCount : Nat) (state final : State) (receipt : Receipt)
    (accepted : (execute host rawCount certificateRawCount state).result = .ok (receipt, final)) :
    ∃ verified, host.recordReceipt receipt verified = .ok final := by
  obtain ⟨_, verified, _, _, recorded⟩ := execute_success_exact _ _ _ _ _ _ accepted
  exact ⟨verified, recorded⟩

theorem execute_success_call_count {State Error Receipt : Type} (host : Host State Error Receipt)
    (rawCount certificateRawCount : Nat) (state final : State) (receipt : Receipt)
    (accepted : (execute host rawCount certificateRawCount state).result = .ok (receipt, final)) :
    (execute host rawCount certificateRawCount state).trace.length = rawCount + certificateRawCount + 14 := by
  rw [execute_success_trace _ _ _ _ _ _ accepted]
  simp [program_length]

theorem execute_step_error_stops {State Error Receipt : Type} (host : Host State Error Receipt)
    (rawCount certificateRawCount : Nat) (state : State) (error : Error)
    (failed : (runSteps host.step (program rawCount certificateRawCount) state).result = .error error) :
    execute host rawCount certificateRawCount state =
      ⟨.error error, (runSteps host.step (program rawCount certificateRawCount) state).trace.map Event.step⟩ := by
  simp [execute, failed]

theorem execute_outputs_error_stops {State Error Receipt : Type} (host : Host State Error Receipt)
    (rawCount certificateRawCount : Nat) (state prepared : State) (error : Error)
    (steps : (runSteps host.step (program rawCount certificateRawCount) state).result = .ok prepared)
    (failed : host.verifyOutputs prepared = .error error) :
    execute host rawCount certificateRawCount state =
      ⟨.error error, (program rawCount certificateRawCount).map Event.step ++ [.outputs]⟩ := by
  simp [execute, steps, failed, runSteps_success_trace host.step _ state prepared steps]

theorem execute_receipt_error_exact {State Error Receipt : Type} (host : Host State Error Receipt)
    (rawCount certificateRawCount : Nat) (state prepared verified : State) (receipt : Receipt) (error : Error)
    (steps : (runSteps host.step (program rawCount certificateRawCount) state).result = .ok prepared)
    (outputs : host.verifyOutputs prepared = .ok (receipt, verified))
    (failed : host.recordReceipt receipt verified = .error error) :
    execute host rawCount certificateRawCount state =
      ⟨.error error, (program rawCount certificateRawCount).map Event.step ++ [.outputs, .receipt receipt]⟩ := by
  simp [execute, steps, outputs, failed, runSteps_success_trace host.step _ state prepared steps]

def acceptingHost (receipt : Nat) : Host Nat String Nat where
  step _ state := .ok (state + 1)
  verifyOutputs state := .ok (receipt, state + 1)
  recordReceipt _ state := .ok (state + 1)

theorem runSteps_increment_nonvacuous (operations : List Operation) (state : Nat) :
    runSteps (fun _ value => Except.ok (ε := String) (value+1)) operations state =
      ⟨.ok (state + operations.length), operations⟩ := by
  induction operations generalizing state with
  | nil => simp [runSteps]
  | cons operation rest ih => simp [runSteps, ih, Nat.add_comm, Nat.add_left_comm]

theorem application_success_nonvacuous (receipt rawCount certificateRawCount state : Nat) :
    (execute (acceptingHost receipt) rawCount certificateRawCount state).result =
      .ok (receipt, state + rawCount + certificateRawCount + 14) := by
  simp [execute, acceptingHost, runSteps_increment_nonvacuous, program_length, Nat.add_assoc]

theorem fixture_application_receipt_returned :
    (execute (acceptingHost 47) 1 2 0).result = .ok (47, 17) := by decide

theorem fixture_application_receipt_recorded :
    (execute (acceptingHost 47) 0 0 0).trace.getLast? = some (.receipt 47) := by decide

theorem fixture_empty_raw_still_verifies_outputs :
    (execute (acceptingHost 47) 0 0 0).trace.length = 14 := by decide

end GRWTSK.ApplicationOrchestration
