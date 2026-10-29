# Linear Algebra Pi Tensor Product Namespaced Tmul

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**60 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83d5919086a85cd4a94e72f9290d6fe3ce94e71e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductNamespacedTmul.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Eqv](declarations/eqv.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [PiTensorProduct](declarations/pitensorproduct.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [tprodCoeff](declarations/tprodcoeff.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [zero_tprodCoeff](declarations/zero-tprodcoeff.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [zero_tprodCoeff'](declarations/zero-tprodcoeff-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [add_tprodCoeff](declarations/add-tprodcoeff.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [add_tprodCoeff'](declarations/add-tprodcoeff-source-edition-2.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [smul_tprodCoeff_aux](declarations/smul-tprodcoeff-aux.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [smul_tprodCoeff](declarations/smul-tprodcoeff.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [liftAddHom](declarations/liftaddhom.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [induction_on'](declarations/induction-on.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [hasSMul'](declarations/hassmul.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [smul_tprodCoeff'](declarations/smul-tprodcoeff-source-edition-2.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [smul_add](declarations/smul-add.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [distribMulAction'](declarations/distribmulaction.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [smulCommClass'](declarations/smulcommclass.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [isScalarTower'](declarations/isscalartower.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [module'](declarations/module.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [tprod](declarations/tprod.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [tprod_eq_tprodCoeff_one](declarations/tprod-eq-tprodcoeff-one.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [tprodCoeff_eq_smul_tprod](declarations/tprodcoeff-eq-smul-tprod.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [induction_on](declarations/induction-on-source-edition-2.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ext](declarations/ext.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [liftAux](declarations/liftaux.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [liftAux_tprod](declarations/liftaux-tprod.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [liftAux_tprodCoeff](declarations/liftaux-tprodcoeff.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [liftAux.smul](declarations/liftaux-smul.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [lift](declarations/lift.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [lift.tprod](declarations/lift-tprod.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [lift.unique'](declarations/lift-unique.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [lift.unique](declarations/lift-unique-source-edition-2.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [lift_symm](declarations/lift-symm.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [lift_tprod](declarations/lift-tprod-source-edition-2.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [reindex](declarations/reindex.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [reindex_tprod](declarations/reindex-tprod.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [reindex_comp_tprod](declarations/reindex-comp-tprod.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [lift_comp_reindex](declarations/lift-comp-reindex.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [lift_reindex](declarations/lift-reindex.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [reindex_trans](declarations/reindex-trans.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [reindex_reindex](declarations/reindex-reindex.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [reindex_symm](declarations/reindex-symm.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [reindex_refl](declarations/reindex-refl.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [isEmptyEquiv](declarations/isemptyequiv.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isEmptyEquiv_apply_tprod](declarations/isemptyequiv-apply-tprod.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [subsingletonEquiv](declarations/subsingletonequiv.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [subsingletonEquiv_apply_tprod](declarations/subsingletonequiv-apply-tprod.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [tmul](declarations/tmul.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [tmul_apply](declarations/tmul-apply.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [tmulSymm](declarations/tmulsymm.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [tmulSymm_apply](declarations/tmulsymm-apply.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [tmulEquiv](declarations/tmulequiv.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [tmulEquiv_apply](declarations/tmulequiv-apply.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [tmulEquiv_symm_apply](declarations/tmulequiv-symm-apply.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c1d7b51cb4f37843fbf01f7b97661d2989b973d3283d570f743043c4ed8412e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
