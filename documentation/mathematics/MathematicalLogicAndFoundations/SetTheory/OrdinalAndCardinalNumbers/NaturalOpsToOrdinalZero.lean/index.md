# Natural Ops To Ordinal Zero

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**116 observed declarations and anonymous commands**, 98 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant4ec922843cc558f069b4db66fd521aa526dbb5e627afc328e631d70c8938b68c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2fbbd05b54fa0e0e9a7a97fe0586842c07d51e2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/NaturalOpsToOrdinalZero.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [NatOrdinal](declarations/natordinal.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [NatOrdinal.linearOrder](declarations/natordinal-linearorder.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [NatOrdinal.succOrder](declarations/natordinal-succorder.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Ordinal.toNatOrdinal](declarations/ordinal-tonatordinal.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [NatOrdinal.toOrdinal](declarations/natordinal-toordinal.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toOrdinal_symm_eq](declarations/toordinal-symm-eq.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toOrdinal_toNatOrdinal](declarations/toordinal-tonatordinal.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lt_wf](declarations/lt-wf.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toOrdinal_zero](declarations/toordinal-zero.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toOrdinal_one](declarations/toordinal-one.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toOrdinal_eq_zero](declarations/toordinal-eq-zero.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toOrdinal_eq_one](declarations/toordinal-eq-one.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toOrdinal_max](declarations/toordinal-max.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toOrdinal_min](declarations/toordinal-min.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [succ_def](declarations/succ-def.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [rec](declarations/rec.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [induction](declarations/induction.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toNatOrdinal_symm_eq](declarations/tonatordinal-symm-eq.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toNatOrdinal_toOrdinal](declarations/tonatordinal-toordinal.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toNatOrdinal_zero](declarations/tonatordinal-zero.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toNatOrdinal_one](declarations/tonatordinal-one.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toNatOrdinal_eq_zero](declarations/tonatordinal-eq-zero.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toNatOrdinal_eq_one](declarations/tonatordinal-eq-one.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toNatOrdinal_max](declarations/tonatordinal-max.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toNatOrdinal_min](declarations/tonatordinal-min.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [nadd](declarations/nadd.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [nmul](declarations/nmul.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nadd_def](declarations/nadd-def.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lt_nadd_iff](declarations/lt-nadd-iff.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [nadd_le_iff](declarations/nadd-le-iff.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [nadd_lt_nadd_left](declarations/nadd-lt-nadd-left.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [nadd_lt_nadd_right](declarations/nadd-lt-nadd-right.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [nadd_le_nadd_left](declarations/nadd-le-nadd-left.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [nadd_le_nadd_right](declarations/nadd-le-nadd-right.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [nadd_comm](declarations/nadd-comm.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [blsub_nadd_of_mono](declarations/blsub-nadd-of-mono.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [nadd_assoc](declarations/nadd-assoc.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [nadd_zero](declarations/nadd-zero.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [zero_nadd](declarations/zero-nadd.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [nadd_one](declarations/nadd-one.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [one_nadd](declarations/one-nadd.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [nadd_succ](declarations/nadd-succ.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [succ_nadd](declarations/succ-nadd.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [nadd_nat](declarations/nadd-nat.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [nat_nadd](declarations/nat-nadd.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [add_le_nadd](declarations/add-le-nadd.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [add_covariantClass_lt](declarations/add-covariantclass-lt.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [add_covariantClass_le](declarations/add-covariantclass-le.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [add_contravariantClass_le](declarations/add-contravariantclass-le.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [orderedCancelAddCommMonoid](declarations/orderedcanceladdcommmonoid.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [addMonoidWithOne](declarations/addmonoidwithone.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [add_one_eq_succ](declarations/add-one-eq-succ.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [toOrdinal_cast_nat](declarations/toordinal-cast-nat.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [nadd_eq_add](declarations/nadd-eq-add.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [toNatOrdinal_cast_nat](declarations/tonatordinal-cast-nat.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [lt_of_nadd_lt_nadd_left](declarations/lt-of-nadd-lt-nadd-left.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [lt_of_nadd_lt_nadd_right](declarations/lt-of-nadd-lt-nadd-right.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [le_of_nadd_le_nadd_left](declarations/le-of-nadd-le-nadd-left.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [le_of_nadd_le_nadd_right](declarations/le-of-nadd-le-nadd-right.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [nadd_lt_nadd_iff_left](declarations/nadd-lt-nadd-iff-left.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [nadd_lt_nadd_iff_right](declarations/nadd-lt-nadd-iff-right.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [nadd_le_nadd_iff_left](declarations/nadd-le-nadd-iff-left.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [nadd_le_nadd_iff_right](declarations/nadd-le-nadd-iff-right.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [nadd_le_nadd](declarations/nadd-le-nadd.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [nadd_lt_nadd](declarations/nadd-lt-nadd.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [nadd_lt_nadd_of_lt_of_le](declarations/nadd-lt-nadd-of-lt-of-le.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [nadd_lt_nadd_of_le_of_lt](declarations/nadd-lt-nadd-of-le-of-lt.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [nadd_left_cancel](declarations/nadd-left-cancel.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [nadd_right_cancel](declarations/nadd-right-cancel.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [nadd_left_cancel_iff](declarations/nadd-left-cancel-iff.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [nadd_right_cancel_iff](declarations/nadd-right-cancel-iff.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [le_nadd_self](declarations/le-nadd-self.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [le_nadd_left](declarations/le-nadd-left.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [le_self_nadd](declarations/le-self-nadd.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [le_nadd_right](declarations/le-nadd-right.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [nadd_left_comm](declarations/nadd-left-comm.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [nadd_right_comm](declarations/nadd-right-comm.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [nmul_def](declarations/nmul-def.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [nmul_nonempty](declarations/nmul-nonempty.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [nmul_nadd_lt](declarations/nmul-nadd-lt-source-edition-3.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [nmul_nadd_le](declarations/nmul-nadd-le.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [lt_nmul_iff](declarations/lt-nmul-iff-source-edition-2.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [nmul_le_iff](declarations/nmul-le-iff.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [nmul_comm](declarations/nmul-comm.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [nmul_zero](declarations/nmul-zero.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [zero_nmul](declarations/zero-nmul.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [nmul_one](declarations/nmul-one.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [one_nmul](declarations/one-nmul.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [nmul_lt_nmul_of_pos_left](declarations/nmul-lt-nmul-of-pos-left.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [nmul_lt_nmul_of_pos_right](declarations/nmul-lt-nmul-of-pos-right.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [nmul_le_nmul_of_nonneg_left](declarations/nmul-le-nmul-of-nonneg-left.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [nmul_le_nmul_of_nonneg_right](declarations/nmul-le-nmul-of-nonneg-right.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [nmul_nadd](declarations/nmul-nadd.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [nadd_nmul](declarations/nadd-nmul.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [nmul_nadd_lt₃](declarations/nmul-nadd-lt.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [nmul_nadd_le₃](declarations/nmul-nadd-le-source-edition-2.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [nmul_nadd_lt₃'](declarations/nmul-nadd-lt-source-edition-2.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [nmul_nadd_le₃'](declarations/nmul-nadd-le-source-edition-3.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [lt_nmul_iff₃](declarations/lt-nmul-iff.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [nmul_le_iff₃](declarations/nmul-le-iff-source-edition-3.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [lt_nmul_iff₃'](declarations/lt-nmul-iff-source-edition-3.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [nmul_le_iff₃'](declarations/nmul-le-iff-source-edition-2.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [nmul_assoc](declarations/nmul-assoc.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [(anonymous)](declarations/instance.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [nmul_eq_mul](declarations/nmul-eq-mul.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [nmul_nadd_one](declarations/nmul-nadd-one.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [nadd_one_nmul](declarations/nadd-one-nmul.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [nmul_succ](declarations/nmul-succ.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [succ_nmul](declarations/succ-nmul.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [nmul_add_one](declarations/nmul-add-one.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [add_one_nmul](declarations/add-one-nmul.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [mul_le_nmul](declarations/mul-le-nmul.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93780ad3a931fe1db04482595ac86c52e4c1dff26d612096f9affff83a814794 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant4ec922843cc558f069b4db66fd521aa526dbb5e627afc328e631d70c8938b68c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
