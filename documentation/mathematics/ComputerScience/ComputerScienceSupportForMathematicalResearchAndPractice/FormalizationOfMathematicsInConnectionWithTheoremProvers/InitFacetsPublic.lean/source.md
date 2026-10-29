# Init Facets Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94e845b581a7ff0d40e497e0966423de50e1eddd` · SHA-256 `623d9a019992f6c85e2b569cab29da2debfdcf0f4247ce3399ff8576b8141806`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.FacetConfig
import Lake.Build.Module
import Lake.Build.Package
import Lake.Build.Library
import Lake.Build.Executable
import Lake.Build.ExternLib
import Lake.Build.InputFile

/-! # Initial Facets -/

namespace Lake

/-- The initial set of Lake facets. -/
public def initFacetConfigs : FacetConfigMap :=
  DNameMap.empty
  |> insert Module.initFacetConfigs
  |> insert Package.initFacetConfigs
  |> insert LeanLib.initFacetConfigs
  |> insert LeanExe.initFacetConfigs
  |> insert ExternLib.initFacetConfigs
  |> insert InputFile.initFacetConfigs
  |> insert InputDir.initFacetConfigs
where
  insert {k} (group : DNameMap (KFacetConfig k)) map :=
    group.foldl (init := map) fun m _ v => m.insert v.toFacetConfig
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c567b8de5d30e94d51a3069e2bc4939f64596a51f5d466cbb9daebbf0b5bb86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitFacets/Variant623d9a019992f6c85e2b569cab29da2debfdcf0f4247ce3399ff8576b8141806.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
