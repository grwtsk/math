# Local Diffeomorph Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6538e9e5b58fcde99c1a27f672228f0f3912f1cb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DifferentialGeometry/LocalDiffeomorphNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialDiffeomorph](declarations/partialdiffeomorph.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Diffeomorph.toPartialDiffeomorph](declarations/diffeomorph-topartialdiffeomorph.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toPartialHomeomorph](declarations/topartialhomeomorph.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [symm](declarations/symm.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [contMDiffOn](declarations/contmdiffon.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mdifferentiableOn](declarations/mdifferentiableon.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mdifferentiableAt](declarations/mdifferentiableat.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [IsLocalDiffeomorphAt](declarations/islocaldiffeomorphat.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [PartialDiffeomorph.isLocalDiffeomorphAt](declarations/partialdiffeomorph-islocaldiffeomorphat.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [localInverse](declarations/localinverse.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [localInverse_open_source](declarations/localinverse-open-source.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [localInverse_mem_source](declarations/localinverse-mem-source.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [localInverse_mem_target](declarations/localinverse-mem-target.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [contmdiffOn_localInverse](declarations/contmdiffon-localinverse.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [localInverse_right_inv](declarations/localinverse-right-inv.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [localInverse_eqOn_right](declarations/localinverse-eqon-right.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [localInverse_eventuallyEq_right](declarations/localinverse-eventuallyeq-right.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [localInverse_left_inv](declarations/localinverse-left-inv.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [localInverse_eqOn_left](declarations/localinverse-eqon-left.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [localInverse_eventuallyEq_left](declarations/localinverse-eventuallyeq-left.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [localInverse_isLocalDiffeomorphAt](declarations/localinverse-islocaldiffeomorphat.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [localInverse_contMDiffOn](declarations/localinverse-contmdiffon.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [localInverse_contMDiffAt](declarations/localinverse-contmdiffat.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [localInverse_mdifferentiableAt](declarations/localinverse-mdifferentiableat.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [IsLocalDiffeomorphOn](declarations/islocaldiffeomorphon.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [IsLocalDiffeomorph](declarations/islocaldiffeomorph.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [isLocalDiffeomorphOn_iff](declarations/islocaldiffeomorphon-iff.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [isLocalDiffeomorph_iff](declarations/islocaldiffeomorph-iff.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isLocalDiffeomorph_iff_isLocalDiffeomorphOn_univ](declarations/islocaldiffeomorph-iff-islocaldiffeomorphon-univ.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [IsLocalDiffeomorph.isLocalDiffeomorphOn](declarations/islocaldiffeomorph-islocaldiffeomorphon.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsLocalDiffeomorphAt.contMDiffAt](declarations/islocaldiffeomorphat-contmdiffat.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [IsLocalDiffeomorphAt.mdifferentiableAt](declarations/islocaldiffeomorphat-mdifferentiableat.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsLocalDiffeomorphOn.contMDiffOn](declarations/islocaldiffeomorphon-contmdiffon.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsLocalDiffeomorphOn.mdifferentiableOn](declarations/islocaldiffeomorphon-mdifferentiableon.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsLocalDiffeomorph.contMDiff](declarations/islocaldiffeomorph-contmdiff.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsLocalDiffeomorph.mdifferentiable](declarations/islocaldiffeomorph-mdifferentiable.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [Diffeomorph.isLocalDiffeomorph](declarations/diffeomorph-islocaldiffeomorph.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsLocalDiffeomorphOn.isLocalHomeomorphOn](declarations/islocaldiffeomorphon-islocalhomeomorphon.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsLocalDiffeomorph.isLocalHomeomorph](declarations/islocaldiffeomorph-islocalhomeomorph.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [IsLocalDiffeomorph.isOpenMap](declarations/islocaldiffeomorph-isopenmap.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [IsLocalDiffeomorph.isOpen_range](declarations/islocaldiffeomorph-isopen-range.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [IsLocalDiffeomorph.image](declarations/islocaldiffeomorph-image.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [IsLocalDiffeomorph.image_coe](declarations/islocaldiffeomorph-image-coe.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [IsLocalDiffeomorph.diffeomorph_of_bijective](declarations/islocaldiffeomorph-diffeomorph-of-bijective.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [IsLocalDiffeomorphAt.mfderivToContinuousLinearEquiv](declarations/islocaldiffeomorphat-mfderivtocontinuouslinearequiv.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [IsLocalDiffeomorphAt.mfderivToContinuousLinearEquiv_coe](declarations/islocaldiffeomorphat-mfderivtocontinuouslinearequiv-coe.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [Diffeomorph.mfderivToContinuousLinearEquiv](declarations/diffeomorph-mfderivtocontinuouslinearequiv.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [Diffeomorph.mfderivToContinuousLinearEquiv_coe](declarations/diffeomorph-mfderivtocontinuouslinearequiv-coe.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [IsLocalDiffeomorph.mfderivToContinuousLinearEquiv](declarations/islocaldiffeomorph-mfderivtocontinuouslinearequiv.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [IsLocalDiffeomorph.mfderivToContinuousLinearEquiv_coe](declarations/islocaldiffeomorph-mfderivtocontinuouslinearequiv-coe.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=215b0b3e788d8ad49004875a802677ef95b5430d8c2332ac1f14b555e4525bb7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
