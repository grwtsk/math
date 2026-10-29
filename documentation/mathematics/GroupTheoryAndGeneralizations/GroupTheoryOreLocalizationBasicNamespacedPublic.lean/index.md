# Group Theory Ore Localization Basic Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**73 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Basic/Variant8e289706b7d83a7b7bef62fe98154f9a6f8aa9c79ea5132e69cc6d923cfda228.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81c51bcbbb76dc17fa699e96b90de188f6c8abf9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupTheoryOreLocalizationBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [oreEqv](declarations/oreeqv.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [OreLocalization](declarations/orelocalization.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [oreDiv](declarations/orediv.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ind](declarations/ind.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [oreDiv_eq_iff](declarations/orediv-eq-iff.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [expand](declarations/expand-source-edition-2.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [expand'](declarations/expand.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eq_of_num_factor_eq](declarations/eq-of-num-factor-eq.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [liftExpand](declarations/liftexpand.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [liftExpand_of](declarations/liftexpand-of.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [lift₂Expand](declarations/lift-expand.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lift₂Expand_of](declarations/lift-expand-of.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [smul'_char](declarations/smul-char.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [smul](declarations/smul.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [oreDiv_smul_oreDiv](declarations/orediv-smul-orediv.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [oreDiv_mul_oreDiv](declarations/orediv-mul-orediv.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [oreDiv_smul_char](declarations/orediv-smul-char.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [oreDiv_mul_char](declarations/orediv-mul-char.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [oreDivSMulChar'](declarations/oredivsmulchar.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [oreDivMulChar'](declarations/oredivmulchar.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [one](declarations/one.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [one_def](declarations/one-def.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [div_eq_one'](declarations/div-eq-one-source-edition-2.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [div_eq_one](declarations/div-eq-one.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [one_smul](declarations/one-smul.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [one_mul](declarations/one-mul.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mul_one](declarations/mul-one.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mul_smul](declarations/mul-smul.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mul_assoc](declarations/mul-assoc.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [npow](declarations/npow.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [oreDiv_pow](declarations/orediv-pow.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [instMulActionOreLocalization](declarations/instmulactionorelocalization.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mul_inv](declarations/mul-inv.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [one_div_smul](declarations/one-div-smul.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [one_div_mul](declarations/one-div-mul.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [smul_cancel](declarations/smul-cancel-source-edition-2.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mul_cancel](declarations/mul-cancel-source-edition-2.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [smul_cancel'](declarations/smul-cancel.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mul_cancel'](declarations/mul-cancel.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [smul_div_one](declarations/smul-div-one.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [mul_div_one](declarations/mul-div-one.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [numeratorUnit](declarations/numeratorunit.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `abbrev` | [numeratorHom](declarations/numeratorhom.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [numeratorHom_apply](declarations/numeratorhom-apply.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [numerator_isUnit](declarations/numerator-isunit.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [universalMulHom](declarations/universalmulhom.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [universalMulHom_apply](declarations/universalmulhom-apply.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [universalMulHom_commutes](declarations/universalmulhom-commutes.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [universalMulHom_unique](declarations/universalmulhom-unique.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [hsmul](declarations/hsmul.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [smul_oreDiv](declarations/smul-orediv.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [oreDiv_one_smul](declarations/orediv-one-smul.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [smul_one_smul](declarations/smul-one-smul.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [smul_one_oreDiv_one_smul](declarations/smul-one-orediv-one-smul.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [smul_oreDiv_one](declarations/smul-orediv-one.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [oreDiv_mul_oreDiv_comm](declarations/orediv-mul-orediv-comm.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [zero](declarations/zero.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [zero_def](declarations/zero-def.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8add0ef9ef2c2f63dfeab9858c327763884b1010c839e3aa3708effa31f9ca0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant8e289706b7d83a7b7bef62fe98154f9a6f8aa9c79ea5132e69cc6d923cfda228.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
