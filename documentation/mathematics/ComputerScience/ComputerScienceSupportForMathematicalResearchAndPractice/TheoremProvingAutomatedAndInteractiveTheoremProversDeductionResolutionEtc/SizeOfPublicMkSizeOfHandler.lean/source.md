# Size Of Public Mk Size Of Handler — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7aa23ff17a53ed8702dacd5683bb54b20c260b10` · SHA-256 `d2eab39deb106ad07d503185b9fe2c32bf6e4496c966dfab7b434c8f7032d529`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.SizeOf
public import Lean.Elab.Deriving.Basic
import Lean.Elab.Deriving.Util

public section

/-!
Remark: `SizeOf` instances are automatically generated. We add support for `deriving instance` for `SizeOf`
just to be able to use them to define instances for types defined at `Prelude.lean`
-/

namespace Lean.Elab.Deriving.SizeOf

open Command

def mkSizeOfHandler (declNames : Array Name) : CommandElabM Bool := do
  if (← declNames.allM isInductive) then
    for declName in declNames do
      withoutExposeFromCtors declName <| liftTermElabM <| Meta.mkSizeOfInstances declName
    return true
  else
    return false

builtin_initialize
  registerDerivingHandler `SizeOf mkSizeOfHandler

end Lean.Elab.Deriving.SizeOf
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4caa39e40f84b35aafe925ea9992a322d4f80e59aeeb52fe8981ae6a2d9df4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantd2eab39deb106ad07d503185b9fe2c32bf6e4496c966dfab7b434c8f7032d529.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
