# Loose BVars SPublic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `228acff9cf67ee2a12f508f11f4c0187c47b6fed` · SHA-256 `7d76c0e4c2235af09852cbc57f63535f5b64d2df1def408521faa2466c36e6f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.ReplaceS
public section
namespace Lean.Meta.Sym
open Lean.Meta.Sym.Internal
/--
Lowers the loose bound variables `>= s` in `e` by `d`.
That is, a loose bound variable `bvar i` with `i >= s` is mapped to `bvar (i-d)`.
It assumes the input is maximally shared, and ensures the output is too.
Remark: if `s < d`, then the result is `e`.
-/
def lowerLooseBVarsS' (e : Expr) (s d : Nat) : AlphaShareBuilderM Expr := do
  replaceS' e fun e offset => do
    let s₁ := s + offset
    if s₁ >= e.looseBVarRange then
      return some e -- `e` does not contain bound variables with idx >= s₁
    else match e with
    | .bvar idx =>
      if idx >= s₁ then
        return some (← mkBVarS (idx - d))
      else
        return none
    | _ => return none

@[inherit_doc lowerLooseBVarsS']
def lowerLooseBVarsS (e : Expr) (s d : Nat) : SymM Expr :=
  liftBuilderM <| lowerLooseBVarsS' e s d

/--
Lifts loose bound variables `>= s` in `e` by `d`.
It assumes the input is maximally shared, and ensures the output is too.
-/
def liftLooseBVarsS' (e : Expr) (s d : Nat) : AlphaShareBuilderM Expr := do
  replaceS' e fun e offset => do
    let s₁ := s + offset
    if s₁ >= e.looseBVarRange then
      return some e -- `e` does not contain bound variables with idx >= s₁
    else match e with
    | .bvar idx =>
      if idx >= s₁ then
        return some (← mkBVarS (idx + d))
      else
        return none
    | _ => return none

@[inherit_doc liftLooseBVarsS']
def liftLooseBVarsS (e : Expr) (s d : Nat) : SymM Expr :=
  liftBuilderM <| liftLooseBVarsS' e s d

end Lean.Meta.Sym
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba815929eb66e35fd8de780c932e96ff234cf53cf077c1359855e3b472c98f9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LooseBVarsS/Variant7d76c0e4c2235af09852cbc57f63535f5b64d2df1def408521faa2466c36e6f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
