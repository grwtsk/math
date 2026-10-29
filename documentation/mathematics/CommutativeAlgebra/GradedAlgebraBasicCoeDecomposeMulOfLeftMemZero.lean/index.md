# Graded Algebra Basic Coe Decompose Mul Of Left Mem Zero

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb7325d4f639fa59c3917a8c6c4402a58a327a2a8676eea4a558d4a95792a62d3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d489f80f45eb204612b62a2bc3108996b5443a18`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/GradedAlgebraBasicCoeDecomposeMulOfLeftMemZero.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [GradedRing](declarations/gradedring.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [decomposeRingEquiv](declarations/decomposeringequiv.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [decompose_one](declarations/decompose-one.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [decompose_symm_one](declarations/decompose-symm-one.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [decompose_mul](declarations/decompose-mul.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [decompose_symm_mul](declarations/decompose-symm-mul.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [GradedRing.proj](declarations/gradedring-proj.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [GradedRing.proj_apply](declarations/gradedring-proj-apply.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [GradedRing.proj_recompose](declarations/gradedring-proj-recompose.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [GradedRing.mem_support_iff](declarations/gradedring-mem-support-iff.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_decompose_mul_add_of_left_mem](declarations/coe-decompose-mul-add-of-left-mem.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_decompose_mul_add_of_right_mem](declarations/coe-decompose-mul-add-of-right-mem.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [decompose_mul_add_left](declarations/decompose-mul-add-left.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [decompose_mul_add_right](declarations/decompose-mul-add-right.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_decompose_mul_of_left_mem_zero](declarations/coe-decompose-mul-of-left-mem-zero.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_decompose_mul_of_right_mem_zero](declarations/coe-decompose-mul-of-right-mem-zero.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [GradedAlgebra](declarations/gradedalgebra.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [GradedAlgebra.ofAlgHom](declarations/gradedalgebra-ofalghom.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [decomposeAlgEquiv](declarations/decomposealgequiv.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [decomposeAlgEquiv_apply](declarations/decomposealgequiv-apply.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [decomposeAlgEquiv_symm_apply](declarations/decomposealgequiv-symm-apply.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [decompose_algebraMap](declarations/decompose-algebramap.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [decompose_symm_algebraMap](declarations/decompose-symm-algebramap.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [GradedAlgebra.proj](declarations/gradedalgebra-proj.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [GradedAlgebra.proj_apply](declarations/gradedalgebra-proj-apply.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [GradedAlgebra.proj_recompose](declarations/gradedalgebra-proj-recompose.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [GradedAlgebra.mem_support_iff](declarations/gradedalgebra-mem-support-iff.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [GradedRing.projZeroRingHom](declarations/gradedring-projzeroringhom.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [GradedRing.projZeroRingHom'](declarations/gradedring-projzeroringhom-source-edition-2.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [GradedRing.coe_projZeroRingHom'_apply](declarations/gradedring-coe-projzeroringhom-apply.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [GradedRing.projZeroRingHom'_apply_coe](declarations/gradedring-projzeroringhom-apply-coe.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [GradedRing.projZeroRingHom'_surjective](declarations/gradedring-projzeroringhom-surjective.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_decompose_mul_of_left_mem_of_not_le](declarations/coe-decompose-mul-of-left-mem-of-not-le.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_decompose_mul_of_right_mem_of_not_le](declarations/coe-decompose-mul-of-right-mem-of-not-le.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coe_decompose_mul_of_left_mem_of_le](declarations/coe-decompose-mul-of-left-mem-of-le.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_decompose_mul_of_right_mem_of_le](declarations/coe-decompose-mul-of-right-mem-of-le.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coe_decompose_mul_of_left_mem](declarations/coe-decompose-mul-of-left-mem.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coe_decompose_mul_of_right_mem](declarations/coe-decompose-mul-of-right-mem.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [coeAlgEquiv](declarations/coealgequiv.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [gradedAlgebra](declarations/gradedalgebra-source-edition-2.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d3344a0414a501642808c2ef91e5978293efb7ed34febb597b3832c934b5043f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb7325d4f639fa59c3917a8c6c4402a58a327a2a8676eea4a558d4a95792a62d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
