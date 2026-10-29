# Jacobi Symbol Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant01e7c67a59cc467c3e6c7978ee3619fc4e87707aabc6381979d13c0b09e8de0f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b55fee28424cf6eec4d2ef2414683aea2ecfa3c9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/JacobiSymbolNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiSym](declarations/jacobisym.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [zero_right](declarations/zero-right.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [one_right](declarations/one-right.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [legendreSym.to_jacobiSym](declarations/legendresym-to-jacobisym.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mul_right'](declarations/mul-right-source-edition-3.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mul_right](declarations/mul-right-source-edition-2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [trichotomy](declarations/trichotomy.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [one_left](declarations/one-left.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mul_left](declarations/mul-left-source-edition-2.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eq_zero_iff_not_coprime](declarations/eq-zero-iff-not-coprime.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ne_zero](declarations/ne-zero.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_zero_iff](declarations/eq-zero-iff.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [zero_left](declarations/zero-left.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eq_one_or_neg_one](declarations/eq-one-or-neg-one.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pow_left](declarations/pow-left.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pow_right](declarations/pow-right.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sq_one](declarations/sq-one-source-edition-2.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sq_one'](declarations/sq-one.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mod_left](declarations/mod-left-source-edition-2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mod_left'](declarations/mod-left.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [prime_dvd_of_eq_neg_one](declarations/prime-dvd-of-eq-neg-one.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [list_prod_left](declarations/list-prod-left.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [list_prod_right](declarations/list-prod-right.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_neg_one_at_prime_divisor_of_eq_neg_one](declarations/eq-neg-one-at-prime-divisor-of-eq-neg-one.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [nonsquare_of_jacobiSym_eq_neg_one](declarations/nonsquare-of-jacobisym-eq-neg-one.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [nonsquare_iff_jacobiSym_eq_neg_one](declarations/nonsquare-iff-jacobisym-eq-neg-one.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isSquare_of_jacobiSym_eq_one](declarations/issquare-of-jacobisym-eq-one.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [value_at](declarations/value-at.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [at_neg_one](declarations/at-neg-one.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [neg](declarations/neg.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [at_two](declarations/at-two.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [at_neg_two](declarations/at-neg-two.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [div_four_left](declarations/div-four-left.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [at_four](declarations/at-four.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [even_odd](declarations/even-odd.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [qrSign](declarations/qrsign.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [neg_one_pow](declarations/neg-one-pow.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [sq_eq_one](declarations/sq-eq-one.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mul_left](declarations/mul-left.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mul_right](declarations/mul-right.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [symm](declarations/symm.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [eq_iff_eq](declarations/eq-iff-eq.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [quadratic_reciprocity'](declarations/quadratic-reciprocity.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [quadratic_reciprocity](declarations/quadratic-reciprocity-source-edition-2.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [quadratic_reciprocity_one_mod_four](declarations/quadratic-reciprocity-one-mod-four.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [quadratic_reciprocity_one_mod_four'](declarations/quadratic-reciprocity-one-mod-four-source-edition-2.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [quadratic_reciprocity_three_mod_four](declarations/quadratic-reciprocity-three-mod-four.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [quadratic_reciprocity_if](declarations/quadratic-reciprocity-if.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [mod_right'](declarations/mod-right-source-edition-2.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mod_right](declarations/mod-right.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [fastJacobiSymAux](declarations/fastjacobisymaux.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [fastJacobiSymAux.eq_jacobiSym](declarations/fastjacobisymaux-eq-jacobisym.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [fastJacobiSym](declarations/fastjacobisym.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [fastJacobiSym.eq](declarations/fastjacobisym-eq.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [fastLegendreSym](declarations/fastlegendresym.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [fastLegendreSym.eq](declarations/fastlegendresym-eq.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9bd80c85acf173ff55ee5147f199a3e5a25bd6f208743f6433a81d796f0086e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant01e7c67a59cc467c3e6c7978ee3619fc4e87707aabc6381979d13c0b09e8de0f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
