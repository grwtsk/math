# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RegisterCommand.Variantb639d696e88f839d4992e428b7e34c2e8f34b3af611b513f66398042ba8ab3b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de5241999ff2769b20e1160a9ad876226b0766f5` · SHA-256 `b639d696e88f839d4992e428b7e34c2e8f34b3af611b513f66398042ba8ab3b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.Attr
public import Lean.Meta.Sym.Simp.Variant
public meta import Init.Data.ToString.Name
public meta import Init.Data.String.Extra
public section
namespace Lean.Meta.Sym.Simp

macro (name := _root_.Lean.Parser.Command.registerSymSimpAttr) doc:(docComment)?
  "register_sym_simp_attr" id:ident : command => do
  let str := id.getId.toString
  let idParser := mkIdentFrom id (`Parser.Attr ++ id.getId)
  let descr := quote ((doc.map (·.getDocString) |>.getD s!"Sym.simp set for {id.getId.toString}").removeLeadingSpaces)
  `($[$doc:docComment]? public meta initialize ext : SymSimpExtension ← registerSymSimpAttr $(quote id.getId) $descr
    $[$doc:docComment]? syntax (name := $idParser:ident) $(quote str):str : attr)

end Lean.Meta.Sym.Simp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=195b1a5a10f502a5946ecb2a1406be0b395ce5a1f3352c668aba282959f78c5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RegisterCommand/Variantb639d696e88f839d4992e428b7e34c2e8f34b3af611b513f66398042ba8ab3b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
