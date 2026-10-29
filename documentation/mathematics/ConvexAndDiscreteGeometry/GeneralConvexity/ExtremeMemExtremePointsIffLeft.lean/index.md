# Extreme Mem Extreme Points Iff Left

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1534f8048721e1dfbc097d7077ee4ed9fae6301`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsExtreme](declarations/isextreme.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Set.extremePoints](declarations/set-extremepoints.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsExtreme.refl](declarations/isextreme-refl.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsExtreme.rfl](declarations/isextreme-rfl.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsExtreme.trans](declarations/isextreme-trans.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsExtreme.antisymm](declarations/isextreme-antisymm.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsExtreme.inter](declarations/isextreme-inter.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsExtreme.mono](declarations/isextreme-mono.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isExtreme_iInter](declarations/isextreme-iinter.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isExtreme_biInter](declarations/isextreme-biinter.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isExtreme_sInter](declarations/isextreme-sinter.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_extremePoints](declarations/mem-extremepoints.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_extremePoints_iff_left](declarations/mem-extremepoints-iff-left.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [isExtreme_singleton](declarations/isextreme-singleton.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [extremePoints_subset](declarations/extremepoints-subset.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [extremePoints_empty](declarations/extremepoints-empty.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [extremePoints_singleton](declarations/extremepoints-singleton.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [inter_extremePoints_subset_extremePoints_of_subset](declarations/inter-extremepoints-subset-extremepoints-of-subset.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsExtreme.extremePoints_subset_extremePoints](declarations/isextreme-extremepoints-subset-extremepoints.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsExtreme.extremePoints_eq](declarations/isextreme-extremepoints-eq.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsExtreme.convex_diff](declarations/isextreme-convex-diff.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [extremePoints_prod](declarations/extremepoints-prod.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [extremePoints_pi](declarations/extremepoints-pi.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [image_extremePoints](declarations/image-extremepoints.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_extremePoints_iff_forall_segment](declarations/mem-extremepoints-iff-forall-segment.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Convex.mem_extremePoints_iff_convex_diff](declarations/convex-mem-extremepoints-iff-convex-diff.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Convex.mem_extremePoints_iff_mem_diff_convexHull_diff](declarations/convex-mem-extremepoints-iff-mem-diff-convexhull-diff.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [extremePoints_convexHull_subset](declarations/extremepoints-convexhull-subset.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8700a3903e07c0104e9d2c1155ea88bcd2b9789f4ec63ed56afb616b4503f24c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
