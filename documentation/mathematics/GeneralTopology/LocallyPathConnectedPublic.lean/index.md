# Locally Path Connected Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `529d2b347e5e986184d9f08eb1ee17f4994a220e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/LocallyPathConnectedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyPathConnectedSpace](declarations/locallypathconnectedspace.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [LocallyPathConnectedSpace.of_bases](declarations/locallypathconnectedspace-of-bases.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsOpen.pathComponentIn](declarations/isopen-pathcomponentin.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsOpen.pathComponent](declarations/isopen-pathcomponent.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsClosed.pathComponent](declarations/isclosed-pathcomponent.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsClopen.pathComponent](declarations/isclopen-pathcomponent.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [pathComponentIn_mem_nhds](declarations/pathcomponentin-mem-nhds.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [PathConnectedSpace.of_locallyPathConnectedSpace](declarations/pathconnectedspace-of-locallypathconnectedspace.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pathConnectedSpace_iff_connectedSpace](declarations/pathconnectedspace-iff-connectedspace.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [pathComponent_eq_connectedComponent](declarations/pathcomponent-eq-connectedcomponent.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [connectedComponent_eq_iff_joined](declarations/connectedcomponent-eq-iff-joined.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [connectedComponentSetoid_eq_pathSetoid](declarations/connectedcomponentsetoid-eq-pathsetoid.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [connectedComponentsEquivZerothHomotopy](declarations/connectedcomponentsequivzerothhomotopy.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [connectedComponentsEquivZerothHomotopy_apply](declarations/connectedcomponentsequivzerothhomotopy-apply.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [coe_connectedComponentsEquivZerothHomotopy_symm](declarations/coe-connectedcomponentsequivzerothhomotopy-symm.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [connectedComponentsEquivZerothHomotopy_symm_apply](declarations/connectedcomponentsequivzerothhomotopy-symm-apply.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [pathConnected_subset_basis](declarations/pathconnected-subset-basis.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isOpen_isPathConnected_basis](declarations/isopen-ispathconnected-basis.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Topology.IsOpenEmbedding.locallyPathConnectedSpace](declarations/topology-isopenembedding-locallypathconnectedspace.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Homeomorph.locallyPathConnectedSpace](declarations/homeomorph-locallypathconnectedspace.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsOpen.locallyPathConnectedSpace](declarations/isopen-locallypathconnectedspace.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsOpen.isConnected_iff_isPathConnected](declarations/isopen-isconnected-iff-ispathconnected.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [locallyPathConnectedSpace_iff_isOpen_pathComponentIn](declarations/locallypathconnectedspace-iff-isopen-pathcomponentin.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [locallyPathConnectedSpace_iff_pathComponentIn_mem_nhds](declarations/locallypathconnectedspace-iff-pathcomponentin-mem-nhds.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [LocallyPathConnectedSpace.coinduced](declarations/locallypathconnectedspace-coinduced.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Topology.IsQuotientMap.locallyPathConnectedSpace](declarations/topology-isquotientmap-locallypathconnectedspace.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [Quot.locallyPathConnectedSpace](declarations/quot-locallypathconnectedspace.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [Quotient.locallyPathConnectedSpace](declarations/quotient-locallypathconnectedspace.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [Sum.locallyPathConnectedSpace](declarations/sum-locallypathconnectedspace.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [Sigma.locallyPathConnectedSpace](declarations/sigma-locallypathconnectedspace.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [Prod.locallyPathConnectedSpace](declarations/prod-locallypathconnectedspace.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Pi.locallyPathConnectedSpace_of_finite_not_pathConnectedSpace](declarations/pi-locallypathconnectedspace-of-finite-not-pathconnectedspace.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [Pi.locallyPathConnectedSpace_of_finite](declarations/pi-locallypathconnectedspace-of-finite.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [Pi.locallyPathConnectedSpace](declarations/pi-locallypathconnectedspace.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Pi.locallyPathConnectedSpace_iff](declarations/pi-locallypathconnectedspace-iff.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [AlexandrovDiscrete.locallyPathConnectedSpace](declarations/alexandrovdiscrete-locallypathconnectedspace.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ba83515edf51d04ab42c68318c15b083a55e813189a9fd945a0b402818233e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
