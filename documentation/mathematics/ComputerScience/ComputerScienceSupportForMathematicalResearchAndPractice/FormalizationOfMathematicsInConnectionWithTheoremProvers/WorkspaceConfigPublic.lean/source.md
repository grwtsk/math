# Workspace Config Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6074ad0e0b1f2660294a5771b34ce1d42d12e20` · SHA-256 `08d25cf06eb950ecbe593b81ca1d6e467437e0fc7e415520c3bed16c3af410d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Defaults
public import Lake.Config.MetaClasses
meta import all Lake.Config.Meta
import Lake.Config.Meta

open System
namespace Lake

/-- A `Workspace`'s declarative configuration. -/
public configuration WorkspaceConfig where
  /--
  The directory to which Lake should download remote dependencies.
  Defaults to `defaultPackagesDir` (i.e., `.lake/packages`).
  -/
  packagesDir : FilePath := defaultPackagesDir
  deriving Inhabited, Repr
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7699f2f54b76f5e08d1074b14e2ef81bb5ce2e651482f4735e94b1456cad92f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WorkspaceConfig/Variant08d25cf06eb950ecbe593b81ca1d6e467437e0fc7e415520c3bed16c3af410d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
