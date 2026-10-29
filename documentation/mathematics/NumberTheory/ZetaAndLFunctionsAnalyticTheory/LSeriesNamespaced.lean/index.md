# LSeries Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de7239b112ddb32aced751ba00cc0adde0b356cf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LSeriesNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [lamC](declarations/lamc.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [lamLogC](declarations/lamlogc.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [lamC_apply](declarations/lamc-apply.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [lamLogC_apply](declarations/lamlogc-apply.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [lamLogConv_zero_apply](declarations/lamlogconv-zero-apply.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [lam_mul_lamLogConv](declarations/lam-mul-lamlogconv.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [lamC_conv_xiCoeffJ](declarations/lamc-conv-xicoeffj.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [xiCoeffJ_identity](declarations/xicoeffj-identity.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [lamLogC_eq](declarations/lamlogc-eq.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [norm_xiCoeffJ_rpow_nonneg](declarations/norm-xicoeffj-rpow-nonneg.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [sum_range_le_sum_Ioc](declarations/sum-range-le-sum-ioc.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [norm_term_xiCoeffJ](declarations/norm-term-xicoeffj.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Asig](declarations/asig.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [summable_lam_rpow_of_gt_one](declarations/summable-lam-rpow-of-gt-one.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [lam_rpow_nonneg'](declarations/lam-rpow-nonneg.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [Asig_nonneg](declarations/asig-nonneg.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [sum_lam_rpow_le_Asig](declarations/sum-lam-rpow-le-asig.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [sigAux](declarations/sigaux.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [one_lt_sigAux](declarations/one-lt-sigaux.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [R0sig](declarations/r0sig.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [R0sig_pos](declarations/r0sig-pos.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [sum_norm_xiCoeffJ_rpow_le_gen](declarations/sum-norm-xicoeffj-rpow-le-gen.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [summable_norm_xiCoeffJ_gen](declarations/summable-norm-xicoeffj-gen.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [norm_xiCoeffJ_tsum_le_of_gt_one](declarations/norm-xicoeffj-tsum-le-of-gt-one.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [summable_norm_xiCoeffJ_rpow_gen](declarations/summable-norm-xicoeffj-rpow-gen.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [norm_LSeries_lamC_le_gen](declarations/norm-lseries-lamc-le-gen.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [LSeries_xiCoeffJ_of_gt_one](declarations/lseries-xicoeffj-of-gt-one.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [norm_xiCoeffJ_tsum_le](declarations/norm-xicoeffj-tsum-le.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [LSeries_xiCoeffJ](declarations/lseries-xicoeffj.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1edc418f84adc85df161e63a388692d07ae788b7ba40855302b6ce133bbdd8fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
