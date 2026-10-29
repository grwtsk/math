# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseTypes.Variant6af00c9e8a91b0297016753e0a7820ae3d0981c4f4a7f6e145bd3035ff6d0276

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a0b51fb3edd8b8964ac80d977d13b753bc90d9c` · SHA-256 `6af00c9e8a91b0297016753e0a7820ae3d0981c4f4a7f6e145bd3035ff6d0276`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM

public section

namespace Lean.Compiler.LCNF

/--
State for the environment extension used to save the LCNF base phase type for declarations
that do not have code associated with them.
Example: constructors, inductive types, foreign functions.
-/
builtin_initialize baseTypeExt : CacheExtension Name Expr ← CacheExtension.register

def getOtherDeclBaseType (declName : Name) (us : List Level) : CoreM Expr := do
  let info ← getConstInfo declName
  let type ← match (← baseTypeExt.find? declName) with
    | some type => pure type
    | none =>
      let type ← Meta.MetaM.run' <| toLCNFType info.type
      baseTypeExt.insert declName type
      pure type
  return type.instantiateLevelParamsNoCache info.levelParams us

end Lean.Compiler.LCNF
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=849fef492a75674d77596cfb644a660fbf0f4b732e8c82e1660b7dfed91a3740 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseTypes/Variant6af00c9e8a91b0297016753e0a7820ae3d0981c4f4a7f6e145bd3035ff6d0276.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
