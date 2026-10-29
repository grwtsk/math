# Binary Matrix Stream

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**60 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixStream/Variant471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72b79af351919a94ca3ecee99d3c6b57a56ef438`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryMatrixStream](declarations/binarymatrixstream.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ext](declarations/ext.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [length](declarations/length.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [get](declarations/get.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [empty](declarations/empty.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [concat](declarations/concat.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [restrict](declarations/restrict.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mapMatrix](declarations/mapmatrix.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [length_empty](declarations/length-empty.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [length_concat](declarations/length-concat.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [length_restrict](declarations/length-restrict.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [length_mapMatrix](declarations/length-mapmatrix.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [get_mapMatrix](declarations/get-mapmatrix.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [get_concat_left](declarations/get-concat-left.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [get_concat_right](declarations/get-concat-right.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [get_restrict](declarations/get-restrict.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [timeLength](declarations/timelength.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [frameAt](declarations/frameat.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [timeLength_eq_length](declarations/timelength-eq-length.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [frameAt_eq_get](declarations/frameat-eq-get.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [HasFixedWidth](declarations/hasfixedwidth-source-edition-2.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [empty_hasFixedWidth](declarations/empty-hasfixedwidth.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [hasFixedWidth_of_shape](declarations/hasfixedwidth-of-shape.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mapMatrix_hasFixedWidth](declarations/mapmatrix-hasfixedwidth.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [ExternalAdapter](declarations/externaladapter.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [MatrixExternalAdapter](declarations/matrixexternaladapter.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toExternalAdapter](declarations/toexternaladapter.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [MatrixProofStep](declarations/matrixproofstep.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [run](declarations/run-source-edition-3.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [run_eq_output](declarations/run-eq-output-source-edition-3.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [MatrixTheoremFrame](declarations/matrixtheoremframe.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [MatrixProofFrame](declarations/matrixproofframe.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [toMatrixTheoremFrame](declarations/tomatrixtheoremframe.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [MatrixTheoremProof](declarations/matrixtheoremproof.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [InternalMatrixTheorem](declarations/internalmatrixtheorem.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [run](declarations/run.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [run_eq_output](declarations/run-eq-output-source-edition-2.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [MatrixInternalTheorem](declarations/matrixinternaltheorem.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [run](declarations/run-source-edition-2.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [run_eq_output](declarations/run-eq-output.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [toInternalMatrixTheorem](declarations/tointernalmatrixtheorem.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `structure` | [MatrixTheoremAdapter](declarations/matrixtheoremadapter.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [MatrixProofBudget](declarations/matrixproofbudget.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [UniformMatrixProofStream](declarations/uniformmatrixproofstream.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [WeightedMatrixProofStream](declarations/weightedmatrixproofstream.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [MatrixFiberDeterminantBridge](declarations/matrixfiberdeterminantbridge.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `structure` | [DynamicMatrixTheoremTrace](declarations/dynamicmatrixtheoremtrace.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [DynamicMatrixTheoremProof](declarations/dynamicmatrixtheoremproof.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `inductive` | [MatrixInterfaceKind](declarations/matrixinterfacekind.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [MatrixInterfaceAuditEntry](declarations/matrixinterfaceauditentry.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [matrix_internal_entry_has_matrix_io](declarations/matrix-internal-entry-has-matrix-io.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [MatrixOnlyInternalTheoremAudit](declarations/matrixonlyinternaltheoremaudit.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [matrix_only_internal_audit_passes](declarations/matrix-only-internal-audit-passes.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [InfiniteBinaryMatrixStream](declarations/infinitebinarymatrixstream.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [frameAt](declarations/frameat-source-edition-2.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [HasFixedWidth](declarations/hasfixedwidth.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [«prefix»](declarations/prefix.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [prefix_timeLength](declarations/prefix-timelength.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [prefix_frameAt](declarations/prefix-frameat.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [prefix_hasFixedWidth](declarations/prefix-hasfixedwidth.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a08587252218429537659764f05deba1a77a88ecd9b4919555e8b137c113182 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixStream/Variant471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
