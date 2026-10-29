# Trace Namespaced Flow

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45908c839d031d8bbfd5ece1602bc65b034f5681`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceNamespacedFlow.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Flow.IntMatrix.traceAux](declarations/flow-intmatrix-traceaux.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Flow.IntMatrix.trace](declarations/flow-intmatrix-trace.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Flow.IntMatrix.traceAux_zero](declarations/flow-intmatrix-traceaux-zero.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Flow.IntMatrix.traceAux_eq_of_diag_one](declarations/flow-intmatrix-traceaux-eq-of-diag-one.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Flow.IntMatrix.trace_eq_of_diag_one](declarations/flow-intmatrix-trace-eq-of-diag-one.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Flow.IntMatrix.trace_identity](declarations/flow-intmatrix-trace-identity.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Flow.Expression.zetaTrace](declarations/flow-expression-zetatrace.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Flow.Expression.mobiusTrace](declarations/flow-expression-mobiustrace.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Flow.Expression.zeta_trace_eq_nodeCount](declarations/flow-expression-zeta-trace-eq-nodecount.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Flow.Expression.mobius_trace_eq_nodeCount](declarations/flow-expression-mobius-trace-eq-nodecount.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Flow.Expression.zeta_trace_eq_mobius_trace](declarations/flow-expression-zeta-trace-eq-mobius-trace.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [Flow.TraceCertificate](declarations/flow-tracecertificate.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Flow.TraceCertificate.mobiusTree](declarations/flow-tracecertificate-mobiustree.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Flow.TraceCertificate.mobiusTree_trace](declarations/flow-tracecertificate-mobiustree-trace.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [Flow.TraceTriple](declarations/flow-tracetriple.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Flow.TraceTriple.theoremReady](declarations/flow-tracetriple-theoremready.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Flow.Expression.traceTriple](declarations/flow-expression-tracetriple.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Flow.Expression.traceTriple_matrix_eq_mobius](declarations/flow-expression-tracetriple-matrix-eq-mobius.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Flow.Expression.traceTriple_tree_eq](declarations/flow-expression-tracetriple-tree-eq.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Flow.Expression.traceTriple_not_theoremReady](declarations/flow-expression-tracetriple-not-theoremready.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Flow.Expression.traceTriple_trace_eq_nodeCount](declarations/flow-expression-tracetriple-trace-eq-nodecount.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Flow.Expression.traceTriple_trace_matches_matrix_trace](declarations/flow-expression-tracetriple-trace-matches-matrix-trace.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Flow.MobiusInversion.zetaTrace](declarations/flow-mobiusinversion-zetatrace.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Flow.MobiusInversion.mobiusTrace](declarations/flow-mobiusinversion-mobiustrace.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Flow.Expression.mobiusInversion_mobiusTrace_eq_nodeCount](declarations/flow-expression-mobiusinversion-mobiustrace-eq-nodecount.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Flow.Expression.mobiusInversion_zetaTrace_eq_nodeCount](declarations/flow-expression-mobiusinversion-zetatrace-eq-nodecount.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Flow.Examples.bsdMotivatedTraceTriple](declarations/flow-examples-bsdmotivatedtracetriple.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_trace](declarations/flow-examples-bsdmotivatedtracetriple-trace.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_matches_matrix_trace](declarations/flow-examples-bsdmotivatedtracetriple-matches-matrix-trace.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_midpoint](declarations/flow-examples-bsdmotivatedtracetriple-midpoint.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_not_theoremReady](declarations/flow-examples-bsdmotivatedtracetriple-not-theoremready.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fde5e68671a2ec9dffa14347ddf3c9d576ae408e3b3a5ea1ede484f8e455b545 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
