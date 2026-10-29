# Topological Graph Realization

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1eebb7840fb703e8e1e9a609c479d59fee54161d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/TopologicalGraphRealization.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [GraphPrePoint](declarations/graphprepoint.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [GraphEndpointEqv](declarations/graphendpointeqv.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [graphEndpointEqv_minimal](declarations/graphendpointeqv-minimal.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [graphEndpointSetoid](declarations/graphendpointsetoid.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [GraphPoint](declarations/graphpoint.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [graphQuotientMap](declarations/graphquotientmap.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [quotientMap](declarations/quotientmap.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [vertexPoint](declarations/vertexpoint.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [edgePath](declarations/edgepath.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [edgePath_zero](declarations/edgepath-zero.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [edgePath_one](declarations/edgepath-one.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [VertexFiberTag](declarations/vertexfibertag.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [graphEndpointEqv_preserves_vertexFiberTag](declarations/graphendpointeqv-preserves-vertexfibertag.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [vertexPoint_injective](declarations/vertexpoint-injective.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [InteriorTag](declarations/interiortag.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [interiorTag_zero_false](declarations/interiortag-zero-false.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [interiorTag_one_false](declarations/interiortag-one-false.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [graphEndpointEqv_preserves_interiorTag](declarations/graphendpointeqv-preserves-interiortag.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [EdgeInteriorPoint](declarations/edgeinteriorpoint.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [edgePath_injective_on_interior](declarations/edgepath-injective-on-interior.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [distinct_edgeInteriors_disjoint](declarations/distinct-edgeinteriors-disjoint.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [edgeInterior_avoids_vertices](declarations/edgeinterior-avoids-vertices.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [graphPreTopology](declarations/graphpretopology.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [graphPreTopology_vertexSubset_open](declarations/graphpretopology-vertexsubset-open.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [graphRealizationTopology](declarations/graphrealizationtopology.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [graphQuotientMap_continuous](declarations/graphquotientmap-continuous.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [quotientMap_continuous](declarations/quotientmap-continuous.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [edgePath_continuous](declarations/edgepath-continuous.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [continuous_from_graphRealization_iff](declarations/continuous-from-graphrealization-iff.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e8469c855cb993b59b38f55e0403109b5b18e04399066828613fec3f2e5df29 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
