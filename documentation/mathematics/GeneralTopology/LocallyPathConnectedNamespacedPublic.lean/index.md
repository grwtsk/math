# Locally Path Connected Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da4d508c57a855d9235fb2c7df053c9f58394fb7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/LocallyPathConnectedNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyPathConnectedSpace](declarations/locallypathconnectedspace.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [LocallyPathConnectedSpace.of_bases](declarations/locallypathconnectedspace-of-bases.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsOpen.pathComponentIn](declarations/isopen-pathcomponentin.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsOpen.pathComponent](declarations/isopen-pathcomponent.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsClosed.pathComponent](declarations/isclosed-pathcomponent.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsClopen.pathComponent](declarations/isclopen-pathcomponent.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [pathComponentIn_mem_nhds](declarations/pathcomponentin-mem-nhds.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [PathConnectedSpace.of_locallyPathConnectedSpace](declarations/pathconnectedspace-of-locallypathconnectedspace.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pathConnectedSpace_iff_connectedSpace](declarations/pathconnectedspace-iff-connectedspace.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [pathComponent_eq_connectedComponent](declarations/pathcomponent-eq-connectedcomponent.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [connectedComponent_eq_iff_joined](declarations/connectedcomponent-eq-iff-joined.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [connectedComponentSetoid_eq_pathSetoid](declarations/connectedcomponentsetoid-eq-pathsetoid.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [connectedComponentsEquivZerothHomotopy](declarations/connectedcomponentsequivzerothhomotopy.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [connectedComponentsEquivZerothHomotopy_apply](declarations/connectedcomponentsequivzerothhomotopy-apply.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [coe_connectedComponentsEquivZerothHomotopy_symm](declarations/coe-connectedcomponentsequivzerothhomotopy-symm.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [connectedComponentsEquivZerothHomotopy_symm_apply](declarations/connectedcomponentsequivzerothhomotopy-symm-apply.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [pathConnected_subset_basis](declarations/pathconnected-subset-basis.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isOpen_isPathConnected_basis](declarations/isopen-ispathconnected-basis.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Topology.IsOpenEmbedding.locallyPathConnectedSpace](declarations/topology-isopenembedding-locallypathconnectedspace.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Homeomorph.locallyPathConnectedSpace](declarations/homeomorph-locallypathconnectedspace.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsOpen.locallyPathConnectedSpace](declarations/isopen-locallypathconnectedspace.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsOpen.isConnected_iff_isPathConnected](declarations/isopen-isconnected-iff-ispathconnected.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [locallyPathConnectedSpace_iff_isOpen_pathComponentIn](declarations/locallypathconnectedspace-iff-isopen-pathcomponentin.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [locallyPathConnectedSpace_iff_pathComponentIn_mem_nhds](declarations/locallypathconnectedspace-iff-pathcomponentin-mem-nhds.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [LocallyPathConnectedSpace.coinduced](declarations/locallypathconnectedspace-coinduced.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Topology.IsQuotientMap.locallyPathConnectedSpace](declarations/topology-isquotientmap-locallypathconnectedspace.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [Quot.locallyPathConnectedSpace](declarations/quot-locallypathconnectedspace.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [Quotient.locallyPathConnectedSpace](declarations/quotient-locallypathconnectedspace.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [Sum.locallyPathConnectedSpace](declarations/sum-locallypathconnectedspace.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [Sigma.locallyPathConnectedSpace](declarations/sigma-locallypathconnectedspace.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [Prod.locallyPathConnectedSpace](declarations/prod-locallypathconnectedspace.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Pi.locallyPathConnectedSpace_of_finite_not_pathConnectedSpace](declarations/pi-locallypathconnectedspace-of-finite-not-pathconnectedspace.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [Pi.locallyPathConnectedSpace_of_finite](declarations/pi-locallypathconnectedspace-of-finite.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [Pi.locallyPathConnectedSpace](declarations/pi-locallypathconnectedspace.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Pi.locallyPathConnectedSpace_iff](declarations/pi-locallypathconnectedspace-iff.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [AlexandrovDiscrete.locallyPathConnectedSpace](declarations/alexandrovdiscrete-locallypathconnectedspace.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59c9e661dc6df58b1ee4e7d7510b541b6adc6a4badde8432c21fc79b3fa53b76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
