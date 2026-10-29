# Typed Staging Request Refinement

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `812012af261f361c032291dfcec086f0d9e8ee66`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/TypedStagingRequestRefinement.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](declarations/context.md) | 12 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [Rejected](declarations/rejected.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Request](declarations/request.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [lower](declarations/lower.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [invoke](declarations/invoke.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [lower_fresh](declarations/lower-fresh.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lower_directory](declarations/lower-directory.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lower_directory_rejected](declarations/lower-directory-rejected.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lower_empty](declarations/lower-empty.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lower_copy](declarations/lower-copy.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lower_write_rejected](declarations/lower-write-rejected.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lower_readback](declarations/lower-readback.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lower_certificate](declarations/lower-certificate.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lower_success_rejected](declarations/lower-success-rejected.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lower_failed_rejected](declarations/lower-failed-rejected.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lower_directory_iff](declarations/lower-directory-iff.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lower_write_iff](declarations/lower-write-iff.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [invoke_request_exact](declarations/invoke-request-exact.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [invoke_rejection_no_primitive](declarations/invoke-rejection-no-primitive.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [invoke_success_exact](declarations/invoke-success-exact.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [invoke_primitive_error_exact](declarations/invoke-primitive-error-exact.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [execute](declarations/execute.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [execute_success_order](declarations/execute-success-order.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [execute_success_mandatory_gates](declarations/execute-success-mandatory-gates.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [execute_error_prefix](declarations/execute-error-prefix.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [withPrepared](declarations/withprepared.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [withPrepared_exact](declarations/withprepared-exact.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [rejectionCode](declarations/rejectioncode.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rejectionCode_index](declarations/rejectioncode-index.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rejectionCode_terminal](declarations/rejectioncode-terminal.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [run_success_requests](declarations/run-success-requests.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [execute_success_requests](declarations/execute-success-requests.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [emptyContext](declarations/emptycontext.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [fixture_empty_concrete_staging](declarations/fixture-empty-concrete-staging.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [fixture_invalid_directory_no_primitive](declarations/fixture-invalid-directory-no-primitive.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [fixture_terminal_no_primitive](declarations/fixture-terminal-no-primitive.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f92196421a4797fbdcd3839eb0c2e54448bd8d38107bb75bab302526e80f269 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedStagingRequestRefinement.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
