# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OtherDecl.Variantcb137113a603520d0553a2d5553f60f1c66425a5a79613edade23b45c7a5fd95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a09e23d6f39bb7e87e7a5b10c2f0fc7556575cd4` · SHA-256 `cb137113a603520d0553a2d5553f60f1c66425a5a79613edade23b45c7a5fd95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM
import Lean.Compiler.LCNF.MonoTypes
import Lean.Compiler.LCNF.ToImpureType

public section

namespace Lean.Compiler.LCNF

/--
Return the LCNF type for constructors, inductive types, and foreign functions.
-/
def getOtherDeclType (declName : Name) (us : List Level := []) : CompilerM Expr := do
  match (← getPhase) with
  | .base => getOtherDeclBaseType declName us
  | .mono => getOtherDeclMonoType declName
  | .impure => throwError "getOtherDeclType unsupported for impure"

end Lean.Compiler.LCNF
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c352b14f3b0c2f511e5d9d52a07094096faecbaac24f2786e2dee318dee7b7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OtherDecl/Variantcb137113a603520d0553a2d5553f60f1c66425a5a79613edade23b45c7a5fd95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
