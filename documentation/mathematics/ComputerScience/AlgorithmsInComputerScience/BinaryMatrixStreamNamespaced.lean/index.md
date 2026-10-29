# Binary Matrix Stream Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**60 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixStream/Variantf55a5b45fd285be82b59947e2fb092b4af9a597a159f7e44f5870114a21241fc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f477486da06edfdfe5335eb5d1c46b3b4c4a4586`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStreamNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryMatrixStream](declarations/binarymatrixstream.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ext](declarations/ext.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [length](declarations/length.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [get](declarations/get.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [empty](declarations/empty.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [concat](declarations/concat.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [restrict](declarations/restrict.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mapMatrix](declarations/mapmatrix.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [length_empty](declarations/length-empty.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [length_concat](declarations/length-concat.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [length_restrict](declarations/length-restrict.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [length_mapMatrix](declarations/length-mapmatrix.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [get_mapMatrix](declarations/get-mapmatrix.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [get_concat_left](declarations/get-concat-left.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [get_concat_right](declarations/get-concat-right.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [get_restrict](declarations/get-restrict.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [timeLength](declarations/timelength.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [frameAt](declarations/frameat-source-edition-2.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [timeLength_eq_length](declarations/timelength-eq-length.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [frameAt_eq_get](declarations/frameat-eq-get.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [HasFixedWidth](declarations/hasfixedwidth.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [empty_hasFixedWidth](declarations/empty-hasfixedwidth.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [hasFixedWidth_of_shape](declarations/hasfixedwidth-of-shape.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mapMatrix_hasFixedWidth](declarations/mapmatrix-hasfixedwidth.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [ExternalAdapter](declarations/externaladapter.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [MatrixExternalAdapter](declarations/matrixexternaladapter.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toExternalAdapter](declarations/toexternaladapter.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [MatrixProofStep](declarations/matrixproofstep.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [run](declarations/run-source-edition-3.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [run_eq_output](declarations/run-eq-output-source-edition-2.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [MatrixTheoremFrame](declarations/matrixtheoremframe.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [MatrixProofFrame](declarations/matrixproofframe.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [toMatrixTheoremFrame](declarations/tomatrixtheoremframe.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [MatrixTheoremProof](declarations/matrixtheoremproof.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [InternalMatrixTheorem](declarations/internalmatrixtheorem.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [run](declarations/run-source-edition-2.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [run_eq_output](declarations/run-eq-output-source-edition-3.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [MatrixInternalTheorem](declarations/matrixinternaltheorem.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [run](declarations/run.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [run_eq_output](declarations/run-eq-output.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [toInternalMatrixTheorem](declarations/tointernalmatrixtheorem.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `structure` | [MatrixTheoremAdapter](declarations/matrixtheoremadapter.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [MatrixProofBudget](declarations/matrixproofbudget.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [UniformMatrixProofStream](declarations/uniformmatrixproofstream.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [WeightedMatrixProofStream](declarations/weightedmatrixproofstream.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [MatrixFiberDeterminantBridge](declarations/matrixfiberdeterminantbridge.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `structure` | [DynamicMatrixTheoremTrace](declarations/dynamicmatrixtheoremtrace.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [DynamicMatrixTheoremProof](declarations/dynamicmatrixtheoremproof.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `inductive` | [MatrixInterfaceKind](declarations/matrixinterfacekind.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [MatrixInterfaceAuditEntry](declarations/matrixinterfaceauditentry.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [matrix_internal_entry_has_matrix_io](declarations/matrix-internal-entry-has-matrix-io.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [MatrixOnlyInternalTheoremAudit](declarations/matrixonlyinternaltheoremaudit.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [matrix_only_internal_audit_passes](declarations/matrix-only-internal-audit-passes.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [InfiniteBinaryMatrixStream](declarations/infinitebinarymatrixstream.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [frameAt](declarations/frameat.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [HasFixedWidth](declarations/hasfixedwidth-source-edition-2.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [«prefix»](declarations/prefix.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [prefix_timeLength](declarations/prefix-timelength.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [prefix_frameAt](declarations/prefix-frameat.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [prefix_hasFixedWidth](declarations/prefix-hasfixedwidth.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ee72bfe5075a4bb76e2f26e06fd47bd14890225ac6f04c095e76b4bbd357dfc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixStream/Variantf55a5b45fd285be82b59947e2fb092b4af9a597a159f7e44f5870114a21241fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
