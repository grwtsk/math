# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnsetOption.Variantb81e80f8c5f689b23aac8627379c949cded1e656c9b7b8e87c444e2056943d39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d9929d02792afcff5fb5dee92c6b210c9f5968c` · SHA-256 `b81e80f8c5f689b23aac8627379c949cded1e656c9b7b8e87c444e2056943d39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
import Mathlib.Init
import Lean.Parser.Term
import Lean.Parser.Do
import Lean.Elab.Command

/-!
# The `unset_option` command

This file defines an `unset_option` user command, which unsets user configurable
options.
For example, inputting `set_option blah 7` and then `unset_option blah`
returns the user to the default state before any `set_option` command is called.
This is helpful when the user does not know the default value of the option or it
is cleaner not to write it explicitly, or for some options where the default
behaviour is different from any user set value.
-/

namespace Lean.Elab

variable {m : Type → Type} [Monad m] [MonadOptions m] [MonadRef m] [MonadInfoTree m]

/-- unset the option specified by id -/
def elabUnsetOption (id : Syntax) : m Options := do
  -- We include the first argument (the keyword) for position information in case `id` is `missing`.
  addCompletionInfo <| CompletionInfo.option (← getRef)
  unsetOption id.getId.eraseMacroScopes
where
  /-- unset the given option name -/
  unsetOption (optionName : Name) : m Options := return (← getOptions).erase optionName

namespace Command

/-- Unset a user option -/
elab (name := unsetOption) "unset_option " opt:ident : command => do
  let options ← Elab.elabUnsetOption opt
  modify fun s ↦ { s with maxRecDepth := maxRecDepth.get options }
  modifyScope fun scope ↦ { scope with opts := options }

end Command
end Lean.Elab
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=636a0124ccd1b582f2c2ce33bc2ba7ec89e431549de0f56acbbdfee3a6d1266e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsetOption/Variantb81e80f8c5f689b23aac8627379c949cded1e656c9b7b8e87c444e2056943d39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
