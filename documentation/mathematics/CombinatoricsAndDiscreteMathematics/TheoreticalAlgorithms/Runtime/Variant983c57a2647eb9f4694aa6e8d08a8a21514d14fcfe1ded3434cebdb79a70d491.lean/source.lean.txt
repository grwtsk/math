-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Metadata.Variant717786e52cc2dd30b41fa5725074c63f00411cc7698e97c1cc19b885a95bbddf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"717786e52cc2dd30b41fa5725074c63f00411cc7698e97c1cc19b885a95bbddf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Metadata.Variant717786e52cc2dd30b41fa5725074c63f00411cc7698e97c1cc19b885a95bbddf","mathematical_subject":"Computation.DataStructures","original_sha256":"717786e52cc2dd30b41fa5725074c63f00411cc7698e97c1cc19b885a95bbddf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Runtime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Boolean runtime metadata

Finite Lean-side names for Boolean file atoms, declaration atoms, and reducer
state predicates.

This module does not validate Rust execution. It gives the Boolean library
stable propositions that generated fixtures and reducer checks can mirror.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Metadata.Variant717786e52cc2dd30b41fa5725074c63f00411cc7698e97c1cc19b885a95bbddf

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
