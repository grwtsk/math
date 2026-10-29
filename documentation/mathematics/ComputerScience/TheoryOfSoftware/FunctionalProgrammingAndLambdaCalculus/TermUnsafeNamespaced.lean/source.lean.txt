-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkAuxName.Variant8fcf1925669a2f07d951e7d5b7d579bf021fd921a170a476c9fc65970275e361","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8fcf1925669a2f07d951e7d5b7d579bf021fd921a170a476c9fc65970275e361","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkAuxName.Variant8fcf1925669a2f07d951e7d5b7d579bf021fd921a170a476c9fc65970275e361","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8fcf1925669a2f07d951e7d5b7d579bf021fd921a170a476c9fc65970275e361","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Util/TermUnsafe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean.Elab.ElabRules
import Lean.Meta.Closure
import Lean.Compiler.ImplementedByAttr

/-!
Defines term syntax to call unsafe functions.

```
def cool :=
  unsafe (unsafeCast () : Nat)

#eval cool
```
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkAuxName.Variant8fcf1925669a2f07d951e7d5b7d579bf021fd921a170a476c9fc65970275e361

namespace Std.TermUnsafe
open Lean Meta Elab Term

/-- Construct an auxiliary name based on the current declaration name and the given `hint` base. -/
def mkAuxName (hint : Name) : TermElabM Name :=
  withFreshMacroScope do
    let name := (← getDeclName?).getD Name.anonymous ++ hint
    pure $ addMacroScope (← getMainModule) name (← getCurrMacroScope)

/--
`unsafe t : α` is an expression constructor which allows using unsafe declarations inside the
body of `t : α`, by creating an auxiliary definition containing `t` and using `implementedBy` to
wrap it in a safe interface. It is required that `α` is nonempty for this to be sound,
but even beyond that, an `unsafe` block should be carefully inspected for memory safety because
the compiler is unable to guarantee the safety of the operation.

For example, the `evalExpr` function is unsafe, because the compiler cannot guarantee that when
you call ```evalExpr Foo ``Foo e``` that the type `Foo` corresponds to the name `Foo`, but in a
particular use case, we can ensure this, so `unsafe (evalExpr Foo ``Foo e)` is a correct usage.
-/
elab "unsafe " t:term : term <= expectedType => do
  let mut t ← elabTerm t expectedType
  t ← instantiateMVars t
  if t.hasExprMVar then
    synthesizeSyntheticMVarsNoPostponing
    t ← instantiateMVars t
  if ← logUnassignedUsingErrorInfos (← getMVars t) then throwAbortTerm
  t ← mkAuxDefinitionFor (← mkAuxName `unsafe) t
  let Expr.const unsafeFn unsafeLvls .. := t.getAppFn | unreachable!
  let ConstantInfo.defnInfo unsafeDefn ← getConstInfo unsafeFn | unreachable!
  let implName ← mkAuxName `impl
  addDecl <| Declaration.defnDecl {
    name := implName
    type := unsafeDefn.type
    levelParams := unsafeDefn.levelParams
    value := ← mkOfNonempty unsafeDefn.type
    hints := ReducibilityHints.opaque
    safety := DefinitionSafety.safe
  }
  setImplementedBy implName unsafeFn
  pure $ mkAppN (mkConst implName unsafeLvls) t.getAppArgs
