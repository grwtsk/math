# Binary Entropy Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd975be22dd84dc7e31fd48fcd7435094d4f75aa`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/BinaryEntropyNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [binEntropy](declarations/binentropy.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [binEntropy_zero](declarations/binentropy-zero.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [binEntropy_one](declarations/binentropy-one.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [binEntropy_two_inv](declarations/binentropy-two-inv.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [binEntropy_eq_negMulLog_add_negMulLog_one_sub](declarations/binentropy-eq-negmullog-add-negmullog-one-sub.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [binEntropy_eq_negMulLog_add_negMulLog_one_sub'](declarations/binentropy-eq-negmullog-add-negmullog-one-sub-source-edition-2.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [binEntropy_one_sub](declarations/binentropy-one-sub.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [binEntropy_two_inv_add](declarations/binentropy-two-inv-add.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [binEntropy_pos](declarations/binentropy-pos.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [binEntropy_nonneg](declarations/binentropy-nonneg.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [binEntropy_neg_of_neg](declarations/binentropy-neg-of-neg.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [binEntropy_nonpos_of_nonpos](declarations/binentropy-nonpos-of-nonpos.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [binEntropy_neg_of_one_lt](declarations/binentropy-neg-of-one-lt.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [binEntropy_nonpos_of_one_le](declarations/binentropy-nonpos-of-one-le.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [binEntropy_eq_zero](declarations/binentropy-eq-zero.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [binEntropy_lt_log_two](declarations/binentropy-lt-log-two.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [binEntropy_le_log_two](declarations/binentropy-le-log-two.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [binEntropy_eq_log_two](declarations/binentropy-eq-log-two.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [binEntropy_continuous](declarations/binentropy-continuous.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [differentiableAt_binEntropy](declarations/differentiableat-binentropy.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [differentiableAt_binEntropy_iff_ne_zero_one](declarations/differentiableat-binentropy-iff-ne-zero-one.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [deriv_binEntropy](declarations/deriv-binentropy.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [qaryEntropy](declarations/qaryentropy.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [qaryEntropy_zero](declarations/qaryentropy-zero.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [qaryEntropy_one](declarations/qaryentropy-one.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [qaryEntropy_two](declarations/qaryentropy-two.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [qaryEntropy_pos](declarations/qaryentropy-pos.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [qaryEntropy_nonneg](declarations/qaryentropy-nonneg.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [qaryEntropy_neg_of_neg](declarations/qaryentropy-neg-of-neg.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [qaryEntropy_nonpos_of_nonpos](declarations/qaryentropy-nonpos-of-nonpos.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [qaryEntropy_continuous](declarations/qaryentropy-continuous.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [differentiableAt_qaryEntropy](declarations/differentiableat-qaryentropy.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [deriv_qaryEntropy](declarations/deriv-qaryentropy.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [hasDerivAt_binEntropy](declarations/hasderivat-binentropy.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [hasDerivAt_qaryEntropy](declarations/hasderivat-qaryentropy.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [tendsto_log_one_sub_sub_log_nhdsGT_atAtop](declarations/tendsto-log-one-sub-sub-log-nhdsgt-atatop.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [tendsto_log_one_sub_sub_log_nhdsLT_one_atBot](declarations/tendsto-log-one-sub-sub-log-nhdslt-one-atbot.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [not_continuousAt_deriv_qaryEntropy_one](declarations/not-continuousat-deriv-qaryentropy-one.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [not_continuousAt_deriv_qaryEntropy_zero](declarations/not-continuousat-deriv-qaryentropy-zero.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [deriv2_qaryEntropy](declarations/deriv2-qaryentropy.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [deriv2_binEntropy](declarations/deriv2-binentropy.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [qaryEntropy_strictMonoOn](declarations/qaryentropy-strictmonoon.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [qaryEntropy_strictAntiOn](declarations/qaryentropy-strictantion.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [binEntropy_strictMonoOn](declarations/binentropy-strictmonoon.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [binEntropy_strictAntiOn](declarations/binentropy-strictantion.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [strictConcaveOn_qaryEntropy](declarations/strictconcaveon-qaryentropy.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [strictConcave_binEntropy](declarations/strictconcave-binentropy.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cae1048da88ab9f3a061a16da68becece2d70c4af970adafd49cad323cc3bae1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
