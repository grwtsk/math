# Monad Public Monad Lake Env

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**73 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variant1ad1c85019a4012a9e4ec73d7f7a2f434d5c2abfcd31bf5b04bfe04df53ee11b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `496a7476396ee696b898e5e6db5e9e4f11b921b8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MonadPublicMonadLakeEnv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MonadLakeEnv](declarations/monadlakeenv.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [LakeEnvT](declarations/lakeenvt.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [LakeEnvT.run](declarations/lakeenvt-run.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [MonadWorkspace](declarations/monadworkspace.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [MonadLake](declarations/monadlake.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mkLakeContext](declarations/mklakecontext.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Workspace.runLakeT](declarations/workspace-runlaket.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Context.workspace](declarations/context-workspace.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [getRootPackage](declarations/getrootpackage.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [findPackageByKey?](declarations/findpackagebykey.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [findPackageByName?](declarations/findpackagebyname.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [findPackage?](declarations/findpackage.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [findModule?](declarations/findmodule.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [findModules](declarations/findmodules.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [findModuleBySrc?](declarations/findmodulebysrc.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [findLeanExe?](declarations/findleanexe.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [findLeanLib?](declarations/findleanlib.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [findExternLib?](declarations/findexternlib.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [getServerOptions](declarations/getserveroptions.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [getLeanOptions](declarations/getleanoptions.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [getLeanArgs](declarations/getleanargs.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [getLeanPath](declarations/getleanpath.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [getLeanSrcPath](declarations/getleansrcpath.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [getSharedLibPath](declarations/getsharedlibpath.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [getAugmentedLeanPath](declarations/getaugmentedleanpath.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [getAugmentedLeanSrcPath](declarations/getaugmentedleansrcpath.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [getAugmentedSharedLibPath](declarations/getaugmentedsharedlibpath.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [getAugmentedEnv](declarations/getaugmentedenv.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [getLakeCache](declarations/getlakecache.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [getArtifact?](declarations/getartifact.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Package.restoreAllArtifacts](declarations/package-restoreallartifacts.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Package.isArtifactCacheReadable](declarations/package-isartifactcachereadable.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Package.isArtifactCacheWritable](declarations/package-isartifactcachewritable.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `abbrev` | [Package.isArtifactCacheEnabled](declarations/package-isartifactcacheenabled.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [getLakeEnv](declarations/getlakeenv.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [getNoCache](declarations/getnocache.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [getTryCache](declarations/gettrycache.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [getPkgUrlMap](declarations/getpkgurlmap.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [getElanToolchain](declarations/getelantoolchain.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [getEnvLeanPath](declarations/getenvleanpath.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [getEnvLeanSrcPath](declarations/getenvleansrcpath.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [getEnvSharedLibPath](declarations/getenvsharedlibpath.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [getElanInstall?](declarations/getelaninstall.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [getElanHome?](declarations/getelanhome.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [getElan?](declarations/getelan.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [getLeanInstall](declarations/getleaninstall.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [getLeanSysroot](declarations/getleansysroot.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [getLeanSrcDir](declarations/getleansrcdir.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [getLeanLibDir](declarations/getleanlibdir.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [getLeanIncludeDir](declarations/getleanincludedir.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [getLeanSystemLibDir](declarations/getleansystemlibdir.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [getLean](declarations/getlean.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [getLeanir](declarations/getleanir.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [getLeanc](declarations/getleanc.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [getLeantar](declarations/getleantar.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [getLeanSharedDynlib](declarations/getleanshareddynlib.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [getLeanSharedDynlibs](declarations/getleanshareddynlibs.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [getLeanSharedLib](declarations/getleansharedlib.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [getLeanAr](declarations/getleanar.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [getLeanCc](declarations/getleancc.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [getLeanCc?](declarations/getleancc-source-edition-2.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [getLeanLinkSharedFlags](declarations/getleanlinksharedflags.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [getLakeInstall](declarations/getlakeinstall.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [getLakeHome](declarations/getlakehome.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [getLakeSrcDir](declarations/getlakesrcdir.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [getLakeLibDir](declarations/getlakelibdir.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [getLake](declarations/getlake.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [getLakeSharedDynlib](declarations/getlakeshareddynlib.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=006d35ccdf23be7ed45774bfbd4bff78c03f543355f215a66b48e576c97f3397 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variant1ad1c85019a4012a9e4ec73d7f7a2f434d5c2abfcd31bf5b04bfe04df53ee11b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
