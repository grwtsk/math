# Lawful BEq Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c44bb25a7b342459ab3a319ebbd659ebe796ea7` · SHA-256 `dcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module

prelude
import Lean.Elab.Deriving.Basic
import Lean.Elab.Deriving.Util
import Init.LawfulBEqTactics

namespace Lean.Elab.Deriving.LawfulBEq
open Lean.Parser.Term
open Meta

open TSyntax.Compat in
open Parser.Tactic in
def mkLawfulBEqInstanceCmds (declName : Name) : TermElabM (Array Syntax) := do
  let indVal ← getConstInfoInduct declName
  if indVal.all.length > 1 then
    throwError "Deriving `LawfulBEq` for mutual inductives is not supported"
  if indVal.isNested then
    throwError "Deriving `LawfulBEq` for nested inductives is not supported"

  let argNames     ← mkInductArgNames indVal
  let binders      ← mkImplicitBinders argNames
  let binders      := binders ++ (← mkInstImplicitBinders ``BEq indVal argNames)
  let binders      := binders ++ (← mkInstImplicitBinders ``LawfulBEq indVal argNames)
  let indType      ← mkInductiveApp indVal argNames
  let type         ← `($(mkCIdent ``LawfulBEq) $indType)
  let instCmd ← `(
    instance $binders:implicitBinder* : $type := LawfulBEq.mk (by deriving_LawfulEq_tactic)
  )
  let cmds := #[instCmd]
  trace[Elab.Deriving.lawfulBEq] "\n{cmds}"
  return cmds

open Command

def mkLawfulBEqInstance (declName : Name) : CommandElabM Unit := do
  withoutExposeFromCtors declName do
    let cmds ← liftTermElabM <| mkLawfulBEqInstanceCmds declName
    cmds.forM elabCommand

def mkLawfulBEqInstanceHandler (declNames : Array Name) : CommandElabM Bool := do
  if (← declNames.allM isInductive) then
    for declName in declNames do
      mkLawfulBEqInstance declName
    return true
  else
    return false

builtin_initialize
  registerDerivingHandler ``LawfulBEq mkLawfulBEqInstanceHandler
  registerTraceClass `Elab.Deriving.lawfulBEq

end Lean.Elab.Deriving.LawfulBEq
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a50e198303db0232a9f7e7d42b3a813f1eb87756ff4c8ab4f62d03ea2b3b8ab7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variantdcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
