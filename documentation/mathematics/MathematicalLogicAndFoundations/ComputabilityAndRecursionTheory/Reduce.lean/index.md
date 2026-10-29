# Reduce

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**76 observed declarations and anonymous commands**, 61 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variantef3c854168dffb53c67f8f30fac9b32b1af9e634501d9081b88cca350183727a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e36fad04b9275475f5fe303d6e5ff6d4562f69d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/Reduce.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ManyOneReducible](declarations/manyonereducible.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ManyOneReducible.mk](declarations/manyonereducible-mk.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [manyOneReducible_refl](declarations/manyonereducible-refl.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ManyOneReducible.trans](declarations/manyonereducible-trans.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [reflexive_manyOneReducible](declarations/reflexive-manyonereducible.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [transitive_manyOneReducible](declarations/transitive-manyonereducible.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [OneOneReducible](declarations/oneonereducible.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [OneOneReducible.mk](declarations/oneonereducible-mk.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [oneOneReducible_refl](declarations/oneonereducible-refl.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [OneOneReducible.trans](declarations/oneonereducible-trans.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [OneOneReducible.to_many_one](declarations/oneonereducible-to-many-one.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [OneOneReducible.of_equiv](declarations/oneonereducible-of-equiv.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [OneOneReducible.of_equiv_symm](declarations/oneonereducible-of-equiv-symm.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [reflexive_oneOneReducible](declarations/reflexive-oneonereducible.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [transitive_oneOneReducible](declarations/transitive-oneonereducible.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [computable_of_manyOneReducible](declarations/computable-of-manyonereducible.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [computable_of_oneOneReducible](declarations/computable-of-oneonereducible.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ManyOneEquiv](declarations/manyoneequiv.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [OneOneEquiv](declarations/oneoneequiv.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [manyOneEquiv_refl](declarations/manyoneequiv-refl.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ManyOneEquiv.symm](declarations/manyoneequiv-symm.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ManyOneEquiv.trans](declarations/manyoneequiv-trans.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [equivalence_of_manyOneEquiv](declarations/equivalence-of-manyoneequiv.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [oneOneEquiv_refl](declarations/oneoneequiv-refl.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [OneOneEquiv.symm](declarations/oneoneequiv-symm.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [OneOneEquiv.trans](declarations/oneoneequiv-trans.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [equivalence_of_oneOneEquiv](declarations/equivalence-of-oneoneequiv.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [OneOneEquiv.to_many_one](declarations/oneoneequiv-to-many-one.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Equiv.Computable](declarations/equiv-computable.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Equiv.Computable.symm](declarations/equiv-computable-symm.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Equiv.Computable.trans](declarations/equiv-computable-trans.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Computable.eqv](declarations/computable-eqv.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Computable.equiv₂](declarations/computable-equiv.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [OneOneEquiv.of_equiv](declarations/oneoneequiv-of-equiv.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ManyOneEquiv.of_equiv](declarations/manyoneequiv-of-equiv.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ManyOneEquiv.le_congr_left](declarations/manyoneequiv-le-congr-left.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ManyOneEquiv.le_congr_right](declarations/manyoneequiv-le-congr-right.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [OneOneEquiv.le_congr_left](declarations/oneoneequiv-le-congr-left.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [OneOneEquiv.le_congr_right](declarations/oneoneequiv-le-congr-right.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ManyOneEquiv.congr_left](declarations/manyoneequiv-congr-left.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ManyOneEquiv.congr_right](declarations/manyoneequiv-congr-right.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [OneOneEquiv.congr_left](declarations/oneoneequiv-congr-left.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [OneOneEquiv.congr_right](declarations/oneoneequiv-congr-right.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ULower.down_computable](declarations/ulower-down-computable.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [manyOneEquiv_up](declarations/manyoneequiv-up.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [OneOneReducible.disjoin_left](declarations/oneonereducible-disjoin-left.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [OneOneReducible.disjoin_right](declarations/oneonereducible-disjoin-right.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [disjoin_manyOneReducible](declarations/disjoin-manyonereducible.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [disjoin_le](declarations/disjoin-le.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [toNat](declarations/tonat.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [toNat_manyOneReducible](declarations/tonat-manyonereducible.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [manyOneReducible_toNat](declarations/manyonereducible-tonat.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [manyOneReducible_toNat_toNat](declarations/manyonereducible-tonat-tonat.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toNat_manyOneEquiv](declarations/tonat-manyoneequiv.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [manyOneEquiv_toNat](declarations/manyoneequiv-tonat.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [ManyOneDegree](declarations/manyonedegree.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [of](declarations/of.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [ind_on](declarations/ind-on.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [liftOn](declarations/lifton-source-edition-2.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [liftOn_eq](declarations/lifton-eq-source-edition-2.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [liftOn₂](declarations/lifton.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [liftOn₂_eq](declarations/lifton-eq.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [of_eq_of](declarations/of-eq-of.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [instInhabited](declarations/instinhabited.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [instLE](declarations/instle.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [of_le_of](declarations/of-le-of.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [le_refl](declarations/le-refl.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [le_antisymm](declarations/le-antisymm.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [le_trans](declarations/le-trans.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [instPartialOrder](declarations/instpartialorder.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [instAdd](declarations/instadd.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [add_of](declarations/add-of.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [add_le](declarations/add-le.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [le_add_left](declarations/le-add-left.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [le_add_right](declarations/le-add-right.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [instSemilatticeSup](declarations/instsemilatticesup.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a37ad9908d316a69e310aa8f279f8cd9adb5a5022072d42436d42f61bb1747e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variantef3c854168dffb53c67f8f30fac9b32b1af9e634501d9081b88cca350183727a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
