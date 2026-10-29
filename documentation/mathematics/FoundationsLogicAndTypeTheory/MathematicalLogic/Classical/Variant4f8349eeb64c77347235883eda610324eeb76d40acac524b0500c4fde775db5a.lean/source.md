# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Classical.Variant4f8349eeb64c77347235883eda610324eeb76d40acac524b0500c4fde775db5a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6abca3eecc9fa2734b7c31322ca5d9332b6eaa2c` · SHA-256 `4f8349eeb64c77347235883eda610324eeb76d40acac524b0500c4fde775db5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kim Morrison
-/
module

prelude
public import Lean.Elab.Tactic.Basic

public section

/-! # `classical` tactic -/

namespace Lean.Elab.Tactic
open Lean Meta Elab.Tactic

/--
`classical t` runs `t` in a scope where `Classical.propDecidable` is a low priority
local instance.
-/
def classical [Monad m] [MonadEnv m] [MonadFinally m] [MonadLiftT MetaM m] (t : m α) :
    m α := do
  modifyEnv Meta.instanceExtension.pushScope
  Meta.addInstance ``Classical.propDecidable .local 10
  try
    t
  finally
    modifyEnv Meta.instanceExtension.popScope

@[builtin_tactic Lean.Parser.Tactic.classical, builtin_incremental]
def evalClassical : Tactic := fun stx =>
  classical <| withSaveInfoContext <|
    Term.withNarrowedArgTacticReuse (argIdx := 1) Elab.Tactic.evalTactic stx

end Lean.Elab.Tactic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b897ea7cc3f317926264d8bddc5455cd3b7b488824f804c60b544e7fa72b5c19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classical/Variant4f8349eeb64c77347235883eda610324eeb76d40acac524b0500c4fde775db5a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
