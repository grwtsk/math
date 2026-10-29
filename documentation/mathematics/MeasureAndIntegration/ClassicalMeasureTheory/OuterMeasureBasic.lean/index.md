# Outer Measure Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a17491df6ec4d815c0d84a1ecf0df8b52902b03b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [measure_empty](declarations/measure-empty.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [measure_mono](declarations/measure-mono.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [measure_mono_null](declarations/measure-mono-null.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [measure_eq_top_mono](declarations/measure-eq-top-mono.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [measure_lt_top_mono](declarations/measure-lt-top-mono.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [measure_pos_of_superset](declarations/measure-pos-of-superset.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [measure_iUnion_le](declarations/measure-iunion-le.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [measure_biUnion_le](declarations/measure-biunion-le.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [measure_biUnion_finset_le](declarations/measure-biunion-finset-le.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [measure_iUnion_fintype_le](declarations/measure-iunion-fintype-le.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [measure_union_le](declarations/measure-union-le.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [measure_univ_le_add_compl](declarations/measure-univ-le-add-compl.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [measure_le_inter_add_diff](declarations/measure-le-inter-add-diff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [measure_diff_null](declarations/measure-diff-null.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [measure_biUnion_null_iff](declarations/measure-biunion-null-iff.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [measure_sUnion_null_iff](declarations/measure-sunion-null-iff.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [measure_iUnion_null_iff](declarations/measure-iunion-null-iff.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [measure_union_null_iff](declarations/measure-union-null-iff.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [measure_union_null](declarations/measure-union-null.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [measure_null_iff_singleton](declarations/measure-null-iff-singleton.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [measure_iUnion_of_tendsto_zero](declarations/measure-iunion-of-tendsto-zero.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [measure_null_of_locally_null](declarations/measure-null-of-locally-null.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_mem_forall_mem_nhdsWithin_pos_measure](declarations/exists-mem-forall-mem-nhdswithin-pos-measure.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [iUnion_of_tendsto_zero](declarations/iunion-of-tendsto-zero.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [iUnion_nat_of_monotone_of_tsum_ne_top](declarations/iunion-nat-of-monotone-of-tsum-ne-top.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_fn_injective](declarations/coe-fn-injective.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ext](declarations/ext.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ext_nonempty](declarations/ext-nonempty.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f085aba40e48f0d9839a436fa515d4f01f0fee48f30e377e6a28f36e19f89a2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
