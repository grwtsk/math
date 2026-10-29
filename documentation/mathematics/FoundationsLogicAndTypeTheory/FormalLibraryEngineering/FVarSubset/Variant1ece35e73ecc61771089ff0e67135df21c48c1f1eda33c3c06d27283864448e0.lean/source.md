# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FVarSubset.Variant1ece35e73ecc61771089ff0e67135df21c48c1f1eda33c3c06d27283864448e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74488dc17fe7d3f447e659fdef0d117a04cc4bd1` · SHA-256 `1ece35e73ecc61771089ff0e67135df21c48c1f1eda33c3c06d27283864448e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.CollectFVars
public import Lean.Util.FindExpr

public section

namespace Lean.Expr

/-- Returns true if the free variables in `a` are subset of the free variables in `b`. -/
def fvarsSubset (a b : Expr) : Bool :=
  if !a.hasFVar then
    true -- Empty set is subset of anything
  else if !b.hasFVar then
    false -- Empty set is not a superset of a nonempty set.
  else
    let s := collectFVars {} b
    Option.isNone <| a.findExt? fun e =>
      if !e.hasFVar then .done
      else if e.isFVar && !s.fvarSet.contains e.fvarId! then .found
      else .visit

end Lean.Expr
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a179fa9143112ab1b8630d4e44890151abd0dd87a7e71c48e16907d2efd7d05e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarSubset/Variant1ece35e73ecc61771089ff0e67135df21c48c1f1eda33c3c06d27283864448e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
