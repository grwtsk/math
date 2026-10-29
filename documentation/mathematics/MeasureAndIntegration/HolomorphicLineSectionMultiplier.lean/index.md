# Holomorphic Line Section Multiplier

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Operator/HolomorphicLineSectionMultiplier.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4daee721caadc02e796fe93d2f30b4799b0a80db`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/HolomorphicLineSectionMultiplier.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundedMultiplier](declarations/boundedmultiplier.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [const](declarations/const.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [mul](declarations/mul.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [sectionMultiply](declarations/sectionmultiply.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sectionMultiply_value](declarations/sectionmultiply-value.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [density_multiply](declarations/density-multiply.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [density_multiply_le](declarations/density-multiply-le.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [energy_multiply_le](declarations/energy-multiply-le.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [finiteMultiply](declarations/finitemultiply.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [aeEqual_multiply](declarations/aeequal-multiply.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [quotientMultiply](declarations/quotientmultiply.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [quotientMultiply_classOf](declarations/quotientmultiply-classof.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [multiplierLinearMap](declarations/multiplierlinearmap.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [quotientEnergy_multiply_le](declarations/quotientenergy-multiply-le.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [quotientMultiply_norm_le](declarations/quotientmultiply-norm-le.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [quotientOperator](declarations/quotientoperator.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [quotientOperator_classOf](declarations/quotientoperator-classof.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [quotientOperator_norm_le](declarations/quotientoperator-norm-le.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [quotientOperator_congr_ae](declarations/quotientoperator-congr-ae.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [quotientOperator_const](declarations/quotientoperator-const.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [quotientOperator_mul](declarations/quotientoperator-mul.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [quotientOperator_gauge](declarations/quotientoperator-gauge.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [multiplier_gaugeDefect_zero](declarations/multiplier-gaugedefect-zero.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [completedOperator](declarations/completedoperator.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [completedOperator_toCompletion](declarations/completedoperator-tocompletion.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [completedOperator_norm_le](declarations/completedoperator-norm-le.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [completedOperator_mul](declarations/completedoperator-mul.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [completedOperator_gauge](declarations/completedoperator-gauge.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [completedOperator_adjoint_gauge](declarations/completedoperator-adjoint-gauge.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [disk](declarations/disk.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [diskCover](declarations/diskcover.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [diskCover_isOpen](declarations/diskcover-isopen.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [diskCoordinate](declarations/diskcoordinate.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [center](declarations/center.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [halfPoint](declarations/halfpoint.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [diskCoordinate_nonconstant](declarations/diskcoordinate-nonconstant.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [diskCoordinate_operator_zero](declarations/diskcoordinate-operator-zero.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [diskCoordinate_norm_strict](declarations/diskcoordinate-norm-strict.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [diskCoordinate_operator_ne_zero_at_half](declarations/diskcoordinate-operator-ne-zero-at-half.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78a60489c79bac868b6434816187be2748dd3c1db4c6f74fa127a32201f4fb8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Operator/HolomorphicLineSectionMultiplier.lean","GRWTSK/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
