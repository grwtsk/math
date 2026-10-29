# Linear Map Polynomial

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f609915dc38e950cba7e449fbaa666a399120749`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/LinearMapPolynomial.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toMvPolynomial](declarations/tomvpolynomial.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [toMvPolynomial_eval_eq_apply](declarations/tomvpolynomial-eval-eq-apply.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [toMvPolynomial_map](declarations/tomvpolynomial-map.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [toMvPolynomial_isHomogeneous](declarations/tomvpolynomial-ishomogeneous-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [toMvPolynomial_totalDegree_le](declarations/tomvpolynomial-totaldegree-le.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [toMvPolynomial_constantCoeff](declarations/tomvpolynomial-constantcoeff-source-edition-2.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [toMvPolynomial_zero](declarations/tomvpolynomial-zero.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [toMvPolynomial_one](declarations/tomvpolynomial-one.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [toMvPolynomial_add](declarations/tomvpolynomial-add-source-edition-2.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [toMvPolynomial_mul](declarations/tomvpolynomial-mul.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [toMvPolynomial](declarations/tomvpolynomial-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [toMvPolynomial_eval_eq_apply](declarations/tomvpolynomial-eval-eq-apply-source-edition-2.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [toMvPolynomial_baseChange](declarations/tomvpolynomial-basechange.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [toMvPolynomial_isHomogeneous](declarations/tomvpolynomial-ishomogeneous.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [toMvPolynomial_totalDegree_le](declarations/tomvpolynomial-totaldegree-le-source-edition-2.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [toMvPolynomial_constantCoeff](declarations/tomvpolynomial-constantcoeff.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [toMvPolynomial_zero](declarations/tomvpolynomial-zero-source-edition-2.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [toMvPolynomial_id](declarations/tomvpolynomial-id.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [toMvPolynomial_add](declarations/tomvpolynomial-add.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [toMvPolynomial_comp](declarations/tomvpolynomial-comp.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [polyCharpolyAux](declarations/polycharpolyaux.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [polyCharpolyAux_baseChange](declarations/polycharpolyaux-basechange.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [polyCharpolyAux_map_eq_toMatrix_charpoly](declarations/polycharpolyaux-map-eq-tomatrix-charpoly.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [polyCharpolyAux_eval_eq_toMatrix_charpoly_coeff](declarations/polycharpolyaux-eval-eq-tomatrix-charpoly-coeff.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [polyCharpolyAux_map_eq_charpoly](declarations/polycharpolyaux-map-eq-charpoly.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [polyCharpolyAux_coeff_eval](declarations/polycharpolyaux-coeff-eval.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [polyCharpolyAux_map_eval](declarations/polycharpolyaux-map-eval.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [polyCharpolyAux_map_aeval](declarations/polycharpolyaux-map-aeval.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [polyCharpolyAux_basisIndep](declarations/polycharpolyaux-basisindep.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [polyCharpoly](declarations/polycharpoly.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [polyCharpoly_eq_of_basis](declarations/polycharpoly-eq-of-basis.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [polyCharpoly_monic](declarations/polycharpoly-monic.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [polyCharpoly_ne_zero](declarations/polycharpoly-ne-zero.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [polyCharpoly_natDegree](declarations/polycharpoly-natdegree.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [polyCharpoly_coeff_isHomogeneous](declarations/polycharpoly-coeff-ishomogeneous.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [polyCharpoly_baseChange](declarations/polycharpoly-basechange.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [polyCharpoly_map_eq_charpoly](declarations/polycharpoly-map-eq-charpoly.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [polyCharpoly_coeff_eval](declarations/polycharpoly-coeff-eval.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [polyCharpoly_coeff_eq_zero_of_basis](declarations/polycharpoly-coeff-eq-zero-of-basis.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [polyCharpoly_coeff_eq_zero_iff_of_basis](declarations/polycharpoly-coeff-eq-zero-iff-of-basis.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [nilRankAux](declarations/nilrankaux.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [polyCharpoly_coeff_nilRankAux_ne_zero](declarations/polycharpoly-coeff-nilrankaux-ne-zero.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [nilRankAux_le](declarations/nilrankaux-le.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [nilRankAux_basis_indep](declarations/nilrankaux-basis-indep.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [nilRank](declarations/nilrank.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [nilRank_eq_polyCharpoly_natTrailingDegree](declarations/nilrank-eq-polycharpoly-nattrailingdegree.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [polyCharpoly_coeff_nilRank_ne_zero](declarations/polycharpoly-coeff-nilrank-ne-zero.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [nilRank_le_card](declarations/nilrank-le-card.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [nilRank_le_finrank](declarations/nilrank-le-finrank.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [nilRank_le_natTrailingDegree_charpoly](declarations/nilrank-le-nattrailingdegree-charpoly.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [IsNilRegular](declarations/isnilregular.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [isNilRegular_def](declarations/isnilregular-def.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [isNilRegular_iff_coeff_polyCharpoly_nilRank_ne_zero](declarations/isnilregular-iff-coeff-polycharpoly-nilrank-ne-zero.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [isNilRegular_iff_natTrailingDegree_charpoly_eq_nilRank](declarations/isnilregular-iff-nattrailingdegree-charpoly-eq-nilrank.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [exists_isNilRegular_of_finrank_le_card](declarations/exists-isnilregular-of-finrank-le-card.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [exists_isNilRegular](declarations/exists-isnilregular.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cbe38cacca60199fc68b997a13d9679f8e3434b676daa5807e0e8c08cdd6111 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
