# Block Direction Reindexing Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/A2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897BlockDirectionRe/Variant38a65b954b31467ea230796c0c00c8b91ab0a40a4a650d7b7e8968f8dc836944.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dfa4640d8a55c6576023be73a4ba91105578df4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/BlockDirectionReindexingNamespaced.lean/index.md).

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
| 19 | `theorem` | [AgreeBelow.refl](declarations/agreebelow-refl.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [AgreeBelow.symm](declarations/agreebelow-symm.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [AgreeBelow.trans](declarations/agreebelow-trans.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [blockCumulantValue_eq_of_agreeBelow](declarations/blockcumulantvalue-eq-of-agreebelow.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [directionalPartitionWeight_congr_of_agreeBelow](declarations/directionalpartitionweight-congr-of-agreebelow.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [directionalProperContribution_congr_of_agreeBelow](declarations/directionalpropercontribution-congr-of-agreebelow.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [recursiveDirectionalCumulant](declarations/recursivedirectionalcumulant.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [recursiveDirectionalCumulant_eq_isolated](declarations/recursivedirectionalcumulant-eq-isolated.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [recursiveDirectionalCumulant_congr_of_agreeBelow](declarations/recursivedirectionalcumulant-congr-of-agreebelow.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [recursiveDirectionalUpdate_satisfies](declarations/recursivedirectionalupdate-satisfies.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc5616f86d542d2dc26ce9d686fdd836f15c9b38a8a20aa1c1daa970b45ab228 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/A2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897BlockDirectionRe/Variant38a65b954b31467ea230796c0c00c8b91ab0a40a4a650d7b7e8968f8dc836944.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
