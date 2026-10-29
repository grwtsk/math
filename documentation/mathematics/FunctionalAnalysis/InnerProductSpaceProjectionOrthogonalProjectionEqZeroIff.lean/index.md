# Inner Product Space Projection Orthogonal Projection Eq Zero Iff

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**110 observed declarations and anonymous commands**, 99 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a1efbff807f6e93f419b4b900e23bd34d230402`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/InnerProductSpaceProjectionOrthogonalProjectionEqZeroIff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_norm_eq_iInf_of_complete_convex](declarations/exists-norm-eq-iinf-of-complete-convex.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [norm_eq_iInf_iff_real_inner_le_zero](declarations/norm-eq-iinf-iff-real-inner-le-zero.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [exists_norm_eq_iInf_of_complete_subspace](declarations/exists-norm-eq-iinf-of-complete-subspace.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [norm_eq_iInf_iff_real_inner_eq_zero](declarations/norm-eq-iinf-iff-real-inner-eq-zero.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [norm_eq_iInf_iff_inner_eq_zero](declarations/norm-eq-iinf-iff-inner-eq-zero.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `class` | [HasOrthogonalProjection](declarations/hasorthogonalprojection.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [HasOrthogonalProjection.map_linearIsometryEquiv](declarations/hasorthogonalprojection-map-linearisometryequiv.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [HasOrthogonalProjection.map_linearIsometryEquiv'](declarations/hasorthogonalprojection-map-linearisometryequiv-source-edition-2.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [orthogonalProjectionFn](declarations/orthogonalprojectionfn.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [orthogonalProjectionFn_mem](declarations/orthogonalprojectionfn-mem.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [orthogonalProjectionFn_inner_eq_zero](declarations/orthogonalprojectionfn-inner-eq-zero.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eq_orthogonalProjectionFn_of_mem_of_inner_eq_zero](declarations/eq-orthogonalprojectionfn-of-mem-of-inner-eq-zero.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [orthogonalProjectionFn_norm_sq](declarations/orthogonalprojectionfn-norm-sq.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [orthogonalProjection](declarations/orthogonalprojection.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [orthogonalProjectionFn_eq](declarations/orthogonalprojectionfn-eq.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [orthogonalProjection_inner_eq_zero](declarations/orthogonalprojection-inner-eq-zero.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sub_orthogonalProjection_mem_orthogonal](declarations/sub-orthogonalprojection-mem-orthogonal.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eq_orthogonalProjection_of_mem_of_inner_eq_zero](declarations/eq-orthogonalprojection-of-mem-of-inner-eq-zero.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eq_orthogonalProjection_of_mem_orthogonal](declarations/eq-orthogonalprojection-of-mem-orthogonal-source-edition-2.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eq_orthogonalProjection_of_mem_orthogonal'](declarations/eq-orthogonalprojection-of-mem-orthogonal.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [orthogonalProjection_orthogonal_val](declarations/orthogonalprojection-orthogonal-val.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [orthogonalProjection_orthogonal](declarations/orthogonalprojection-orthogonal.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [orthogonalProjection_minimal](declarations/orthogonalprojection-minimal.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eq_orthogonalProjection_of_eq_submodule](declarations/eq-orthogonalprojection-of-eq-submodule.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [orthogonalProjection_mem_subspace_eq_self](declarations/orthogonalprojection-mem-subspace-eq-self.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [orthogonalProjection_eq_self_iff](declarations/orthogonalprojection-eq-self-iff.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [orthogonalProjection_eq_zero_iff](declarations/orthogonalprojection-eq-zero-iff.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ker_orthogonalProjection](declarations/ker-orthogonalprojection.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [_root_.LinearIsometry.map_orthogonalProjection](declarations/root-linearisometry-map-orthogonalprojection-source-edition-2.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [_root_.LinearIsometry.map_orthogonalProjection'](declarations/root-linearisometry-map-orthogonalprojection.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [orthogonalProjection_map_apply](declarations/orthogonalprojection-map-apply.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [orthogonalProjection_bot](declarations/orthogonalprojection-bot.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [orthogonalProjection_norm_le](declarations/orthogonalprojection-norm-le.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [smul_orthogonalProjection_singleton](declarations/smul-orthogonalprojection-singleton.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [orthogonalProjection_singleton](declarations/orthogonalprojection-singleton.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [orthogonalProjection_unit_singleton](declarations/orthogonalprojection-unit-singleton.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [reflectionLinearEquiv](declarations/reflectionlinearequiv.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [reflection](declarations/reflection.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [reflection_apply](declarations/reflection-apply.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [reflection_symm](declarations/reflection-symm.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [reflection_inv](declarations/reflection-inv.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [reflection_reflection](declarations/reflection-reflection.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [reflection_involutive](declarations/reflection-involutive.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [reflection_trans_reflection](declarations/reflection-trans-reflection.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [reflection_mul_reflection](declarations/reflection-mul-reflection.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [reflection_orthogonal_apply](declarations/reflection-orthogonal-apply.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [reflection_orthogonal](declarations/reflection-orthogonal.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [reflection_singleton_apply](declarations/reflection-singleton-apply.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [reflection_eq_self_iff](declarations/reflection-eq-self-iff.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [reflection_mem_subspace_eq_self](declarations/reflection-mem-subspace-eq-self.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [reflection_map_apply](declarations/reflection-map-apply.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [reflection_map](declarations/reflection-map.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [reflection_bot](declarations/reflection-bot.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [sup_orthogonal_inf_of_completeSpace](declarations/sup-orthogonal-inf-of-completespace.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [sup_orthogonal_of_completeSpace](declarations/sup-orthogonal-of-completespace.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [exists_add_mem_mem_orthogonal](declarations/exists-add-mem-mem-orthogonal.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [orthogonal_orthogonal](declarations/orthogonal-orthogonal.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [orthogonal_orthogonal_eq_closure](declarations/orthogonal-orthogonal-eq-closure.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [isCompl_orthogonal_of_completeSpace](declarations/iscompl-orthogonal-of-completespace.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [orthogonalComplement_eq_orthogonalComplement](declarations/orthogonalcomplement-eq-orthogonalcomplement.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [orthogonal_eq_bot_iff](declarations/orthogonal-eq-bot-iff.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [orthogonalProjection_mem_subspace_orthogonalComplement_eq_zero](declarations/orthogonalprojection-mem-subspace-orthogonalcomplement-eq-zero.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [IsOrtho.orthogonalProjection_comp_subtypeL](declarations/isortho-orthogonalprojection-comp-subtypel.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [orthogonalProjection_comp_subtypeL_eq_zero_iff](declarations/orthogonalprojection-comp-subtypel-eq-zero-iff.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [orthogonalProjection_eq_linear_proj](declarations/orthogonalprojection-eq-linear-proj.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [orthogonalProjection_coe_linearMap_eq_linearProj](declarations/orthogonalprojection-coe-linearmap-eq-linearproj.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [reflection_mem_subspace_orthogonalComplement_eq_neg](declarations/reflection-mem-subspace-orthogonalcomplement-eq-neg.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [orthogonalProjection_mem_subspace_orthogonal_precomplement_eq_zero](declarations/orthogonalprojection-mem-subspace-orthogonal-precomplement-eq-zero.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [orthogonalProjection_orthogonalProjection_of_le](declarations/orthogonalprojection-orthogonalprojection-of-le.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [orthogonalProjection_tendsto_closure_iSup](declarations/orthogonalprojection-tendsto-closure-isup.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [orthogonalProjection_tendsto_self](declarations/orthogonalprojection-tendsto-self.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [triorthogonal_eq_orthogonal](declarations/triorthogonal-eq-orthogonal.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [topologicalClosure_eq_top_iff](declarations/topologicalclosure-eq-top-iff.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [eq_zero_of_inner_left](declarations/eq-zero-of-inner-left.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [eq_zero_of_mem_orthogonal](declarations/eq-zero-of-mem-orthogonal.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [eq_of_sub_mem_orthogonal](declarations/eq-of-sub-mem-orthogonal.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [eq_of_inner_left](declarations/eq-of-inner-left.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [eq_of_inner_right](declarations/eq-of-inner-right.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [eq_zero_of_inner_right](declarations/eq-zero-of-inner-right.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [reflection_mem_subspace_orthogonal_precomplement_eq_neg](declarations/reflection-mem-subspace-orthogonal-precomplement-eq-neg.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [orthogonalProjection_orthogonalComplement_singleton_eq_zero](declarations/orthogonalprojection-orthogonalcomplement-singleton-eq-zero.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [reflection_orthogonalComplement_singleton_eq_neg](declarations/reflection-orthogonalcomplement-singleton-eq-neg.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [reflection_sub](declarations/reflection-sub.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [det_reflection](declarations/det-reflection.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [linearEquiv_det_reflection](declarations/linearequiv-det-reflection.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [orthogonalProjection_add_orthogonalProjection_orthogonal](declarations/orthogonalprojection-add-orthogonalprojection-orthogonal.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [norm_sq_eq_add_norm_sq_projection](declarations/norm-sq-eq-add-norm-sq-projection.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [id_eq_sum_orthogonalProjection_self_orthogonalComplement](declarations/id-eq-sum-orthogonalprojection-self-orthogonalcomplement.md) | 1032 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [inner_orthogonalProjection_eq_of_mem_right](declarations/inner-orthogonalprojection-eq-of-mem-right.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [inner_orthogonalProjection_eq_of_mem_left](declarations/inner-orthogonalprojection-eq-of-mem-left.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [inner_orthogonalProjection_left_eq_right](declarations/inner-orthogonalprojection-left-eq-right.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [orthogonalProjection_isSymmetric](declarations/orthogonalprojection-issymmetric.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [finrank_add_inf_finrank_orthogonal](declarations/finrank-add-inf-finrank-orthogonal.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [finrank_add_inf_finrank_orthogonal'](declarations/finrank-add-inf-finrank-orthogonal-source-edition-2.md) | 1083 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [finrank_add_finrank_orthogonal](declarations/finrank-add-finrank-orthogonal.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [finrank_add_finrank_orthogonal'](declarations/finrank-add-finrank-orthogonal-source-edition-2.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [finrank_orthogonal_span_singleton](declarations/finrank-orthogonal-span-singleton.md) | 1106 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [LinearIsometryEquiv.reflections_generate_dim_aux](declarations/linearisometryequiv-reflections-generate-dim-aux.md) | 1119 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [LinearIsometryEquiv.reflections_generate_dim](declarations/linearisometryequiv-reflections-generate-dim.md) | 1197 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [LinearIsometryEquiv.reflections_generate](declarations/linearisometryequiv-reflections-generate.md) | 1203 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [OrthogonalFamily.isInternal_iff_of_isComplete](declarations/orthogonalfamily-isinternal-iff-of-iscomplete.md) | 1224 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [OrthogonalFamily.isInternal_iff](declarations/orthogonalfamily-isinternal-iff.md) | 1234 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [OrthogonalFamily.sum_projection_of_mem_iSup](declarations/orthogonalfamily-sum-projection-of-mem-isup.md) | 1243 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [OrthogonalFamily.projection_directSum_coeAddHom](declarations/orthogonalfamily-projection-directsum-coeaddhom.md) | 1261 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `abbrev` | [OrthogonalFamily.decomposition](declarations/orthogonalfamily-decomposition.md) | 1287 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [maximal_orthonormal_iff_orthogonalComplement_eq_bot](declarations/maximal-orthonormal-iff-orthogonalcomplement-eq-bot.md) | 1315 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [maximal_orthonormal_iff_basis_of_finiteDimensional](declarations/maximal-orthonormal-iff-basis-of-finitedimensional.md) | 1380 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9909c69fe7010c88673da951a8eb3f48b4cb192caf88e2ed0ae79a0c81a2176c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
