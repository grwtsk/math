# Algebra Ring Basic Mul

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5faf3e6fc1dd4d9781d9c10551110f22c63a4d26`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AssociativeRingsAndAlgebras/AlgebraRingBasicMul.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft](declarations/mulleft-source-edition-3.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mulRight](declarations/mulright-source-edition-3.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [mulLeft](declarations/mulleft.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [coe_mulLeft](declarations/coe-mulleft.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [mulRight](declarations/mulright.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [coe_mulRight](declarations/coe-mulright.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [mulRight_apply](declarations/mulright-apply.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mul](declarations/mul.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mul_apply](declarations/mul-apply.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [coe_mul](declarations/coe-mul.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [coe_flip_mul](declarations/coe-flip-mul.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [map_mul_iff](declarations/map-mul-iff.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mulLeft_eq_mulRight_iff_forall_commute](declarations/mulleft-eq-mulright-iff-forall-commute.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [mulRight_eq_mulLeft_iff_forall_commute](declarations/mulright-eq-mulleft-iff-forall-commute.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mulLeft](declarations/mulleft-source-edition-2.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mulRight](declarations/mulright-source-edition-2.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [mulRight_eq_mulLeft](declarations/mulright-eq-mulleft.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [MulOpposite.instHasDistribNeg](declarations/mulopposite-insthasdistribneg.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [vieta_formula_quadratic](declarations/vieta-formula-quadratic.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [succ_ne_self](declarations/succ-ne-self.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pred_ne_self](declarations/pred-ne-self.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [IsLeftCancelMulZero.to_noZeroDivisors](declarations/isleftcancelmulzero-to-nozerodivisors.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsRightCancelMulZero.to_noZeroDivisors](declarations/isrightcancelmulzero-to-nozerodivisors.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [isCancelMulZero_iff_noZeroDivisors](declarations/iscancelmulzero-iff-nozerodivisors.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [NoZeroDivisors.to_isDomain](declarations/nozerodivisors-to-isdomain.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [Subsingleton.to_isCancelMulZero](declarations/subsingleton-to-iscancelmulzero.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [Subsingleton.to_noZeroDivisors](declarations/subsingleton-to-nozerodivisors.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isDomain_iff_cancelMulZero_and_nontrivial](declarations/isdomain-iff-cancelmulzero-and-nontrivial.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isCancelMulZero_iff_isDomain_or_subsingleton](declarations/iscancelmulzero-iff-isdomain-or-subsingleton.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [isDomain_iff_noZeroDivisors_and_nontrivial](declarations/isdomain-iff-nozerodivisors-and-nontrivial.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [noZeroDivisors_iff_isDomain_or_subsingleton](declarations/nozerodivisors-iff-isdomain-or-subsingleton.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [one_div_neg_one_eq_neg_one](declarations/one-div-neg-one-eq-neg-one.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [one_div_neg_eq_neg_one_div](declarations/one-div-neg-eq-neg-one-div.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [div_neg_eq_neg_div](declarations/div-neg-eq-neg-div.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [neg_div](declarations/neg-div.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [neg_div'](declarations/neg-div-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [neg_div_neg_eq](declarations/neg-div-neg-eq.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [neg_inv](declarations/neg-inv.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [div_neg](declarations/div-neg.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [inv_neg](declarations/inv-neg.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [inv_neg_one](declarations/inv-neg-one.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2d5e947266261e5a6bbe77d2dba10a71e704f1243bc6ef650573669aba60aa6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
