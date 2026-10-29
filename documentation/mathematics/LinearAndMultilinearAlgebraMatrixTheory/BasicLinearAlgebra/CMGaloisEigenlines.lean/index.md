# CMGalois Eigenlines

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b59ccd41eab0807d8f739789c4d50d56e583b0d5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CMGaloisEigenlines.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [embeddingCharacter](declarations/embeddingcharacter.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [coordinateLine](declarations/coordinateline.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [canonicalEigenvector](declarations/canonicaleigenvector.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [evaluationEquiv_canonicalEigenvector](declarations/evaluationequiv-canonicaleigenvector.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [evaluation_regularAction](declarations/evaluation-regularaction.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [canonicalEigenvector_ne_zero](declarations/canonicaleigenvector-ne-zero.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [canonicalEigenvector_mem](declarations/canonicaleigenvector-mem.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [evaluation_offDiagonal_zero](declarations/evaluation-offdiagonal-zero.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [evaluation_mem_coordinateLine](declarations/evaluation-mem-coordinateline.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [embeddingEigenspace_eq_span](declarations/embeddingeigenspace-eq-span.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [embeddingEigenspace_finrank_one](declarations/embeddingeigenspace-finrank-one.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [exists_ne_zero_smul_eq_of_mem_embeddingEigenspace](declarations/exists-ne-zero-smul-eq-of-mem-embeddingeigenspace.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [embeddingEigenspace_nonzero](declarations/embeddingeigenspace-nonzero.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [embeddingEigenspace_finrank_one_aut](declarations/embeddingeigenspace-finrank-one-aut.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [embeddingEigenspace_nonzero_aut](declarations/embeddingeigenspace-nonzero-aut.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [coordinateProjector](declarations/coordinateprojector.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [evaluationEquiv_coordinateProjector](declarations/evaluationequiv-coordinateprojector.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coordinateProjector_eq_smul_canonicalEigenvector](declarations/coordinateprojector-eq-smul-canonicaleigenvector.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coordinateProjector_mem](declarations/coordinateprojector-mem.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coordinateProjector_same](declarations/coordinateprojector-same.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coordinateProjector_other](declarations/coordinateprojector-other.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sum_coordinateProjector](declarations/sum-coordinateprojector.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [embeddingCharacter_symm](declarations/embeddingcharacter-symm.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [automorphismProjector](declarations/automorphismprojector.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [automorphismProjector_mem](declarations/automorphismprojector-mem.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [automorphismProjector_same](declarations/automorphismprojector-same.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [automorphismProjector_other](declarations/automorphismprojector-other.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sum_automorphismProjector](declarations/sum-automorphismprojector.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [canonicalEigenspaces_isInternal](declarations/canonicaleigenspaces-isinternal.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [canonicalTypedEigenspaceDecomposition](declarations/canonicaltypedeigenspacedecomposition.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [canonicalEigenlineRealization](declarations/canonicaleigenlinerealization.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [canonicalTypedEigenlineRealization](declarations/canonicaltypedeigenlinerealization.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [canonicalTypedEigenlines_fourFactor_bidegree_two_two](declarations/canonicaltypedeigenlines-fourfactor-bidegree-two-two.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e925be2253890daf419caaf060d795898abc5dcea7d8af16796d491a895e5bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean","GRWTSK/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
