# Turing Machine Tape Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**97 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2bcf74c500c7697abb1fb74ac0723d5693e9f89`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [BlankExtends](declarations/blankextends.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [BlankExtends.refl](declarations/blankextends-refl.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [BlankExtends.trans](declarations/blankextends-trans.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [BlankExtends.below_of_le](declarations/blankextends-below-of-le.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [BlankExtends.above](declarations/blankextends-above.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [BlankExtends.above_of_le](declarations/blankextends-above-of-le.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [BlankRel](declarations/blankrel.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [BlankRel.refl](declarations/blankrel-refl.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [BlankRel.symm](declarations/blankrel-symm.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [BlankRel.trans](declarations/blankrel-trans.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [BlankRel.above](declarations/blankrel-above.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [BlankRel.below](declarations/blankrel-below.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [BlankRel.equivalence](declarations/blankrel-equivalence.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [BlankRel.setoid](declarations/blankrel-setoid.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ListBlank](declarations/listblank.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [ListBlank.inhabited](declarations/listblank-inhabited.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [ListBlank.hasEmptyc](declarations/listblank-hasemptyc.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [ListBlank.liftOn](declarations/listblank-lifton.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ListBlank.mk](declarations/listblank-mk.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ListBlank.induction_on](declarations/listblank-induction-on.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ListBlank.head](declarations/listblank-head.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ListBlank.head_mk](declarations/listblank-head-mk.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [ListBlank.tail](declarations/listblank-tail.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ListBlank.tail_mk](declarations/listblank-tail-mk.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ListBlank.cons](declarations/listblank-cons.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ListBlank.cons_mk](declarations/listblank-cons-mk.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ListBlank.head_cons](declarations/listblank-head-cons.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ListBlank.tail_cons](declarations/listblank-tail-cons.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ListBlank.cons_head_tail](declarations/listblank-cons-head-tail.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ListBlank.exists_cons](declarations/listblank-exists-cons.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [ListBlank.nth](declarations/listblank-nth.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ListBlank.nth_mk](declarations/listblank-nth-mk.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ListBlank.nth_zero](declarations/listblank-nth-zero.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ListBlank.nth_succ](declarations/listblank-nth-succ.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ListBlank.ext](declarations/listblank-ext.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [ListBlank.modifyNth](declarations/listblank-modifynth.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ListBlank.nth_modifyNth](declarations/listblank-nth-modifynth.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [PointedMap.](declarations/pointedmap.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [PointedMap.mk_val](declarations/pointedmap-mk-val.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [PointedMap.map_pt](declarations/pointedmap-map-pt.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [PointedMap.headI_map](declarations/pointedmap-headi-map.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [ListBlank.map](declarations/listblank-map.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ListBlank.map_mk](declarations/listblank-map-mk.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ListBlank.head_map](declarations/listblank-head-map.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [ListBlank.tail_map](declarations/listblank-tail-map.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [ListBlank.map_cons](declarations/listblank-map-cons.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ListBlank.nth_map](declarations/listblank-nth-map.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [proj](declarations/proj.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [proj_map_nth](declarations/proj-map-nth.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [ListBlank.map_modifyNth](declarations/listblank-map-modifynth.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [ListBlank.append](declarations/listblank-append.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [ListBlank.append_mk](declarations/listblank-append-mk.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [ListBlank.append_assoc](declarations/listblank-append-assoc.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [ListBlank.flatMap](declarations/listblank-flatmap.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ListBlank.flatMap_mk](declarations/listblank-flatmap-mk.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [ListBlank.cons_flatMap](declarations/listblank-cons-flatmap.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `structure` | [Tape](declarations/tape.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [Tape.inhabited](declarations/tape-inhabited.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `inductive` | [Dir](declarations/dir.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [Tape.left₀](declarations/tape-left.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [Tape.right₀](declarations/tape-right.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [Tape.move](declarations/tape-move.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Tape.move_left_right](declarations/tape-move-left-right.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Tape.move_right_left](declarations/tape-move-right-left.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [Tape.mk'](declarations/tape-mk-source-edition-3.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Tape.mk'_left](declarations/tape-mk-left.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Tape.mk'_head](declarations/tape-mk-head.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Tape.mk'_right](declarations/tape-mk-right.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Tape.mk'_right₀](declarations/tape-mk-right-source-edition-2.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Tape.mk'_left_right₀](declarations/tape-mk-left-right.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Tape.exists_mk'](declarations/tape-exists-mk.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Tape.move_left_mk'](declarations/tape-move-left-mk.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Tape.move_right_mk'](declarations/tape-move-right-mk.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [Tape.mk₂](declarations/tape-mk-source-edition-2.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [Tape.mk₁](declarations/tape-mk.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Tape.nth](declarations/tape-nth.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Tape.nth_zero](declarations/tape-nth-zero.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Tape.right₀_nth](declarations/tape-right-nth.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Tape.mk'_nth_nat](declarations/tape-mk-nth-nat.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [Tape.move_left_nth](declarations/tape-move-left-nth.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Tape.move_right_nth](declarations/tape-move-right-nth.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Tape.move_right_n_head](declarations/tape-move-right-n-head.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [Tape.write](declarations/tape-write.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Tape.write_self](declarations/tape-write-self.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Tape.write_nth](declarations/tape-write-nth.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Tape.write_mk](declarations/tape-write-mk.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Tape.write_mk'](declarations/tape-write-mk-source-edition-2.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [Tape.map](declarations/tape-map.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Tape.map_fst](declarations/tape-map-fst.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [Tape.map_write](declarations/tape-map-write.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [Tape.write_move_right_n](declarations/tape-write-move-right-n.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Tape.map_move](declarations/tape-map-move.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [Tape.map_mk'](declarations/tape-map-mk-source-edition-3.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Tape.map_mk₂](declarations/tape-map-mk-source-edition-2.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Tape.map_mk₁](declarations/tape-map-mk.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef668004bbc6f57931d27f26066e67fffbdac868cd0e87b2cc113fac02b60d25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
