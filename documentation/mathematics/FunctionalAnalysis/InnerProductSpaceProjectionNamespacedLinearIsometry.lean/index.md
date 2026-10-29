# Inner Product Space Projection Namespaced Linear Isometry

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**105 observed declarations and anonymous commands**, 94 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e0bb95bd0e70c01a34341ae30299a7a56af087e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_norm_eq_iInf_of_complete_convex](declarations/exists-norm-eq-iinf-of-complete-convex.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [norm_eq_iInf_iff_real_inner_le_zero](declarations/norm-eq-iinf-iff-real-inner-le-zero.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [exists_norm_eq_iInf_of_complete_subspace](declarations/exists-norm-eq-iinf-of-complete-subspace.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [norm_eq_iInf_iff_real_inner_eq_zero](declarations/norm-eq-iinf-iff-real-inner-eq-zero.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [norm_eq_iInf_iff_inner_eq_zero](declarations/norm-eq-iinf-iff-inner-eq-zero.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `class` | [HasOrthogonalProjection](declarations/hasorthogonalprojection.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [HasOrthogonalProjection.map_linearIsometryEquiv](declarations/hasorthogonalprojection-map-linearisometryequiv-source-edition-2.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [HasOrthogonalProjection.map_linearIsometryEquiv'](declarations/hasorthogonalprojection-map-linearisometryequiv.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [orthogonalProjectionFn](declarations/orthogonalprojectionfn.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [orthogonalProjectionFn_mem](declarations/orthogonalprojectionfn-mem.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [orthogonalProjectionFn_inner_eq_zero](declarations/orthogonalprojectionfn-inner-eq-zero.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eq_orthogonalProjectionFn_of_mem_of_inner_eq_zero](declarations/eq-orthogonalprojectionfn-of-mem-of-inner-eq-zero.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [orthogonalProjectionFn_norm_sq](declarations/orthogonalprojectionfn-norm-sq.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [orthogonalProjection](declarations/orthogonalprojection.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [orthogonalProjectionFn_eq](declarations/orthogonalprojectionfn-eq.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [orthogonalProjection_inner_eq_zero](declarations/orthogonalprojection-inner-eq-zero.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sub_orthogonalProjection_mem_orthogonal](declarations/sub-orthogonalprojection-mem-orthogonal.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eq_orthogonalProjection_of_mem_of_inner_eq_zero](declarations/eq-orthogonalprojection-of-mem-of-inner-eq-zero.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eq_orthogonalProjection_of_mem_orthogonal](declarations/eq-orthogonalprojection-of-mem-orthogonal.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eq_orthogonalProjection_of_mem_orthogonal'](declarations/eq-orthogonalprojection-of-mem-orthogonal-source-edition-2.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [orthogonalProjection_orthogonal_val](declarations/orthogonalprojection-orthogonal-val.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [orthogonalProjection_orthogonal](declarations/orthogonalprojection-orthogonal.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [orthogonalProjection_minimal](declarations/orthogonalprojection-minimal.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eq_orthogonalProjection_of_eq_submodule](declarations/eq-orthogonalprojection-of-eq-submodule.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [orthogonalProjection_mem_subspace_eq_self](declarations/orthogonalprojection-mem-subspace-eq-self.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [orthogonalProjection_eq_self_iff](declarations/orthogonalprojection-eq-self-iff.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [LinearIsometry.map_orthogonalProjection](declarations/linearisometry-map-orthogonalprojection.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [LinearIsometry.map_orthogonalProjection'](declarations/linearisometry-map-orthogonalprojection-source-edition-2.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [orthogonalProjection_map_apply](declarations/orthogonalprojection-map-apply.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [orthogonalProjection_bot](declarations/orthogonalprojection-bot.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [orthogonalProjection_norm_le](declarations/orthogonalprojection-norm-le.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [smul_orthogonalProjection_singleton](declarations/smul-orthogonalprojection-singleton.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [orthogonalProjection_singleton](declarations/orthogonalprojection-singleton.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [orthogonalProjection_unit_singleton](declarations/orthogonalprojection-unit-singleton.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [reflectionLinearEquiv](declarations/reflectionlinearequiv.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [reflection](declarations/reflection.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [reflection_apply](declarations/reflection-apply.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [reflection_symm](declarations/reflection-symm.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [reflection_inv](declarations/reflection-inv.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [reflection_reflection](declarations/reflection-reflection.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [reflection_involutive](declarations/reflection-involutive.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [reflection_trans_reflection](declarations/reflection-trans-reflection.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [reflection_mul_reflection](declarations/reflection-mul-reflection.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [reflection_orthogonal_apply](declarations/reflection-orthogonal-apply.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [reflection_orthogonal](declarations/reflection-orthogonal.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [reflection_singleton_apply](declarations/reflection-singleton-apply.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [reflection_eq_self_iff](declarations/reflection-eq-self-iff.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [reflection_mem_subspace_eq_self](declarations/reflection-mem-subspace-eq-self.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [reflection_map_apply](declarations/reflection-map-apply.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [reflection_map](declarations/reflection-map.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [reflection_bot](declarations/reflection-bot.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Submodule.sup_orthogonal_inf_of_completeSpace](declarations/submodule-sup-orthogonal-inf-of-completespace.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Submodule.sup_orthogonal_of_completeSpace](declarations/submodule-sup-orthogonal-of-completespace.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Submodule.exists_add_mem_mem_orthogonal](declarations/submodule-exists-add-mem-mem-orthogonal.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Submodule.orthogonal_orthogonal](declarations/submodule-orthogonal-orthogonal.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Submodule.orthogonal_orthogonal_eq_closure](declarations/submodule-orthogonal-orthogonal-eq-closure.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [Submodule.isCompl_orthogonal_of_completeSpace](declarations/submodule-iscompl-orthogonal-of-completespace.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Submodule.orthogonal_eq_bot_iff](declarations/submodule-orthogonal-eq-bot-iff.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [orthogonalProjection_mem_subspace_orthogonalComplement_eq_zero](declarations/orthogonalprojection-mem-subspace-orthogonalcomplement-eq-zero.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Submodule.IsOrtho.orthogonalProjection_comp_subtypeL](declarations/submodule-isortho-orthogonalprojection-comp-subtypel.md) | 881 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [orthogonalProjection_comp_subtypeL_eq_zero_iff](declarations/orthogonalprojection-comp-subtypel-eq-zero-iff.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [orthogonalProjection_eq_linear_proj](declarations/orthogonalprojection-eq-linear-proj.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [orthogonalProjection_coe_linearMap_eq_linearProj](declarations/orthogonalprojection-coe-linearmap-eq-linearproj.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [reflection_mem_subspace_orthogonalComplement_eq_neg](declarations/reflection-mem-subspace-orthogonalcomplement-eq-neg.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [orthogonalProjection_mem_subspace_orthogonal_precomplement_eq_zero](declarations/orthogonalprojection-mem-subspace-orthogonal-precomplement-eq-zero.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [orthogonalProjection_orthogonalProjection_of_le](declarations/orthogonalprojection-orthogonalprojection-of-le.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [orthogonalProjection_tendsto_closure_iSup](declarations/orthogonalprojection-tendsto-closure-isup.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [orthogonalProjection_tendsto_self](declarations/orthogonalprojection-tendsto-self.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Submodule.triorthogonal_eq_orthogonal](declarations/submodule-triorthogonal-eq-orthogonal.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Submodule.topologicalClosure_eq_top_iff](declarations/submodule-topologicalclosure-eq-top-iff.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [eq_zero_of_inner_left](declarations/eq-zero-of-inner-left.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [eq_zero_of_mem_orthogonal](declarations/eq-zero-of-mem-orthogonal.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [eq_of_sub_mem_orthogonal](declarations/eq-of-sub-mem-orthogonal.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [eq_of_inner_left](declarations/eq-of-inner-left.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [eq_of_inner_right](declarations/eq-of-inner-right.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [eq_zero_of_inner_right](declarations/eq-zero-of-inner-right.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [reflection_mem_subspace_orthogonal_precomplement_eq_neg](declarations/reflection-mem-subspace-orthogonal-precomplement-eq-neg.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [orthogonalProjection_orthogonalComplement_singleton_eq_zero](declarations/orthogonalprojection-orthogonalcomplement-singleton-eq-zero.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [reflection_orthogonalComplement_singleton_eq_neg](declarations/reflection-orthogonalcomplement-singleton-eq-neg.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [reflection_sub](declarations/reflection-sub.md) | 1048 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [orthogonalProjection_add_orthogonalProjection_orthogonal](declarations/orthogonalprojection-add-orthogonalprojection-orthogonal.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [norm_sq_eq_add_norm_sq_projection](declarations/norm-sq-eq-add-norm-sq-projection.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [id_eq_sum_orthogonalProjection_self_orthogonalComplement](declarations/id-eq-sum-orthogonalprojection-self-orthogonalcomplement.md) | 1088 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [inner_orthogonalProjection_eq_of_mem_right](declarations/inner-orthogonalprojection-eq-of-mem-right.md) | 1097 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [inner_orthogonalProjection_eq_of_mem_left](declarations/inner-orthogonalprojection-eq-of-mem-left.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [inner_orthogonalProjection_left_eq_right](declarations/inner-orthogonalprojection-left-eq-right.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [orthogonalProjection_isSymmetric](declarations/orthogonalprojection-issymmetric.md) | 1120 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Submodule.finrank_add_inf_finrank_orthogonal](declarations/submodule-finrank-add-inf-finrank-orthogonal.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [Submodule.finrank_add_inf_finrank_orthogonal'](declarations/submodule-finrank-add-inf-finrank-orthogonal-source-edition-2.md) | 1145 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [Submodule.finrank_add_finrank_orthogonal](declarations/submodule-finrank-add-finrank-orthogonal-source-edition-2.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Submodule.finrank_add_finrank_orthogonal'](declarations/submodule-finrank-add-finrank-orthogonal.md) | 1163 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [finrank_orthogonal_span_singleton](declarations/finrank-orthogonal-span-singleton.md) | 1171 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [LinearIsometryEquiv.reflections_generate_dim_aux](declarations/linearisometryequiv-reflections-generate-dim-aux.md) | 1181 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [LinearIsometryEquiv.reflections_generate_dim](declarations/linearisometryequiv-reflections-generate-dim.md) | 1260 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [LinearIsometryEquiv.reflections_generate](declarations/linearisometryequiv-reflections-generate.md) | 1267 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [OrthogonalFamily.isInternal_iff_of_isComplete](declarations/orthogonalfamily-isinternal-iff-of-iscomplete.md) | 1287 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [OrthogonalFamily.isInternal_iff](declarations/orthogonalfamily-isinternal-iff.md) | 1298 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [OrthogonalFamily.sum_projection_of_mem_iSup](declarations/orthogonalfamily-sum-projection-of-mem-isup.md) | 1308 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [OrthogonalFamily.projection_directSum_coeAddHom](declarations/orthogonalfamily-projection-directsum-coeaddhom.md) | 1329 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [OrthogonalFamily.decomposition](declarations/orthogonalfamily-decomposition.md) | 1354 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [maximal_orthonormal_iff_orthogonalComplement_eq_bot](declarations/maximal-orthonormal-iff-orthogonalcomplement-eq-bot.md) | 1383 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [maximal_orthonormal_iff_basis_of_finiteDimensional](declarations/maximal-orthonormal-iff-basis-of-finitedimensional.md) | 1449 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a67abacc3df8bfc78969ac96b5f00b83dbe5fcd4546cfc5161660cc1ede2893 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
