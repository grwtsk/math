# Resolve Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 2 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65f8fed0afd70a439a4e611a1d9aa029e0f7f523`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mkDepLoadConfig](declarations/mkdeploadconfig.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Workspace.addFacetDecls](declarations/workspace-addfacetdecls.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Workspace.packages_addFacetDecls](declarations/workspace-packages-addfacetdecls.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Workspace.addDepPackage'](declarations/workspace-adddeppackage.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Workspace.setDepIdxs](declarations/workspace-setdepidxs.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Workspace.size_packages_setDepIdxs](declarations/workspace-size-packages-setdepidxs.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Workspace.updateDepPkgs](declarations/workspace-updatedeppkgs.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [ResolveState](declarations/resolvestate.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [init](declarations/init.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [reuseDep](declarations/reusedep.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [newDep](declarations/newdep.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [guardBySizeImpl](declarations/guardbysizeimpl.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [guardBySize!](declarations/guardbysize.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Workspace.resolveDepsCore](declarations/workspace-resolvedepscore.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [UpdateT](declarations/updatet.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [UpdateT.run](declarations/updatet-run.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [reuseManifest](declarations/reusemanifest.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [addDependencyEntries](declarations/adddependencyentries.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [updateAndMaterializeDep](declarations/updateandmaterializedep.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [restartCode](declarations/restartcode.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [ToolchainCandidate](declarations/toolchaincandidate.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [ToolchainState](declarations/toolchainstate.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [ToolchainState.replace](declarations/toolchainstate-replace.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [ToolchainState.addClash](declarations/toolchainstate-addclash.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Workspace.updateToolchain](declarations/workspace-updatetoolchain.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Workspace.updateAndMaterializeCore](declarations/workspace-updateandmaterializecore.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Workspace.writeManifest](declarations/workspace-writemanifest.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Package.runPostUpdateHooks](declarations/package-runpostupdatehooks.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Workspace.updateAndMaterialize](declarations/workspace-updateandmaterialize.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [validateManifest](declarations/validatemanifest.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Workspace.materializeDeps](declarations/workspace-materializedeps.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47769bdd1847cecf90fe7d5ae74fa2b44fcaa9b42cad9935666f6e6dc6f1ae9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
