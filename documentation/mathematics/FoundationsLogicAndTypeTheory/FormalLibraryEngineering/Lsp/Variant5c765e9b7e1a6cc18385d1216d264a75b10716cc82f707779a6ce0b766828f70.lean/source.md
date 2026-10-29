# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lsp.Variant5c765e9b7e1a6cc18385d1216d264a75b10716cc82f707779a6ce0b766828f70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c5ae25132f6d43ae9b3055e3bdbc64c15fe26a1` · SHA-256 `5c765e9b7e1a6cc18385d1216d264a75b10716cc82f707779a6ce0b766828f70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Marc Huisinga. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Marc Huisinga, Wojciech Nawrocki
-/
module

prelude
public import Lean.Data.Lsp.Basic
public import Lean.Data.Lsp.CancelParams
public import Lean.Data.Lsp.Capabilities
public import Lean.Data.Lsp.Client
public import Lean.Data.Lsp.Communication
public import Lean.Data.Lsp.Diagnostics
public import Lean.Data.Lsp.Extra
public import Lean.Data.Lsp.InitShutdown
public import Lean.Data.Lsp.Internal
public import Lean.Data.Lsp.LanguageFeatures
public import Lean.Data.Lsp.TextSync
public import Lean.Data.Lsp.Utf16
public import Lean.Data.Lsp.Workspace
public import Lean.Data.Lsp.Ipc
public import Lean.Data.Lsp.CodeActions
public import Lean.Data.Lsp.Window
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4eb76fc554a132fca8ebee41e978c1000cbcc379a0b3e21402581c8dbdb7e327 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lsp/Variant5c765e9b7e1a6cc18385d1216d264a75b10716cc82f707779a6ce0b766828f70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
