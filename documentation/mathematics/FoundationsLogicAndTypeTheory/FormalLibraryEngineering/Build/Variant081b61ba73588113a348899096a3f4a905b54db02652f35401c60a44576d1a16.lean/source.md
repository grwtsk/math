# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Build.Variant081b61ba73588113a348899096a3f4a905b54db02652f35401c60a44576d1a16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11f090d2e3d4a8aea3e4be854b4e673c680589a9` · SHA-256 `081b61ba73588113a348899096a3f4a905b54db02652f35401c60a44576d1a16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Build.Actions
public import Lake.Build.Common
public import Lake.Build.Context
public import Lake.Build.Data
public import Lake.Build.Executable
public import Lake.Build.ExternLib
public import Lake.Build.Facets
public import Lake.Build.Fetch
public import Lake.Build.Index
public import Lake.Build.Info
public import Lake.Build.Infos
public import Lake.Build.InitFacets
public import Lake.Build.InputFile
public import Lake.Build.Job
public import Lake.Build.Key
public import Lake.Build.Library
public import Lake.Build.Module
public import Lake.Build.ModuleArtifacts
public import Lake.Build.Package
public import Lake.Build.Run
public import Lake.Build.Store
public import Lake.Build.Target
public import Lake.Build.Targets
public import Lake.Build.Topological
public import Lake.Build.Trace
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26a3d6338667c9aedd0ebecb0a45e16a91da7a77f86a0f48476839ef9ee36113 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant081b61ba73588113a348899096a3f4a905b54db02652f35401c60a44576d1a16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
