# Pi Tensor Product Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**104 observed declarations and anonymous commands**, 69 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant767309347dba8e6aa8fb49e0ecdb34111539e06401957b9bc5ceede706eb6e35.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bebd5b164fd9e2a48d612507faf9d89c2f90b222`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PiTensorProductBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Eqv](declarations/eqv.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [PiTensorProduct](declarations/pitensorproduct.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [tprodCoeff](declarations/tprodcoeff.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [zero_tprodCoeff](declarations/zero-tprodcoeff-source-edition-2.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [zero_tprodCoeff'](declarations/zero-tprodcoeff.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [add_tprodCoeff](declarations/add-tprodcoeff.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [add_tprodCoeff'](declarations/add-tprodcoeff-source-edition-2.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [smul_tprodCoeff_aux](declarations/smul-tprodcoeff-aux.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [smul_tprodCoeff](declarations/smul-tprodcoeff-source-edition-2.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [liftAddHom](declarations/liftaddhom.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [induction_on'](declarations/induction-on-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [hasSMul'](declarations/hassmul.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [smul_tprodCoeff'](declarations/smul-tprodcoeff.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [smul_add](declarations/smul-add.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [distribMulAction'](declarations/distribmulaction.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [smulCommClass'](declarations/smulcommclass.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [isScalarTower'](declarations/isscalartower.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [module'](declarations/module.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [tprod](declarations/tprod.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [tprod_eq_tprodCoeff_one](declarations/tprod-eq-tprodcoeff-one.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [tprodCoeff_eq_smul_tprod](declarations/tprodcoeff-eq-smul-tprod.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [_root_.FreeAddMonoid.toPiTensorProduct](declarations/root-freeaddmonoid-topitensorproduct.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [lifts](declarations/lifts.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [mem_lifts_iff](declarations/mem-lifts-iff.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [nonempty_lifts](declarations/nonempty-lifts.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [lifts_zero](declarations/lifts-zero.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [lifts_add](declarations/lifts-add.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [lifts_smul](declarations/lifts-smul.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [induction_on](declarations/induction-on.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ext](declarations/ext.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [span_tprod_eq_top](declarations/span-tprod-eq-top.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [liftAux](declarations/liftaux.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [liftAux_tprod](declarations/liftaux-tprod.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [liftAux_tprodCoeff](declarations/liftaux-tprodcoeff.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [liftAux.smul](declarations/liftaux-smul.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [lift](declarations/lift.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [lift.tprod](declarations/lift-tprod-source-edition-2.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [lift.unique'](declarations/lift-unique.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [lift.unique](declarations/lift-unique-source-edition-2.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [lift_symm](declarations/lift-symm.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [lift_tprod](declarations/lift-tprod.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [map](declarations/map-source-edition-2.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [map_tprod](declarations/map-tprod.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [map_range_eq_span_tprod](declarations/map-range-eq-span-tprod.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [mapIncl](declarations/mapincl.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [map_comp](declarations/map-comp.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [lift_comp_map](declarations/lift-comp-map.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [map_id](declarations/map-id.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [map_one](declarations/map-one.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [map_mul](declarations/map-mul.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [mapMonoidHom](declarations/mapmonoidhom.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [map_pow](declarations/map-pow.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [map_add_smul_aux](declarations/map-add-smul-aux.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [map_update_add](declarations/map-update-add.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [map_update_smul](declarations/map-update-smul.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [mapMultilinear](declarations/mapmultilinear.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [piTensorHomMap](declarations/pitensorhommap.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [piTensorHomMap_tprod_tprod](declarations/pitensorhommap-tprod-tprod.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [piTensorHomMap_tprod_eq_map](declarations/pitensorhommap-tprod-eq-map.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [congr](declarations/congr.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [congr_tprod](declarations/congr-tprod.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [congr_symm_tprod](declarations/congr-symm-tprod.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [map₂](declarations/map.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [map₂_tprod_tprod](declarations/map-tprod-tprod.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [piTensorHomMapFun₂](declarations/pitensorhommapfun.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [piTensorHomMapFun₂_add](declarations/pitensorhommapfun-add.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [piTensorHomMapFun₂_smul](declarations/pitensorhommapfun-smul.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [piTensorHomMap₂](declarations/pitensorhommap-source-edition-2.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [piTensorHomMap₂_tprod_tprod_tprod](declarations/pitensorhommap-tprod-tprod-tprod.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [reindex](declarations/reindex.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [reindex_tprod](declarations/reindex-tprod.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [reindex_comp_tprod](declarations/reindex-comp-tprod.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [lift_comp_reindex](declarations/lift-comp-reindex.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [lift_comp_reindex_symm](declarations/lift-comp-reindex-symm.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [lift_reindex](declarations/lift-reindex.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [lift_reindex_symm](declarations/lift-reindex-symm.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [reindex_trans](declarations/reindex-trans.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [reindex_reindex](declarations/reindex-reindex.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [reindex_symm](declarations/reindex-symm.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [reindex_refl](declarations/reindex-refl.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [map_comp_reindex_eq](declarations/map-comp-reindex-eq.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [map_reindex](declarations/map-reindex.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [map_comp_reindex_symm](declarations/map-comp-reindex-symm.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [map_reindex_symm](declarations/map-reindex-symm.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [isEmptyEquiv](declarations/isemptyequiv.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [isEmptyEquiv_apply_tprod](declarations/isemptyequiv-apply-tprod.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [subsingletonEquiv](declarations/subsingletonequiv.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [subsingletonEquiv_apply_tprod](declarations/subsingletonequiv-apply-tprod.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [subsingletonEquiv_symm_apply](declarations/subsingletonequiv-symm-apply-source-edition-2.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [subsingletonEquiv_symm_apply'](declarations/subsingletonequiv-symm-apply.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [tmulEquivDep](declarations/tmulequivdep.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [tmulEquivDep_apply](declarations/tmulequivdep-apply.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [tmulEquivDep_symm_apply](declarations/tmulequivdep-symm-apply.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [tmulEquiv](declarations/tmulequiv.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [tmulEquiv_apply](declarations/tmulequiv-apply.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [tmulEquiv_symm_apply](declarations/tmulequiv-symm-apply.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d46590eb6c874c4e57f0a891b7c8b53f04b5905602e3a11471ac9694b9038392 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant767309347dba8e6aa8fb49e0ecdb34111539e06401957b9bc5ceede706eb6e35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
