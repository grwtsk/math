# Forall Public Dsimp Forall — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bd79fb978642719a88c49424414e3193381fbbf` · SHA-256 `0f903514c055f97eeb34a6274df07c0b11a3a20be6ce585720180fba74b9d39d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.DSimp.DSimpM
import Lean.Meta.Sym.AbstractS
import Lean.Meta.Sym.InstantiateS
namespace Lean.Meta.Sym.DSimp

/--
Definitionally simplifies a forall expression.

Unlike `Sym.Simp.simpForall`, it descends into the binder type as well as the
body.
-/
public def dsimpForall : DSimproc := fun e =>
  go e #[] false
where
  go (e : Expr) (fvars : Array Expr) (modified : Bool) : DSimpM Result := do
    match e with
    | .forallE n d b c =>
      -- Instantiate the binder domain against the already-introduced `fvars` *before* creating
      -- the local declaration, otherwise the decl retains loose bound variables referring to
      -- earlier binders in this telescope.
      let d ← instantiateRevBetaS d fvars
      match (← dsimp d) with
      | .rfl _ => withLocalDecl n c d fun x => go b (fvars.push x) modified
      | .step d' _ => withLocalDecl n c d' fun x => go b (fvars.push x) true
    | _ =>
      let r ← dsimp (← instantiateRevBetaS e fvars)
      match r with
      | .rfl _ =>
        if modified then
          return .step (← mkForallFVarsS fvars e)
        else
          return .rfl
      | .step e' _ =>
        return .step (← mkForallFVarsS fvars e')

end Lean.Meta.Sym.DSimp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2aa06449ca9d1e6d5dc272a38380a08ea1797432ba0e8ceb314dc736f0d5c4ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant0f903514c055f97eeb34a6274df07c0b11a3a20be6ce585720180fba74b9d39d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
