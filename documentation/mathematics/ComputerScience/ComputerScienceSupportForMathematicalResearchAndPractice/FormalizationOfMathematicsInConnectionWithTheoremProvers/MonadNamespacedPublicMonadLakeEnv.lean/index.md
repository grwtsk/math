# Monad Namespaced Public Monad Lake Env

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**73 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variant52d0400be07bcd480d9216f35e848324bd5d2f32d3022d1f3d234eb99d3532f7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d50bb193ecc6e855be6320efd26c0e05d8037c38`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MonadNamespacedPublicMonadLakeEnv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MonadLakeEnv](declarations/monadlakeenv.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [LakeEnvT](declarations/lakeenvt.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [LakeEnvT.run](declarations/lakeenvt-run.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [MonadWorkspace](declarations/monadworkspace.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [MonadLake](declarations/monadlake.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mkLakeContext](declarations/mklakecontext.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Workspace.runLakeT](declarations/workspace-runlaket.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Context.workspace](declarations/context-workspace.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [getRootPackage](declarations/getrootpackage.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [findPackageByKey?](declarations/findpackagebykey.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [findPackageByName?](declarations/findpackagebyname.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [findPackage?](declarations/findpackage.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [findModule?](declarations/findmodule.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [findModules](declarations/findmodules.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [findModuleBySrc?](declarations/findmodulebysrc.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [findLeanExe?](declarations/findleanexe.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [findLeanLib?](declarations/findleanlib.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [findExternLib?](declarations/findexternlib.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [getServerOptions](declarations/getserveroptions.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [getLeanOptions](declarations/getleanoptions.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [getLeanArgs](declarations/getleanargs.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [getLeanPath](declarations/getleanpath.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [getLeanSrcPath](declarations/getleansrcpath.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [getSharedLibPath](declarations/getsharedlibpath.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [getAugmentedLeanPath](declarations/getaugmentedleanpath.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [getAugmentedLeanSrcPath](declarations/getaugmentedleansrcpath.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [getAugmentedSharedLibPath](declarations/getaugmentedsharedlibpath.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [getAugmentedEnv](declarations/getaugmentedenv.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [getLakeCache](declarations/getlakecache.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [getArtifact?](declarations/getartifact.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Package.restoreAllArtifacts](declarations/package-restoreallartifacts.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Package.isArtifactCacheReadable](declarations/package-isartifactcachereadable.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Package.isArtifactCacheWritable](declarations/package-isartifactcachewritable.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `abbrev` | [Package.isArtifactCacheEnabled](declarations/package-isartifactcacheenabled.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [getLakeEnv](declarations/getlakeenv.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [getNoCache](declarations/getnocache.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [getTryCache](declarations/gettrycache.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [getPkgUrlMap](declarations/getpkgurlmap.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [getElanToolchain](declarations/getelantoolchain.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [getEnvLeanPath](declarations/getenvleanpath.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [getEnvLeanSrcPath](declarations/getenvleansrcpath.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [getEnvSharedLibPath](declarations/getenvsharedlibpath.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [getElanInstall?](declarations/getelaninstall.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [getElanHome?](declarations/getelanhome.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [getElan?](declarations/getelan.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [getLeanInstall](declarations/getleaninstall.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [getLeanSysroot](declarations/getleansysroot.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [getLeanSrcDir](declarations/getleansrcdir.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [getLeanLibDir](declarations/getleanlibdir.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [getLeanIncludeDir](declarations/getleanincludedir.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [getLeanSystemLibDir](declarations/getleansystemlibdir.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [getLean](declarations/getlean.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [getLeanir](declarations/getleanir.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [getLeanc](declarations/getleanc.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [getLeantar](declarations/getleantar.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [getLeanSharedDynlib](declarations/getleanshareddynlib.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [getLeanSharedDynlibs](declarations/getleanshareddynlibs.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [getLeanSharedLib](declarations/getleansharedlib.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [getLeanAr](declarations/getleanar.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [getLeanCc](declarations/getleancc.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [getLeanCc?](declarations/getleancc-source-edition-2.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [getLeanLinkSharedFlags](declarations/getleanlinksharedflags.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [getLakeInstall](declarations/getlakeinstall.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [getLakeHome](declarations/getlakehome.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [getLakeSrcDir](declarations/getlakesrcdir.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [getLakeLibDir](declarations/getlakelibdir.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [getLake](declarations/getlake.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [getLakeSharedDynlib](declarations/getlakeshareddynlib.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43a34581b57b1aa2655ade5575438c7a878e0aef5b9b0279c1ba29e7e84eedbf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variant52d0400be07bcd480d9216f35e848324bd5d2f32d3022d1f3d234eb99d3532f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
