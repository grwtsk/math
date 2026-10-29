# Group Action Pointwise Finset

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58698243360ed4a7d69f66845fee63a6db6a304a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupActionPointwiseFinset.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [smulCommClass_finset](declarations/smulcommclass-finset.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [smulCommClass_finset'](declarations/smulcommclass-finset-source-edition-2.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [smulCommClass_finset''](declarations/smulcommclass-finset-source-edition-3.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [smulCommClass](declarations/smulcommclass.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [isScalarTower](declarations/isscalartower.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [isScalarTower'](declarations/isscalartower-source-edition-3.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [isScalarTower''](declarations/isscalartower-source-edition-2.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mulAction](declarations/mulaction.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [mulActionFinset](declarations/mulactionfinset.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [mul_singleton](declarations/mul-singleton.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [singleton_mul](declarations/singleton-mul.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [smul_finset_subset_mul](declarations/smul-finset-subset-mul.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [op_smul_finset_subset_mul](declarations/op-smul-finset-subset-mul.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [biUnion_op_smul_finset](declarations/biunion-op-smul-finset.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mul_subset_iff_left](declarations/mul-subset-iff-left.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mul_subset_iff_right](declarations/mul-subset-iff-right.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [op_smul_finset_mul_eq_mul_smul_finset](declarations/op-smul-finset-mul-eq-mul-smul-finset.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pairwiseDisjoint_smul_iff](declarations/pairwisedisjoint-smul-iff.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [image_smul_distrib](declarations/image-smul-distrib.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [smul_mem_smul_finset_iff](declarations/smul-mem-smul-finset-iff.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [inv_smul_mem_iff](declarations/inv-smul-mem-iff.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_inv_smul_finset_iff](declarations/mem-inv-smul-finset-iff.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [smul_finset_subset_smul_finset_iff](declarations/smul-finset-subset-smul-finset-iff.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [smul_finset_subset_iff](declarations/smul-finset-subset-iff.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [subset_smul_finset_iff](declarations/subset-smul-finset-iff.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smul_finset_inter](declarations/smul-finset-inter.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [smul_finset_sdiff](declarations/smul-finset-sdiff.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [smul_finset_symmDiff](declarations/smul-finset-symmdiff.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [smul_finset_univ](declarations/smul-finset-univ.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [smul_univ](declarations/smul-univ.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [card_smul_finset](declarations/card-smul-finset.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [card_dvd_card_smul_right](declarations/card-dvd-card-smul-right.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [card_dvd_card_mul_left](declarations/card-dvd-card-mul-left.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [card_dvd_card_mul_right](declarations/card-dvd-card-mul-right.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [inv_smul_finset_distrib](declarations/inv-smul-finset-distrib.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [inv_op_smul_finset_distrib](declarations/inv-op-smul-finset-distrib.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [piFinset_smul](declarations/pifinset-smul.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [piFinset_smul_finset](declarations/pifinset-smul-finset.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [Nat.decidablePred_mem_vadd_set](declarations/nat-decidablepred-mem-vadd-set.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb2d566f797ef375b88561734bd80c2e8b3182ec0f749cee51bd497cbae15cb9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
