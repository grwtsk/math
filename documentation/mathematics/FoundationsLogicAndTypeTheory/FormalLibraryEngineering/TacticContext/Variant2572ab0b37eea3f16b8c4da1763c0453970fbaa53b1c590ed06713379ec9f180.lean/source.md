# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticContext.Variant2572ab0b37eea3f16b8c4da1763c0453970fbaa53b1c590ed06713379ec9f180

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `578189dbe40d2d5fe2713a569ef25ca8f4f75126` · SHA-256 `2572ab0b37eea3f16b8c4da1763c0453970fbaa53b1c590ed06713379ec9f180`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Meta.Tactic.BVDecide.Attr

public section

/-!
This module contains the logic around writing proofs of UNSAT, using LRAT proofs, as meta code.
-/

namespace Lean.Meta.Tactic.BVDecide

open Elab.Term
open Elab.Tactic.BVDecide

/--
The context for the `bv_decide` tactic.
-/
structure TacticContext where
  exprDef : Name
  certDef : Name
  reflectionDef : Name
  solver : System.FilePath
  lratPath : System.FilePath
  config : BVDecideConfig

def TacticContext.new (lratPath : System.FilePath) (config : BVDecideConfig) :
    TermElabM TacticContext := do
  let exprDef ← Lean.Elab.Term.mkAuxName `_expr_def
  let certDef ← Lean.Elab.Term.mkAuxName `_cert_def
  let reflectionDef ← Lean.Elab.Term.mkAuxName `_reflection_def
  let solver ← determineSolver
  trace[Meta.Tactic.sat] m!"Using SAT solver at '{solver}'"
  return {
    exprDef,
    certDef,
    reflectionDef,
    solver,
    lratPath,
    config
  }
where
  determineSolver : CoreM System.FilePath := do
    let opts ← getOptions
    let option := sat.solver.get opts
    if option == "" then
      let cadicalPath := (← IO.appPath).parent.get! / "cadical" |>.withExtension System.FilePath.exeExtension
      if ← cadicalPath.pathExists then
        return cadicalPath
      else
        return "cadical"
    else
      return option

end Lean.Meta.Tactic.BVDecide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79e6aa851bc522d73f53fcb7b8483a90e95e4f6077829779ed8bc4263e8cce18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticContext/Variant2572ab0b37eea3f16b8c4da1763c0453970fbaa53b1c590ed06713379ec9f180.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
