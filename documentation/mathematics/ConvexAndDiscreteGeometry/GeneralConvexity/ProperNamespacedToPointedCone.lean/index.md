# Proper Namespaced To Pointed Cone

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd02462d122de8084b0fa28d43ea50fc83c65260`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ConvexAndDiscreteGeometry/GeneralConvexity/ProperNamespacedToPointedCone.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ProperCone](declarations/propercone.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [toPointedCone](declarations/topointedcone.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toPointedCone_injective](declarations/topointedcone-injective.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [ext](declarations/ext.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_coe](declarations/mem-coe.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instZero](declarations/instzero.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [nonempty](declarations/nonempty.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isClosed](declarations/isclosed.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [positive](declarations/positive.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_positive](declarations/mem-positive.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_positive](declarations/coe-positive.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_zero](declarations/mem-zero.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_zero](declarations/coe-zero.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pointed_zero](declarations/pointed-zero.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pointed](declarations/pointed.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [map](declarations/map.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_map](declarations/coe-map.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_map](declarations/mem-map.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_id](declarations/map-id.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [dual](declarations/dual.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_dual](declarations/coe-dual.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_dual](declarations/mem-dual.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [comap](declarations/comap.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_comap](declarations/coe-comap.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [comap_id](declarations/comap-id.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [comap_comap](declarations/comap-comap.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_comap](declarations/mem-comap.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [dual_dual](declarations/dual-dual.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [hyperplane_separation](declarations/hyperplane-separation.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [hyperplane_separation_of_notMem](declarations/hyperplane-separation-of-notmem.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f5f8f17a9298c9347e0f18e48d936b41f3505599b362b56590483cb0700bbc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
