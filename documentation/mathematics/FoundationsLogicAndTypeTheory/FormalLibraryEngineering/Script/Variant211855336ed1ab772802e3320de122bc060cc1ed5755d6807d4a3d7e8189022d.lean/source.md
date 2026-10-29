# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Script.Variant211855336ed1ab772802e3320de122bc060cc1ed5755d6807d4a3d7e8189022d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `143e5f04cbe33c3e44bb26ca5c260c26205cb6c9` · SHA-256 `211855336ed1ab772802e3320de122bc060cc1ed5755d6807d4a3d7e8189022d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Prelude
import Lake.Config.Package  -- shake: keep (builtin macro output dependency)
import Lake.DSL.Attributes  -- shake: keep (builtin macro output dependency)
import Lake.DSL.Syntax

/-! # Script Declarations
DSL definitions to define a Lake script for a package.
-/

namespace Lake.DSL
open Lean Parser Command

@[builtin_macro scriptDecl]
def expandScriptDecl : Macro
| `($[$doc?]? $[$attrs?]? script%$kw $name $[$args?]? do $seq $[$wds?:whereDecls]?) => do
  `($[$doc?]? $[$attrs?]? script%$kw $name $[$args?]? := do $seq $[$wds?:whereDecls]?)
| `($[$doc?]? $[$attrs?]? script%$kw $name $[$args?]? := $defn $[$wds?:whereDecls]?) => withRef kw do
  let id := expandIdentOrStrAsIdent name
  let args ← expandOptSimpleBinder args?
  let attrs := #[← `(Term.attrInstance| «script»)] ++ expandAttrs attrs?
  `($[$doc?]? @[$attrs,*] def $id : ScriptFn := fun $args => $defn $[$wds?:whereDecls]?)
| stx => Macro.throwErrorAt stx "ill-formed script declaration"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8385fa4fe3ea41c7d8331e08aaa67683beb7c8d860d18e07d1b4a71272f2dbe3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Script/Variant211855336ed1ab772802e3320de122bc060cc1ed5755d6807d4a3d7e8189022d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
