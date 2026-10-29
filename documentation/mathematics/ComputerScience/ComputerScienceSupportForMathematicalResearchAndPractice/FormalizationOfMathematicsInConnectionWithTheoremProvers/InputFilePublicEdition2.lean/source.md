# Input File Public Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c5ee4bc9d4178ea4ac79c99b8dce5b5e70a30c7` · SHA-256 `f1cb189f7b810589be539bdb4abec5a8ed7179ba08d122764fc6e41dcbf89779`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.FacetConfig
import Lake.Build.Job
import Lake.Build.Common
import Lake.Build.Infos

/-! # Input File Build
Build function definitions for input files and directories.
-/

open System (FilePath)

namespace Lake

/-! ## Input File -/

def InputFile.recFetch (t : InputFile) : FetchM (Job FilePath) :=
  withRegisterJob s!"{t.name}" do
  inputFile t.path t.text

/-- The facet configuration for the builtin `ExternLib.staticFacet`. -/
public def InputFile.defaultFacetConfig : KFacetConfig InputFile.facetKind defaultFacet :=
  mkFacetJobConfig recFetch

/--
A name-configuration map for the initial set of
input file facets (e.g., `default`).
-/
public def InputFile.initFacetConfigs : DNameMap (KFacetConfig InputFile.facetKind) :=
  DNameMap.empty
  |>.insert defaultFacet defaultFacetConfig

/-! ## Input Directory -/

def InputDir.recFetch (t : InputDir) : FetchM (Job (Array FilePath)) :=
  withRegisterJob s!"{t.name}" do
  inputDir t.path t.text t.filter

/-- The facet configuration for the builtin `ExternLib.staticFacet`. -/
public def InputDir.defaultFacetConfig : KFacetConfig InputDir.facetKind defaultFacet :=
  mkFacetJobConfig recFetch

/--
A name-configuration map for the initial set of
input directory facets (e.g., `default`).
-/
public def InputDir.initFacetConfigs : DNameMap (KFacetConfig InputDir.facetKind) :=
  DNameMap.empty
  |>.insert defaultFacet defaultFacetConfig
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2150a424c47f25d0a2112305fb3ad3bd72d6fc64047b551c7d0cbf47836c93b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InputFile/Variantf1cb189f7b810589be539bdb4abec5a8ed7179ba08d122764fc6e41dcbf89779.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
