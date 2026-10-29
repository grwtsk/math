# Tensor Product Defs Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Defs/Variantf913156d8624ae39d74037e03175af48122444d57bd4105354da23c1f12ffffc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb558a95a48c75f084908c3ed66284d448a05476`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductDefsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Eqv](declarations/eqv.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [TensorProduct](declarations/tensorproduct.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [addCommSemigroup](declarations/addcommsemigroup.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [tmul](declarations/tmul.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [zero_tmul](declarations/zero-tmul.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [add_tmul](declarations/add-tmul.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [tmul_zero](declarations/tmul-zero.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [tmul_add](declarations/tmul-add.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inductionOn](declarations/inductionon.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [induction_on](declarations/induction-on.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [uniqueLeft](declarations/uniqueleft.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [uniqueRight](declarations/uniqueright.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `class` | [CompatibleSMul](declarations/compatiblesmul.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [smul_tmul](declarations/smul-tmul.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [addMonoidWithWrongNSMul](declarations/addmonoidwithwrongnsmul.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [SMul.aux](declarations/smul-aux.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [SMul.aux_of](declarations/smul-aux-of.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [leftHasSMul](declarations/lefthassmul.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [smul_zero](declarations/smul-zero.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [smul_add](declarations/smul-add.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [zero_smul](declarations/zero-smul.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [one_smul](declarations/one-smul.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [add_smul](declarations/add-smul.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [addMonoid](declarations/addmonoid.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [addCommMonoid](declarations/addcommmonoid.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [_root_.IsAddUnit.tmul_left](declarations/root-isaddunit-tmul-left.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [_root_.IsAddUnit.tmul_right](declarations/root-isaddunit-tmul-right.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [leftDistribMulAction](declarations/leftdistribmulaction.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [smul_tmul'](declarations/smul-tmul-source-edition-2.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [tmul_smul](declarations/tmul-smul.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [smul_tmul_smul](declarations/smul-tmul-smul.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [tmul_eq_smul_one_tmul](declarations/tmul-eq-smul-one-tmul.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [leftModule](declarations/leftmodule.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [smulCommClass_left](declarations/smulcommclass-left.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [isScalarTower_left](declarations/isscalartower-left.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [isScalarTower_right](declarations/isscalartower-right.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [isScalarTower](declarations/isscalartower.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [mk](declarations/mk.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mk_apply](declarations/mk-apply.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [ite_tmul](declarations/ite-tmul.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [tmul_ite](declarations/tmul-ite.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [tmul_single](declarations/tmul-single.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [single_tmul](declarations/single-tmul.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [sum_tmul](declarations/sum-tmul.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [tmul_sum](declarations/tmul-sum.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [span_tmul_eq_top](declarations/span-tmul-eq-top.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [map₂_mk_top_top_eq_top](declarations/map-mk-top-top-eq-top.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [exists_eq_tmul_of_forall](declarations/exists-eq-tmul-of-forall.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f6727605505e7126732eb3e7d22ab1517a0f06729e28f560bb1e358f1eb7130 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variantf913156d8624ae39d74037e03175af48122444d57bd4105354da23c1f12ffffc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
