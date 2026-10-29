# Ring Theory Ore Localization Basic Ore Eqv

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**87 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78cee56c17c6fec54af0c6b06992ae39ae350b14`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [oreEqv](declarations/oreeqv.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [OreLocalization](declarations/orelocalization.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [oreDiv](declarations/orediv.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ind](declarations/ind.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [oreDiv_eq_iff](declarations/orediv-eq-iff.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [expand](declarations/expand.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [expand'](declarations/expand-source-edition-2.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eq_of_num_factor_eq](declarations/eq-of-num-factor-eq.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [liftExpand](declarations/liftexpand.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [liftExpand_of](declarations/liftexpand-of.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [lift₂Expand](declarations/lift-expand.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lift₂Expand_of](declarations/lift-expand-of.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mul'](declarations/mul-source-edition-2.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mul'_char](declarations/mul-char.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mul](declarations/mul.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instMulOreLocalization](declarations/instmulorelocalization.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [oreDiv_mul_oreDiv](declarations/orediv-mul-orediv.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [oreDiv_mul_char](declarations/orediv-mul-char.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [oreDivMulChar'](declarations/oredivmulchar.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [instOneOreLocalization](declarations/instoneorelocalization.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [one_def](declarations/one-def.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [div_eq_one'](declarations/div-eq-one-source-edition-2.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [div_eq_one](declarations/div-eq-one.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [one_mul](declarations/one-mul.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mul_one](declarations/mul-one.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mul_assoc](declarations/mul-assoc.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [instMonoidOreLocalization](declarations/instmonoidorelocalization.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mul_inv](declarations/mul-inv.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mul_one_div](declarations/mul-one-div.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mul_cancel](declarations/mul-cancel-source-edition-2.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mul_cancel'](declarations/mul-cancel.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [div_one_mul](declarations/div-one-mul.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [numeratorUnit](declarations/numeratorunit.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [numeratorHom](declarations/numeratorhom.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [numeratorHom_apply](declarations/numeratorhom-apply.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [numerator_isUnit](declarations/numerator-isunit.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [universalMulHom](declarations/universalmulhom.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [universalMulHom_apply](declarations/universalmulhom-apply.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [universalMulHom_commutes](declarations/universalmulhom-commutes.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [universalMulHom_unique](declarations/universalmulhom-unique.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [oreDiv_mul_oreDiv_comm](declarations/orediv-mul-orediv-comm.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [localizationMap](declarations/localizationmap.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [equivMonoidLocalization](declarations/equivmonoidlocalization.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [add''](declarations/add-source-edition-2.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [add''_char](declarations/add-char.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [add'](declarations/add.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [add'_comm](declarations/add-comm-source-edition-2.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [add](declarations/add-source-edition-3.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [instAddOreLocalization](declarations/instaddorelocalization.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [oreDiv_add_oreDiv](declarations/orediv-add-orediv.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [oreDiv_add_char](declarations/orediv-add-char.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [oreDivAddChar'](declarations/oredivaddchar.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [add_oreDiv](declarations/add-orediv.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [add_assoc](declarations/add-assoc.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [zero](declarations/zero.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [zero_def](declarations/zero-def.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [zero_div_eq_zero](declarations/zero-div-eq-zero.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [zero_add](declarations/zero-add.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [add_comm](declarations/add-comm.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [instAddCommMonoidOreLocalization](declarations/instaddcommmonoidorelocalization.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [zero_mul](declarations/zero-mul.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [mul_zero](declarations/mul-zero.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [left_distrib](declarations/left-distrib.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [right_distrib](declarations/right-distrib.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [instSemiringOreLocalization](declarations/instsemiringorelocalization.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [universalHom](declarations/universalhom.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [universalHom_apply](declarations/universalhom-apply.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [universalHom_commutes](declarations/universalhom-commutes.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [universalHom_unique](declarations/universalhom-unique.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [neg](declarations/neg.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [instNegOreLocalization](declarations/instnegorelocalization.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [neg_def](declarations/neg-def.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [add_left_neg](declarations/add-left-neg.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [ring](declarations/ring.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [numeratorHom_inj](declarations/numeratorhom-inj.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [nontrivial_of_nonZeroDivisors](declarations/nontrivial-of-nonzerodivisors.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [nontrivial](declarations/nontrivial.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [inv](declarations/inv.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [inv'](declarations/inv-source-edition-2.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [inv_def](declarations/inv-def.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [mul_inv_cancel](declarations/mul-inv-cancel.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [inv_zero](declarations/inv-zero.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [divisionRing](declarations/divisionring.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8926821d40e0ed83e655ba876df24b0b833e6208abb09936c2026b9e515917bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
