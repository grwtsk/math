/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.

Pure referential-integrity envelope for declaration-level conceptual seam plans.
This module performs no parsing, classification, filesystem mutation, Lean
execution, Git operation, or attribution decision.

Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #403. Stacked PR: #407.
-/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalOrganization.ConceptualSeamPlan
import Mathlib.Data.List.Basic

set_option autoImplicit false

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalOrganization.ConceptualSeamIntegrity

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalOrganization.SubjectPlacement
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalOrganization.ConceptualSeamPlan

/-- Exact bytes owned by one command ordinal. -/
structure CommandBytePiece where
  commandOrdinal : Nat
  bytes : List Nat
  deriving DecidableEq, Repr

/-- Ordered command-byte payload. -/
def commandBytePayload (pieces : List CommandBytePiece) : List Nat :=
  pieces.flatMap CommandBytePiece.bytes

/-- Command-byte pieces match commands one-for-one, preserve ordinals, and have
exactly the length of the command's half-open source span. -/
def CommandBytesAlign : List CommandUnit → List CommandBytePiece → Prop
  | [], [] => True
  | command :: commands, piece :: pieces =>
      piece.commandOrdinal = command.identity.ordinal ∧
      piece.bytes.length =
        command.identity.span.stop - command.identity.span.start ∧
      CommandBytesAlign commands pieces
  | _, _ => False

/-- Adjacent observed commands agree on the context crossing their seam. -/
def ContextsContinuous : List CommandUnit → Prop
  | [] => True
  | [_] => True
  | first :: second :: rest =>
      first.contextAfter = second.contextBefore ∧
      ContextsContinuous (second :: rest)

/-- Every command identity is bound to the plan's exact source occurrence. -/
def CommandSourcesMatch (plan : SeamPlan) : Prop :=
  ∀ command ∈ plan.commands,
    command.identity.source = plan.source

/-- Every attached declaration identifies its actual enclosing command. -/
def DeclarationOriginsBound (commands : List CommandUnit) : Prop :=
  ∀ command ∈ commands,
    ∀ origin ∈ command.declarations,
      origin.commandOrdinal = command.identity.ordinal

/-- Every dependency endpoint names an observed source command. -/
def DependencyEndpointsBound (commands : List CommandUnit)
    (dependencies : List DependencyEdge) : Prop :=
  ∀ edge ∈ dependencies,
    edge.consumer ∈ commandOrdinals commands ∧
      edge.provider ∈ commandOrdinals commands

/-- Slice identities are unique independently of command coverage. -/
def UniqueSliceOrdinals (slices : List ConceptualSlice) : Prop :=
  (slices.map ConceptualSlice.ordinal).Nodup

/-- Every selected target module occurs in the declared result-module order. -/
def SelectedTargetsDeclared (slices : List ConceptualSlice)
    (resultModuleOrder : List String) : Prop :=
  ∀ slice ∈ slices,
    ∀ target,
      slice.selectedTargetModule = some target →
        target ∈ resultModuleOrder

/-- Every result dependency refers to declared result modules. -/
def ModuleDependencyEndpointsDeclared
    (resultModuleOrder : List String)
    (dependencies : List ModuleDependency) : Prop :=
  ∀ edge ∈ dependencies,
    edge.consumer ∈ resultModuleOrder ∧
      edge.provider ∈ resultModuleOrder

/-- Every fingerprint designated as a source-public declaration was actually
observed among command-owned declarations. -/
def SourcePublicFingerprintsObserved (plan : SeamPlan) : Prop :=
  ∀ fingerprint ∈ plan.sourcePublicFingerprints,
    fingerprint ∈ plan.observedDeclarations

/-- Strong acceptance envelope for a pure seam plan. It closes referential and
reconstruction gaps that cannot be inferred from list lengths or hashes. -/
structure AcceptedSeamPlan where
  plan : SeamPlan
  commandBytes : List CommandBytePiece
  commandBytesAligned :
    CommandBytesAlign plan.commands commandBytes
  commandBytesReconstructSource :
    commandBytePayload commandBytes = plan.sourceBytes
  commandSourcesMatch :
    CommandSourcesMatch plan
  declarationOriginsBound :
    DeclarationOriginsBound plan.commands
  dependencyEndpointsBound :
    DependencyEndpointsBound plan.commands plan.dependencies
  contextsContinuous :
    ContextsContinuous plan.commands
  uniqueSliceOrdinals :
    UniqueSliceOrdinals plan.slices
  selectedTargetsDeclared :
    SelectedTargetsDeclared plan.slices plan.resultModuleOrder
  moduleDependencyEndpointsDeclared :
    ModuleDependencyEndpointsDeclared
      plan.resultModuleOrder plan.resultModuleDependencies
  sourcePublicFingerprintsObserved :
    SourcePublicFingerprintsObserved plan

namespace AcceptedSeamPlan

/-- The command payload, rather than an unrelated equality field, reconstructs
the exact source bytes. -/
theorem reconstructedBytes_eq_commandPayload
    (accepted : AcceptedSeamPlan) :
    accepted.plan.reconstructedBytes =
      commandBytePayload accepted.commandBytes := by
  calc
    accepted.plan.reconstructedBytes = accepted.plan.sourceBytes :=
      accepted.plan.exactReconstruction
    _ = commandBytePayload accepted.commandBytes :=
      accepted.commandBytesReconstructSource.symm

/-- Result-public declarations are observed because the source-public surface
is observed and the base plan proves exact public-signature preservation. -/
theorem resultPublicFingerprintsObserved
    (accepted : AcceptedSeamPlan) :
    ∀ fingerprint ∈ accepted.plan.resultPublicFingerprints,
      fingerprint ∈ accepted.plan.observedDeclarations := by
  intro fingerprint resultMember
  apply accepted.sourcePublicFingerprintsObserved
  rw [← accepted.plan.publicSignaturesPreserved]
  exact resultMember

/-- Every selected target is a declared result module. -/
theorem selectedTarget_mem_resultModuleOrder
    (accepted : AcceptedSeamPlan)
    (slice : ConceptualSlice) (sliceMember : slice ∈ accepted.plan.slices)
    (target : String) (selected : slice.selectedTargetModule = some target) :
    target ∈ accepted.plan.resultModuleOrder :=
  accepted.selectedTargetsDeclared slice sliceMember target selected

/-- Every dependency endpoint belongs to the observed command set. -/
theorem dependencyEndpoints_mem_commands
    (accepted : AcceptedSeamPlan)
    (edge : DependencyEdge) (edgeMember : edge ∈ accepted.plan.dependencies) :
    edge.consumer ∈ commandOrdinals accepted.plan.commands ∧
      edge.provider ∈ commandOrdinals accepted.plan.commands :=
  accepted.dependencyEndpointsBound edge edgeMember

/-- Every declared module dependency has both endpoints in the result order. -/
theorem moduleDependencyEndpoints_mem_order
    (accepted : AcceptedSeamPlan)
    (edge : ModuleDependency)
    (edgeMember : edge ∈ accepted.plan.resultModuleDependencies) :
    edge.consumer ∈ accepted.plan.resultModuleOrder ∧
      edge.provider ∈ accepted.plan.resultModuleOrder :=
  accepted.moduleDependencyEndpointsDeclared edge edgeMember

end AcceptedSeamPlan

/-- Two-command context continuity is exactly equality at their boundary. -/
theorem contextsContinuous_pair_iff (first second : CommandUnit) :
    ContextsContinuous [first, second] ↔
      first.contextAfter = second.contextBefore := by
  simp [ContextsContinuous]

/-- An orphan dependency endpoint makes the integrity predicate fail. -/
theorem orphan_dependency_rejected
    (commands : List CommandUnit) (dependencies : List DependencyEdge)
    (edge : DependencyEdge) (edgeMember : edge ∈ dependencies)
    (orphan : edge.consumer ∉ commandOrdinals commands) :
    ¬ DependencyEndpointsBound commands dependencies := by
  intro bounded
  exact orphan (bounded edge edgeMember).1

/-- A selected target missing from the result order is rejected. -/
theorem undeclared_selected_target_rejected
    (slices : List ConceptualSlice) (order : List String)
    (slice : ConceptualSlice) (sliceMember : slice ∈ slices)
    (target : String) (selected : slice.selectedTargetModule = some target)
    (missing : target ∉ order) :
    ¬ SelectedTargetsDeclared slices order := by
  intro declared
  exact missing (declared slice sliceMember target selected)

/-- Matching byte counts without matching command ordinals is not alignment. -/
theorem wrong_command_ordinal_rejected
    (command : CommandUnit) (piece : CommandBytePiece)
    (wrong : piece.commandOrdinal ≠ command.identity.ordinal) :
    ¬ CommandBytesAlign [command] [piece] := by
  intro aligned
  exact wrong aligned.1

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalOrganization.ConceptualSeamIntegrity
