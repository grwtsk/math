# Solvable Namespaced Is Solvable Iff Commutator Lt

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fc119814455e9d5098ac06dcf1da3518b256f24`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/SolvableNamespacedIsSolvableIffCommutatorLt.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [derivedSeries](declarations/derivedseries.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [derivedSeries_zero](declarations/derivedseries-zero.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [derivedSeries_succ](declarations/derivedseries-succ.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [derivedSeries_normal](declarations/derivedseries-normal.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [derivedSeries_one](declarations/derivedseries-one.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [map_derivedSeries_le_derivedSeries](declarations/map-derivedseries-le-derivedseries.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [derivedSeries_le_map_derivedSeries](declarations/derivedseries-le-map-derivedseries.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [map_derivedSeries_eq](declarations/map-derivedseries-eq.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `class` | [IsSolvable](declarations/issolvable.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isSolvable_of_comm](declarations/issolvable-of-comm.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isSolvable_of_top_eq_bot](declarations/issolvable-of-top-eq-bot.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [solvable_of_ker_le_range](declarations/solvable-of-ker-le-range.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [solvable_of_solvable_injective](declarations/solvable-of-solvable-injective.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [subgroup_solvable_of_solvable](declarations/subgroup-solvable-of-solvable.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [solvable_of_surjective](declarations/solvable-of-surjective.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [solvable_quotient_of_solvable](declarations/solvable-quotient-of-solvable.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [solvable_prod](declarations/solvable-prod.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsSolvable.commutator_lt_top_of_nontrivial](declarations/issolvable-commutator-lt-top-of-nontrivial.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsSolvable.commutator_lt_of_ne_bot](declarations/issolvable-commutator-lt-of-ne-bot.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isSolvable_iff_commutator_lt](declarations/issolvable-iff-commutator-lt.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsSimpleGroup.derivedSeries_succ](declarations/issimplegroup-derivedseries-succ.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsSimpleGroup.comm_iff_isSolvable](declarations/issimplegroup-comm-iff-issolvable.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [not_solvable_of_mem_derivedSeries](declarations/not-solvable-of-mem-derivedseries.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Equiv.Perm.fin_5_not_solvable](declarations/equiv-perm-fin-5-not-solvable.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Equiv.Perm.not_solvable](declarations/equiv-perm-not-solvable.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f31fc1149d087539433e7bca6d14214439225ba486159afa7fee34cd15c1f8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
