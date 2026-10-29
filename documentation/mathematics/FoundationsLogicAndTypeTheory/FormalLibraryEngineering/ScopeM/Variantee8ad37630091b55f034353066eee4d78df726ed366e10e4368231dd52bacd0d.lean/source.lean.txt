-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScopeM.Variant555ea12e6be42a5e9be8eb3a22dc1d0dbc2ae748fcc7a971da7f63e23b64642a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"555ea12e6be42a5e9be8eb3a22dc1d0dbc2ae748fcc7a971da7f63e23b64642a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ScopeM.Variant555ea12e6be42a5e9be8eb3a22dc1d0dbc2ae748fcc7a971da7f63e23b64642a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"555ea12e6be42a5e9be8eb3a22dc1d0dbc2ae748fcc7a971da7f63e23b64642a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/ScopeM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Henrik Böving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScopeM.Variant555ea12e6be42a5e9be8eb3a22dc1d0dbc2ae748fcc7a971da7f63e23b64642a

public section

namespace Lean.Compiler.LCNF

/--
A general abstraction for the idea of a scope in the compiler.
-/
abbrev ScopeM := StateRefT FVarIdSet CompilerM

namespace ScopeM

def getScope : ScopeM FVarIdSet := get
def setScope (newScope : FVarIdSet) : ScopeM Unit := set newScope
def clearScope : ScopeM Unit := setScope {}

/--
Execute `x` but recover the previous scope after doing so.
-/
def withBackTrackingScope [MonadLiftT ScopeM m] [Monad m] [MonadFinally m] (x : m α) : m α := do
  let scope ← getScope
  try x finally setScope scope

/--
Clear the current scope for the monadic action `x`, afterwards continuing
with the old one.
-/
def withNewScope [MonadLiftT ScopeM m] [Monad m] [MonadFinally m] (x : m α) : m α := do
  withBackTrackingScope do
    clearScope
    x

/--
Check whether `fvarId` is in the current scope, that is, was declared within
the current `fun` declaration that is being processed.
-/
def isInScope (fvarId : FVarId) : ScopeM Bool := do
  let scope ← getScope
  return scope.contains fvarId

/--
Add a new `FVarId` to the current scope.
-/
def addToScope (fvarId : FVarId) : ScopeM Unit :=
  modify fun scope => scope.insert fvarId

end ScopeM

end Lean.Compiler.LCNF
