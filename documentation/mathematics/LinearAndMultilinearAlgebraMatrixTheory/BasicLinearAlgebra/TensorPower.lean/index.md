# Tensor Power

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/TensorPower/Variant300f8d26c74df72480cabee6d8f8fc4ad93f7fca11e242c96e6404e011f4adac.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3dca84d41e278c23e9d98c479641a18752775ad`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPower.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [TensorPower](declarations/tensorpower.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [gradedMonoid_eq_of_reindex_cast](declarations/gradedmonoid-eq-of-reindex-cast.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [gOne](declarations/gone.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [gOne_def](declarations/gone-def.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [mulEquiv](declarations/mulequiv.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [gMul](declarations/gmul.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [gMul_def](declarations/gmul-def.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [gMul_eq_coe_linearMap](declarations/gmul-eq-coe-linearmap.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [cast](declarations/cast.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cast_tprod](declarations/cast-tprod.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [cast_refl](declarations/cast-refl.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [cast_symm](declarations/cast-symm.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cast_trans](declarations/cast-trans.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cast_cast](declarations/cast-cast.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [gradedMonoid_eq_of_cast](declarations/gradedmonoid-eq-of-cast.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [cast_eq_cast](declarations/cast-eq-cast.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [tprod_mul_tprod](declarations/tprod-mul-tprod.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [one_mul](declarations/one-mul.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mul_one](declarations/mul-one.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mul_assoc](declarations/mul-assoc.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [gmonoid](declarations/gmonoid.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [algebraMap₀](declarations/algebramap.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [algebraMap₀_eq_smul_one](declarations/algebramap-eq-smul-one.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [algebraMap₀_one](declarations/algebramap-one.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [algebraMap₀_mul](declarations/algebramap-mul.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mul_algebraMap₀](declarations/mul-algebramap.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [algebraMap₀_mul_algebraMap₀](declarations/algebramap-mul-algebramap.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [gsemiring](declarations/gsemiring.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [galgebra](declarations/galgebra.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [galgebra_toFun_def](declarations/galgebra-tofun-def.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `example` | [(anonymous)](declarations/example.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ddab18a3207f6d9732c77234f6ef3729dea7f847bf6ae4260567638f0298920e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorPower/Variant300f8d26c74df72480cabee6d8f8fc4ad93f7fca11e242c96e6404e011f4adac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
