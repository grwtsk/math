# Legendre Symbol Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c10ead69e7f18ef5dd76f78f101c0f65acc6136c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/LegendreSymbolBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [euler_criterion_units](declarations/euler-criterion-units.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [euler_criterion](declarations/euler-criterion.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [pow_div_two_eq_neg_one_or_one](declarations/pow-div-two-eq-neg-one-or-one.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [legendreSym](declarations/legendresym.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [eq_pow](declarations/eq-pow.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [eq_one_or_neg_one](declarations/eq-one-or-neg-one.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [eq_neg_one_iff_not_one](declarations/eq-neg-one-iff-not-one.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eq_zero_iff](declarations/eq-zero-iff.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [at_zero](declarations/at-zero.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [at_one](declarations/at-one.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul](declarations/mul.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [hom](declarations/hom.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sq_one](declarations/sq-one.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sq_one'](declarations/sq-one-source-edition-2.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mod](declarations/mod.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [eq_one_iff](declarations/eq-one-iff.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eq_one_iff'](declarations/eq-one-iff-source-edition-2.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eq_neg_one_iff](declarations/eq-neg-one-iff.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eq_neg_one_iff'](declarations/eq-neg-one-iff-source-edition-2.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [card_sqrts](declarations/card-sqrts.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eq_one_of_sq_sub_mul_sq_eq_zero](declarations/eq-one-of-sq-sub-mul-sq-eq-zero.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eq_one_of_sq_sub_mul_sq_eq_zero'](declarations/eq-one-of-sq-sub-mul-sq-eq-zero-source-edition-2.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eq_zero_mod_of_eq_neg_one](declarations/eq-zero-mod-of-eq-neg-one.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [prime_dvd_of_eq_neg_one](declarations/prime-dvd-of-eq-neg-one.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [legendreSym.at_neg_one](declarations/legendresym-at-neg-one.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [exists_sq_eq_neg_one_iff](declarations/exists-sq-eq-neg-one-iff.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_one](declarations/mod-four-ne-three-of-sq-eq-neg-one.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_sq'](declarations/mod-four-ne-three-of-sq-eq-neg-sq.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_sq](declarations/mod-four-ne-three-of-sq-eq-neg-sq-source-edition-2.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57e8d00dde0b185aa8ba29093151d82340bb62582b4308d403866ab478ea537d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
