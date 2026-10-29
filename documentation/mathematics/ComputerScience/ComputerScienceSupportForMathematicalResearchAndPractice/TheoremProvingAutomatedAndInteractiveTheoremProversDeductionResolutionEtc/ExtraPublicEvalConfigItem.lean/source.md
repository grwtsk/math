# Extra Public Eval Config Item — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5acd33639e23c144b84b4c3d8cdcd11ecc1db49` · SHA-256 `082fb8efe9f1ff2c845242471624104074573db8500affa20c9eea747c6b1495`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

prelude
public import Lean.Elab.ConfigEval.Instances

public section

namespace Lean.Elab.ConfigEval

open Meta Term

/--
Uses global option declarations with the prefix `optionPrefix` when setting `Options`.
Assumes that `item` is shifted, with the rest of the item being the option name suffix to use.
-/
def EvalConfigItem.evalSetOptions (optionPrefix : Name) (opts : Options) (item : ConfigItem) : TermElabM Options := do
  let optName := optionPrefix ++ item.getCurrOptionName
  -- TODO(kmill): record `optionPrefix` so that LSP can make correct suggestions
  addCompletionInfo <| CompletionInfo.option (mkNullNode #[item.prevRoot, mkNullNode item.optionComps.toArray])
  let decl ← getOptionDecl optName
  pushInfoLeaf <| .ofOptionInfo { stx := item.option, optionName := optName, declName := decl.declName }
  let set (α : Type) [EvalTerm α] [EvalExpr α] [KVMap.Value α] : TermElabM Options := do
    let value : α ← evalTermOrExprWithElab ⟨item.value⟩
    return opts.set optName value
  match decl.defValue with
  | .ofBool _   => set Bool
  | .ofNat _    => item.checkNotBool; set Nat
  | .ofInt _    => item.checkNotBool; set Int
  | .ofString _ => item.checkNotBool; set String
  | .ofName _   => item.checkNotBool; set Name
  | .ofSyntax _ => throwErrorAt item.option "Cannot set `Syntax` option `{optName}`"

end Lean.Elab.ConfigEval
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93d9a78e4a5e11fb837eb50bc6a790df15b5a73872680b1857d7e3eb89c31d57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variant082fb8efe9f1ff2c845242471624104074573db8500affa20c9eea747c6b1495.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
