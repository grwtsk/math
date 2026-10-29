# Multilinear Curry Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `232382ce9247f711dd0cc7a990c84ac7252b1aa2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearCurryNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [LinearMap.uncurryLeft](declarations/linearmap-uncurryleft.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [LinearMap.uncurryLeft_apply](declarations/linearmap-uncurryleft-apply.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [MultilinearMap.curryLeft](declarations/multilinearmap-curryleft.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [MultilinearMap.curryLeft_apply](declarations/multilinearmap-curryleft-apply.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [LinearMap.curry_uncurryLeft](declarations/linearmap-curry-uncurryleft.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [MultilinearMap.uncurry_curryLeft](declarations/multilinearmap-uncurry-curryleft.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [multilinearCurryLeftEquiv](declarations/multilinearcurryleftequiv.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [MultilinearMap.uncurryRight](declarations/multilinearmap-uncurryright.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [MultilinearMap.uncurryRight_apply](declarations/multilinearmap-uncurryright-apply.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [MultilinearMap.curryRight](declarations/multilinearmap-curryright.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [MultilinearMap.curryRight_apply](declarations/multilinearmap-curryright-apply.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [MultilinearMap.curry_uncurryRight](declarations/multilinearmap-curry-uncurryright.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [MultilinearMap.uncurry_curryRight](declarations/multilinearmap-uncurry-curryright.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [multilinearCurryRightEquiv](declarations/multilinearcurryrightequiv.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [LinearMap.uncurryMid](declarations/linearmap-uncurrymid.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [MultilinearMap.curryMid](declarations/multilinearmap-currymid.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [LinearMap.curryMid_uncurryMid](declarations/linearmap-currymid-uncurrymid.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [MultilinearMap.uncurryMid_curryMid](declarations/multilinearmap-uncurrymid-currymid.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [MultilinearMap.curryMidLinearEquiv](declarations/multilinearmap-currymidlinearequiv.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [currySum](declarations/currysum.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [currySum_apply](declarations/currysum-apply-source-edition-2.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [currySum_apply'](declarations/currysum-apply.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [currySum_add](declarations/currysum-add.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [currySum_smul](declarations/currysum-smul.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [uncurrySum](declarations/uncurrysum.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [uncurrySum_apply](declarations/uncurrysum-apply.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [uncurrySum_add](declarations/uncurrysum-add.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [uncurrySum_smul](declarations/uncurrysum-smul.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [uncurrySum_currySum](declarations/uncurrysum-currysum.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [currySum_uncurrySum](declarations/currysum-uncurrysum.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [currySumEquiv](declarations/currysumequiv.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_currySumEquiv](declarations/coe-currysumequiv.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_currySumEquiv_symm](declarations/coe-currysumequiv-symm.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [curryFinFinset](declarations/curryfinfinset.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [curryFinFinset_apply](declarations/curryfinfinset-apply.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [curryFinFinset_symm_apply](declarations/curryfinfinset-symm-apply.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [curryFinFinset_symm_apply_piecewise_const](declarations/curryfinfinset-symm-apply-piecewise-const.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [curryFinFinset_symm_apply_const](declarations/curryfinfinset-symm-apply-const.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [curryFinFinset_apply_const](declarations/curryfinfinset-apply-const.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e2d08dcf905bfeb64e7d479abfecb4af92678000dbce0620b68a3448bcca56d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
