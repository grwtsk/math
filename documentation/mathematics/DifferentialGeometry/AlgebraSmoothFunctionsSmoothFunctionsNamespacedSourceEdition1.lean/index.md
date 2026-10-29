# Algebra Smooth Functions Smooth Functions Namespaced Source Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/SmoothFunctions/Variant87cc5ea486d1981e65350f62bbcd727baa3beed54332a2d386cc16097ca3ec20.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30abc1a101585ed9c4a237ecb9ebd6572d38f632`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsNamespacedSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instMul](declarations/instmul.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_mul](declarations/coe-mul.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mul_comp](declarations/mul-comp.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instOne](declarations/instone.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_one](declarations/coe-one.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instNSMul](declarations/instnsmul.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instPow](declarations/instpow.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_pow](declarations/coe-pow.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [semigroup](declarations/semigroup.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [monoid](declarations/monoid.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [coeFnMonoidHom](declarations/coefnmonoidhom.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [compLeftMonoidHom](declarations/compleftmonoidhom.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [restrictMonoidHom](declarations/restrictmonoidhom.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [commMonoid](declarations/commmonoid.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [group](declarations/group.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_inv](declarations/coe-inv.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_div](declarations/coe-div.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [commGroup](declarations/commgroup.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [semiring](declarations/semiring.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [ring](declarations/ring.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [commRing](declarations/commring.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [compLeftRingHom](declarations/compleftringhom.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [restrictRingHom](declarations/restrictringhom.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [coeFnRingHom](declarations/coefnringhom.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [evalRingHom](declarations/evalringhom.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [hasSmul](declarations/hassmul.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_smul](declarations/coe-smul.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [smul_comp](declarations/smul-comp-source-edition-2.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [module](declarations/module.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [coeFnLinearMap](declarations/coefnlinearmap.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [C](declarations/c.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [algebra](declarations/algebra.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [coeFnAlgHom](declarations/coefnalghom.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instSmul'](declarations/instsmul.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [smul_comp'](declarations/smul-comp.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [module'](declarations/module-source-edition-2.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8668a470a742b166c15b9cc2af3d1476ba7c1f949865d5209cd720fa244ee7b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SmoothFunctions/Variant87cc5ea486d1981e65350f62bbcd727baa3beed54332a2d386cc16097ca3ec20.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
