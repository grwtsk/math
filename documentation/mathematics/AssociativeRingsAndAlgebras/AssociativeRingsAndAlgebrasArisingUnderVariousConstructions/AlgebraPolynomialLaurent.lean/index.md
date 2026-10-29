# Algebra Polynomial Laurent

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**101 observed declarations and anonymous commands**, 85 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variant95810634188bd449524c2686a60b439a2570681a2e5d86d57ba45a9841b14388.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce7d2326e284726b70a341262842cbb627565894`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLaurent.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LaurentPolynomial](declarations/laurentpolynomial.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [LaurentPolynomial.ext](declarations/laurentpolynomial-ext.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Polynomial.toLaurent](declarations/polynomial-tolaurent.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Polynomial.toLaurent_apply](declarations/polynomial-tolaurent-apply.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Polynomial.toLaurentAlg](declarations/polynomial-tolaurentalg.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Polynomial.coe_toLaurentAlg](declarations/polynomial-coe-tolaurentalg.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Polynomial.toLaurentAlg_apply](declarations/polynomial-tolaurentalg-apply.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [single_zero_one_eq_one](declarations/single-zero-one-eq-one.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [C](declarations/c.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [algebraMap_apply](declarations/algebramap-apply.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [C_eq_algebraMap](declarations/c-eq-algebramap.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [single_eq_C](declarations/single-eq-c.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [C_apply](declarations/c-apply.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [T](declarations/t.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [T_apply](declarations/t-apply.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [T_zero](declarations/t-zero.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [T_add](declarations/t-add.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [T_sub](declarations/t-sub.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [T_pow](declarations/t-pow.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mul_T_assoc](declarations/mul-t-assoc.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [single_eq_C_mul_T](declarations/single-eq-c-mul-t.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [_root_.Polynomial.toLaurent_C_mul_T](declarations/root-polynomial-tolaurent-c-mul-t.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [_root_.Polynomial.toLaurent_C](declarations/root-polynomial-tolaurent-c.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [_root_.Polynomial.toLaurent_comp_C](declarations/root-polynomial-tolaurent-comp-c.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [_root_.Polynomial.toLaurent_X](declarations/root-polynomial-tolaurent-x.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [_root_.Polynomial.toLaurent_one](declarations/root-polynomial-tolaurent-one.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [_root_.Polynomial.toLaurent_C_mul_eq](declarations/root-polynomial-tolaurent-c-mul-eq.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [_root_.Polynomial.toLaurent_X_pow](declarations/root-polynomial-tolaurent-x-pow.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [_root_.Polynomial.toLaurent_C_mul_X_pow](declarations/root-polynomial-tolaurent-c-mul-x-pow.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [invertibleT](declarations/invertiblet.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [invOf_T](declarations/invof-t.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isUnit_T](declarations/isunit-t.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [induction_on](declarations/induction-on.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [induction_on'](declarations/induction-on-source-edition-2.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [commute_T](declarations/commute-t.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [T_mul](declarations/t-mul.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [smul_eq_C_mul](declarations/smul-eq-c-mul.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [trunc](declarations/trunc.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [trunc_C_mul_T](declarations/trunc-c-mul-t.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [leftInverse_trunc_toLaurent](declarations/leftinverse-trunc-tolaurent.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [_root_.Polynomial.trunc_toLaurent](declarations/root-polynomial-trunc-tolaurent.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [_root_.Polynomial.toLaurent_injective](declarations/root-polynomial-tolaurent-injective.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [_root_.Polynomial.toLaurent_inj](declarations/root-polynomial-tolaurent-inj.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [_root_.Polynomial.toLaurent_ne_zero](declarations/root-polynomial-tolaurent-ne-zero.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [_root_.Polynomial.toLaurent_eq_zero](declarations/root-polynomial-tolaurent-eq-zero.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [exists_T_pow](declarations/exists-t-pow.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [induction_on_mul_T](declarations/induction-on-mul-t.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [reduce_to_polynomial_of_mul_T](declarations/reduce-to-polynomial-of-mul-t.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [support_C_mul_T](declarations/support-c-mul-t.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [support_C_mul_T_of_ne_zero](declarations/support-c-mul-t-of-ne-zero.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [toLaurent_support](declarations/tolaurent-support.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [degree](declarations/degree.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [degree_zero](declarations/degree-zero.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [degree_eq_bot_iff](declarations/degree-eq-bot-iff.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [degree_C_mul_T](declarations/degree-c-mul-t.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [degree_C_mul_T_ite](declarations/degree-c-mul-t-ite.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [degree_T](declarations/degree-t.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [degree_C](declarations/degree-c.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [degree_C_ite](declarations/degree-c-ite.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [degree_C_mul_T_le](declarations/degree-c-mul-t-le.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [degree_T_le](declarations/degree-t-le.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [degree_C_le](declarations/degree-c-le.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [algebraPolynomial](declarations/algebrapolynomial.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [algebraMap_X_pow](declarations/algebramap-x-pow.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [algebraMap_eq_toLaurent](declarations/algebramap-eq-tolaurent.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [isLocalization](declarations/islocalization.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [mk'_mul_T](declarations/mk-mul-t.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mk'_eq](declarations/mk-eq.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [mk'_one_X_pow](declarations/mk-one-x-pow.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mk'_one_X](declarations/mk-one-x.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [eval₂](declarations/eval.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [eval₂_toLaurent](declarations/eval-tolaurent.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [eval₂_T_n](declarations/eval-t-n.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [eval₂_T_neg_n](declarations/eval-t-neg-n.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [eval₂_T](declarations/eval-t.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [eval₂_C](declarations/eval-c.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [eval₂_C_mul_T_n](declarations/eval-c-mul-t-n.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [eval₂_C_mul_T_neg_n](declarations/eval-c-mul-t-neg-n.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [eval₂_C_mul_T](declarations/eval-c-mul-t.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [invert](declarations/invert.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [invert_T](declarations/invert-t.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [invert_apply](declarations/invert-apply.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [invert_comp_C](declarations/invert-comp-c.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [invert_C](declarations/invert-c.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [involutive_invert](declarations/involutive-invert.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [invert_symm](declarations/invert-symm.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [toLaurent_reverse](declarations/tolaurent-reverse.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [smeval](declarations/smeval.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [smeval_eq_sum](declarations/smeval-eq-sum.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [smeval_congr](declarations/smeval-congr.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [smeval_zero](declarations/smeval-zero.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [smeval_single](declarations/smeval-single.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [smeval_C_mul_T_n](declarations/smeval-c-mul-t-n.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [smeval_C](declarations/smeval-c.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [smeval_T_pow](declarations/smeval-t-pow.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [smeval_one](declarations/smeval-one.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [smeval_add](declarations/smeval-add.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [smeval_C_mul](declarations/smeval-c-mul.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [leval](declarations/leval.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48b07962691b2a8645f40461fe984096aded264177fa111b892382bed1cec509 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variant95810634188bd449524c2686a60b439a2570681a2e5d86d57ba45a9841b14388.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
