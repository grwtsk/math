# Monad Canon Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `521f7c45926c60665fd1740e965e706126eacbf9` · SHA-256 `2c2002ef04f6070cd4404191ebbff330fd63b840f22e3585e23027a736bb0cce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

class MonadCanon (m : Type → Type) where
  /--
  Canonicalize an expression (types, instances, support arguments).
  In `SymM`, this is `Sym.canon`. In `PP.M` (diagnostics), this is the identity.
  -/
  canonExpr : Expr → m Expr
  /--
  Synthesize an instance, returning `none` on failure.
  In `SymM`, this is `Sym.synthInstance?`. In `PP.M`, this is `Meta.synthInstance?`.
  -/
  synthInstance? : Expr → m (Option Expr)

export MonadCanon (canonExpr)

@[always_inline]
instance (m n) [MonadLift m n] [MonadCanon m] : MonadCanon n where
  canonExpr e := liftM (canonExpr e : m Expr)
  synthInstance? e := liftM (MonadCanon.synthInstance? e : m (Option Expr))

def MonadCanon.synthInstance [Monad m] [MonadError m] [MonadCanon m] (type : Expr) : m Expr := do
  let some inst ← synthInstance? type
    | throwError "failed to find instance{indentExpr type}"
  return inst

end Lean.Meta.Sym.Arith
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8141a9870cedb4a468170c8363ab018e353bed520e30baf8a68a4473a736f867 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCanon/Variant2c2002ef04f6070cd4404191ebbff330fd63b840f22e3585e23027a736bb0cce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
