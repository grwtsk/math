# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defaults.Variantea447fdf16e6814982293323caae5f7018b55ce649bf94a6c521b8ea77343b82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03033b5a032e450540ad99cc7c3be73544ad7416` · SHA-256 `ea447fdf16e6814982293323caae5f7018b55ce649bf94a6c521b8ea77343b82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.System.FilePath

namespace Lake

open System (FilePath)

/--
The default directory to output Lake-related files
(e.g., build artifacts, packages, caches, etc.).
Currently not configurable.
-/
public def defaultLakeDir : FilePath := ".lake"

/-- The default setting for a `WorkspaceConfig`'s `packagesDir` option. -/
public def defaultPackagesDir := defaultLakeDir / "packages"

/-- The default name of the Lake configuration file (i.e., `lakefile`). -/
public def defaultConfigFile : FilePath := "lakefile"

/-- The default name of the Lean Lake configuration file (i.e., `lakefile.lean`). -/
public def defaultLeanConfigFile : FilePath := defaultConfigFile |>.addExtension "lean"

/-- The default name of the TOML Lake configuration file (i.e., `lakefile.toml`). -/
public def defaultTomlConfigFile : FilePath := defaultConfigFile |>.addExtension "toml"

/-- The default name of the Lake manifest file (i.e., `lake-manifest.json`). -/
public def defaultManifestFile : FilePath := "lake-manifest.json"

/-- The default build directory for packages (i.e., `.lake/build`). -/
public def defaultBuildDir : FilePath := defaultLakeDir / "build"

/-- The default Lean library directory for packages. -/
public def defaultLeanLibDir : FilePath := "lib" / "lean"

/-- The default native library directory for packages. -/
public def defaultNativeLibDir : FilePath := "lib"

/-- The default binary directory for packages. -/
public def defaultBinDir : FilePath := "bin"

/-- The default IR directory for packages. -/
public def defaultIrDir : FilePath := "ir"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f49577eb8e32569b1a19414f6a74ab3357383c2d0aaf7ee476a2b31bc77cf49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defaults/Variantea447fdf16e6814982293323caae5f7018b55ce649bf94a6c521b8ea77343b82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
