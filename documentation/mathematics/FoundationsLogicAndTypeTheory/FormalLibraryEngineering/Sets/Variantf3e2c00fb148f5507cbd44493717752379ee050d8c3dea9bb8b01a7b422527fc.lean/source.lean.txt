-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Linter.Variant89d505fc08be55248ee0c4b1d36145450e4ba81b203b5a9632babcd47986f02e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"89d505fc08be55248ee0c4b1d36145450e4ba81b203b5a9632babcd47986f02e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Linter.Variant89d505fc08be55248ee0c4b1d36145450e4ba81b203b5a9632babcd47986f02e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"89d505fc08be55248ee0c4b1d36145450e4ba81b203b5a9632babcd47986f02e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/Sets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
module

prelude
public meta import Lean.Linter.Init
public meta import Lean.Elab.Command
public import Init.Notation
import Lean.Data.KVMap


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Linter.Variant89d505fc08be55248ee0c4b1d36145450e4ba81b203b5a9632babcd47986f02e

public section

namespace Lean.Linter

/-- Add a new linter set that contains the given linters. -/
meta def insertLinterSet [MonadEnv m] (setName : Name) (linterNames : NameSet) : m Unit :=
  modifyEnv (linterSetsExt.addEntry · (setName, linterNames))

/-- `registerSet` wraps `registerOption` by setting relevant values. -/
meta def registerSet (setName : Name) (ref : Name := by exact decl_name%) : IO (Lean.Option Bool) := do
  registerOption setName {
    name := setName
    declName := ref
    defValue := false
    descr := ""
  }
  return { name := setName, defValue := false }

open Lean.Elab.Command in
/-- Declare a new linter set by giving the set of options that will be enabled along with the set. -/
elab doc?:(docComment)? "register_linter_set" name:ident " := " decl:ident* : command => do
  insertLinterSet name.getId <| decl.foldl (init := ∅) fun names name => names.insert name.getId
  let initializer ← `($[$doc?]? meta initialize $name : Lean.Option Bool ← Lean.Linter.registerSet $(quote name.getId))
  withMacroExpansion (← getRef) initializer <| elabCommand initializer

end Lean.Linter
