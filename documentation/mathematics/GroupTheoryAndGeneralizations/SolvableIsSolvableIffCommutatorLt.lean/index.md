# Solvable Is Solvable Iff Commutator Lt

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52d0b6de8636368d9883edc5763bc392df35ea51`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/SolvableIsSolvableIffCommutatorLt.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [derivedSeries](declarations/derivedseries.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [derivedSeries_zero](declarations/derivedseries-zero.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [derivedSeries_succ](declarations/derivedseries-succ.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [derivedSeries_normal](declarations/derivedseries-normal.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [derivedSeries_one](declarations/derivedseries-one.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [map_derivedSeries_le_derivedSeries](declarations/map-derivedseries-le-derivedseries.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [derivedSeries_le_map_derivedSeries](declarations/derivedseries-le-map-derivedseries.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [map_derivedSeries_eq](declarations/map-derivedseries-eq.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `class` | [IsSolvable](declarations/issolvable.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isSolvable_of_comm](declarations/issolvable-of-comm.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isSolvable_of_top_eq_bot](declarations/issolvable-of-top-eq-bot.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [solvable_of_ker_le_range](declarations/solvable-of-ker-le-range.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [solvable_of_solvable_injective](declarations/solvable-of-solvable-injective.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [subgroup_solvable_of_solvable](declarations/subgroup-solvable-of-solvable.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [solvable_of_surjective](declarations/solvable-of-surjective.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [solvable_quotient_of_solvable](declarations/solvable-quotient-of-solvable.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [solvable_prod](declarations/solvable-prod.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsSolvable.commutator_lt_top_of_nontrivial](declarations/issolvable-commutator-lt-top-of-nontrivial.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsSolvable.commutator_lt_of_ne_bot](declarations/issolvable-commutator-lt-of-ne-bot.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isSolvable_iff_commutator_lt](declarations/issolvable-iff-commutator-lt.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsSimpleGroup.derivedSeries_succ](declarations/issimplegroup-derivedseries-succ.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsSimpleGroup.comm_iff_isSolvable](declarations/issimplegroup-comm-iff-issolvable.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [not_solvable_of_mem_derivedSeries](declarations/not-solvable-of-mem-derivedseries.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Equiv.Perm.fin_5_not_solvable](declarations/equiv-perm-fin-5-not-solvable.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Equiv.Perm.not_solvable](declarations/equiv-perm-not-solvable.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7eb4cb620dcbab344bd9a8fbe5fec16e83d1d833c1b727654ce492b906ae0ee6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
