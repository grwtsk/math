# Operator Mul Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2380814d0a83afb95cd4b02609043aeb38b623a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mul](declarations/mul-source-edition-2.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mul_apply'](declarations/mul-apply.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [opNorm_mul_apply_le](declarations/opnorm-mul-apply-le.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [opNorm_mul_le](declarations/opnorm-mul-le.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Operator Mul Namespaced Public](declarations/lmul.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Operator Mul Namespaced Public](declarations/coe-lmul.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mulLeftRight](declarations/mulleftright.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mulLeftRight_apply](declarations/mulleftright-apply.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [opNorm_mulLeftRight_apply_apply_le](declarations/opnorm-mulleftright-apply-apply-le.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [opNorm_mulLeftRight_apply_le](declarations/opnorm-mulleftright-apply-le.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [opNorm_mulLeftRight_le](declarations/opnorm-mulleftright-le.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `class` | [Operator Mul Namespaced Public](declarations/regularnormedalgebra.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [Operator Mul Namespaced Public](declarations/instregularnormedalgebra.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [isometry_mul](declarations/isometry-mul.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [opNorm_mul_apply](declarations/opnorm-mul-apply.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [opNNNorm_mul_apply](declarations/opnnnorm-mul-apply.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [mulₗᵢ](declarations/mul.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_mulₗᵢ](declarations/coe-mul.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [flip_mul](declarations/flip-mul.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [toSpanSingletonLIE](declarations/tospansingletonlie.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [toSpanSingletonLIE_apply](declarations/tospansingletonlie-apply.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [toSpanSingletonLIE_symm_apply](declarations/tospansingletonlie-symm-apply.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [toLinearEquiv_toSpanSingletonLIE](declarations/tolinearequiv-tospansingletonlie.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [toContinuousLinearEquiv_toSpanSingletonLIE](declarations/tocontinuouslinearequiv-tospansingletonlie.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [lsmul](declarations/lsmul.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [lsmul_apply](declarations/lsmul-apply.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [lsmul_flip_apply](declarations/lsmul-flip-apply.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lsmul_flip_inj](declarations/lsmul-flip-inj.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [opNorm_lsmul_apply_le](declarations/opnorm-lsmul-apply-le.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [opNNNorm_lsmul_apply_le](declarations/opnnnorm-lsmul-apply-le.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [opNorm_lsmul_le](declarations/opnorm-lsmul-le.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [opNNNorm_lsmul_le](declarations/opnnnorm-lsmul-le.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [opENorm_lsmul_le](declarations/openorm-lsmul-le.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [opNorm_mul](declarations/opnorm-mul.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [opNNNorm_mul](declarations/opnnnorm-mul.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [opENorm_mul](declarations/openorm-mul.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [opNorm_lsmul](declarations/opnorm-lsmul.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [opNNNorm_lsmul](declarations/opnnnorm-lsmul.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [opENorm_lsmul](declarations/openorm-lsmul.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [opNorm_lsmul_apply](declarations/opnorm-lsmul-apply.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [opNNNorm_lsmul_apply](declarations/opnnnorm-lsmul-apply.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [opENorm_lsmul_apply](declarations/openorm-lsmul-apply.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f79d6314f81ce555c99b0a1cf3c7f85be053f41a30007c9e985a6c6803ed5800 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
