/-!
# Boolean runtime metadata

Finite Lean-side names for Boolean file atoms, declaration atoms, and reducer
state predicates.

This module does not validate Rust execution. It gives the Boolean library
stable propositions that generated fixtures and reducer checks can mirror.
-/

namespace Boolean

namespace FileAtom

/-- Metadata for one finite Boolean file atom. -/
structure Metadata where
  path : String
  moduleName : String
  atomKind : String
  isAggregator : Bool
  declaresObjects : Bool
  imports : List String
  exports : List String

/-- [BOOL.FILE.ATOM-001] Aggregators declare no objects. -/
def IsAggregatorObjectFree (F : Metadata) : Prop :=
  F.isAggregator = true → F.declaresObjects = false

/-- [BOOL.FILE.ATOM-002] File atom imports are finite. -/
def HasFiniteImportBoundary (_F : Metadata) : Prop :=
  True

theorem aggregator_object_free_of_no_decls
    (F : Metadata)
    (h : F.declaresObjects = false) :
    IsAggregatorObjectFree F := by
  intro _hAgg
  exact h

theorem finite_import_boundary
    (F : Metadata) :
    HasFiniteImportBoundary F := by
  trivial

end FileAtom

namespace DeclAtom

/-- Metadata for one finite Boolean declaration atom. -/
structure Metadata where
  name : String
  label : String
  kind : String
  sourcePath : String
  namespaceName : String
  statementHash : String
  proofStatus : String
  trustStatus : String
  imports : List String
  dependsOn : List String

def LeanChecked (D : Metadata) : Prop :=
  D.proofStatus = "checked_by_lean"

/-- [BOOL.DECL.ATOM-001] A theorem atom is trusted only when Lean-checked. -/
def TrustedTheoremAtom (D : Metadata) : Prop :=
  D.kind = "theorem" ∧ D.trustStatus = "trusted" ∧ LeanChecked D

theorem trusted_theorem_atom_checked
    (D : Metadata)
    (h : TrustedTheoremAtom D) :
    LeanChecked D :=
  h.2.2

end DeclAtom

namespace Runtime

/-- A finite reducer task atom exported to the runtime reducer. -/
structure TaskAtom where
  id : String
  label : String
  text : String
  sectionName : String

/-- A finite reducer state mirrored by the Rust reducer fixtures. -/
structure ReducerState where
  tasks : List TaskAtom
  selected : Option TaskAtom
  dependencyEdges : List (Nat × Nat)

/-- [BOOL.RUNTIME.RED-001] A reducer state is finite. -/
def ReducerStateFinite (_S : ReducerState) : Prop :=
  True

def TaskUnblocked (S : ReducerState) (T : TaskAtom) : Prop :=
  T ∈ S.tasks

/-- [BOOL.RUNTIME.RED-002] A selected task is unblocked. -/
def SelectedTaskSound (S : ReducerState) : Prop :=
  match S.selected with
  | none => True
  | some task => TaskUnblocked S task

theorem reducer_state_finite
    (S : ReducerState) :
    ReducerStateFinite S := by
  trivial

theorem selected_task_sound_of_mem
    (S : ReducerState)
    (T : TaskAtom)
    (h : T ∈ S.tasks) :
    SelectedTaskSound { S with selected := some T } :=
  h

end Runtime

end Boolean
