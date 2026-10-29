# Hom Ring

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**108 observed declarations and anonymous commands**, 83 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Ring/Variant8ce20e68fbcf6f21e23c94024620694df1d58ba276ac59ab7545e38cab101a32.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a27d05012a7226bd83f15c4507f1ff1bf083b964`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/HomRing.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NonUnitalRingHom](declarations/nonunitalringhom.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [NonUnitalRingHomClass](declarations/nonunitalringhomclass.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [NonUnitalRingHomClass.toNonUnitalRingHom](declarations/nonunitalringhomclass-tononunitalringhom.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_toMulHom](declarations/coe-tomulhom.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coe_mulHom_mk](declarations/coe-mulhom-mk.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_toAddMonoidHom](declarations/coe-toaddmonoidhom.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_addMonoidHom_mk](declarations/coe-addmonoidhom-mk-source-edition-2.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [copy](declarations/copy.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_copy](declarations/coe-copy-source-edition-2.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [copy_eq](declarations/copy-eq-source-edition-2.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ext_iff](declarations/ext-iff-source-edition-2.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mk_coe](declarations/mk-coe-source-edition-2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_addMonoidHom_injective](declarations/coe-addmonoidhom-injective-source-edition-2.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_mulHom_injective](declarations/coe-mulhom-injective.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [id](declarations/id-source-edition-2.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_zero](declarations/coe-zero.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [zero_apply](declarations/zero-apply.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [id_apply](declarations/id-apply.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_addMonoidHom_id](declarations/coe-addmonoidhom-id-source-edition-2.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_mulHom_id](declarations/coe-mulhom-id.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [comp](declarations/comp.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_comp](declarations/coe-comp.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [comp_apply](declarations/comp-apply.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_comp_addMonoidHom](declarations/coe-comp-addmonoidhom.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_comp_mulHom](declarations/coe-comp-mulhom.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [comp_zero](declarations/comp-zero.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [zero_comp](declarations/zero-comp.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [comp_id](declarations/comp-id.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [id_comp](declarations/id-comp-source-edition-2.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [one_def](declarations/one-def-source-edition-2.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coe_one](declarations/coe-one.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mul_def](declarations/mul-def.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [coe_mul](declarations/coe-mul.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [cancel_right](declarations/cancel-right-source-edition-2.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [cancel_left](declarations/cancel-left-source-edition-2.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [RingHom](declarations/ringhom.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `class` | [RingHomClass](declarations/ringhomclass.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [map_bit1](declarations/map-bit1.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [RingHomClass.toRingHom](declarations/ringhomclass-toringhom.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [instRingHomClass](declarations/instringhomclass.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coe_mk](declarations/coe-mk.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_coe](declarations/coe-coe.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [coeToMonoidHom](declarations/coetomonoidhom.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toMonoidHom_eq_coe](declarations/tomonoidhom-eq-coe.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [toMonoidWithZeroHom_eq_coe](declarations/tomonoidwithzerohom-eq-coe.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [coe_monoidHom_mk](declarations/coe-monoidhom-mk.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [toAddMonoidHom_eq_coe](declarations/toaddmonoidhom-eq-coe.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coe_addMonoidHom_mk](declarations/coe-addmonoidhom-mk.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [copy](declarations/copy-source-edition-2.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coe_copy](declarations/coe-copy.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [copy_eq](declarations/copy-eq.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [congr_fun](declarations/congr-fun.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [congr_arg](declarations/congr-arg.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [coe_inj](declarations/coe-inj.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [ext](declarations/ext.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [ext_iff](declarations/ext-iff.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [mk_coe](declarations/mk-coe.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [coe_addMonoidHom_injective](declarations/coe-addmonoidhom-injective.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [coe_monoidHom_injective](declarations/coe-monoidhom-injective.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [map_zero](declarations/map-zero.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [map_one](declarations/map-one.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [map_add](declarations/map-add.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [map_mul](declarations/map-mul.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [map_ite_zero_one](declarations/map-ite-zero-one.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [map_ite_one_zero](declarations/map-ite-one-zero.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [codomain_trivial_iff_map_one_eq_zero](declarations/codomain-trivial-iff-map-one-eq-zero.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [codomain_trivial_iff_range_trivial](declarations/codomain-trivial-iff-range-trivial.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [codomain_trivial_iff_range_eq_singleton_zero](declarations/codomain-trivial-iff-range-eq-singleton-zero.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [map_one_ne_zero](declarations/map-one-ne-zero.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [domain_nontrivial](declarations/domain-nontrivial.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [codomain_trivial](declarations/codomain-trivial.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [map_neg](declarations/map-neg.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [map_sub](declarations/map-sub.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [mk'](declarations/mk.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [isUnit_map](declarations/isunit-map.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [map_dvd](declarations/map-dvd.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [id](declarations/id.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [id_apply](declarations/id-apply-source-edition-2.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [coe_addMonoidHom_id](declarations/coe-addmonoidhom-id.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [coe_monoidHom_id](declarations/coe-monoidhom-id.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [comp](declarations/comp-source-edition-2.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [comp_assoc](declarations/comp-assoc-source-edition-2.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [coe_comp](declarations/coe-comp-source-edition-2.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [comp_apply](declarations/comp-apply-source-edition-2.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [comp_id](declarations/comp-id-source-edition-2.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [id_comp](declarations/id-comp.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [one_def](declarations/one-def.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [mul_def](declarations/mul-def-source-edition-2.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [coe_one](declarations/coe-one-source-edition-2.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [coe_mul](declarations/coe-mul-source-edition-2.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [cancel_right](declarations/cancel-right.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [cancel_left](declarations/cancel-left.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [Function.Injective.isDomain](declarations/function-injective-isdomain.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [mkRingHomOfMulSelfOfTwoNeZero](declarations/mkringhomofmulselfoftwonezero.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [coe_fn_mkRingHomOfMulSelfOfTwoNeZero](declarations/coe-fn-mkringhomofmulselfoftwonezero.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [coe_addMonoidHom_mkRingHomOfMulSelfOfTwoNeZero](declarations/coe-addmonoidhom-mkringhomofmulselfoftwonezero.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a8b9df6190a42c08681b8fa81e6c916a179019700d8d04376f7b9d43564988c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Ring/Variant8ce20e68fbcf6f21e23c94024620694df1d58ba276ac59ab7545e38cab101a32.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
