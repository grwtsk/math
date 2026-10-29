# Ext Attr Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `025b7c1bba1f05acb923cad7239cac72e234f1bd` · SHA-256 `c734b3903e665a5291e7fbbccfc9e5030dcb8f96750d01ca89610ebad8fac724`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Ext
public import Lean.Meta.Tactic.Grind.Extension
public section
namespace Lean.Meta.Grind
/-! Grind extensionality attribute to mark which `[ext]` theorems should be used. -/

def validateExtAttr (declName : Name) : CoreM Unit := do
  if !(← Ext.isExtTheorem declName) then
  if !(isStructure (← getEnv) declName) then
    throwError "invalid `[grind ext]`, `{.ofConstName declName}` is neither tagged with `[ext]` nor is a structure"

def ExtTheorems.eraseDecl (s : ExtTheorems) (declName : Name) : CoreM ExtTheorems := do
  if s.contains declName then
    return s.erase declName
  else
    throwError "`{.ofConstName declName}` is not marked with the `[grind ext]` attribute"

end Lean.Meta.Grind
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7393020518857d546818031d6d8ad68e6507f9f2bbf97b644fa131b95e27131e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtAttr/Variantc734b3903e665a5291e7fbbccfc9e5030dcb8f96750d01ca89610ebad8fac724.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
