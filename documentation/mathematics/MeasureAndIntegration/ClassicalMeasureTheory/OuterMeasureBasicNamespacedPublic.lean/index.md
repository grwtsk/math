# Outer Measure Basic Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variant4b015fbe62a5f07a7b3117d9da563059687da51565aefb0843a76c2b3ef78e4e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3b7ba710e52e268825f1a4105ebcf3e9fb2737c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [measure_empty](declarations/measure-empty.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [measure_mono](declarations/measure-mono.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [measure_mono_null](declarations/measure-mono-null.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [pos_mono](declarations/pos-mono.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [measure_eq_top_mono](declarations/measure-eq-top-mono.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [measure_lt_top_mono](declarations/measure-lt-top-mono.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [measure_pos_of_superset](declarations/measure-pos-of-superset.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [measure_iUnion_le](declarations/measure-iunion-le.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [measure_biUnion_le](declarations/measure-biunion-le.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [measure_biUnion_finset_le](declarations/measure-biunion-finset-le.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [measure_iUnion_fintype_le](declarations/measure-iunion-fintype-le.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [measure_union_le](declarations/measure-union-le.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [measure_univ_le_add_compl](declarations/measure-univ-le-add-compl.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [measure_le_inter_add_sdiff](declarations/measure-le-inter-add-sdiff.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [measure_sdiff_null](declarations/measure-sdiff-null.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [measure_biUnion_null_iff](declarations/measure-biunion-null-iff.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [measure_sUnion_null_iff](declarations/measure-sunion-null-iff.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [measure_iUnion_null_iff](declarations/measure-iunion-null-iff.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [measure_union_null_iff](declarations/measure-union-null-iff.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [measure_union_null](declarations/measure-union-null.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [measure_null_iff_singleton](declarations/measure-null-iff-singleton.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [measure_iUnion_of_tendsto_zero](declarations/measure-iunion-of-tendsto-zero.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [measure_null_of_locally_null](declarations/measure-null-of-locally-null.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [exists_mem_forall_mem_nhdsWithin_pos_measure](declarations/exists-mem-forall-mem-nhdswithin-pos-measure.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [iUnion_of_tendsto_zero](declarations/iunion-of-tendsto-zero.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [iUnion_nat_of_monotone_of_tsum_ne_top](declarations/iunion-nat-of-monotone-of-tsum-ne-top.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_fn_injective](declarations/coe-fn-injective.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ext](declarations/ext.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ext_nonempty](declarations/ext-nonempty.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f6ec1b326ea6764d0f9d04b99d164fc28cdcc335dae9576f1b05776edf32361 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant4b015fbe62a5f07a7b3117d9da563059687da51565aefb0843a76c2b3ef78e4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
