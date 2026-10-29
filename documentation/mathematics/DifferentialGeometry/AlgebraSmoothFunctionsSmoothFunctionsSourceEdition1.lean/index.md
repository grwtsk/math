# Algebra Smooth Functions Smooth Functions Source Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f5616d6e61c5aa67750f017b422887f367f9f15`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instMul](declarations/instmul.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_mul](declarations/coe-mul.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mul_comp](declarations/mul-comp.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instOne](declarations/instone.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_one](declarations/coe-one.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instNSMul](declarations/instnsmul.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instPow](declarations/instpow.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_pow](declarations/coe-pow.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [semigroup](declarations/semigroup.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [monoid](declarations/monoid.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [coeFnMonoidHom](declarations/coefnmonoidhom.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [compLeftMonoidHom](declarations/compleftmonoidhom.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [restrictMonoidHom](declarations/restrictmonoidhom.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [commMonoid](declarations/commmonoid.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [group](declarations/group.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_inv](declarations/coe-inv.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_div](declarations/coe-div.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [commGroup](declarations/commgroup.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [semiring](declarations/semiring.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [ring](declarations/ring.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [commRing](declarations/commring.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [compLeftRingHom](declarations/compleftringhom.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [restrictRingHom](declarations/restrictringhom.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [coeFnRingHom](declarations/coefnringhom.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [evalRingHom](declarations/evalringhom.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [hasSmul](declarations/hassmul.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_smul](declarations/coe-smul.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [smul_comp](declarations/smul-comp-source-edition-2.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [module](declarations/module.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [coeFnLinearMap](declarations/coefnlinearmap.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [C](declarations/c.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [algebra](declarations/algebra.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [coeFnAlgHom](declarations/coefnalghom.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instSmul'](declarations/instsmul.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [smul_comp'](declarations/smul-comp.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [module'](declarations/module-source-edition-2.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bed8990403c84325ca23a5a79d0a133de849ce23e6fb5409ca8a2c5082db0026 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
