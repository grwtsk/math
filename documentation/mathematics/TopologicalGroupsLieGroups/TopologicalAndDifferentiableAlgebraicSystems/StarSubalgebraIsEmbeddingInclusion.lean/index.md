# Star Subalgebra Is Embedding Inclusion

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ebd3d261458b22283aca6c28f3d81a6a3ecac77`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraIsEmbeddingInclusion.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [isEmbedding_inclusion](declarations/isembedding-inclusion.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isClosedEmbedding_inclusion](declarations/isclosedembedding-inclusion.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [topologicalClosure](declarations/topologicalclosure.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [topologicalClosure_toSubalgebra_comm](declarations/topologicalclosure-tosubalgebra-comm.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [topologicalClosure_coe](declarations/topologicalclosure-coe.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [le_topologicalClosure](declarations/le-topologicalclosure.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isClosed_topologicalClosure](declarations/isclosed-topologicalclosure.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [topologicalClosure_minimal](declarations/topologicalclosure-minimal.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [topologicalClosure_mono](declarations/topologicalclosure-mono.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [topologicalClosure_map_le](declarations/topologicalclosure-map-le.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [map_topologicalClosure_le](declarations/map-topologicalclosure-le.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [topologicalClosure_map](declarations/topologicalclosure-map.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [_root_.Subalgebra.topologicalClosure_star_comm](declarations/root-subalgebra-topologicalclosure-star-comm.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [commSemiringTopologicalClosure](declarations/commsemiringtopologicalclosure.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [commRingTopologicalClosure](declarations/commringtopologicalclosure.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [_root_.StarAlgHom.ext_topologicalClosure](declarations/root-staralghom-ext-topologicalclosure.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [_root_.StarAlgHomClass.ext_topologicalClosure](declarations/root-staralghomclass-ext-topologicalclosure.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [elemental](declarations/elemental.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [self_mem](declarations/self-mem.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [star_self_mem](declarations/star-self-mem.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isClosed](declarations/isclosed.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [le_of_mem](declarations/le-of-mem.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [le_iff_mem](declarations/le-iff-mem.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isClosedEmbedding_coe](declarations/isclosedembedding-coe.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [induction_on](declarations/induction-on.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [starAlgHomClass_ext](declarations/staralghomclass-ext.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d089d2b50b3daa88f26f73fc52e38dbaa86a74811207bfc815e889d8fd727a26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
