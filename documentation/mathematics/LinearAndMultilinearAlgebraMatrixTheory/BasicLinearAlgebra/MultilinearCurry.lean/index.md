# Multilinear Curry

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90a49ef04a3004b7dc1f3b5f06c336cd4df90def`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearCurry.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [LinearMap.uncurryLeft](declarations/linearmap-uncurryleft.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [LinearMap.uncurryLeft_apply](declarations/linearmap-uncurryleft-apply.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [MultilinearMap.curryLeft](declarations/multilinearmap-curryleft.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [MultilinearMap.curryLeft_apply](declarations/multilinearmap-curryleft-apply.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [LinearMap.curry_uncurryLeft](declarations/linearmap-curry-uncurryleft.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [MultilinearMap.uncurry_curryLeft](declarations/multilinearmap-uncurry-curryleft.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [multilinearCurryLeftEquiv](declarations/multilinearcurryleftequiv.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [MultilinearMap.uncurryRight](declarations/multilinearmap-uncurryright.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [MultilinearMap.uncurryRight_apply](declarations/multilinearmap-uncurryright-apply.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [MultilinearMap.curryRight](declarations/multilinearmap-curryright.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [MultilinearMap.curryRight_apply](declarations/multilinearmap-curryright-apply.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [MultilinearMap.curry_uncurryRight](declarations/multilinearmap-curry-uncurryright.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [MultilinearMap.uncurry_curryRight](declarations/multilinearmap-uncurry-curryright.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [multilinearCurryRightEquiv](declarations/multilinearcurryrightequiv.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [LinearMap.uncurryMid](declarations/linearmap-uncurrymid.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [MultilinearMap.curryMid](declarations/multilinearmap-currymid.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [LinearMap.curryMid_uncurryMid](declarations/linearmap-currymid-uncurrymid.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [MultilinearMap.uncurryMid_curryMid](declarations/multilinearmap-uncurrymid-currymid.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [MultilinearMap.curryMidLinearEquiv](declarations/multilinearmap-currymidlinearequiv.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [currySum](declarations/currysum.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [currySum_apply](declarations/currysum-apply.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [currySum_apply'](declarations/currysum-apply-source-edition-2.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [currySum_add](declarations/currysum-add.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [currySum_smul](declarations/currysum-smul.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [uncurrySum](declarations/uncurrysum.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [uncurrySum_apply](declarations/uncurrysum-apply.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [uncurrySum_add](declarations/uncurrysum-add.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [uncurrySum_smul](declarations/uncurrysum-smul.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [uncurrySum_currySum](declarations/uncurrysum-currysum.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [currySum_uncurrySum](declarations/currysum-uncurrysum.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [currySumEquiv](declarations/currysumequiv.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_currySumEquiv](declarations/coe-currysumequiv.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_currySumEquiv_symm](declarations/coe-currysumequiv-symm.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [curryFinFinset](declarations/curryfinfinset.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [curryFinFinset_apply](declarations/curryfinfinset-apply.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [curryFinFinset_symm_apply](declarations/curryfinfinset-symm-apply.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [curryFinFinset_symm_apply_piecewise_const](declarations/curryfinfinset-symm-apply-piecewise-const.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [curryFinFinset_symm_apply_const](declarations/curryfinfinset-symm-apply-const.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [curryFinFinset_apply_const](declarations/curryfinfinset-apply-const.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1f4de7d5340570c253ff43f4c9b7f3ff69065de9982185d49c55147a1254c37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
