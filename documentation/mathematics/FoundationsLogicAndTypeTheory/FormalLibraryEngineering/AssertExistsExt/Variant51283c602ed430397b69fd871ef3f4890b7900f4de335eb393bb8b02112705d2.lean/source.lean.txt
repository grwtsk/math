-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertExists.Variantded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AssertExists.Variantded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/AssertExistsExt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/

import Lean.Environment
import Mathlib.Init

/-!
# Environment extension for tracking existence of declarations and imports

This is used by the `assert_not_exists` and `assert_not_imported` commands.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertExists.Variantded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4

open Lean

namespace Mathlib.AssertNotExist

/-- `AssertExists` is the structure that carries the data to check if a declaration or an
import are meant to exist somewhere in Mathlib. -/
structure AssertExists where
  /-- The type of the assertion: `true` means declaration, `false` means import. -/
  isDecl : Bool
  /-- The fully qualified name of a declaration that is expected to exist. -/
  givenName : Name
  /-- The name of the module where the assertion was made. -/
  modName : Name
  deriving BEq, Hashable

/-- Defines the `assertExistsExt` extension for adding a `HashSet` of `AssertExists`s
to the environment. -/
initialize assertExistsExt : SimplePersistentEnvExtension AssertExists (Std.HashSet AssertExists) ←
  registerSimplePersistentEnvExtension {
    addImportedFn := fun as => as.foldl Std.HashSet.insertMany {}
    addEntryFn := .insert
  }

/--
`addDeclEntry isDecl declName mod` takes as input the `Bool`ean `isDecl` and the `Name`s of
a declaration or import, `declName`, and of a module, `mod`.
It extends the `AssertExists` environment extension with the data `isDecl, declName, mod`.
This information is used to capture declarations and modules that are required to not
exist/be imported at some point, but should eventually exist/be imported.
-/
def addDeclEntry {m : Type → Type} [MonadEnv m] (isDecl : Bool) (declName mod : Name) : m Unit :=
  modifyEnv (assertExistsExt.addEntry · { isDecl := isDecl, givenName := declName, modName := mod })

end Mathlib.AssertNotExist

open Mathlib.AssertNotExist

/-- `getSortedAssertExists env` returns the array of `AssertExists`, placing first all declarations,
in alphabetical order, and then all modules, also in alphabetical order. -/
def Lean.Environment.getSortedAssertExists (env : Environment) : Array AssertExists :=
  assertExistsExt.getState env |>.toArray.qsort fun d e => (e.isDecl < d.isDecl) ||
    (e.isDecl == d.isDecl && (d.givenName.toString < e.givenName.toString))
