# Workspace Public Compute Lake Cache

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**69 observed declarations and anonymous commands**, 4 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variant80ae4168ce567b9292998b520c473302bd3913aeb859b431855090c66ef2949f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92df575a8aa0cd7ea4a85b0831986359d40a735f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WorkspacePublicComputeLakeCache.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [computeLakeCache](declarations/computelakecache.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Workspace.Raw](declarations/workspace-raw.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Workspace.Raw.WF](declarations/workspace-raw-wf.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Workspace](declarations/workspace.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Workspace.ofSize](declarations/workspace-ofsize.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Workspace.size_packages_ofSize](declarations/workspace-size-packages-ofsize.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Package.defaultTargetRoots](declarations/package-defaulttargetroots.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [root](declarations/root.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [wsIdx_root_lt](declarations/wsidx-root-lt.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [bootstrap](declarations/bootstrap.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [dir](declarations/dir.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [config](declarations/config.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [relLakeDir](declarations/rellakedir.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [lakeDir](declarations/lakedir.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [enableArtifactCache?](declarations/enableartifactcache.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [enableArtifactCache](declarations/enableartifactcache-source-edition-2.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [isRootArtifactCacheWritable](declarations/isrootartifactcachewritable.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [isRootArtifactCacheEnabled](declarations/isrootartifactcacheenabled.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [restoreAllArtifacts?](declarations/restoreallartifacts.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [cacheToolchain](declarations/cachetoolchain.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [defaultCacheService](declarations/defaultcacheservice.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [defaultCacheUploadService?](declarations/defaultcacheuploadservice.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [findCacheService?](declarations/findcacheservice.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [relPkgsDir](declarations/relpkgsdir.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [pkgsDir](declarations/pkgsdir.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [leanArgs](declarations/leanargs.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [leanOptions](declarations/leanoptions.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [serverOptions](declarations/serveroptions.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [defaultTargetRoots](declarations/defaulttargetroots.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [manifestFile](declarations/manifestfile.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [packageOverridesFile](declarations/packageoverridesfile.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [addPackage'](declarations/addpackage.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [packages_addPackage'](declarations/packages-addpackage.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [addPackage](declarations/addpackage-source-edition-2.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [findPackageByKey?](declarations/findpackagebykey.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [findPackageByName?](declarations/findpackagebyname.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `abbrev` | [findPackage?](declarations/findpackage.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [findScript?](declarations/findscript.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [isLocalModule](declarations/islocalmodule.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [isBuildableModule](declarations/isbuildablemodule.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [findModule?](declarations/findmodule.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [findModules](declarations/findmodules.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [findTargetModule?](declarations/findtargetmodule.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [findModuleBySrc?](declarations/findmodulebysrc.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [findLeanLib?](declarations/findleanlib.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [findLeanExe?](declarations/findleanexe.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [findExternLib?](declarations/findexternlib.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [findTargetConfig?](declarations/findtargetconfig.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [findTargetDecl?](declarations/findtargetdecl.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [addFacetConfig](declarations/addfacetconfig.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [packages_addFacetConfig](declarations/packages-addfacetconfig.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [findFacetConfig?](declarations/findfacetconfig.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [addModuleFacetConfig](declarations/addmodulefacetconfig.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [findModuleFacetConfig?](declarations/findmodulefacetconfig.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [addPackageFacetConfig](declarations/addpackagefacetconfig.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [findPackageFacetConfig?](declarations/findpackagefacetconfig.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [addLibraryFacetConfig](declarations/addlibraryfacetconfig.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [findLibraryFacetConfig?](declarations/findlibraryfacetconfig.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [binPath](declarations/binpath.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [leanPath](declarations/leanpath.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [leanSrcPath](declarations/leansrcpath.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [sharedLibPath](declarations/sharedlibpath.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [augmentedPath](declarations/augmentedpath.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [augmentedLeanPath](declarations/augmentedleanpath.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [augmentedLeanSrcPath](declarations/augmentedleansrcpath.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [augmentedSharedLibPath](declarations/augmentedsharedlibpath.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [augmentedEnvVars](declarations/augmentedenvvars.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [clean](declarations/clean.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e66ea6175943c17d0234e61545280e1dd1620447967ce9de5cc18a7c1c715050 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variant80ae4168ce567b9292998b520c473302bd3913aeb859b431855090c66ef2949f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
