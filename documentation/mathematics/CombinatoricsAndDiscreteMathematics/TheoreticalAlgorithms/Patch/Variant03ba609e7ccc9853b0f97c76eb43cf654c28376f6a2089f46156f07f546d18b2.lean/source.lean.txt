-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LemmaCandidate.Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.LemmaCandidate.Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279","mathematical_subject":"Computation.DataStructures","original_sha256":"5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/Patch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.GoalGraph

/-!
# Structured proof patches

Search proposes this finite IR.  There is intentionally no constructor that
changes a theorem statement or claims kernel acceptance.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LemmaCandidate.Variant5db784b45d7d742b785029dd1dde2809fb3d1b902a8f6ff713cf48d01fffa279

public section

namespace Surface.Core

open Lean

/-- A proposed local declaration; it has no authority until Lean accepts it. -/
@[surface_novel]
structure LemmaCandidate where
  localName : Name
  type : String
  proofBody : String
  provenance : Provenance
deriving Repr

@[surface_novel]
inductive RewriteDirection where
  | forward
  | reverse
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure SourceRange where
  startByte : Nat
  endByte : Nat
deriving DecidableEq, Repr

/-- Typed edits admissible to the untrusted search system. -/
@[surface_novel]
inductive ProofPatch where
  | addImport (moduleName : Name)
  | removeImport (moduleName : Name)
  | applyTheorem (theoremName : Name) (substitutions : List (Name × String))
  | rewriteAt (goal : GoalCellId) (location : String)
      (theoremName : Name) (direction : RewriteDirection)
  | replaceProofBody (proofBody : String)
  | fillGoal (goal : GoalCellId) (term : String)
  | replaceTerm (range : SourceRange) (expectedTypeHash : Digest) (typedTerm : String)
  | insertAuxiliary (candidate : LemmaCandidate)
  | renameAuxiliary (oldName newName : Name)
  | deleteRedundantLemma (name : Name)
deriving Repr

/-- Every patch preserves the task identity by construction. -/
@[expose] def ProofPatch.applyTask (_patch : ProofPatch) (task : TheoremTask) : TheoremTask :=
  task

@[surface_novel, surface_published, simp] theorem ProofPatch.applyTask_eq
    (patch : ProofPatch) (task : TheoremTask) :
    patch.applyTask task = task := rfl

end Surface.Core
