# Polynomial Mahler Measure Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 50 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2728419ad1445bcdb12ee8096254dd55ccc58278`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [logMahlerMeasure](declarations/logmahlermeasure.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [logMahlerMeasure_def](declarations/logmahlermeasure-def.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [logMahlerMeasure_zero](declarations/logmahlermeasure-zero.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [logMahlerMeasure_one](declarations/logmahlermeasure-one.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [logMahlerMeasure_const](declarations/logmahlermeasure-const.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [logMahlerMeasure_X](declarations/logmahlermeasure-x.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [logMahlerMeasure_monomial](declarations/logmahlermeasure-monomial.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mahlerMeasure](declarations/mahlermeasure.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mahlerMeasure_def_of_ne_zero](declarations/mahlermeasure-def-of-ne-zero.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [logMahlerMeasure_eq_log_MahlerMeasure](declarations/logmahlermeasure-eq-log-mahlermeasure.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mahlerMeasure_zero](declarations/mahlermeasure-zero.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mahlerMeasure_one](declarations/mahlermeasure-one.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mahlerMeasure_const](declarations/mahlermeasure-const.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mahlerMeasure_nonneg](declarations/mahlermeasure-nonneg.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mahlerMeasure_pos_of_ne_zero](declarations/mahlermeasure-pos-of-ne-zero.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mahlerMeasure_eq_zero_iff](declarations/mahlermeasure-eq-zero-iff.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [intervalIntegrable_mahlerMeasure](declarations/intervalintegrable-mahlermeasure.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mahlerMeasure_mul](declarations/mahlermeasure-mul.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [prod_mahlerMeasure_eq_mahlerMeasure_prod](declarations/prod-mahlermeasure-eq-mahlermeasure-prod.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [logMahlerMeasure_mul_eq_add_logMahlerMeasure](declarations/logmahlermeasure-mul-eq-add-logmahlermeasure.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [logMahlerMeasure_C_mul](declarations/logmahlermeasure-c-mul.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [logMahlerMeasure_X_sub_C](declarations/logmahlermeasure-x-sub-c.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [logMahlerMeasure_X_add_C](declarations/logmahlermeasure-x-add-c.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [logMahlerMeasure_C_mul_X_add_C](declarations/logmahlermeasure-c-mul-x-add-c.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [logMahlerMeasure_of_degree_eq_one](declarations/logmahlermeasure-of-degree-eq-one.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mahlerMeasure_X_sub_C](declarations/mahlermeasure-x-sub-c.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mahlerMeasure_X_add_C](declarations/mahlermeasure-x-add-c.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mahlerMeasure_C_mul_X_add_C](declarations/mahlermeasure-c-mul-x-add-c.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mahlerMeasure_of_degree_eq_one](declarations/mahlermeasure-of-degree-eq-one.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [logMahlerMeasure_eq_log_leadingCoeff_add_sum_log_roots](declarations/logmahlermeasure-eq-log-leadingcoeff-add-sum-log-roots.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mahlerMeasure_eq_leadingCoeff_mul_prod_roots](declarations/mahlermeasure-eq-leadingcoeff-mul-prod-roots.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [one_le_prod_max_one_norm_roots](declarations/one-le-prod-max-one-norm-roots.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [leadingCoeff_le_mahlerMeasure](declarations/leadingcoeff-le-mahlermeasure.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [prod_max_one_norm_roots_le_mahlerMeasure_of_one_le_leadingCoeff](declarations/prod-max-one-norm-roots-le-mahlermeasure-of-one-le-leadingcoeff.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [one_le_mahlerMeasure_of_one_le_norm_leadingCoeff](declarations/one-le-mahlermeasure-of-one-le-norm-leadingcoeff.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mahlerMeasure_le_sum_norm_coeff](declarations/mahlermeasure-le-sum-norm-coeff.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mahlerMeasure_le_sqrt_sum_sq_norm_coeff](declarations/mahlermeasure-le-sqrt-sum-sq-norm-coeff.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mahlerMeasure_le_sqrt_natDegree_add_one_mul_supNorm](declarations/mahlermeasure-le-sqrt-natdegree-add-one-mul-supnorm.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [norm_coeff_le_choose_mul_mahlerMeasure](declarations/norm-coeff-le-choose-mul-mahlermeasure.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [supNorm_le_choose_natDegree_div_two_mul_mahlerMeasure](declarations/supnorm-le-choose-natdegree-div-two-mul-mahlermeasure.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [norm_coeff_le_choose_mul_mahlerMeasure_of_one_le_mahlerMeasure](declarations/norm-coeff-le-choose-mul-mahlermeasure-of-one-le-mahlermeasure.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [mapMahlerMeasure](declarations/mapmahlermeasure.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [mapMahlerMeasure_eq](declarations/mapmahlermeasure-eq.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [mapMahlerMeasure_mul](declarations/mapmahlermeasure-mul.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [mapMahlerMeasure_nonneg](declarations/mapmahlermeasure-nonneg.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [mapMahlerMeasure_zero](declarations/mapmahlermeasure-zero.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [mapMahlerMeasure_one](declarations/mapmahlermeasure-one.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [mapMahlerMeasure_const](declarations/mapmahlermeasure-const.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [leadingCoeff_le_mapMahlerMeasure](declarations/leadingcoeff-le-mapmahlermeasure.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [Monic.one_le_mapMahlerMeasure](declarations/monic-one-le-mapmahlermeasure.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mapMahlerMeasure_pos_of_ne_zero](declarations/mapmahlermeasure-pos-of-ne-zero.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [mapMahlerMeasure_le_sum_norm_coeff](declarations/mapmahlermeasure-le-sum-norm-coeff.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [norm_coeff_le_choose_mul_mapMahlerMeasure](declarations/norm-coeff-le-choose-mul-mapmahlermeasure.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97ce2352c31da41b0e1e3413836dd754e3524dbfce2eecad52de1d879e593031 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
