# Finsupp Order Namespaced Sum Le Sum

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 39 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant637016cc91b1efb6f2f9ebca5f53d569bb237885738689b52791c561aeae002b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30906940206bc73b6fd3d5b37999dc82ac9a9806`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedSumLeSum.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_le_sum](declarations/sum-le-sum.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instLEFinsupp](declarations/instlefinsupp.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [le_def](declarations/le-def.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [coe_le_coe](declarations/coe-le-coe.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [orderEmbeddingToFun](declarations/orderembeddingtofun.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [orderEmbeddingToFun_apply](declarations/orderembeddingtofun-apply.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [preorder](declarations/preorder.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [lt_def](declarations/lt-def.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [coe_lt_coe](declarations/coe-lt-coe.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [coe_mono](declarations/coe-mono.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [coe_strictMono](declarations/coe-strictmono.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [single_le_single](declarations/single-le-single.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [single_mono](declarations/single-mono.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [single_nonneg](declarations/single-nonneg.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [single_nonpos](declarations/single-nonpos.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [sum_le_sum_index](declarations/sum-le-sum-index.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [partialorder](declarations/partialorder.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [semilatticeInf](declarations/semilatticeinf.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [inf_apply](declarations/inf-apply.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [semilatticeSup](declarations/semilatticesup.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sup_apply](declarations/sup-apply.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [lattice](declarations/lattice.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [support_inf_union_support_sup](declarations/support-inf-union-support-sup.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [support_sup_union_support_inf](declarations/support-sup-union-support-inf.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [isOrderedAddMonoid](declarations/isorderedaddmonoid.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [mapDomain_mono](declarations/mapdomain-mono.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [GCongr.mapDomain_mono](declarations/gcongr-mapdomain-mono.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [mapDomain_nonneg](declarations/mapdomain-nonneg.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [mapDomain_nonpos](declarations/mapdomain-nonpos.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [isOrderedCancelAddMonoid](declarations/isorderedcanceladdmonoid.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [addLeftReflectLE](declarations/addleftreflectle.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instPosSMulMono](declarations/instpossmulmono.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instSMulPosMono](declarations/instsmulposmono.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instPosSMulReflectLE](declarations/instpossmulreflectle.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instSMulPosReflectLE](declarations/instsmulposreflectle.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instPosSMulStrictMono](declarations/instpossmulstrictmono.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [instSMulPosStrictMono](declarations/instsmulposstrictmono.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [instSMulPosReflectLT](declarations/instsmulposreflectlt.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [orderBot](declarations/orderbot.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [bot_eq_zero](declarations/bot-eq-zero.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [add_eq_zero_iff](declarations/add-eq-zero-iff.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [le_iff'](declarations/le-iff.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [le_iff](declarations/le-iff-source-edition-2.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [support_monotone](declarations/support-monotone.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [support_mono](declarations/support-mono.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [decidableLE](declarations/decidablele.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [decidableLT](declarations/decidablelt.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [single_le_iff](declarations/single-le-iff.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [tsub](declarations/tsub.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [orderedSub](declarations/orderedsub.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [coe_tsub](declarations/coe-tsub.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [tsub_apply](declarations/tsub-apply.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [single_tsub](declarations/single-tsub.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [support_tsub](declarations/support-tsub.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [subset_support_tsub](declarations/subset-support-tsub.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [support_inf](declarations/support-inf.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [support_sup](declarations/support-sup.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [disjoint_iff](declarations/disjoint-iff.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [sub_single_one_add](declarations/sub-single-one-add.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [add_sub_single_one](declarations/add-sub-single-one.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [sub_add_single_one_cancel](declarations/sub-add-single-one-cancel.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=973adca205b44fe141765d5e320f19d2a573227606329cddeb47076b37e971c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant637016cc91b1efb6f2f9ebca5f53d569bb237885738689b52791c561aeae002b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
