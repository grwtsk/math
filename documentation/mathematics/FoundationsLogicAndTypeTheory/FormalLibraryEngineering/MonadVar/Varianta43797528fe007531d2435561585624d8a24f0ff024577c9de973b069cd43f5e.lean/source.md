# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadVar.Varianta43797528fe007531d2435561585624d8a24f0ff024577c9de973b069cd43f5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99c172fa2603bbb5774e3512b37bd8a2069c08c4` · SHA-256 `a43797528fe007531d2435561585624d8a24f0ff024577c9de973b069cd43f5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Arith.Types
public section
namespace Lean.Meta.Sym.Arith

/-- Read a variable's Lean expression by index. Used by `DenoteExpr` and diagnostics (PP). -/
class MonadGetVar (m : Type → Type) where
  getVar : Var → m Expr

export MonadGetVar (getVar)

@[always_inline]
instance (m n) [MonadLift m n] [MonadGetVar m] : MonadGetVar n where
  getVar x := liftM (getVar x : m Expr)

/-- Create or lookup a variable for a Lean expression. Used by reification. -/
class MonadMkVar (m : Type → Type) where
  mkVar : Expr → m Var

export MonadMkVar (mkVar)

@[always_inline]
instance (m n) [MonadLift m n] [MonadMkVar m] : MonadMkVar n where
  mkVar e := liftM (mkVar e : m Var)

end Lean.Meta.Sym.Arith
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05acda7a16707078192643b78f764dfa185055f0933f3283527381bc7c7b545a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadVar/Varianta43797528fe007531d2435561585624d8a24f0ff024577c9de973b069cd43f5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
