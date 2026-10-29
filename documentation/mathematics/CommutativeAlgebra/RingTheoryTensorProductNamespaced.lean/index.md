# Ring Theory Tensor Product Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**101 observed declarations and anonymous commands**, 59 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant27b19f8eda18ba84200048540a9afe423931b5019f317de472e6719ff4e6c475.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fca833014ac94836ce6d4e75788c5938524b3587`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/RingTheoryTensorProductNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [baseChange](declarations/basechange.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [baseChange_tmul](declarations/basechange-tmul.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [baseChange_eq_ltensor](declarations/basechange-eq-ltensor.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [baseChange_add](declarations/basechange-add.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [baseChange_zero](declarations/basechange-zero.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [baseChange_smul](declarations/basechange-smul.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [baseChangeHom](declarations/basechangehom.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [baseChange_sub](declarations/basechange-sub.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [baseChange_neg](declarations/basechange-neg.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [mulAux](declarations/mulaux.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mulAux_apply](declarations/mulaux-apply.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mul](declarations/mul.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mul_apply](declarations/mul-apply.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mul_assoc](declarations/mul-assoc.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [one_mul](declarations/one-mul.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mul_one](declarations/mul-one.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [one_def](declarations/one-def.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [natCast_def](declarations/natcast-def.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [instMul](declarations/instmul.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [tmul_mul_tmul](declarations/tmul-mul-tmul.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instSemiring](declarations/instsemiring.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [tmul_pow](declarations/tmul-pow.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [includeLeftRingHom](declarations/includeleftringhom.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [leftAlgebra](declarations/leftalgebra.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [instAlgebra](declarations/instalgebra.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [algebraMap_apply](declarations/algebramap-apply.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [includeLeft](declarations/includeleft.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [includeLeft_apply](declarations/includeleft-apply.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [includeRight](declarations/includeright.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [includeRight_apply](declarations/includeright-apply.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [includeLeftRingHom_comp_algebraMap](declarations/includeleftringhom-comp-algebramap.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ext](declarations/ext.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ext'](declarations/ext-source-edition-2.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instRing](declarations/instring.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [intCast_def](declarations/intcast-def.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `example` | [(anonymous)](declarations/example.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `example` | [(anonymous)](declarations/example-source-edition-4.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instCommRing](declarations/instcommring.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [rightAlgebra](declarations/rightalgebra.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [right_isScalarTower](declarations/right-isscalartower.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `example` | [(anonymous)](declarations/example-source-edition-5.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [algHomOfLinearMapTensorProduct](declarations/alghomoflinearmaptensorproduct.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [algHomOfLinearMapTensorProduct_apply](declarations/alghomoflinearmaptensorproduct-apply.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [algEquivOfLinearEquivTensorProduct](declarations/algequivoflinearequivtensorproduct.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [algEquivOfLinearEquivTensorProduct_apply](declarations/algequivoflinearequivtensorproduct-apply.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [algEquivOfLinearEquivTripleTensorProduct](declarations/algequivoflinearequivtripletensorproduct.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [algEquivOfLinearEquivTripleTensorProduct_apply](declarations/algequivoflinearequivtripletensorproduct-apply.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [lid](declarations/lid.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [lid_tmul](declarations/lid-tmul.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [rid](declarations/rid.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [rid_tmul](declarations/rid-tmul.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [comm](declarations/comm.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [comm_tmul](declarations/comm-tmul.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [adjoin_tmul_eq_top](declarations/adjoin-tmul-eq-top.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [assoc_aux_1](declarations/assoc-aux-1.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [assoc_aux_2](declarations/assoc-aux-2.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [assoc](declarations/assoc.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [assoc_tmul](declarations/assoc-tmul.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [map](declarations/map.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [map_tmul](declarations/map-tmul.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [map_comp_includeLeft](declarations/map-comp-includeleft.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [map_restrictScalars_comp_includeRight](declarations/map-restrictscalars-comp-includeright.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [map_comp_includeRight](declarations/map-comp-includeright.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [map_range](declarations/map-range.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [congr](declarations/congr.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [congr_apply](declarations/congr-apply.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [congr_symm_apply](declarations/congr-symm-apply.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [lmul'](declarations/lmul.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [lmul'_toLinearMap](declarations/lmul-tolinearmap.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [lmul'_apply_tmul](declarations/lmul-apply-tmul.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [lmul'_comp_includeLeft](declarations/lmul-comp-includeleft.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [lmul'_comp_includeRight](declarations/lmul-comp-includeright.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [productMap](declarations/productmap.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [productMap_apply_tmul](declarations/productmap-apply-tmul.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [productMap_left_apply](declarations/productmap-left-apply.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [productMap_left](declarations/productmap-left.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [productMap_right_apply](declarations/productmap-right-apply.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [productMap_right](declarations/productmap-right.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [productMap_range](declarations/productmap-range.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [productLeftAlgHom](declarations/productleftalghom.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [basisAux](declarations/basisaux.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [basisAux_tmul](declarations/basisaux-tmul.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [basisAux_map_smul](declarations/basisaux-map-smul.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [basis](declarations/basis.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [basis_repr_tmul](declarations/basis-repr-tmul.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [basis_repr_symm_apply](declarations/basis-repr-symm-apply-source-edition-2.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [basis_repr_symm_apply'](declarations/basis-repr-symm-apply.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [endTensorEndAlgHom](declarations/endtensorendalghom.md) | 947 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [endTensorEndAlgHom_apply](declarations/endtensorendalghom-apply.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Subalgebra.finiteDimensional_sup](declarations/subalgebra-finitedimensional-sup.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [moduleAux](declarations/moduleaux.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [moduleAux_apply](declarations/moduleaux-apply.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [module](declarations/module.md) | 1014 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [smul_def](declarations/smul-def.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70e2ab56adbe1b6123a4945eafbb8bcec1021b5143e8e163e03208af8134f1ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant27b19f8eda18ba84200048540a9afe423931b5019f317de472e6719ff4e6c475.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
