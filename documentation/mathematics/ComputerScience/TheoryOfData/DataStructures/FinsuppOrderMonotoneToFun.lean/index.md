# Finsupp Order Monotone To Fun

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1293a9a84235c4ac4bbbc38cfded6c224cffa5ca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/FinsuppOrderMonotoneToFun.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instLEFinsupp](declarations/instlefinsupp.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [le_def](declarations/le-def.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [orderEmbeddingToFun](declarations/orderembeddingtofun.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [orderEmbeddingToFun_apply](declarations/orderembeddingtofun-apply.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [preorder](declarations/preorder.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [monotone_toFun](declarations/monotone-tofun.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [partialorder](declarations/partialorder.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [semilatticeInf](declarations/semilatticeinf.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [inf_apply](declarations/inf-apply.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [semilatticeSup](declarations/semilatticesup.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sup_apply](declarations/sup-apply.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [lattice](declarations/lattice.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [support_inf_union_support_sup](declarations/support-inf-union-support-sup.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [support_sup_union_support_inf](declarations/support-sup-union-support-inf.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [orderedAddCommMonoid](declarations/orderedaddcommmonoid.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [orderedCancelAddCommMonoid](declarations/orderedcanceladdcommmonoid.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [contravariantClass](declarations/contravariantclass.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [orderBot](declarations/orderbot.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [bot_eq_zero](declarations/bot-eq-zero.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [add_eq_zero_iff](declarations/add-eq-zero-iff.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [le_iff'](declarations/le-iff.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [le_iff](declarations/le-iff-source-edition-2.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [decidableLE](declarations/decidablele.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [single_le_iff](declarations/single-le-iff.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [tsub](declarations/tsub.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [orderedSub](declarations/orderedsub.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_tsub](declarations/coe-tsub.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [tsub_apply](declarations/tsub-apply.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [single_tsub](declarations/single-tsub.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [support_tsub](declarations/support-tsub.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [subset_support_tsub](declarations/subset-support-tsub.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [support_inf](declarations/support-inf.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [support_sup](declarations/support-sup.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [disjoint_iff](declarations/disjoint-iff.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sub_single_one_add](declarations/sub-single-one-add.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [add_sub_single_one](declarations/add-sub-single-one.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5577e54fd2080947c19a42dbeae11a0117f1683d262a738633d0a04a3b60eb1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
