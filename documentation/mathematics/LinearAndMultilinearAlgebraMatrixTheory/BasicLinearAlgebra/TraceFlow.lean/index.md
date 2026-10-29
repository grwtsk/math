# Trace Flow

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8fb2b61f54ecc77103b65fbf22f9b09f0fad0b7c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceFlow.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Flow.IntMatrix.traceAux](declarations/flow-intmatrix-traceaux.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Flow.IntMatrix.trace](declarations/flow-intmatrix-trace.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Flow.IntMatrix.traceAux_zero](declarations/flow-intmatrix-traceaux-zero.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Flow.IntMatrix.traceAux_eq_of_diag_one](declarations/flow-intmatrix-traceaux-eq-of-diag-one.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Flow.IntMatrix.trace_eq_of_diag_one](declarations/flow-intmatrix-trace-eq-of-diag-one.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Flow.IntMatrix.trace_identity](declarations/flow-intmatrix-trace-identity.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Flow.Expression.zetaTrace](declarations/flow-expression-zetatrace.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Flow.Expression.mobiusTrace](declarations/flow-expression-mobiustrace.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Flow.Expression.zeta_trace_eq_nodeCount](declarations/flow-expression-zeta-trace-eq-nodecount.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Flow.Expression.mobius_trace_eq_nodeCount](declarations/flow-expression-mobius-trace-eq-nodecount.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Flow.Expression.zeta_trace_eq_mobius_trace](declarations/flow-expression-zeta-trace-eq-mobius-trace.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [Flow.TraceCertificate](declarations/flow-tracecertificate.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Flow.TraceCertificate.mobiusTree](declarations/flow-tracecertificate-mobiustree.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Flow.TraceCertificate.mobiusTree_trace](declarations/flow-tracecertificate-mobiustree-trace.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [Flow.TraceTriple](declarations/flow-tracetriple.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Flow.TraceTriple.theoremReady](declarations/flow-tracetriple-theoremready.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Flow.Expression.traceTriple](declarations/flow-expression-tracetriple.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Flow.Expression.traceTriple_matrix_eq_mobius](declarations/flow-expression-tracetriple-matrix-eq-mobius.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Flow.Expression.traceTriple_tree_eq](declarations/flow-expression-tracetriple-tree-eq.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Flow.Expression.traceTriple_not_theoremReady](declarations/flow-expression-tracetriple-not-theoremready.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Flow.Expression.traceTriple_trace_eq_nodeCount](declarations/flow-expression-tracetriple-trace-eq-nodecount.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Flow.Expression.traceTriple_trace_matches_matrix_trace](declarations/flow-expression-tracetriple-trace-matches-matrix-trace.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Flow.MobiusInversion.zetaTrace](declarations/flow-mobiusinversion-zetatrace.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Flow.MobiusInversion.mobiusTrace](declarations/flow-mobiusinversion-mobiustrace.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Flow.Expression.mobiusInversion_mobiusTrace_eq_nodeCount](declarations/flow-expression-mobiusinversion-mobiustrace-eq-nodecount.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Flow.Expression.mobiusInversion_zetaTrace_eq_nodeCount](declarations/flow-expression-mobiusinversion-zetatrace-eq-nodecount.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Flow.Examples.bsdMotivatedTraceTriple](declarations/flow-examples-bsdmotivatedtracetriple.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_trace](declarations/flow-examples-bsdmotivatedtracetriple-trace.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_matches_matrix_trace](declarations/flow-examples-bsdmotivatedtracetriple-matches-matrix-trace.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_midpoint](declarations/flow-examples-bsdmotivatedtracetriple-midpoint.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_not_theoremReady](declarations/flow-examples-bsdmotivatedtracetriple-not-theoremready.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=998f3db45ddaa138dcf225dffecd37cc72b435ce2197bbf31709068f53e0627d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
