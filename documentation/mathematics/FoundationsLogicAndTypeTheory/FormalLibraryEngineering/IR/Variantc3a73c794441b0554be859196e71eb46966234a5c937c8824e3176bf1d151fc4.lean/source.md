# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IR.Variantc3a73c794441b0554be859196e71eb46966234a5c937c8824e3176bf1d151fc4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d112b9b70c0d0d7eacb9cd16aa7654444f513077` · SHA-256 `c3a73c794441b0554be859196e71eb46966234a5c937c8824e3176bf1d151fc4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.IR.Basic
public import Lean.Compiler.IR.Format
public import Lean.Compiler.IR.CompilerM
public import Lean.Compiler.IR.NormIds
public import Lean.Compiler.IR.Checker
public import Lean.Compiler.IR.UnboxResult
public import Lean.Compiler.IR.Sorry
public import Lean.Compiler.IR.ToIR
public import Lean.Compiler.IR.ToIRType
public import Lean.Compiler.IR.Meta

-- The following imports are not required by the compiler. They are here to ensure that there
-- are no orphaned modules.
public import Lean.Compiler.IR.LLVMBindings
public import Lean.Compiler.IR.EmitLLVM

public section

namespace Lean.IR

def compile (decls : Array Decl) : CompilerM (Array Decl) := do
  logDecls `init decls
  checkDecls decls
  let mut decls := decls
  decls ← updateSorryDep decls
  logDecls `result decls
  addDecls decls
  inferMeta decls
  return decls

builtin_initialize
  registerTraceClass `compiler.ir
  registerTraceClass `compiler.ir.init (inherited := true)
  registerTraceClass `compiler.ir.result (inherited := true)

end Lean.IR
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eafc09956dfedb4625405998784a7cb94dbf58bd2f790fbddb54956fb067dba1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IR/Variantc3a73c794441b0554be859196e71eb46966234a5c937c8824e3176bf1d151fc4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
