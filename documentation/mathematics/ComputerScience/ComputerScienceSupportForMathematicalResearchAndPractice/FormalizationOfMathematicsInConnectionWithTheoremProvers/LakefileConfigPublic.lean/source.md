# Lakefile Config Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36deeb2e4f4279068a67cb905c10cee87bd82ec5` · SHA-256 `017d0499448b0a6fbce8beda1f38ebda18bd26158421a1963d084d897b2131e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Script
public import Lake.Config.Dependency
public import Lake.Config.PackageConfig
public import Lake.Config.FacetConfig
public import Lake.Config.TargetConfig

set_option doc.verso true

open Lean

namespace Lake

/-- The configuration defined by a Lake configuration file (e.g., {lit}`lakefile.(lean|toml)`). -/
public structure LakefileConfig where
  /-- The package deceleration of the configuration file. -/
  pkgDecl : PackageDecl
  /-- Depdency configurations in the order declared by the configuration file.  -/
  depConfigs : Array Dependency := #[]
  /-- Facet configurations in the order declared by the configuration file. -/
  facetDecls : Array FacetDecl := {}
  /-- Target configurations in the order declared by the configuration file. -/
  targetDecls : Array (PConfigDecl pkgDecl.keyName) := #[]
  /-- Name-declaration map of target configurations declared in the configuration file. -/
  targetDeclMap : DNameMap (NConfigDecl pkgDecl.keyName) :=
    targetDecls.foldl (fun m d => m.insert d.name (.mk d rfl)) {}
  /-- The names of targets declared via {lit}`@[default_target]`. -/
  defaultTargets : Array Name := #[]
  /-- Scripts declared in the configuration file. -/
  scripts : NameMap Script := {}
  /-- The names of the scripts declared via {lit}`@[default_script]`. -/
  defaultScripts : Array Script := #[]
  /-- {lit}`post_update` hooks in the order declared by the configuration file.. -/
  postUpdateHooks : Array (OpaquePostUpdateHook pkgDecl.keyName) := #[]
  /--
  The name of the configuration file's test driver.

  It is either  declared via {lit}`@[test_driver]` or derived from {lean}`PackageConfig.testDriver`.
  -/
  testDriver : String := pkgDecl.config.testDriver
  /--
  The name of the configuration file's test driver.

  It is either declared via {lit}`@[lint_driver]` or derived from {lean}`PackageConfig.lintDriver`.
  -/
  lintDriver : String := pkgDecl.config.lintDriver
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0c247ba53f04d59fd6654b71572f246d8feb5bfaf08c1c4b6bc55d924d1d158 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LakefileConfig/Variant017d0499448b0a6fbce8beda1f38ebda18bd26158421a1963d084d897b2131e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
