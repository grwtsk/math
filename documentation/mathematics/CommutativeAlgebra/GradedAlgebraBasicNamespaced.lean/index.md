# Graded Algebra Basic Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eeae0a950ee9fd75ceff24122be9d6a347e6fa05`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/GradedAlgebraBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [GradedRing](declarations/gradedring.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [decomposeRingEquiv](declarations/decomposeringequiv.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [decompose_one](declarations/decompose-one.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [decompose_symm_one](declarations/decompose-symm-one.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [decompose_mul](declarations/decompose-mul.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [decompose_symm_mul](declarations/decompose-symm-mul.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [GradedRing.proj](declarations/gradedring-proj.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [GradedRing.proj_apply](declarations/gradedring-proj-apply.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [GradedRing.proj_recompose](declarations/gradedring-proj-recompose.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [GradedRing.mem_support_iff](declarations/gradedring-mem-support-iff.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_decompose_mul_add_of_left_mem](declarations/coe-decompose-mul-add-of-left-mem.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_decompose_mul_add_of_right_mem](declarations/coe-decompose-mul-add-of-right-mem.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [decompose_mul_add_left](declarations/decompose-mul-add-left.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [decompose_mul_add_right](declarations/decompose-mul-add-right.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [GradedAlgebra](declarations/gradedalgebra.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [GradedAlgebra.ofAlgHom](declarations/gradedalgebra-ofalghom.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [decomposeAlgEquiv](declarations/decomposealgequiv.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [GradedAlgebra.proj](declarations/gradedalgebra-proj.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [GradedAlgebra.proj_apply](declarations/gradedalgebra-proj-apply.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [GradedAlgebra.proj_recompose](declarations/gradedalgebra-proj-recompose.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [GradedAlgebra.mem_support_iff](declarations/gradedalgebra-mem-support-iff.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [GradedRing.projZeroRingHom](declarations/gradedring-projzeroringhom.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_decompose_mul_of_left_mem_of_not_le](declarations/coe-decompose-mul-of-left-mem-of-not-le.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_decompose_mul_of_right_mem_of_not_le](declarations/coe-decompose-mul-of-right-mem-of-not-le.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_decompose_mul_of_left_mem_of_le](declarations/coe-decompose-mul-of-left-mem-of-le.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_decompose_mul_of_right_mem_of_le](declarations/coe-decompose-mul-of-right-mem-of-le.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_decompose_mul_of_left_mem](declarations/coe-decompose-mul-of-left-mem.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_decompose_mul_of_right_mem](declarations/coe-decompose-mul-of-right-mem.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7609262fe250ec7d0d984d3be309429b7d8cb1fd704694e29e375c8749fcb4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
