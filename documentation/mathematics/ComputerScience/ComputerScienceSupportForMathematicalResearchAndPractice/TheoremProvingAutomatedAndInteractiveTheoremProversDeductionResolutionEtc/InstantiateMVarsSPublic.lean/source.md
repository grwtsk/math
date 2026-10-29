# Instantiate MVars SPublic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ff60ddcb652776b372f545e00307bb8b5cb5782` · SHA-256 `45d9aa9b8c9a1e001c73ba784446d3cb30e9b60bcd325e2545ed99cc9f997aaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.SymM
namespace Lean.Meta.Sym

/--
Instantiates metavariables occurring in `e`, and returns a maximally shared term.
-/
public def instantiateMVarsS (e : Expr) : SymM Expr := do
  if e.hasMVar then
    -- **Note**: If this is a bottleneck, write a new function that combines both steps.
    shareCommon (← instantiateMVars e)
  else
    return e

/--
Head-only variant of `instantiateMVarsS`: instantiates and reshares only when the head of `e` is a
metavariable, otherwise returns `e` unchanged.
-/
public def instantiateMVarsIfMVarAppS (e : Expr) : SymM Expr := do
  if e.getAppFn.isMVar then
    instantiateMVarsS e
  else
    return e

end Lean.Meta.Sym
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56bfefdf79714e426be8c52bd01ca4bef64add44076cd620026f088f71548910 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVarsS/Variant45d9aa9b8c9a1e001c73ba784446d3cb30e9b60bcd325e2545ed99cc9f997aaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
