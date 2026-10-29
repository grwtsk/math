# Equiv Defs Namespaced Ext Iff

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**176 observed declarations and anonymous commands**, 111 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant98d2577d03cfbdaacfe3adc85895b44bc96fc8d1158c79974c6eacc7d2f97a3d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75b56a0b9d635416e05acf39b2f84e2c965863ef`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/EquivDefsNamespacedExtIff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Equiv](declarations/equiv.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [EquivLike.toEquiv](declarations/equivlike-toequiv.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Equiv.Perm](declarations/equiv-perm.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coe_fn_mk](declarations/coe-fn-mk.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_fn_injective](declarations/coe-fn-injective.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_inj](declarations/coe-inj.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [congr_arg](declarations/congr-arg.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [congr_fun](declarations/congr-fun.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ext_iff](declarations/ext-iff.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Perm.ext](declarations/perm-ext.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Perm.congr_arg](declarations/perm-congr-arg.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Perm.congr_fun](declarations/perm-congr-fun.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Perm.ext_iff](declarations/perm-ext-iff.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [refl](declarations/refl.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [inhabited'](declarations/inhabited.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [symm](declarations/symm.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [left_inv'](declarations/left-inv.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [right_inv'](declarations/right-inv.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [trans](declarations/trans.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toFun_as_coe](declarations/tofun-as-coe.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toFun_as_coe_apply](declarations/tofun-as-coe-apply.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [invFun_as_coe](declarations/invfun-as-coe.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [injective](declarations/injective.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [surjective](declarations/surjective.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [bijective](declarations/bijective.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [subsingleton](declarations/subsingleton.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [subsingleton.symm](declarations/subsingleton-symm.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [subsingleton_congr](declarations/subsingleton-congr.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [equiv_subsingleton_cod](declarations/equiv-subsingleton-cod.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [equiv_subsingleton_dom](declarations/equiv-subsingleton-dom.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [permUnique](declarations/permunique.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Perm.subsingleton_eq_refl](declarations/perm-subsingleton-eq-refl.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [decidableEq](declarations/decidableeq.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [nonempty_congr](declarations/nonempty-congr.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [nonempty](declarations/nonempty.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [inhabited](declarations/inhabited-source-edition-2.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [unique](declarations/unique.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [cast](declarations/cast.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [coe_fn_symm_mk](declarations/coe-fn-symm-mk.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_refl](declarations/coe-refl.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Perm.coe_subsingleton](declarations/perm-coe-subsingleton.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [refl_apply](declarations/refl-apply.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coe_trans](declarations/coe-trans.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [trans_apply](declarations/trans-apply.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [symm_comp_self](declarations/symm-comp-self.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [self_comp_symm](declarations/self-comp-symm.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [symm_trans_apply](declarations/symm-trans-apply.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [symm_symm_apply](declarations/symm-symm-apply.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [apply_eq_iff_eq](declarations/apply-eq-iff-eq.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [apply_eq_iff_eq_symm_apply](declarations/apply-eq-iff-eq-symm-apply.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [cast_apply](declarations/cast-apply.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [cast_symm](declarations/cast-symm.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [cast_refl](declarations/cast-refl.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [cast_trans](declarations/cast-trans.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [cast_eq_iff_heq](declarations/cast-eq-iff-heq.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [symm_apply_eq](declarations/symm-apply-eq.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [eq_symm_apply](declarations/eq-symm-apply.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [symm_symm](declarations/symm-symm.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [trans_refl](declarations/trans-refl.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [refl_symm](declarations/refl-symm.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [refl_trans](declarations/refl-trans.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [symm_trans_self](declarations/symm-trans-self.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [self_trans_symm](declarations/self-trans-symm.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [trans_assoc](declarations/trans-assoc.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [leftInverse_symm](declarations/leftinverse-symm.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [rightInverse_symm](declarations/rightinverse-symm.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [injective_comp](declarations/injective-comp.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [comp_injective](declarations/comp-injective.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [surjective_comp](declarations/surjective-comp.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [comp_surjective](declarations/comp-surjective.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [bijective_comp](declarations/bijective-comp.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [comp_bijective](declarations/comp-bijective.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [equivCongr](declarations/equivcongr.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [equivCongr_refl](declarations/equivcongr-refl.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [equivCongr_symm](declarations/equivcongr-symm.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [equivCongr_trans](declarations/equivcongr-trans.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [equivCongr_refl_left](declarations/equivcongr-refl-left.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [equivCongr_refl_right](declarations/equivcongr-refl-right.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [equivCongr_apply_apply](declarations/equivcongr-apply-apply.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [permCongr](declarations/permcongr.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [permCongr_def](declarations/permcongr-def.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [permCongr_refl](declarations/permcongr-refl.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [permCongr_symm](declarations/permcongr-symm.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [permCongr_apply](declarations/permcongr-apply.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [permCongr_symm_apply](declarations/permcongr-symm-apply.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [permCongr_trans](declarations/permcongr-trans.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [equivOfIsEmpty](declarations/equivofisempty.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [equivEmpty](declarations/equivempty.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [equivPEmpty](declarations/equivpempty.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [equivEmptyEquiv](declarations/equivemptyequiv.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [propEquivPEmpty](declarations/propequivpempty.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [equivOfUnique](declarations/equivofunique.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [equivPUnit](declarations/equivpunit.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [propEquivPUnit](declarations/propequivpunit.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [ulift](declarations/ulift.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [plift](declarations/plift.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [ofIff](declarations/ofiff.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [arrowCongr](declarations/arrowcongr.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [arrowCongr_comp](declarations/arrowcongr-comp.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [arrowCongr_refl](declarations/arrowcongr-refl.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [arrowCongr_trans](declarations/arrowcongr-trans.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [arrowCongr_symm](declarations/arrowcongr-symm.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [arrowCongr'](declarations/arrowcongr-source-edition-2.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [arrowCongr'_refl](declarations/arrowcongr-refl-source-edition-2.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [arrowCongr'_trans](declarations/arrowcongr-trans-source-edition-2.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [arrowCongr'_symm](declarations/arrowcongr-symm-source-edition-2.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [conj](declarations/conj.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [conj_refl](declarations/conj-refl.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [conj_symm](declarations/conj-symm.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [conj_trans](declarations/conj-trans.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [conj_comp](declarations/conj-comp.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [eq_comp_symm](declarations/eq-comp-symm.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [comp_symm_eq](declarations/comp-symm-eq.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [eq_symm_comp](declarations/eq-symm-comp.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [symm_comp_eq](declarations/symm-comp-eq.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [punitEquivPUnit](declarations/punitequivpunit.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [propEquivBool](declarations/propequivbool.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [arrowPUnitEquivPUnit](declarations/arrowpunitequivpunit.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [piSubsingleton](declarations/pisubsingleton.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [funUnique](declarations/fununique.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [punitArrowEquiv](declarations/punitarrowequiv.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [trueArrowEquiv](declarations/truearrowequiv.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [arrowPUnitOfIsEmpty](declarations/arrowpunitofisempty.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [emptyArrowEquivPUnit](declarations/emptyarrowequivpunit.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [pemptyArrowEquivPUnit](declarations/pemptyarrowequivpunit.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [falseArrowEquivPUnit](declarations/falsearrowequivpunit.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [psigmaEquivSigma](declarations/psigmaequivsigma.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `def` | [psigmaEquivSigmaPLift](declarations/psigmaequivsigmaplift.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [psigmaCongrRight](declarations/psigmacongrright.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [psigmaCongrRight_trans](declarations/psigmacongrright-trans.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [psigmaCongrRight_symm](declarations/psigmacongrright-symm.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [psigmaCongrRight_refl](declarations/psigmacongrright-refl.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `def` | [sigmaCongrRight](declarations/sigmacongrright.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [sigmaCongrRight_trans](declarations/sigmacongrright-trans-source-edition-2.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [sigmaCongrRight_symm](declarations/sigmacongrright-symm.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [sigmaCongrRight_refl](declarations/sigmacongrright-refl-source-edition-2.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [psigmaEquivSubtype](declarations/psigmaequivsubtype.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `def` | [sigmaPLiftEquivSubtype](declarations/sigmapliftequivsubtype.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [sigmaULiftPLiftEquivSubtype](declarations/sigmauliftpliftequivsubtype.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `def` | [sigmaCongrRight](declarations/sigmacongrright-source-edition-2.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [sigmaCongrRight_trans](declarations/sigmacongrright-trans.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [sigmaCongrRight_symm](declarations/sigmacongrright-symm-source-edition-2.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [sigmaCongrRight_refl](declarations/sigmacongrright-refl.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `def` | [sigmaCongrLeft](declarations/sigmacongrleft.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `def` | [sigmaCongrLeft'](declarations/sigmacongrleft-source-edition-2.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [sigmaCongr](declarations/sigmacongr.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `def` | [sigmaEquivProd](declarations/sigmaequivprod.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `def` | [sigmaEquivProdOfEquiv](declarations/sigmaequivprodofequiv.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `def` | [sigmaAssoc](declarations/sigmaassoc.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [exists_unique_congr](declarations/exists-unique-congr.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [exists_unique_congr_left'](declarations/exists-unique-congr-left-source-edition-2.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [exists_unique_congr_left](declarations/exists-unique-congr-left.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [forall_congr](declarations/forall-congr.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [forall_congr'](declarations/forall-congr-source-edition-2.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [forall₂_congr](declarations/forall-congr-source-edition-6.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [forall₂_congr'](declarations/forall-congr-source-edition-4.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [forall₃_congr](declarations/forall-congr-source-edition-5.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [forall₃_congr'](declarations/forall-congr-source-edition-3.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [forall_congr_left'](declarations/forall-congr-left.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [forall_congr_left](declarations/forall-congr-left-source-edition-2.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [exists_congr_left](declarations/exists-congr-left.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `def` | [congr](declarations/congr-source-edition-2.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [congr_mk](declarations/congr-mk.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `def` | [congrRight](declarations/congrright-source-edition-2.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `def` | [congrLeft](declarations/congrleft.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `def` | [congr](declarations/congr.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [congr_mk](declarations/congr-mk-source-edition-2.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `def` | [congrRight](declarations/congrright.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=627bdcfbb9683e0f4419a657b3e266891b84c2f43e56286561c154fbc243a9af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant98d2577d03cfbdaacfe3adc85895b44bc96fc8d1158c79974c6eacc7d2f97a3d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
