# Power Series Inverse

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Inverse/Variant5025fa48edfd3f7a0fe9ee89b06beff0fa2021fc90bfb87d7debeb8b884f1b4f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fd9af5cb646d5f4155f68d5d6ba3e15a2b21745`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/PowerSeriesInverse.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [inv.aux](declarations/inv-aux.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coeff_inv_aux](declarations/coeff-inv-aux.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [invOfUnit](declarations/invofunit.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coeff_invOfUnit](declarations/coeff-invofunit.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [constantCoeff_invOfUnit](declarations/constantcoeff-invofunit.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mul_invOfUnit](declarations/mul-invofunit.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [invOfUnit_mul](declarations/invofunit-mul.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isUnit_iff_constantCoeff](declarations/isunit-iff-constantcoeff.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sub_const_eq_shift_mul_X](declarations/sub-const-eq-shift-mul-x.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sub_const_eq_X_mul_shift](declarations/sub-const-eq-x-mul-shift.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [inv](declarations/inv.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [inv_eq_inv_aux](declarations/inv-eq-inv-aux.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coeff_inv](declarations/coeff-inv.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [constantCoeff_inv](declarations/constantcoeff-inv.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [inv_eq_zero](declarations/inv-eq-zero.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [zero_inv](declarations/zero-inv.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [invOfUnit_eq](declarations/invofunit-eq-source-edition-2.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [invOfUnit_eq'](declarations/invofunit-eq.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mul_inv_cancel](declarations/mul-inv-cancel.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [inv_mul_cancel](declarations/inv-mul-cancel.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eq_mul_inv_iff_mul_eq](declarations/eq-mul-inv-iff-mul-eq.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eq_inv_iff_mul_eq_one](declarations/eq-inv-iff-mul-eq-one.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inv_eq_iff_mul_eq_one](declarations/inv-eq-iff-mul-eq-one.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mul_inv_rev](declarations/mul-inv-rev.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [C_inv](declarations/c-inv.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [X_inv](declarations/x-inv.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [smul_inv](declarations/smul-inv.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [firstUnitCoeff](declarations/firstunitcoeff.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Inv_divided_by_X_pow_order](declarations/inv-divided-by-x-pow-order.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Inv_divided_by_X_pow_order_rightInv](declarations/inv-divided-by-x-pow-order-rightinv.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Inv_divided_by_X_pow_order_leftInv](declarations/inv-divided-by-x-pow-order-leftinv.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Unit_of_divided_by_X_pow_order](declarations/unit-of-divided-by-x-pow-order.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [isUnit_divided_by_X_pow_order](declarations/isunit-divided-by-x-pow-order.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Unit_of_divided_by_X_pow_order_nonzero](declarations/unit-of-divided-by-x-pow-order-nonzero.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Unit_of_divided_by_X_pow_order_zero](declarations/unit-of-divided-by-x-pow-order-zero.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [eq_divided_by_X_pow_order_Iff_Unit](declarations/eq-divided-by-x-pow-order-iff-unit.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [map.isLocalHom](declarations/map-islocalhom.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [hasUnitMulPowIrreducibleFactorization](declarations/hasunitmulpowirreduciblefactorization.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [isNoetherianRing](declarations/isnoetherianring.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [maximalIdeal_eq_span_X](declarations/maximalideal-eq-span-x.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [normUnit_X](declarations/normunit-x.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [X_eq_normalizeX](declarations/x-eq-normalizex.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [normalized_count_X_eq_of_coe](declarations/normalized-count-x-eq-of-coe.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ker_coeff_eq_max_ideal](declarations/ker-coeff-eq-max-ideal.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [residueFieldOfPowerSeries](declarations/residuefieldofpowerseries.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61784030bcca656460524b3d2a21aeb6fa62d84e514ca626d27420507496d32e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Inverse/Variant5025fa48edfd3f7a0fe9ee89b06beff0fa2021fc90bfb87d7debeb8b884f1b4f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
