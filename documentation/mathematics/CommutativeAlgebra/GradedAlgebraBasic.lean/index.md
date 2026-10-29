# Graded Algebra Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1624abb9a592322245eb19628884e82dae3073360719d495d7c80a2596eb8c14.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24cc4f3b310721bad915edd0c40ab80caa117080`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/GradedAlgebraBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [GradedRing](declarations/gradedring.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [decomposeRingEquiv](declarations/decomposeringequiv.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [decompose_one](declarations/decompose-one.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [decompose_symm_one](declarations/decompose-symm-one.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [decompose_mul](declarations/decompose-mul.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [decompose_symm_mul](declarations/decompose-symm-mul.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [GradedRing.proj](declarations/gradedring-proj.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [GradedRing.proj_apply](declarations/gradedring-proj-apply.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [GradedRing.proj_recompose](declarations/gradedring-proj-recompose.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [GradedRing.mem_support_iff](declarations/gradedring-mem-support-iff.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_decompose_mul_add_of_left_mem](declarations/coe-decompose-mul-add-of-left-mem.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_decompose_mul_add_of_right_mem](declarations/coe-decompose-mul-add-of-right-mem.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [decompose_mul_add_left](declarations/decompose-mul-add-left.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [decompose_mul_add_right](declarations/decompose-mul-add-right.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [GradedAlgebra](declarations/gradedalgebra.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [GradedAlgebra.ofAlgHom](declarations/gradedalgebra-ofalghom.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [decomposeAlgEquiv](declarations/decomposealgequiv.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [GradedAlgebra.proj](declarations/gradedalgebra-proj.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [GradedAlgebra.proj_apply](declarations/gradedalgebra-proj-apply.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [GradedAlgebra.proj_recompose](declarations/gradedalgebra-proj-recompose.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [GradedAlgebra.mem_support_iff](declarations/gradedalgebra-mem-support-iff.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [GradedRing.projZeroRingHom](declarations/gradedring-projzeroringhom.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_decompose_mul_of_left_mem_of_not_le](declarations/coe-decompose-mul-of-left-mem-of-not-le.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_decompose_mul_of_right_mem_of_not_le](declarations/coe-decompose-mul-of-right-mem-of-not-le.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_decompose_mul_of_left_mem_of_le](declarations/coe-decompose-mul-of-left-mem-of-le.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_decompose_mul_of_right_mem_of_le](declarations/coe-decompose-mul-of-right-mem-of-le.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_decompose_mul_of_left_mem](declarations/coe-decompose-mul-of-left-mem.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_decompose_mul_of_right_mem](declarations/coe-decompose-mul-of-right-mem.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a16b3a8791f813d4ede2ec8c7993c7813c8fc2514bae8c2bc097fdffdee407a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1624abb9a592322245eb19628884e82dae3073360719d495d7c80a2596eb8c14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
