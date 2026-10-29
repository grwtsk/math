# Resolve Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 2 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12bc63da52e494f596009abb873fad86cfda7530`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolvePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mkDepLoadConfig](declarations/mkdeploadconfig.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Workspace.addFacetDecls](declarations/workspace-addfacetdecls.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Workspace.packages_addFacetDecls](declarations/workspace-packages-addfacetdecls.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Workspace.addDepPackage'](declarations/workspace-adddeppackage.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Workspace.setDepIdxs](declarations/workspace-setdepidxs.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Workspace.size_packages_setDepIdxs](declarations/workspace-size-packages-setdepidxs.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Workspace.updateDepPkgs](declarations/workspace-updatedeppkgs.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [ResolveState](declarations/resolvestate.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [init](declarations/init.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [reuseDep](declarations/reusedep.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [newDep](declarations/newdep.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [guardBySizeImpl](declarations/guardbysizeimpl.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [guardBySize!](declarations/guardbysize.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Workspace.resolveDepsCore](declarations/workspace-resolvedepscore.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [UpdateT](declarations/updatet.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [UpdateT.run](declarations/updatet-run.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [reuseManifest](declarations/reusemanifest.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [addDependencyEntries](declarations/adddependencyentries.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [updateAndMaterializeDep](declarations/updateandmaterializedep.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [restartCode](declarations/restartcode.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [ToolchainCandidate](declarations/toolchaincandidate.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [ToolchainState](declarations/toolchainstate.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [ToolchainState.replace](declarations/toolchainstate-replace.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [ToolchainState.addClash](declarations/toolchainstate-addclash.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Workspace.updateToolchain](declarations/workspace-updatetoolchain.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Workspace.updateAndMaterializeCore](declarations/workspace-updateandmaterializecore.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Workspace.writeManifest](declarations/workspace-writemanifest.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Package.runPostUpdateHooks](declarations/package-runpostupdatehooks.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Workspace.updateAndMaterialize](declarations/workspace-updateandmaterialize.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [validateManifest](declarations/validatemanifest.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Workspace.materializeDeps](declarations/workspace-materializedeps.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55471349564bf477aef0c2d10d9b644203f502563faba64087be47e8677b6262 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
