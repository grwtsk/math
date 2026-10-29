# Linear Algebra Pi Tensor Product Lifts

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**101 observed declarations and anonymous commands**, 67 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant8dd5eefc9d990c60f9637337d4e88f56bb73c51f3cfe0ba877fb9557f627a5cf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c883c430c2da3e822ac57db92cd6e2395523fd2`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Eqv](declarations/eqv.md) | 83 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `def` | [PiTensorProduct](declarations/pitensorproduct.md) | 101 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 117 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 123 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `def` | [tprodCoeff](declarations/tprodcoeff.md) | 130 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `theorem` | [zero_tprodCoeff](declarations/zero-tprodcoeff-source-edition-2.md) | 135 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `theorem` | [zero_tprodCoeff'](declarations/zero-tprodcoeff.md) | 138 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `theorem` | [add_tprodCoeff](declarations/add-tprodcoeff.md) | 141 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `theorem` | [add_tprodCoeff'](declarations/add-tprodcoeff-source-edition-2.md) | 146 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `theorem` | [smul_tprodCoeff_aux](declarations/smul-tprodcoeff-aux.md) | 150 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `theorem` | [smul_tprodCoeff](declarations/smul-tprodcoeff.md) | 154 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `def` | [liftAddHom](declarations/liftaddhom.md) | 164 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `theorem` | [induction_on'](declarations/induction-on-source-edition-2.md) | 191 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `instance` | [hasSMul'](declarations/hassmul.md) | 210 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 218 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `theorem` | [smul_tprodCoeff'](declarations/smul-tprodcoeff-source-edition-2.md) | 221 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `theorem` | [smul_add](declarations/smul-add.md) | 224 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `instance` | [distribMulAction'](declarations/distribmulaction.md) | 227 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `instance` | [smulCommClass'](declarations/smulcommclass.md) | 238 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `instance` | [isScalarTower'](declarations/isscalartower.md) | 243 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `instance` | [module'](declarations/module.md) | 253 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 265 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 268 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 271 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `def` | [tprod](declarations/tprod.md) | 278 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `theorem` | [tprod_eq_tprodCoeff_one](declarations/tprod-eq-tprodcoeff-one.md) | 288 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `theorem` | [tprodCoeff_eq_smul_tprod](declarations/tprodcoeff-eq-smul-tprod.md) | 292 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `lemma` | [_root_.FreeAddMonoid.toPiTensorProduct](declarations/root-freeaddmonoid-topitensorproduct.md) | 300 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `def` | [lifts](declarations/lifts.md) | 312 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `lemma` | [mem_lifts_iff](declarations/mem-lifts-iff.md) | 319 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `lemma` | [nonempty_lifts](declarations/nonempty-lifts.md) | 325 | `BLOCKED_SOURCE_DEPENDENCY` |
| 32 | `lemma` | [lifts_zero](declarations/lifts-zero.md) | 333 | `BLOCKED_SOURCE_DEPENDENCY` |
| 33 | `lemma` | [lifts_add](declarations/lifts-add.md) | 339 | `BLOCKED_SOURCE_DEPENDENCY` |
| 34 | `lemma` | [lifts_smul](declarations/lifts-smul.md) | 348 | `BLOCKED_SOURCE_DEPENDENCY` |
| 35 | `theorem` | [induction_on](declarations/induction-on.md) | 356 | `BLOCKED_SOURCE_DEPENDENCY` |
| 36 | `theorem` | [ext](declarations/ext.md) | 364 | `BLOCKED_SOURCE_DEPENDENCY` |
| 37 | `theorem` | [span_tprod_eq_top](declarations/span-tprod-eq-top.md) | 376 | `BLOCKED_SOURCE_DEPENDENCY` |
| 38 | `def` | [liftAux](declarations/liftaux.md) | 396 | `BLOCKED_SOURCE_DEPENDENCY` |
| 39 | `theorem` | [liftAux_tprod](declarations/liftaux-tprod.md) | 404 | `BLOCKED_SOURCE_DEPENDENCY` |
| 40 | `theorem` | [liftAux_tprodCoeff](declarations/liftaux-tprodcoeff.md) | 419 | `BLOCKED_SOURCE_DEPENDENCY` |
| 41 | `theorem` | [liftAux.smul](declarations/liftaux-smul.md) | 422 | `BLOCKED_SOURCE_DEPENDENCY` |
| 42 | `def` | [lift](declarations/lift.md) | 433 | `BLOCKED_SOURCE_DEPENDENCY` |
| 43 | `theorem` | [lift.tprod](declarations/lift-tprod.md) | 452 | `BLOCKED_SOURCE_DEPENDENCY` |
| 44 | `theorem` | [lift.unique'](declarations/lift-unique.md) | 455 | `BLOCKED_SOURCE_DEPENDENCY` |
| 45 | `theorem` | [lift.unique](declarations/lift-unique-source-edition-2.md) | 459 | `BLOCKED_SOURCE_DEPENDENCY` |
| 46 | `theorem` | [lift_symm](declarations/lift-symm.md) | 464 | `BLOCKED_SOURCE_DEPENDENCY` |
| 47 | `theorem` | [lift_tprod](declarations/lift-tprod-source-edition-2.md) | 468 | `BLOCKED_SOURCE_DEPENDENCY` |
| 48 | `def` | [map](declarations/map.md) | 487 | `BLOCKED_SOURCE_DEPENDENCY` |
| 49 | `lemma` | [map_tprod](declarations/map-tprod.md) | 490 | `BLOCKED_SOURCE_DEPENDENCY` |
| 50 | `theorem` | [map_range_eq_span_tprod](declarations/map-range-eq-span-tprod.md) | 496 | `BLOCKED_SOURCE_DEPENDENCY` |
| 51 | `def` | [mapIncl](declarations/mapincl.md) | 507 | `BLOCKED_SOURCE_DEPENDENCY` |
| 52 | `theorem` | [map_comp](declarations/map-comp.md) | 510 | `BLOCKED_SOURCE_DEPENDENCY` |
| 53 | `theorem` | [lift_comp_map](declarations/lift-comp-map.md) | 514 | `BLOCKED_SOURCE_DEPENDENCY` |
| 54 | `theorem` | [map_id](declarations/map-id.md) | 523 | `BLOCKED_SOURCE_DEPENDENCY` |
| 55 | `theorem` | [map_one](declarations/map-one.md) | 528 | `BLOCKED_SOURCE_DEPENDENCY` |
| 56 | `theorem` | [map_mul](declarations/map-mul.md) | 531 | `BLOCKED_SOURCE_DEPENDENCY` |
| 57 | `def` | [mapMonoidHom](declarations/mapmonoidhom.md) | 537 | `BLOCKED_SOURCE_DEPENDENCY` |
| 58 | `theorem` | [map_pow](declarations/map-pow.md) | 543 | `BLOCKED_SOURCE_DEPENDENCY` |
| 59 | `theorem` | [map_add_smul_aux](declarations/map-add-smul-aux.md) | 547 | `BLOCKED_SOURCE_DEPENDENCY` |
| 60 | `theorem` | [map_update_add](declarations/map-update-add.md) | 553 | `BLOCKED_SOURCE_DEPENDENCY` |
| 61 | `theorem` | [map_update_smul](declarations/map-update-smul.md) | 562 | `BLOCKED_SOURCE_DEPENDENCY` |
| 62 | `def` | [mapMultilinear](declarations/mapmultilinear.md) | 576 | `BLOCKED_SOURCE_DEPENDENCY` |
| 63 | `def` | [piTensorHomMap](declarations/pitensorhommap-source-edition-2.md) | 593 | `BLOCKED_SOURCE_DEPENDENCY` |
| 64 | `lemma` | [piTensorHomMap_tprod_tprod](declarations/pitensorhommap-tprod-tprod.md) | 596 | `BLOCKED_SOURCE_DEPENDENCY` |
| 65 | `lemma` | [piTensorHomMap_tprod_eq_map](declarations/pitensorhommap-tprod-eq-map.md) | 600 | `BLOCKED_SOURCE_DEPENDENCY` |
| 66 | `def` | [congr](declarations/congr.md) | 609 | `BLOCKED_SOURCE_DEPENDENCY` |
| 67 | `theorem` | [congr_tprod](declarations/congr-tprod.md) | 618 | `BLOCKED_SOURCE_DEPENDENCY` |
| 68 | `theorem` | [congr_symm_tprod](declarations/congr-symm-tprod.md) | 623 | `BLOCKED_SOURCE_DEPENDENCY` |
| 69 | `def` | [map₂](declarations/map-source-edition-2.md) | 634 | `BLOCKED_SOURCE_DEPENDENCY` |
| 70 | `lemma` | [map₂_tprod_tprod](declarations/map-tprod-tprod.md) | 638 | `BLOCKED_SOURCE_DEPENDENCY` |
| 71 | `def` | [piTensorHomMapFun₂](declarations/pitensorhommapfun.md) | 646 | `BLOCKED_SOURCE_DEPENDENCY` |
| 72 | `theorem` | [piTensorHomMapFun₂_add](declarations/pitensorhommapfun-add.md) | 651 | `BLOCKED_SOURCE_DEPENDENCY` |
| 73 | `theorem` | [piTensorHomMapFun₂_smul](declarations/pitensorhommapfun-smul.md) | 656 | `BLOCKED_SOURCE_DEPENDENCY` |
| 74 | `def` | [piTensorHomMap₂](declarations/pitensorhommap.md) | 668 | `BLOCKED_SOURCE_DEPENDENCY` |
| 75 | `lemma` | [piTensorHomMap₂_tprod_tprod_tprod](declarations/pitensorhommap-tprod-tprod-tprod.md) | 674 | `BLOCKED_SOURCE_DEPENDENCY` |
| 76 | `def` | [reindex](declarations/reindex.md) | 687 | `BLOCKED_SOURCE_DEPENDENCY` |
| 77 | `theorem` | [reindex_tprod](declarations/reindex-tprod.md) | 700 | `BLOCKED_SOURCE_DEPENDENCY` |
| 78 | `theorem` | [reindex_comp_tprod](declarations/reindex-comp-tprod.md) | 706 | `BLOCKED_SOURCE_DEPENDENCY` |
| 79 | `theorem` | [lift_comp_reindex](declarations/lift-comp-reindex.md) | 711 | `BLOCKED_SOURCE_DEPENDENCY` |
| 80 | `theorem` | [lift_comp_reindex_symm](declarations/lift-comp-reindex-symm.md) | 716 | `BLOCKED_SOURCE_DEPENDENCY` |
| 81 | `theorem` | [lift_reindex](declarations/lift-reindex.md) | 720 | `BLOCKED_SOURCE_DEPENDENCY` |
| 82 | `theorem` | [lift_reindex_symm](declarations/lift-reindex-symm.md) | 726 | `BLOCKED_SOURCE_DEPENDENCY` |
| 83 | `theorem` | [reindex_trans](declarations/reindex-trans.md) | 732 | `BLOCKED_SOURCE_DEPENDENCY` |
| 84 | `theorem` | [reindex_reindex](declarations/reindex-reindex.md) | 741 | `BLOCKED_SOURCE_DEPENDENCY` |
| 85 | `theorem` | [reindex_symm](declarations/reindex-symm.md) | 747 | `BLOCKED_SOURCE_DEPENDENCY` |
| 86 | `theorem` | [reindex_refl](declarations/reindex-refl.md) | 753 | `BLOCKED_SOURCE_DEPENDENCY` |
| 87 | `theorem` | [map_comp_reindex_eq](declarations/map-comp-reindex-eq.md) | 767 | `BLOCKED_SOURCE_DEPENDENCY` |
| 88 | `theorem` | [map_reindex](declarations/map-reindex.md) | 773 | `BLOCKED_SOURCE_DEPENDENCY` |
| 89 | `theorem` | [map_comp_reindex_symm](declarations/map-comp-reindex-symm.md) | 777 | `BLOCKED_SOURCE_DEPENDENCY` |
| 90 | `theorem` | [map_reindex_symm](declarations/map-reindex-symm.md) | 784 | `BLOCKED_SOURCE_DEPENDENCY` |
| 91 | `def` | [isEmptyEquiv](declarations/isemptyequiv.md) | 793 | `BLOCKED_SOURCE_DEPENDENCY` |
| 92 | `theorem` | [isEmptyEquiv_apply_tprod](declarations/isemptyequiv-apply-tprod.md) | 813 | `BLOCKED_SOURCE_DEPENDENCY` |
| 93 | `def` | [subsingletonEquiv](declarations/subsingletonequiv.md) | 823 | `BLOCKED_SOURCE_DEPENDENCY` |
| 94 | `theorem` | [subsingletonEquiv_apply_tprod](declarations/subsingletonequiv-apply-tprod.md) | 844 | `BLOCKED_SOURCE_DEPENDENCY` |
| 95 | `def` | [tmulEquivDep](declarations/tmulequivdep.md) | 857 | `BLOCKED_SOURCE_DEPENDENCY` |
| 96 | `lemma` | [tmulEquivDep_apply](declarations/tmulequivdep-apply.md) | 875 | `BLOCKED_SOURCE_DEPENDENCY` |
| 97 | `lemma` | [tmulEquivDep_symm_apply](declarations/tmulequivdep-symm-apply.md) | 882 | `BLOCKED_SOURCE_DEPENDENCY` |
| 98 | `def` | [tmulEquiv](declarations/tmulequiv.md) | 895 | `BLOCKED_SOURCE_DEPENDENCY` |
| 99 | `theorem` | [tmulEquiv_apply](declarations/tmulequiv-apply.md) | 900 | `BLOCKED_SOURCE_DEPENDENCY` |
| 100 | `theorem` | [tmulEquiv_symm_apply](declarations/tmulequiv-symm-apply.md) | 905 | `BLOCKED_SOURCE_DEPENDENCY` |
| 101 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 931 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ce5eb7a8ead15b108f3096d0122e7a7eb2fbc515097f15f4ecedc71b27695c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant8dd5eefc9d990c60f9637337d4e88f56bb73c51f3cfe0ba877fb9557f627a5cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
