# Free Group Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**152 observed declarations and anonymous commands**, 122 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant717f3aff88ea59a9775c70f5516a426460584bc227e4a395d92a0730534a47af.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9de5450bdc3246e690578d0c0fab4ad0a22a2ec`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/FreeGroupNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [FreeAddGroup.Red.Step](declarations/freeaddgroup-red-step.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [FreeGroup.Red.Step](declarations/freegroup-red-step.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Red](declarations/red.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Red.refl](declarations/red-refl.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Red.trans](declarations/red-trans.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Step.length](declarations/step-length.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Step.not_rev](declarations/step-not-rev.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Step.cons_not](declarations/step-cons-not.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Step.cons_not_rev](declarations/step-cons-not-rev.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Step.append_left](declarations/step-append-left.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Step.cons](declarations/step-cons.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Step.append_right](declarations/step-append-right.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [not_step_nil](declarations/not-step-nil.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Step.cons_left_iff](declarations/step-cons-left-iff.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [not_step_singleton](declarations/not-step-singleton.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Step.cons_cons_iff](declarations/step-cons-cons-iff.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Step.append_left_iff](declarations/step-append-left-iff.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Step.diamond_aux](declarations/step-diamond-aux.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Step.diamond](declarations/step-diamond.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Step.to_red](declarations/step-to-red.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [church_rosser](declarations/church-rosser.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cons_cons](declarations/cons-cons.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cons_cons_iff](declarations/cons-cons-iff.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [append_append_left_iff](declarations/append-append-left-iff.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [append_append](declarations/append-append.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [to_append_iff](declarations/to-append-iff.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [nil_iff](declarations/nil-iff.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [singleton_iff](declarations/singleton-iff.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cons_nil_iff_singleton](declarations/cons-nil-iff-singleton.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [red_iff_irreducible](declarations/red-iff-irreducible.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [inv_of_red_of_ne](declarations/inv-of-red-of-ne.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Step.sublist](declarations/step-sublist.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sublist](declarations/sublist.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [length_le](declarations/length-le.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [sizeof_of_step](declarations/sizeof-of-step.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [length](declarations/length.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [antisymm](declarations/antisymm.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [equivalence_join_red](declarations/equivalence-join-red.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [join_red_of_step](declarations/join-red-of-step.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [eqvGen_step_iff_join_red](declarations/eqvgen-step-iff-join-red.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [FreeGroup](declarations/freegroup.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [mk](declarations/mk.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [quot_mk_eq_mk](declarations/quot-mk-eq-mk.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [quot_lift_mk](declarations/quot-lift-mk.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [quot_liftOn_mk](declarations/quot-lifton-mk.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [quot_map_mk](declarations/quot-map-mk.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [one_eq_mk](declarations/one-eq-mk.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mul_mk](declarations/mul-mk.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [invRev](declarations/invrev.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [invRev_length](declarations/invrev-length.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [invRev_invRev](declarations/invrev-invrev.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [invRev_empty](declarations/invrev-empty.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [invRev_involutive](declarations/invrev-involutive.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [invRev_injective](declarations/invrev-injective.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [invRev_surjective](declarations/invrev-surjective.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [invRev_bijective](declarations/invrev-bijective.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [inv_mk](declarations/inv-mk.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Red.Step.invRev](declarations/red-step-invrev.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Red.invRev](declarations/red-invrev.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Red.step_invRev_iff](declarations/red-step-invrev-iff.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [red_invRev_iff](declarations/red-invrev-iff.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [of](declarations/of.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Red.exact](declarations/red-exact.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [of_injective](declarations/of-injective.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [Lift.aux](declarations/lift-aux.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Red.Step.lift](declarations/red-step-lift.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [lift](declarations/lift.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [lift.mk](declarations/lift-mk.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lift.of](declarations/lift-of.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [lift.unique](declarations/lift-unique.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [ext_hom](declarations/ext-hom.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [lift.of_eq](declarations/lift-of-eq.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [lift.range_le](declarations/lift-range-le.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [lift.range_eq_closure](declarations/lift-range-eq-closure.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [map](declarations/map.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [map.mk](declarations/map-mk.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [map.id](declarations/map-id-source-edition-2.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [map.id'](declarations/map-id.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [map.comp](declarations/map-comp.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [map.of](declarations/map-of.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [map.unique](declarations/map-unique.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [map_eq_lift](declarations/map-eq-lift.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [freeGroupCongr](declarations/freegroupcongr.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [freeGroupCongr_refl](declarations/freegroupcongr-refl.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [freeGroupCongr_symm](declarations/freegroupcongr-symm.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [freeGroupCongr_trans](declarations/freegroupcongr-trans.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [prod](declarations/prod.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [prod_mk](declarations/prod-mk.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [prod.of](declarations/prod-of.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [prod.unique](declarations/prod-unique.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [lift_eq_prod_map](declarations/lift-eq-prod-map.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [sum](declarations/sum.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [sum_mk](declarations/sum-mk.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [sum.of](declarations/sum-of.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [sum.map_mul](declarations/sum-map-mul.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [sum.map_one](declarations/sum-map-one.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [sum.map_inv](declarations/sum-map-inv.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [freeGroupEmptyEquivUnit](declarations/freegroupemptyequivunit.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [freeGroupUnitEquivInt](declarations/freegroupunitequivint.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1022 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [induction_on](declarations/induction-on.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [map_pure](declarations/map-pure.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [map_one](declarations/map-one.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [map_mul](declarations/map-mul.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [map_inv](declarations/map-inv.md) | 1056 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [pure_bind](declarations/pure-bind.md) | 1063 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [one_bind](declarations/one-bind.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [mul_bind](declarations/mul-bind.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [inv_bind](declarations/inv-bind.md) | 1081 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [reduce](declarations/reduce.md) | 1112 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [reduce.cons](declarations/reduce-cons.md) | 1120 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [reduce.red](declarations/reduce-red.md) | 1132 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [reduce.not](declarations/reduce-not.md) | 1159 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [reduce.min](declarations/reduce-min.md) | 1198 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [reduce.idem](declarations/reduce-idem.md) | 1210 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [reduce.Step.eq](declarations/reduce-step-eq.md) | 1216 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [reduce.eq_of_red](declarations/reduce-eq-of-red.md) | 1224 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [Red.reduce_right](declarations/red-reduce-right.md) | 1237 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [Red.reduce_left](declarations/red-reduce-left.md) | 1243 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [reduce.sound](declarations/reduce-sound.md) | 1254 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [reduce.exact](declarations/reduce-exact.md) | 1264 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [reduce.self](declarations/reduce-self.md) | 1272 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [reduce.rev](declarations/reduce-rev.md) | 1281 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [toWord](declarations/toword.md) | 1289 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [mk_toWord](declarations/mk-toword.md) | 1295 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [toWord_injective](declarations/toword-injective.md) | 1300 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [toWord_inj](declarations/toword-inj.md) | 1306 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [toWord_mk](declarations/toword-mk.md) | 1312 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [reduce_toWord](declarations/reduce-toword.md) | 1318 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [toWord_one](declarations/toword-one.md) | 1325 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [toWord_eq_nil_iff](declarations/toword-eq-nil-iff.md) | 1331 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [reduce_invRev](declarations/reduce-invrev.md) | 1337 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [toWord_inv](declarations/toword-inv.md) | 1347 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [reduce.churchRosser](declarations/reduce-churchrosser.md) | 1355 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 1361 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `instance` | [Red.decidableRel](declarations/red-decidablerel.md) | 1365 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `def` | [Red.enum](declarations/red-enum.md) | 1384 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [Red.enum.sound](declarations/red-enum-sound.md) | 1388 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [Red.enum.complete](declarations/red-enum-complete.md) | 1392 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 1396 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [norm](declarations/norm.md) | 1409 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [norm_inv_eq](declarations/norm-inv-eq.md) | 1415 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [norm_eq_zero](declarations/norm-eq-zero.md) | 1421 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [norm_one](declarations/norm-one.md) | 1427 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [norm_mk_le](declarations/norm-mk-le.md) | 1433 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [norm_mul_le](declarations/norm-mul-le.md) | 1439 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7086596a579376fb11faef3f10f643973cb9c5421c0625afc8a830a6c05cb0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant717f3aff88ea59a9775c70f5516a426460584bc227e4a395d92a0730534a47af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
