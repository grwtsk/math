# Gromov Hausdorff Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `647a1da85db9bfb4dde10a068d6978427b3a9a80`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/GromovHausdorffNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsometryRel](declarations/isometryrel.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [equivalence_isometryRel](declarations/equivalence-isometryrel.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [IsometryRel.setoid](declarations/isometryrel-setoid.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [GHSpace](declarations/ghspace.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toGHSpace](declarations/toghspace.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [GHSpace.Rep](declarations/ghspace-rep.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eq_toGHSpace_iff](declarations/eq-toghspace-iff.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eq_toGHSpace](declarations/eq-toghspace.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [repGHSpaceMetricSpace](declarations/repghspacemetricspace.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [rep_gHSpace_compactSpace](declarations/rep-ghspace-compactspace.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [rep_gHSpace_nonempty](declarations/rep-ghspace-nonempty.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [GHSpace.toGHSpace_rep](declarations/ghspace-toghspace-rep.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toGHSpace_eq_toGHSpace_iff_isometryEquiv](declarations/toghspace-eq-toghspace-iff-isometryequiv.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [ghDist](declarations/ghdist.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [dist_ghDist](declarations/dist-ghdist.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ghDist_le_hausdorffDist](declarations/ghdist-le-hausdorffdist.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [hausdorffDist_optimal](declarations/hausdorffdist-optimal.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ghDist_eq_hausdorffDist](declarations/ghdist-eq-hausdorffdist.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [TopologicalSpace.NonemptyCompacts.toGHSpace](declarations/topologicalspace-nonemptycompacts-toghspace.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ghDist_le_nonemptyCompacts_dist](declarations/ghdist-le-nonemptycompacts-dist.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toGHSpace_lipschitz](declarations/toghspace-lipschitz.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toGHSpace_continuous](declarations/toghspace-continuous.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ghDist_le_of_approx_subsets](declarations/ghdist-le-of-approx-subsets.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [totallyBounded](declarations/totallybounded.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [AuxGluingStruct](declarations/auxgluingstruct.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [auxGluing](declarations/auxgluing.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=069bac7bb9c3de06e8bca218cf7c7543d60ebd547cae9783eca7402ca2a0462d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
