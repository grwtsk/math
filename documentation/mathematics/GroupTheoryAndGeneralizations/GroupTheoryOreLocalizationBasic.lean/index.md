# Group Theory Ore Localization Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**74 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf44a79828b938c6400893f676e0b3c79e306139`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupTheoryOreLocalizationBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [oreEqv](declarations/oreeqv.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [OreLocalization](declarations/orelocalization.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [oreDiv](declarations/orediv.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ind](declarations/ind.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [oreDiv_eq_iff](declarations/orediv-eq-iff.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [expand](declarations/expand.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [expand'](declarations/expand-source-edition-2.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eq_of_num_factor_eq](declarations/eq-of-num-factor-eq.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [liftExpand](declarations/liftexpand.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [liftExpand_of](declarations/liftexpand-of.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [lift₂Expand](declarations/lift-expand.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lift₂Expand_of](declarations/lift-expand-of.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [smul'](declarations/smul-source-edition-2.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [smul'_char](declarations/smul-char.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [smul''](declarations/smul.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [smul](declarations/smul-source-edition-3.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [oreDiv_smul_oreDiv](declarations/orediv-smul-orediv.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [oreDiv_mul_oreDiv](declarations/orediv-mul-orediv.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [oreDiv_smul_char](declarations/orediv-smul-char.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [oreDiv_mul_char](declarations/orediv-mul-char.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [oreDivSMulChar'](declarations/oredivsmulchar.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [oreDivMulChar'](declarations/oredivmulchar.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [one](declarations/one.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [one_def](declarations/one-def.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [div_eq_one'](declarations/div-eq-one.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [div_eq_one](declarations/div-eq-one-source-edition-2.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [one_smul](declarations/one-smul.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [one_mul](declarations/one-mul.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mul_one](declarations/mul-one.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mul_smul](declarations/mul-smul.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mul_assoc](declarations/mul-assoc.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [npow](declarations/npow.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instMulActionOreLocalization](declarations/instmulactionorelocalization.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mul_inv](declarations/mul-inv.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [one_div_smul](declarations/one-div-smul.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [one_div_mul](declarations/one-div-mul.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [smul_cancel](declarations/smul-cancel.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mul_cancel](declarations/mul-cancel-source-edition-2.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [smul_cancel'](declarations/smul-cancel-source-edition-2.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mul_cancel'](declarations/mul-cancel.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [smul_div_one](declarations/smul-div-one.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [mul_div_one](declarations/mul-div-one.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [numeratorUnit](declarations/numeratorunit.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [numeratorHom](declarations/numeratorhom.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [numeratorHom_apply](declarations/numeratorhom-apply.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [numerator_isUnit](declarations/numerator-isunit.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [universalMulHom](declarations/universalmulhom.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [universalMulHom_apply](declarations/universalmulhom-apply.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [universalMulHom_commutes](declarations/universalmulhom-commutes.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [universalMulHom_unique](declarations/universalmulhom-unique.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [hsmul](declarations/hsmul.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [smul_oreDiv](declarations/smul-orediv.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [oreDiv_one_smul](declarations/orediv-one-smul.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [smul_one_smul](declarations/smul-one-smul.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [smul_one_oreDiv_one_smul](declarations/smul-one-orediv-one-smul.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [smul_oreDiv_one](declarations/smul-orediv-one.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [oreDiv_mul_oreDiv_comm](declarations/orediv-mul-orediv-comm.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [zero](declarations/zero.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [zero_def](declarations/zero-def.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41289eb1359ee65b3c5a636d7f8ff30ad80e3abba063c5dd0d99e333c8b2bc3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
