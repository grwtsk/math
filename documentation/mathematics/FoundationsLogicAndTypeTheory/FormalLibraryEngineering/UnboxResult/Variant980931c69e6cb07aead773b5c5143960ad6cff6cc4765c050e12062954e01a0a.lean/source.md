# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnboxResult.Variant980931c69e6cb07aead773b5c5143960ad6cff6cc4765c050e12062954e01a0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54ab90c2c910c58565b2683615d49307598f52c4` · SHA-256 `980931c69e6cb07aead773b5c5143960ad6cff6cc4765c050e12062954e01a0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.IR.Basic

public section

namespace Lean.IR.UnboxResult

/--
Tags types that the compiler should unbox if they occur in result values.

This attribute currently has no effect.
-/
@[builtin_doc]
builtin_initialize unboxAttr : TagAttribute ←
  registerTagAttribute `unbox "compiler tries to unbox result values if their types are tagged with `[unbox]`" fun declName => do
    let cinfo ← getConstInfo declName;
    match cinfo with
    | ConstantInfo.inductInfo v =>
      if v.isRec then throwError "Cannot add attribute `[unbox]` to `{.ofConstName declName}`: Recursive inductive datatypes are not supported"
      else pure ()
    | _ => throwError "Cannot add attribute `[unbox]` to `{.ofConstName declName}`: `[unbox]` can only be added to inductive types"

def hasUnboxAttr (env : Environment) (n : Name) : Bool :=
  unboxAttr.hasTag env n

end Lean.IR.UnboxResult
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bea3fe9a08a38ba8a4fe7b6b302f356d59a1e78990c4b810f59d83168d3e5c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnboxResult/Variant980931c69e6cb07aead773b5c5143960ad6cff6cc4765c050e12062954e01a0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
