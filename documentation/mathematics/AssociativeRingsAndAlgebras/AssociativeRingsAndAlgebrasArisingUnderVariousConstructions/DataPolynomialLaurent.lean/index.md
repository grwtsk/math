# Data Polynomial Laurent

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**74 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variantf7d2c31537df9eefea56c0000cd70a36c88229b7715356107166e50cb6a8a59d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ddcdd2da5be10ba47a217ed213d062338bf2023`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LaurentPolynomial](declarations/laurentpolynomial.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [LaurentPolynomial.ext](declarations/laurentpolynomial-ext.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Polynomial.toLaurent](declarations/polynomial-tolaurent.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Polynomial.toLaurent_apply](declarations/polynomial-tolaurent-apply.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Polynomial.toLaurentAlg](declarations/polynomial-tolaurentalg.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Polynomial.coe_toLaurentAlg](declarations/polynomial-coe-tolaurentalg.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Polynomial.toLaurentAlg_apply](declarations/polynomial-tolaurentalg-apply.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [single_zero_one_eq_one](declarations/single-zero-one-eq-one.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [C](declarations/c.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [algebraMap_apply](declarations/algebramap-apply.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [C_eq_algebraMap](declarations/c-eq-algebramap.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [single_eq_C](declarations/single-eq-c.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [C_apply](declarations/c-apply.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [T](declarations/t.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [T_apply](declarations/t-apply.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [T_zero](declarations/t-zero.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [T_add](declarations/t-add.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [T_sub](declarations/t-sub.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [T_pow](declarations/t-pow.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mul_T_assoc](declarations/mul-t-assoc.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [single_eq_C_mul_T](declarations/single-eq-c-mul-t.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [_root_.Polynomial.toLaurent_C_mul_T](declarations/root-polynomial-tolaurent-c-mul-t.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [_root_.Polynomial.toLaurent_C](declarations/root-polynomial-tolaurent-c.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [_root_.Polynomial.toLaurent_comp_C](declarations/root-polynomial-tolaurent-comp-c.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [_root_.Polynomial.toLaurent_X](declarations/root-polynomial-tolaurent-x.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [_root_.Polynomial.toLaurent_one](declarations/root-polynomial-tolaurent-one.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [_root_.Polynomial.toLaurent_C_mul_eq](declarations/root-polynomial-tolaurent-c-mul-eq.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [_root_.Polynomial.toLaurent_X_pow](declarations/root-polynomial-tolaurent-x-pow.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [_root_.Polynomial.toLaurent_C_mul_X_pow](declarations/root-polynomial-tolaurent-c-mul-x-pow.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [invertibleT](declarations/invertiblet.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [invOf_T](declarations/invof-t.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isUnit_T](declarations/isunit-t.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [induction_on](declarations/induction-on.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [induction_on'](declarations/induction-on-source-edition-2.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [commute_T](declarations/commute-t.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [T_mul](declarations/t-mul.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [trunc](declarations/trunc.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [trunc_C_mul_T](declarations/trunc-c-mul-t.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [leftInverse_trunc_toLaurent](declarations/leftinverse-trunc-tolaurent.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [_root_.Polynomial.trunc_toLaurent](declarations/root-polynomial-trunc-tolaurent.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [_root_.Polynomial.toLaurent_injective](declarations/root-polynomial-tolaurent-injective.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [_root_.Polynomial.toLaurent_inj](declarations/root-polynomial-tolaurent-inj.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [_root_.Polynomial.toLaurent_ne_zero](declarations/root-polynomial-tolaurent-ne-zero.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [exists_T_pow](declarations/exists-t-pow.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [induction_on_mul_T](declarations/induction-on-mul-t.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [reduce_to_polynomial_of_mul_T](declarations/reduce-to-polynomial-of-mul-t.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [support_C_mul_T](declarations/support-c-mul-t.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [support_C_mul_T_of_ne_zero](declarations/support-c-mul-t-of-ne-zero.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toLaurent_support](declarations/tolaurent-support.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [degree](declarations/degree.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [degree_zero](declarations/degree-zero.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [degree_eq_bot_iff](declarations/degree-eq-bot-iff.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [degree_C_mul_T](declarations/degree-c-mul-t.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [degree_C_mul_T_ite](declarations/degree-c-mul-t-ite.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [degree_T](declarations/degree-t.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [degree_C](declarations/degree-c.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [degree_C_ite](declarations/degree-c-ite.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [degree_C_mul_T_le](declarations/degree-c-mul-t-le.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [degree_T_le](declarations/degree-t-le.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [degree_C_le](declarations/degree-c-le.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [algebraPolynomial](declarations/algebrapolynomial.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [algebraMap_X_pow](declarations/algebramap-x-pow.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [algebraMap_eq_toLaurent](declarations/algebramap-eq-tolaurent.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [isLocalization](declarations/islocalization.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [invert](declarations/invert.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [invert_T](declarations/invert-t.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [invert_apply](declarations/invert-apply.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [invert_comp_C](declarations/invert-comp-c.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [invert_C](declarations/invert-c.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [involutive_invert](declarations/involutive-invert.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [invert_symm](declarations/invert-symm.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [toLaurent_reverse](declarations/tolaurent-reverse.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23ce5d472c90f91692f7b3df21dca3f6bf3c9ecbc1ad70889e02444842954faf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variantf7d2c31537df9eefea56c0000cd70a36c88229b7715356107166e50cb6a8a59d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
