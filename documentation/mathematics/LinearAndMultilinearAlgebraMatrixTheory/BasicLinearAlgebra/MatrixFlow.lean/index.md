# Matrix Flow

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed978317263c34ccc03e51d12a7f49335f560770`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixFlow.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Flow.IntMatrix](declarations/flow-intmatrix.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Flow.IntMatrix.entry](declarations/flow-intmatrix-entry.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Flow.IntMatrix.identity](declarations/flow-intmatrix-identity.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Flow.IntMatrix.ofBool](declarations/flow-intmatrix-ofbool.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Flow.UnitDeterminantCertificate](declarations/flow-unitdeterminantcertificate.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Flow.UnitDeterminantCertificate.treeMobius](declarations/flow-unitdeterminantcertificate-treemobius.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Flow.MidpointBalanceMetadata](declarations/flow-midpointbalancemetadata.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Flow.MidpointBalanceMetadata.standard](declarations/flow-midpointbalancemetadata-standard.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [Flow.FiniteMobiusTraceTriple](declarations/flow-finitemobiustracetriple.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Flow.Expression.nodeCount](declarations/flow-expression-nodecount.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Flow.Expression.nodeCountList](declarations/flow-expression-nodecountlist.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Flow.Expression.childEdgesFrom](declarations/flow-expression-childedgesfrom.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Flow.Expression.childEdgesFromList](declarations/flow-expression-childedgesfromlist.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Flow.Expression.childEdges](declarations/flow-expression-childedges.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Flow.Expression.adjacencyMatrix](declarations/flow-expression-adjacencymatrix.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Flow.Expression.reachabilityMatrix](declarations/flow-expression-reachabilitymatrix.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Flow.Expression.zetaBoolMatrix](declarations/flow-expression-zetaboolmatrix.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Flow.Expression.zetaMatrix](declarations/flow-expression-zetamatrix.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Flow.Expression.mobiusMatrix](declarations/flow-expression-mobiusmatrix.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [Flow.MobiusInversion](declarations/flow-mobiusinversion.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Flow.Expression.mobiusInversion](declarations/flow-expression-mobiusinversion.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Flow.Expression.finiteMobiusTraceTriple](declarations/flow-expression-finitemobiustracetriple.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_matrix_eq_mobius](declarations/flow-expression-finitemobiustracetriple-matrix-eq-mobius.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_determinant_one](declarations/flow-expression-finitemobiustracetriple-determinant-one.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_tree_eq](declarations/flow-expression-finitemobiustracetriple-tree-eq.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Flow.Expression.zeta_diagonal](declarations/flow-expression-zeta-diagonal.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Flow.Expression.mobius_diagonal](declarations/flow-expression-mobius-diagonal.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Flow.Expression.mobius_cover_entry](declarations/flow-expression-mobius-cover-entry.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple](declarations/flow-examples-bsdmotivatedfinitemobiustracetriple.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Flow.Examples.bsdMotivatedSymbolicMobiusInversion](declarations/flow-examples-bsdmotivatedsymbolicmobiusinversion.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_determinant](declarations/flow-examples-bsdmotivatedfinitemobiustracetriple-determinant.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_midpoint](declarations/flow-examples-bsdmotivatedfinitemobiustracetriple-midpoint.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa198b786f7a64579c51e3cea3bdec729312c07c8e2fecf9a6bdd179aef37749 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Matrix/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean","GRWTSK/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
