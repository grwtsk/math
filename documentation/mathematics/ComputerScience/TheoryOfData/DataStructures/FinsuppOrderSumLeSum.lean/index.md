# Finsupp Order Sum Le Sum

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 39 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant3d49485f28d8029af3dd6d41cf21487d3764c625e8bdc0a9273ba57fcb55b113.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6fa4d24b3256f73c2fc7b8afcc930a1159191ac`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/FinsuppOrderSumLeSum.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_le_sum](declarations/sum-le-sum.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instLEFinsupp](declarations/instlefinsupp.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [le_def](declarations/le-def.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [coe_le_coe](declarations/coe-le-coe.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [orderEmbeddingToFun](declarations/orderembeddingtofun.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [orderEmbeddingToFun_apply](declarations/orderembeddingtofun-apply.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [preorder](declarations/preorder.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [lt_def](declarations/lt-def.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [coe_lt_coe](declarations/coe-lt-coe.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [coe_mono](declarations/coe-mono.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [coe_strictMono](declarations/coe-strictmono.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [single_le_single](declarations/single-le-single.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [single_mono](declarations/single-mono.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [single_nonneg](declarations/single-nonneg.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [single_nonpos](declarations/single-nonpos.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [sum_le_sum_index](declarations/sum-le-sum-index.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [partialorder](declarations/partialorder.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [semilatticeInf](declarations/semilatticeinf.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [inf_apply](declarations/inf-apply.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [semilatticeSup](declarations/semilatticesup.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sup_apply](declarations/sup-apply.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [lattice](declarations/lattice.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [support_inf_union_support_sup](declarations/support-inf-union-support-sup.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [support_sup_union_support_inf](declarations/support-sup-union-support-inf.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [isOrderedAddMonoid](declarations/isorderedaddmonoid.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [mapDomain_mono](declarations/mapdomain-mono.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [GCongr.mapDomain_mono](declarations/gcongr-mapdomain-mono.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [mapDomain_nonneg](declarations/mapdomain-nonneg.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [mapDomain_nonpos](declarations/mapdomain-nonpos.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [isOrderedCancelAddMonoid](declarations/isorderedcanceladdmonoid.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [addLeftReflectLE](declarations/addleftreflectle.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instPosSMulMono](declarations/instpossmulmono.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instSMulPosMono](declarations/instsmulposmono.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instPosSMulReflectLE](declarations/instpossmulreflectle.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instSMulPosReflectLE](declarations/instsmulposreflectle.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instPosSMulStrictMono](declarations/instpossmulstrictmono.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [instSMulPosStrictMono](declarations/instsmulposstrictmono.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [instSMulPosReflectLT](declarations/instsmulposreflectlt.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [orderBot](declarations/orderbot.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [bot_eq_zero](declarations/bot-eq-zero.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [add_eq_zero_iff](declarations/add-eq-zero-iff.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [le_iff'](declarations/le-iff-source-edition-2.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [le_iff](declarations/le-iff.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [support_monotone](declarations/support-monotone.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [support_mono](declarations/support-mono.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [decidableLE](declarations/decidablele.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [decidableLT](declarations/decidablelt.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [single_le_iff](declarations/single-le-iff.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [tsub](declarations/tsub.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [orderedSub](declarations/orderedsub.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [coe_tsub](declarations/coe-tsub.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [tsub_apply](declarations/tsub-apply.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [single_tsub](declarations/single-tsub.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [support_tsub](declarations/support-tsub.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [subset_support_tsub](declarations/subset-support-tsub.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [support_inf](declarations/support-inf.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [support_sup](declarations/support-sup.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [disjoint_iff](declarations/disjoint-iff.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [sub_single_one_add](declarations/sub-single-one-add.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [add_sub_single_one](declarations/add-sub-single-one.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [sub_add_single_one_cancel](declarations/sub-add-single-one-cancel.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8d49a5dac27f4d892b67f77e08aed0f4bc4a65ce6b4d8af5ea09e85522c78ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant3d49485f28d8029af3dd6d41cf21487d3764c625e8bdc0a9273ba57fcb55b113.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
