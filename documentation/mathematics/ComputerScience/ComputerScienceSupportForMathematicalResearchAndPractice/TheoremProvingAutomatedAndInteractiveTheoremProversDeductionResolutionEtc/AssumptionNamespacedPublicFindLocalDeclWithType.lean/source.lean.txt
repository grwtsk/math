-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindLocalDeclWithType.Variant9acc84bb2f2243a7ffb80dfb1b45e5ee7652042374ef5add6725033c035be562","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9acc84bb2f2243a7ffb80dfb1b45e5ee7652042374ef5add6725033c035be562","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FindLocalDeclWithType.Variant9acc84bb2f2243a7ffb80dfb1b45e5ee7652042374ef5add6725033c035be562","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9acc84bb2f2243a7ffb80dfb1b45e5ee7652042374ef5add6725033c035be562","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Assumption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Util


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindLocalDeclWithType.Variant9acc84bb2f2243a7ffb80dfb1b45e5ee7652042374ef5add6725033c035be562

public section

namespace Lean.Meta

/-- Return a local declaration whose type is definitionally equal to `type`. -/
def findLocalDeclWithType? (type : Expr) : MetaM (Option FVarId) := do
  (← getLCtx).findDeclRevM? fun localDecl => do
    if localDecl.isImplementationDetail then
      return none
    else if (← isDefEq type localDecl.type) then
      return some localDecl.fvarId
    else
      return none

/-- Return `true` if managed to close goal `mvarId` using an assumption. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindLocalDeclWithType.Variant9acc84bb2f2243a7ffb80dfb1b45e5ee7652042374ef5add6725033c035be562.Lean.MVarId.assumptionCore (mvarId : MVarId) : MetaM Bool :=
  mvarId.withContext do
    mvarId.checkNotAssigned `assumption
    match (← findLocalDeclWithType? (← mvarId.getType)) with
    | none => return false
    | some fvarId => mvarId.assign (mkFVar fvarId); return true

/-- Close goal `mvarId` using an assumption. Throw error message if failed. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindLocalDeclWithType.Variant9acc84bb2f2243a7ffb80dfb1b45e5ee7652042374ef5add6725033c035be562.Lean.MVarId.assumption (mvarId : MVarId) : MetaM Unit :=
  unless (← mvarId.assumptionCore) do
    throwTacticEx `assumption mvarId

end Lean.Meta
