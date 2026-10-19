module

public import Surface.Refactor.Project

/-! # Immutable refactor tasks -/

public section

namespace Surface.Refactor

open Lean Surface.Core

@[surface_novel]
inductive RefactorIntent where
  | prove
  | repair
  | refactor
  | deduplicate
  | modernize
  | moveDeclaration
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure RefactorBudget where
  maxModelCalls : Nat
  maxRepairRounds : Nat
  maxPatchOperations : Nat
  maxInputTokens : Nat
  maxOutputTokens : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure RefactorInvariantPolicy where
  preserveDeclarationName : Bool := true
  preserveNormalizedType : Bool := true
  preserveSourceModule : Bool := true
  preservePublicApi : Bool := true
  axiomClosureEqualOrSubset : Bool := true
  forbidCandidateDependencies : Bool := true
  forbidLegacyDependencies : Bool := true
deriving DecidableEq, Repr

/-- Wraps the existing proposition-owning task.  There is no replacement
statement field. -/
@[surface_novel]
structure TheoremRefactorTask where
  schema : String
  requestId : String
  baseProjectFingerprint : EnvironmentFingerprint
  theoremTask : TheoremTask
  sourcePath : ProjectRelativePath
  sourceHash : ContentHash256
  normalizedTypeHash : ContentHash256
  allowedPaths : List ProjectRelativePath
  intent : RefactorIntent
  invariantPolicy : RefactorInvariantPolicy
  budget : RefactorBudget
  provenance : Provenance
  authorityCeiling : RefactorAuthority

/-- Non-theorem declarations have a separate task and no fabricated `Prop`. -/
@[surface_novel]
structure DeclarationRefactorTask where
  schema : String
  requestId : String
  baseProjectFingerprint : EnvironmentFingerprint
  declarationName : Name
  targetModule : LeanModulePath
  declarationKind : DeclarationKind
  sourcePath : ProjectRelativePath
  sourceHash : ContentHash256
  normalizedTypeHash : ContentHash256
  allowedPaths : List ProjectRelativePath
  intent : RefactorIntent
  invariantPolicy : RefactorInvariantPolicy
  budget : RefactorBudget
  provenance : Provenance
  authorityCeiling : RefactorAuthority
deriving Repr

@[surface_novel]
inductive RefactorTask where
  | theoremTask (task : TheoremRefactorTask)
  | declarationTask (task : DeclarationRefactorTask)

@[expose] def TheoremRefactorTask.statementIdentity
    (task : TheoremRefactorTask) : Digest :=
  task.theoremTask.statementHash

@[expose] def TheoremRefactorTask.targetModule
    (task : TheoremRefactorTask) : Name :=
  task.theoremTask.targetModule

@[surface_novel, surface_published]
theorem theorem_refactor_task_statement_identity_fixed
    (task : TheoremRefactorTask) :
    task.statementIdentity = task.theoremTask.statementHash :=
  rfl

@[surface_novel, surface_published]
theorem theorem_refactor_task_target_module_fixed
    (task : TheoremRefactorTask) :
    task.targetModule = task.theoremTask.targetModule :=
  rfl

@[surface_novel, surface_published]
theorem declaration_task_is_not_theorem_task
    (declaration : DeclarationRefactorTask) (theoremTask : TheoremRefactorTask) :
    RefactorTask.declarationTask declaration ≠ .theoremTask theoremTask := by
  intro h
  cases h

@[expose] def RefactorBudget.Allows
    (budget : RefactorBudget) (modelCalls repairRounds operations : Nat) : Prop :=
  modelCalls ≤ budget.maxModelCalls ∧
    repairRounds ≤ budget.maxRepairRounds ∧
    operations ≤ budget.maxPatchOperations

@[surface_novel, surface_published]
theorem budget_bounds_model_operations (budget : RefactorBudget)
    (modelCalls repairRounds operations : Nat)
    (h : budget.Allows modelCalls repairRounds operations) :
    modelCalls ≤ budget.maxModelCalls ∧
      repairRounds ≤ budget.maxRepairRounds ∧
      operations ≤ budget.maxPatchOperations :=
  h

end Surface.Refactor

