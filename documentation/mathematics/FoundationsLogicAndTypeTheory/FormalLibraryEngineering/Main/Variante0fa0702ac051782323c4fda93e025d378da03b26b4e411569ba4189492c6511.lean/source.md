# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variante0fa0702ac051782323c4fda93e025d378da03b26b4e411569ba4189492c6511

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4436691efb00d66781467882efa98ddd05a03c0` · SHA-256 `e0fa0702ac051782323c4fda93e025d378da03b26b4e411569ba4189492c6511`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF
import Lean.Compiler.Options

public section

namespace Lean.Compiler
/--
Run the code generation pipeline for all declarations in `declNames`
that fulfill the requirements of `shouldGenerateCode`.
-/
def compile (declNames : Array Name) : CoreM Unit := do profileitM Exception "compiler new" (← getOptions) do
  withOptions (compiler.postponeCompile.set · false) do
  withTraceNode `Compiler (fun _ => return m!"compiling: {declNames}") do
    LCNF.main declNames {}

builtin_initialize
  registerTraceClass `Compiler
  registerTraceClass `Compiler.stat

end Lean.Compiler
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6044299e904b914b53b0ee58ba4f789135c0dc90189074ff543ee3fb63fd6a05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante0fa0702ac051782323c4fda93e025d378da03b26b4e411569ba4189492c6511.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
