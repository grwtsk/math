# Metric Space Defs

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8538e3f9b56a7a5ab8a17e284aadf85820c16f18`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/MetricSpaceDefs.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [MetricSpace](declarations/metricspace.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [MetricSpace.ext](declarations/metricspace-ext.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [MetricSpace.ofDistTopology](declarations/metricspace-ofdisttopology.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [eq_of_dist_eq_zero](declarations/eq-of-dist-eq-zero.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [dist_eq_zero](declarations/dist-eq-zero.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [zero_eq_dist](declarations/zero-eq-dist.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [dist_ne_zero](declarations/dist-ne-zero.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [dist_le_zero](declarations/dist-le-zero.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [dist_pos](declarations/dist-pos.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eq_of_forall_dist_le](declarations/eq-of-forall-dist-le.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eq_of_nndist_eq_zero](declarations/eq-of-nndist-eq-zero.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [nndist_eq_zero](declarations/nndist-eq-zero.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [zero_eq_nndist](declarations/zero-eq-nndist.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [closedBall_zero](declarations/closedball-zero.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sphere_zero](declarations/sphere-zero.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [subsingleton_closedBall](declarations/subsingleton-closedball.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [subsingleton_sphere](declarations/subsingleton-sphere.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [MetricSpace.replaceUniformity](declarations/metricspace-replaceuniformity.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [MetricSpace.replaceUniformity_eq](declarations/metricspace-replaceuniformity-eq.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [MetricSpace.replaceTopology](declarations/metricspace-replacetopology.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [MetricSpace.replaceTopology_eq](declarations/metricspace-replacetopology-eq.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [MetricSpace.replaceBornology](declarations/metricspace-replacebornology.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [MetricSpace.replaceBornology_eq](declarations/metricspace-replacebornology-eq.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dist_ofMul](declarations/dist-ofmul.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [dist_ofAdd](declarations/dist-ofadd.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [dist_toMul](declarations/dist-tomul.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [dist_toAdd](declarations/dist-toadd.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [dist_toDual](declarations/dist-todual.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [dist_ofDual](declarations/dist-ofdual.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a57c930f47fd52db4d5a6e63f19b37453aeadcc9e32fd808526d442c6ae68dd7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
