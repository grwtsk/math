# Aux Lemma Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc8a5bf2eb0b47579eb98ce755152d5fc70cc810` · SHA-256 `a48e1a8c42503bf86f0edc9682ab95eb628f6f5608fcb3a3a80abb9b8e6c3c88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.AddDecl
public import Lean.DefEqAttrib

public section

namespace Lean.Meta

structure AuxLemmaKey where
  type : Expr
  -- When an aux lemma is created in a private context and thus has a private name, we must not
  -- reuse it in an exported context.
  isPrivate : Bool
  -- Whether the theorem should be tagged with `[defeq]` (needs to happen before caching)
  defeq : Bool
deriving BEq, Hashable

structure AuxLemmas where
  lemmas : PHashMap AuxLemmaKey (Name × List Name) := {}
  deriving Inhabited

builtin_initialize auxLemmasExt : EnvExtension AuxLemmas ←
  registerEnvExtension (pure {}) (asyncMode := .local)  -- a mere cache, keep local

/--
  Helper method for creating auxiliary lemmas in the environment.

  It uses a cache that maps `type` to declaration name. The cache is not stored in `.olean` files.
  It is useful to make sure the same auxiliary lemma is not created over and over again in the same
  environment branch. For expensive auxiliary lemmas that should be deduplicated even across
  different environment branches, consider using `realizeConst` instead.

  This method is useful for tactics (e.g., `simp`) that may perform preprocessing steps to lemmas provided by
  users. For example, `simp` preprocessor may convert a lemma into multiple ones.
-/
def mkAuxLemma (levelParams : List Name) (type : Expr) (value : Expr) (kind? : Option Name := none)
    (cache := true) (inferRfl := false) (forceExpose := false) (defeq := false) : MetaM Name := do
  let env ← getEnv
  let s := auxLemmasExt.getState env
  let key := { type, isPrivate := !env.isExporting, defeq }
  let mkNewAuxLemma := do
    let auxName ← mkAuxDeclName (kind := kind?.getD `_proof)
    let decl :=
      if env.hasUnsafe type || env.hasUnsafe value then
        -- `result` contains unsafe code, thus we cannot use a theorem.
        Declaration.defnDecl {
          name        := auxName
          hints       := ReducibilityHints.opaque
          safety      := DefinitionSafety.unsafe
          levelParams, type, value
        }
      else
        Declaration.thmDecl {
          name := auxName
          levelParams, type, value
        }
    addDecl (forceExpose := forceExpose) decl
    if defeq then defeqAttr.setTag auxName
    if inferRfl then
      inferDefEqAttr auxName
    modifyEnv fun env => auxLemmasExt.modifyState env fun ⟨lemmas⟩ => ⟨lemmas.insert key (auxName, levelParams)⟩
    return auxName
  if cache then
    if let some (name, levelParams') := s.lemmas.find? key then
      if levelParams == levelParams' then
        return name
    -- private contexts may reuse public matchers
    if key.isPrivate then
      if let some (name, levelParams') := s.lemmas.find? { key with isPrivate := false } then
        if levelParams == levelParams' then
          return name
  mkNewAuxLemma

end Lean.Meta
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b6ffad0226b17e5ba4eeda43128079e8b27be3281f28d4d392853682b91e893 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AuxLemma/Varianta48e1a8c42503bf86f0edc9682ab95eb628f6f5608fcb3a3a80abb9b8e6c3c88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
