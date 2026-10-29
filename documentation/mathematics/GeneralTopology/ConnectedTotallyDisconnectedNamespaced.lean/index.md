# Connected Totally Disconnected Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd11b06d09450631e88f4260cb6e7029b0cb6bca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/ConnectedTotallyDisconnectedNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsTotallyDisconnected](declarations/istotallydisconnected.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isTotallyDisconnected_empty](declarations/istotallydisconnected-empty.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isTotallyDisconnected_singleton](declarations/istotallydisconnected-singleton.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [TotallyDisconnectedSpace](declarations/totallydisconnectedspace.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsPreconnected.subsingleton](declarations/ispreconnected-subsingleton.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [Pi.totallyDisconnectedSpace](declarations/pi-totallydisconnectedspace.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [Prod.totallyDisconnectedSpace](declarations/prod-totallydisconnectedspace.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [totallyDisconnectedSpace_iff_connectedComponent_subsingleton](declarations/totallydisconnectedspace-iff-connectedcomponent-subsingleton.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [totallyDisconnectedSpace_iff_connectedComponent_singleton](declarations/totallydisconnectedspace-iff-connectedcomponent-singleton.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [connectedComponent_eq_singleton](declarations/connectedcomponent-eq-singleton.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Continuous.image_connectedComponent_eq_singleton](declarations/continuous-image-connectedcomponent-eq-singleton.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isTotallyDisconnected_of_totallyDisconnectedSpace](declarations/istotallydisconnected-of-totallydisconnectedspace.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [TotallyDisconnectedSpace.eq_of_continuous](declarations/totallydisconnectedspace-eq-of-continuous.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isTotallyDisconnected_of_image](declarations/istotallydisconnected-of-image.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [Topology.IsEmbedding.isTotallyDisconnected](declarations/topology-isembedding-istotallydisconnected.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Topology.IsEmbedding.isTotallyDisconnected_image](declarations/topology-isembedding-istotallydisconnected-image.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Topology.IsEmbedding.isTotallyDisconnected_range](declarations/topology-isembedding-istotallydisconnected-range.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [totallyDisconnectedSpace_subtype_iff](declarations/totallydisconnectedspace-subtype-iff.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [Subtype.totallyDisconnectedSpace](declarations/subtype-totallydisconnectedspace.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [IsTotallySeparated](declarations/istotallyseparated.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isTotallySeparated_empty](declarations/istotallyseparated-empty.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isTotallySeparated_singleton](declarations/istotallyseparated-singleton.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isTotallyDisconnected_of_isTotallySeparated](declarations/istotallydisconnected-of-istotallyseparated.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `class` | [TotallySeparatedSpace](declarations/totallyseparatedspace.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [totallySeparatedSpace_iff_exists_isClopen](declarations/totallyseparatedspace-iff-exists-isclopen.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [exists_isClopen_of_totally_separated](declarations/exists-isclopen-of-totally-separated.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isTotallyDisconnected_of_isClopen_set](declarations/istotallydisconnected-of-isclopen-set.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Continuous.image_eq_of_connectedComponent_eq](declarations/continuous-image-eq-of-connectedcomponent-eq.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Continuous.connectedComponentsLift](declarations/continuous-connectedcomponentslift.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Continuous.connectedComponentsLift_continuous](declarations/continuous-connectedcomponentslift-continuous.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Continuous.connectedComponentsLift_apply_coe](declarations/continuous-connectedcomponentslift-apply-coe.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Continuous.connectedComponentsLift_comp_coe](declarations/continuous-connectedcomponentslift-comp-coe.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [connectedComponents_lift_unique'](declarations/connectedcomponents-lift-unique.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Continuous.connectedComponentsLift_unique](declarations/continuous-connectedcomponentslift-unique.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [ConnectedComponents.totallyDisconnectedSpace](declarations/connectedcomponents-totallydisconnectedspace.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Continuous.connectedComponentsMap](declarations/continuous-connectedcomponentsmap.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Continuous.connectedComponentsMap_continuous](declarations/continuous-connectedcomponentsmap-continuous.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IsPreconnected.constant](declarations/ispreconnected-constant.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [PreconnectedSpace.constant](declarations/preconnectedspace-constant.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsPreconnected.constant_of_mapsTo](declarations/ispreconnected-constant-of-mapsto.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsPreconnected.eqOn_const_of_mapsTo](declarations/ispreconnected-eqon-const-of-mapsto.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11f41e1a8aaa239f24437736677006d9dc5744d0aeefa0a759444d09e2903a5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
