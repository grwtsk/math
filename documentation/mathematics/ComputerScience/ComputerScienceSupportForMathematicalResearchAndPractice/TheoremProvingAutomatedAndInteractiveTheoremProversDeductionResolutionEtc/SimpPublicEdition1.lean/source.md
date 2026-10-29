# Simp Public Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d688f104378c11745a95a88bb04473403d4d8f9` · SHA-256 `be5d3de13e1b8b1198b342797e3fbd65f951639ed92017e901c4f1a5a2625bda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.App
public import Lean.Meta.Sym.Simp.CongrInfo
public import Lean.Meta.Sym.Simp.DiscrTree
public import Lean.Meta.Sym.Simp.Main
public import Lean.Meta.Sym.Simp.Result
public import Lean.Meta.Sym.Simp.Rewrite
public import Lean.Meta.Sym.Simp.SimpM
public import Lean.Meta.Sym.Simp.Simproc
public import Lean.Meta.Sym.Simp.Theorems
public import Lean.Meta.Sym.Simp.Have
public import Lean.Meta.Sym.Simp.Lambda
public import Lean.Meta.Sym.Simp.Forall
public import Lean.Meta.Sym.Simp.Debug
public import Lean.Meta.Sym.Simp.EvalGround
public import Lean.Meta.Sym.Simp.Discharger
public import Lean.Meta.Sym.Simp.ControlFlow
public import Lean.Meta.Sym.Simp.Goal
public import Lean.Meta.Sym.Simp.Telescope
public import Lean.Meta.Sym.Simp.Attr
public import Lean.Meta.Sym.Simp.Variant
public import Lean.Meta.Sym.Simp.RegisterCommand
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=efcfc15611a3b9279c0dca797dc02fab9b56d2b1d12910983bf0c1049643e46d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variantbe5d3de13e1b8b1198b342797e3fbd65f951639ed92017e901c4f1a5a2625bda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
