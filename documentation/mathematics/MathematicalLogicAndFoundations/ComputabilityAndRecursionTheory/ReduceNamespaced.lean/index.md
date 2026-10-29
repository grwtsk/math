# Reduce Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**76 observed declarations and anonymous commands**, 61 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variantb02f9fd1fcbdd82c83c5cc2aa1302588ccc971709648db0015b96ad1f4473b20.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ec4caeea6e983bb2194c3f3f2337524fe6fbf5f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ManyOneReducible](declarations/manyonereducible.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ManyOneReducible.mk](declarations/manyonereducible-mk.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [manyOneReducible_refl](declarations/manyonereducible-refl.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ManyOneReducible.trans](declarations/manyonereducible-trans.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [reflexive_manyOneReducible](declarations/reflexive-manyonereducible.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [transitive_manyOneReducible](declarations/transitive-manyonereducible.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [OneOneReducible](declarations/oneonereducible.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [OneOneReducible.mk](declarations/oneonereducible-mk.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [oneOneReducible_refl](declarations/oneonereducible-refl.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [OneOneReducible.trans](declarations/oneonereducible-trans.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [OneOneReducible.to_many_one](declarations/oneonereducible-to-many-one.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [OneOneReducible.of_equiv](declarations/oneonereducible-of-equiv.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [OneOneReducible.of_equiv_symm](declarations/oneonereducible-of-equiv-symm.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [reflexive_oneOneReducible](declarations/reflexive-oneonereducible.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [transitive_oneOneReducible](declarations/transitive-oneonereducible.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [computable_of_manyOneReducible](declarations/computable-of-manyonereducible.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [computable_of_oneOneReducible](declarations/computable-of-oneonereducible.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ManyOneEquiv](declarations/manyoneequiv.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [OneOneEquiv](declarations/oneoneequiv.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [manyOneEquiv_refl](declarations/manyoneequiv-refl.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ManyOneEquiv.symm](declarations/manyoneequiv-symm.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ManyOneEquiv.trans](declarations/manyoneequiv-trans.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [equivalence_of_manyOneEquiv](declarations/equivalence-of-manyoneequiv.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [oneOneEquiv_refl](declarations/oneoneequiv-refl.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [OneOneEquiv.symm](declarations/oneoneequiv-symm.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [OneOneEquiv.trans](declarations/oneoneequiv-trans.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [equivalence_of_oneOneEquiv](declarations/equivalence-of-oneoneequiv.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [OneOneEquiv.to_many_one](declarations/oneoneequiv-to-many-one.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Equiv.Computable](declarations/equiv-computable.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Equiv.Computable.symm](declarations/equiv-computable-symm.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Equiv.Computable.trans](declarations/equiv-computable-trans.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Computable.eqv](declarations/computable-eqv.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Computable.equiv₂](declarations/computable-equiv.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [OneOneEquiv.of_equiv](declarations/oneoneequiv-of-equiv.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ManyOneEquiv.of_equiv](declarations/manyoneequiv-of-equiv.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ManyOneEquiv.le_congr_left](declarations/manyoneequiv-le-congr-left.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ManyOneEquiv.le_congr_right](declarations/manyoneequiv-le-congr-right.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [OneOneEquiv.le_congr_left](declarations/oneoneequiv-le-congr-left.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [OneOneEquiv.le_congr_right](declarations/oneoneequiv-le-congr-right.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ManyOneEquiv.congr_left](declarations/manyoneequiv-congr-left.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ManyOneEquiv.congr_right](declarations/manyoneequiv-congr-right.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [OneOneEquiv.congr_left](declarations/oneoneequiv-congr-left.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [OneOneEquiv.congr_right](declarations/oneoneequiv-congr-right.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ULower.down_computable](declarations/ulower-down-computable.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [manyOneEquiv_up](declarations/manyoneequiv-up.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [OneOneReducible.disjoin_left](declarations/oneonereducible-disjoin-left.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [OneOneReducible.disjoin_right](declarations/oneonereducible-disjoin-right.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [disjoin_manyOneReducible](declarations/disjoin-manyonereducible.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [disjoin_le](declarations/disjoin-le.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [toNat](declarations/tonat.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [toNat_manyOneReducible](declarations/tonat-manyonereducible.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [manyOneReducible_toNat](declarations/manyonereducible-tonat.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [manyOneReducible_toNat_toNat](declarations/manyonereducible-tonat-tonat.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toNat_manyOneEquiv](declarations/tonat-manyoneequiv.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [manyOneEquiv_toNat](declarations/manyoneequiv-tonat.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [ManyOneDegree](declarations/manyonedegree.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [of](declarations/of.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [ind_on](declarations/ind-on.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [liftOn](declarations/lifton-source-edition-2.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [liftOn_eq](declarations/lifton-eq-source-edition-2.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [liftOn₂](declarations/lifton.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [liftOn₂_eq](declarations/lifton-eq.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [of_eq_of](declarations/of-eq-of.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [instInhabited](declarations/instinhabited.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [instLE](declarations/instle.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [of_le_of](declarations/of-le-of.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [le_refl](declarations/le-refl.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [le_antisymm](declarations/le-antisymm.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [le_trans](declarations/le-trans.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [instPartialOrder](declarations/instpartialorder.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [instAdd](declarations/instadd.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [add_of](declarations/add-of.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [add_le](declarations/add-le.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [le_add_left](declarations/le-add-left.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [le_add_right](declarations/le-add-right.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [instSemilatticeSup](declarations/instsemilatticesup.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=573197d62271a5a9778f17dc6bf82bf0d1c9e5170b13c23e95cd45acc04341b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variantb02f9fd1fcbdd82c83c5cc2aa1302588ccc971709648db0015b96ad1f4473b20.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
