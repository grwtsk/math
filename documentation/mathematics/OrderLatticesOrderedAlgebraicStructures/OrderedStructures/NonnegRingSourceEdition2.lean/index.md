# Nonneg Ring Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant5e62c5c4593811c16cb809823ec6d09de287910057a9986dc359c1174ece50d9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1785f8fbbfde815b368c8ae22c320f4015464d7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [orderBot](declarations/orderbot.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [bot_eq](declarations/bot-eq.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [noMaxOrder](declarations/nomaxorder.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [semilatticeSup](declarations/semilatticesup.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [semilatticeInf](declarations/semilatticeinf.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [distribLattice](declarations/distriblattice.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [densely_ordered](declarations/densely-ordered.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [conditionallyCompleteLinearOrder](declarations/conditionallycompletelinearorder.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [conditionallyCompleteLinearOrderBot](declarations/conditionallycompletelinearorderbot.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [inhabited](declarations/inhabited.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [zero](declarations/zero.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_zero](declarations/coe-zero.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mk_eq_zero](declarations/mk-eq-zero.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [add](declarations/add.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mk_add_mk](declarations/mk-add-mk.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_add](declarations/coe-add.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [nsmul](declarations/nsmul.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [nsmul_mk](declarations/nsmul-mk.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_nsmul](declarations/coe-nsmul.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [orderedAddCommMonoid](declarations/orderedaddcommmonoid.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [linearOrderedAddCommMonoid](declarations/linearorderedaddcommmonoid.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [orderedCancelAddCommMonoid](declarations/orderedcanceladdcommmonoid.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [linearOrderedCancelAddCommMonoid](declarations/linearorderedcanceladdcommmonoid.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [coeAddMonoidHom](declarations/coeaddmonoidhom.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [nsmul_coe](declarations/nsmul-coe.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [one](declarations/one.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_one](declarations/coe-one.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mk_eq_one](declarations/mk-eq-one.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [mul](declarations/mul.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_mul](declarations/coe-mul.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mk_mul_mk](declarations/mk-mul-mk.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [addMonoidWithOne](declarations/addmonoidwithone.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_nat_cast](declarations/coe-nat-cast.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mk_nat_cast](declarations/mk-nat-cast.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [pow](declarations/pow.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_pow](declarations/coe-pow.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mk_pow](declarations/mk-pow.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [orderedSemiring](declarations/orderedsemiring.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [strictOrderedSemiring](declarations/strictorderedsemiring.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [orderedCommSemiring](declarations/orderedcommsemiring.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [strictOrderedCommSemiring](declarations/strictorderedcommsemiring.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [monoidWithZero](declarations/monoidwithzero.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [commMonoidWithZero](declarations/commmonoidwithzero.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [semiring](declarations/semiring.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [commSemiring](declarations/commsemiring.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [nontrivial](declarations/nontrivial.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [linearOrderedSemiring](declarations/linearorderedsemiring.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [linearOrderedCommMonoidWithZero](declarations/linearorderedcommmonoidwithzero.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [coeRingHom](declarations/coeringhom.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [canonicallyOrderedAddMonoid](declarations/canonicallyorderedaddmonoid.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [canonicallyOrderedCommSemiring](declarations/canonicallyorderedcommsemiring.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [canonicallyLinearOrderedAddMonoid](declarations/canonicallylinearorderedaddmonoid.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [toNonneg](declarations/tononneg.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coe_toNonneg](declarations/coe-tononneg.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [toNonneg_of_nonneg](declarations/tononneg-of-nonneg.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [toNonneg_coe](declarations/tononneg-coe.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [toNonneg_le](declarations/tononneg-le.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [toNonneg_lt](declarations/tononneg-lt.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [sub](declarations/sub.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mk_sub_mk](declarations/mk-sub-mk.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [orderedSub](declarations/orderedsub.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d972d3a1d333b8c91175384df7296887e64e0a672c67c676cdf760140c8af877 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant5e62c5c4593811c16cb809823ec6d09de287910057a9986dc359c1174ece50d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
