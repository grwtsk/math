# Gromov Hausdorff Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b16fb6ac9e2401d610a790878999f1676ea9061`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/GromovHausdorffPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsometryRel](declarations/isometryrel.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [equivalence_isometryRel](declarations/equivalence-isometryrel.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [IsometryRel.setoid](declarations/isometryrel-setoid.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [GHSpace](declarations/ghspace.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toGHSpace](declarations/toghspace.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [GHSpace.Rep](declarations/ghspace-rep.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eq_toGHSpace_iff](declarations/eq-toghspace-iff.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eq_toGHSpace](declarations/eq-toghspace.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [repGHSpaceMetricSpace](declarations/repghspacemetricspace.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [rep_gHSpace_compactSpace](declarations/rep-ghspace-compactspace.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [rep_gHSpace_nonempty](declarations/rep-ghspace-nonempty.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [GHSpace.toGHSpace_rep](declarations/ghspace-toghspace-rep.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toGHSpace_eq_toGHSpace_iff_isometryEquiv](declarations/toghspace-eq-toghspace-iff-isometryequiv.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [ghDist](declarations/ghdist.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [dist_ghDist](declarations/dist-ghdist.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ghDist_le_hausdorffDist](declarations/ghdist-le-hausdorffdist.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [hausdorffDist_optimal](declarations/hausdorffdist-optimal.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ghDist_eq_hausdorffDist](declarations/ghdist-eq-hausdorffdist.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [TopologicalSpace.NonemptyCompacts.toGHSpace](declarations/topologicalspace-nonemptycompacts-toghspace.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ghDist_le_nonemptyCompacts_dist](declarations/ghdist-le-nonemptycompacts-dist.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toGHSpace_lipschitz](declarations/toghspace-lipschitz.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toGHSpace_continuous](declarations/toghspace-continuous.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ghDist_le_of_approx_subsets](declarations/ghdist-le-of-approx-subsets.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [totallyBounded](declarations/totallybounded.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [AuxGluingStruct](declarations/auxgluingstruct.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [auxGluing](declarations/auxgluing.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08bc82e963eef0d0bd484ba82367e0dd985c5bb00ffd85ce16a0c73820ebf91e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
