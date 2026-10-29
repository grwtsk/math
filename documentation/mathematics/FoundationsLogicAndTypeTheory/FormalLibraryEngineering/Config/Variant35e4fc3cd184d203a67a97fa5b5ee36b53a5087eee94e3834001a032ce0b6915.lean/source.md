# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant35e4fc3cd184d203a67a97fa5b5ee36b53a5087eee94e3834001a032ce0b6915

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6990ef40536dcffe058ab89c58db9f70d83ec9ca` · SHA-256 `35e4fc3cd184d203a67a97fa5b5ee36b53a5087eee94e3834001a032ce0b6915`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Artifact
public import Lake.Config.Cache
public import Lake.Config.ConfigDecl
public import Lake.Config.ConfigTarget
public import Lake.Config.Context
public import Lake.Config.Defaults
public import Lake.Config.Dependency
public import Lake.Config.Dynlib
public import Lake.Config.Env
public import Lake.Config.ExternLib
public import Lake.Config.ExternLibConfig
public import Lake.Config.FacetConfig
public import Lake.Config.Glob
public import Lake.Config.InputFile
public import Lake.Config.InputFileConfig
public import Lake.Config.InstallPath
public import Lake.Config.Kinds
public import Lake.Config.LakeConfig
public import Lake.Config.Lang
public import Lake.Config.LeanConfig
public import Lake.Config.LeanExe
public import Lake.Config.LeanExeConfig
public import Lake.Config.LeanLib
public import Lake.Config.LeanLibConfig
public import Lake.Config.MetaClasses
public import Lake.Config.Module
public import Lake.Config.Monad
public import Lake.Config.Opaque
public import Lake.Config.OutFormat
public import Lake.Config.Package
public import Lake.Config.Pattern
public import Lake.Config.Script
public import Lake.Config.TargetConfig
public import Lake.Config.Workspace
public import Lake.Config.WorkspaceConfig
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e20dc29ebeb1970a51c75bf8b02e87576a717fc53b9bf0e170830b6f6a6e858a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant35e4fc3cd184d203a67a97fa5b5ee36b53a5087eee94e3834001a032ce0b6915.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
