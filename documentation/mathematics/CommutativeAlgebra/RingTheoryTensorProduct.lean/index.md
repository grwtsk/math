# Ring Theory Tensor Product

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**101 observed declarations and anonymous commands**, 59 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec57b0a0b2341c84532324e3f23cdb5a18a123d5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/RingTheoryTensorProduct.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [baseChange](declarations/basechange.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [baseChange_tmul](declarations/basechange-tmul.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [baseChange_eq_ltensor](declarations/basechange-eq-ltensor.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [baseChange_add](declarations/basechange-add.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [baseChange_zero](declarations/basechange-zero.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [baseChange_smul](declarations/basechange-smul.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [baseChangeHom](declarations/basechangehom.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [baseChange_sub](declarations/basechange-sub.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [baseChange_neg](declarations/basechange-neg.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [mulAux](declarations/mulaux.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mulAux_apply](declarations/mulaux-apply.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mul](declarations/mul.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mul_apply](declarations/mul-apply.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mul_assoc](declarations/mul-assoc.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [one_mul](declarations/one-mul.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mul_one](declarations/mul-one.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [one_def](declarations/one-def.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [natCast_def](declarations/natcast-def.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [instMul](declarations/instmul.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [tmul_mul_tmul](declarations/tmul-mul-tmul.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instSemiring](declarations/instsemiring.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [tmul_pow](declarations/tmul-pow.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [includeLeftRingHom](declarations/includeleftringhom.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [leftAlgebra](declarations/leftalgebra.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [instAlgebra](declarations/instalgebra.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [algebraMap_apply](declarations/algebramap-apply.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [includeLeft](declarations/includeleft.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [includeLeft_apply](declarations/includeleft-apply.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [includeRight](declarations/includeright.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [includeRight_apply](declarations/includeright-apply.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [includeLeftRingHom_comp_algebraMap](declarations/includeleftringhom-comp-algebramap.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ext'](declarations/ext.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instRing](declarations/instring.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [intCast_def](declarations/intcast-def.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `example` | [(anonymous)](declarations/example.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instCommRing](declarations/instcommring.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [rightAlgebra](declarations/rightalgebra.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [right_isScalarTower](declarations/right-isscalartower.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `example` | [(anonymous)](declarations/example-source-edition-5.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `example` | [(anonymous)](declarations/example-source-edition-4.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [algHomOfLinearMapTensorProduct](declarations/alghomoflinearmaptensorproduct.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [algHomOfLinearMapTensorProduct_apply](declarations/alghomoflinearmaptensorproduct-apply.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [algEquivOfLinearEquivTensorProduct](declarations/algequivoflinearequivtensorproduct.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [algEquivOfLinearEquivTensorProduct_apply](declarations/algequivoflinearequivtensorproduct-apply.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [algEquivOfLinearEquivTripleTensorProduct](declarations/algequivoflinearequivtripletensorproduct.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [algEquivOfLinearEquivTripleTensorProduct_apply](declarations/algequivoflinearequivtripletensorproduct-apply.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [lid](declarations/lid.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [lid_tmul](declarations/lid-tmul.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [rid](declarations/rid.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [rid_tmul](declarations/rid-tmul.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [comm](declarations/comm.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [comm_tmul](declarations/comm-tmul.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [adjoin_tmul_eq_top](declarations/adjoin-tmul-eq-top.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [assoc_aux_1](declarations/assoc-aux-1.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [assoc_aux_2](declarations/assoc-aux-2.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [assoc](declarations/assoc.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [assoc_tmul](declarations/assoc-tmul.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [map](declarations/map.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [map_tmul](declarations/map-tmul.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [map_comp_includeLeft](declarations/map-comp-includeleft.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [map_restrictScalars_comp_includeRight](declarations/map-restrictscalars-comp-includeright.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [map_comp_includeRight](declarations/map-comp-includeright.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [map_range](declarations/map-range.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [congr](declarations/congr.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [congr_apply](declarations/congr-apply.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [congr_symm_apply](declarations/congr-symm-apply.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [lmul'](declarations/lmul.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [lmul'_toLinearMap](declarations/lmul-tolinearmap.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [lmul'_apply_tmul](declarations/lmul-apply-tmul.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [lmul'_comp_includeLeft](declarations/lmul-comp-includeleft.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [lmul'_comp_includeRight](declarations/lmul-comp-includeright.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [productMap](declarations/productmap.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [productMap_apply_tmul](declarations/productmap-apply-tmul.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [productMap_left_apply](declarations/productmap-left-apply.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [productMap_left](declarations/productmap-left.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [productMap_right_apply](declarations/productmap-right-apply.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [productMap_right](declarations/productmap-right.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [productMap_range](declarations/productmap-range.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [productLeftAlgHom](declarations/productleftalghom.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [basisAux](declarations/basisaux.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [basisAux_tmul](declarations/basisaux-tmul.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [basisAux_map_smul](declarations/basisaux-map-smul.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [basis](declarations/basis.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [basis_repr_tmul](declarations/basis-repr-tmul.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [basis_repr_symm_apply](declarations/basis-repr-symm-apply-source-edition-2.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [basis_repr_symm_apply'](declarations/basis-repr-symm-apply.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [endTensorEndAlgHom](declarations/endtensorendalghom.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [endTensorEndAlgHom_apply](declarations/endtensorendalghom-apply.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Subalgebra.finiteDimensional_sup](declarations/subalgebra-finitedimensional-sup.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [moduleAux](declarations/moduleaux.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [moduleAux_apply](declarations/moduleaux-apply.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [module](declarations/module.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [smul_def](declarations/smul-def.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3977b53c4204e8c5ca3377b3bdc4fc335bbc2dd5c31e4d9b7fa3967b250327c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
