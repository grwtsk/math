# Block Direction Reindexing Namespaced Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ce4927be8e0f0affc46e6c26462a59e98989603`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [blockOrderIso](declarations/blockorderiso.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [blockOrderIso_mem](declarations/blockorderiso-mem.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [blockDirections](declarations/blockdirections.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [blockDirections_apply](declarations/blockdirections-apply.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [exists_blockIndex](declarations/exists-blockindex.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [block_nonempty_of_mem_parts](declarations/block-nonempty-of-mem-parts.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [block_card_pos_of_mem_parts](declarations/block-card-pos-of-mem-parts.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [block_card_lt_of_ne_univ](declarations/block-card-lt-of-ne-univ.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [block_card_lt_of_mem_properPartition](declarations/block-card-lt-of-mem-properpartition.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [DirectionCumulantFamily](declarations/directioncumulantfamily.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [blockCumulantValue](declarations/blockcumulantvalue.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [blockCumulantFunctional](declarations/blockcumulantfunctional.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [blockCumulantFunctional_apply](declarations/blockcumulantfunctional-apply.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [directionalPartitionWeight](declarations/directionalpartitionweight.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [directionalPartitionMoment](declarations/directionalpartitionmoment.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [directionalProperContribution](declarations/directionalpropercontribution.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [directionalPartitionWeight_apply](declarations/directionalpartitionweight-apply.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [AgreeBelow](declarations/agreebelow.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [AgreeBelow.refl](declarations/agreebelow-refl.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [AgreeBelow.symm](declarations/agreebelow-symm.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [AgreeBelow.trans](declarations/agreebelow-trans.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [blockCumulantValue_eq_of_agreeBelow](declarations/blockcumulantvalue-eq-of-agreebelow.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [directionalPartitionWeight_congr_of_agreeBelow](declarations/directionalpartitionweight-congr-of-agreebelow.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [directionalProperContribution_congr_of_agreeBelow](declarations/directionalpropercontribution-congr-of-agreebelow.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [recursiveDirectionalCumulant](declarations/recursivedirectionalcumulant.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [recursiveDirectionalCumulant_eq_isolated](declarations/recursivedirectionalcumulant-eq-isolated.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [recursiveDirectionalCumulant_congr_of_agreeBelow](declarations/recursivedirectionalcumulant-congr-of-agreebelow.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [recursiveDirectionalUpdate_satisfies](declarations/recursivedirectionalupdate-satisfies.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0feb55d6343d70e7a039972b24de4ee239621fe84d7cd3bfabeaa827b810d64e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
