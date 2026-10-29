# Internal Public Options — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `078d4e457a810e668ff2ff1fe49f8b857e7389d8` · SHA-256 `876ba63e306f608719c5dece7d92266cef9dda97e604b5b6860a9a2ba99f8e18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Check
public import Aesop.Options.Public

public section

open Lean
open Lean.Meta

namespace Aesop

structure Options' extends Options where
  generateScript : Bool
  forwardMaxDepth? : Option Nat
  deriving Inhabited

def Options.toOptions' [Monad m] [MonadOptions m] (opts : Options)
    (forwardMaxDepth? : Option Nat := none) : m Options' := do
  let generateScript ←
    pure (aesop.dev.generateScript.get (← getOptions)) <||>
    pure opts.traceScript <||>
    Check.script.isEnabled <||>
    Check.script.steps.isEnabled
  return { opts with generateScript, forwardMaxDepth? }

end Aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=636197dbe330ac57a258bdc18c97aa7894a3cf91dc84e7b3c39cd890cd58f869 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internal/Variant876ba63e306f608719c5dece7d92266cef9dda97e604b5b6860a9a2ba99f8e18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
