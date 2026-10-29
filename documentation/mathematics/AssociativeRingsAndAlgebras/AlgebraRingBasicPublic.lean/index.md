# Algebra Ring Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9060ec828221e53864e9d560060c48d71bdbb72d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AssociativeRingsAndAlgebras/AlgebraRingBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft](declarations/mulleft-source-edition-3.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mulRight](declarations/mulright-source-edition-3.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [mulLeft](declarations/mulleft.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [coe_mulLeft](declarations/coe-mulleft.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [mulRight](declarations/mulright.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [coe_mulRight](declarations/coe-mulright.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [mulRight_apply](declarations/mulright-apply.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mul](declarations/mul.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mul_apply](declarations/mul-apply.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [coe_mul](declarations/coe-mul.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [coe_flip_mul](declarations/coe-flip-mul.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [map_mul_iff](declarations/map-mul-iff.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mulLeft_eq_mulRight_iff_forall_commute](declarations/mulleft-eq-mulright-iff-forall-commute.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [mulRight_eq_mulLeft_iff_forall_commute](declarations/mulright-eq-mulleft-iff-forall-commute.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mulLeft](declarations/mulleft-source-edition-2.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mulRight](declarations/mulright-source-edition-2.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [mulRight_eq_mulLeft](declarations/mulright-eq-mulleft.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [MulOpposite.instHasDistribNeg](declarations/mulopposite-insthasdistribneg.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [vieta_formula_quadratic](declarations/vieta-formula-quadratic.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [succ_ne_self](declarations/succ-ne-self.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pred_ne_self](declarations/pred-ne-self.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [isLeftRegular_iff_right_eq_zero_of_mul](declarations/isleftregular-iff-right-eq-zero-of-mul.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isRightRegular_iff_left_eq_zero_of_mul](declarations/isrightregular-iff-left-eq-zero-of-mul.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [isRegular_iff_eq_zero_of_mul](declarations/isregular-iff-eq-zero-of-mul.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [noZeroDivisors_tfae](declarations/nozerodivisors-tfae.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [isCancelMulZero_iff_noZeroDivisors](declarations/iscancelmulzero-iff-nozerodivisors.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [NoZeroDivisors.to_isDomain](declarations/nozerodivisors-to-isdomain.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [Subsingleton.to_isCancelMulZero](declarations/subsingleton-to-iscancelmulzero.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [Subsingleton.to_noZeroDivisors](declarations/subsingleton-to-nozerodivisors.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [isDomain_iff_cancelMulZero_and_nontrivial](declarations/isdomain-iff-cancelmulzero-and-nontrivial.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [isCancelMulZero_iff_isDomain_or_subsingleton](declarations/iscancelmulzero-iff-isdomain-or-subsingleton.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [isDomain_iff_noZeroDivisors_and_nontrivial](declarations/isdomain-iff-nozerodivisors-and-nontrivial.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [noZeroDivisors_iff_isDomain_or_subsingleton](declarations/nozerodivisors-iff-isdomain-or-subsingleton.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [one_div_neg_one_eq_neg_one](declarations/one-div-neg-one-eq-neg-one.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [one_div_neg_eq_neg_one_div](declarations/one-div-neg-eq-neg-one-div.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [div_neg_eq_neg_div](declarations/div-neg-eq-neg-div-source-edition-2.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [neg_div](declarations/neg-div-source-edition-2.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [neg_div'](declarations/neg-div.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [neg_div_neg_eq](declarations/neg-div-neg-eq.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [neg_inv](declarations/neg-inv.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [div_neg](declarations/div-neg.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [div_neg_eq_neg_div'](declarations/div-neg-eq-neg-div.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [inv_neg](declarations/inv-neg.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [inv_neg_one](declarations/inv-neg-one.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [isSelfInv_neg_iff](declarations/isselfinv-neg-iff.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [isSelfNeg_inv_iff](declarations/isselfneg-inv-iff.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ad2137e8ecc1905ecaabc54d14b33ff360f41857f6d98178e96d8d6caed5079 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
