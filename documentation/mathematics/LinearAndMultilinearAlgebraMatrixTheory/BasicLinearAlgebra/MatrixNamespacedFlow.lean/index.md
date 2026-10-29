# Matrix Namespaced Flow

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fae474f941263dc16aeda2a2c7779df7a380dbb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixNamespacedFlow.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Flow.IntMatrix](declarations/flow-intmatrix.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Flow.IntMatrix.entry](declarations/flow-intmatrix-entry.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Flow.IntMatrix.identity](declarations/flow-intmatrix-identity.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Flow.IntMatrix.ofBool](declarations/flow-intmatrix-ofbool.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Flow.UnitDeterminantCertificate](declarations/flow-unitdeterminantcertificate.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Flow.UnitDeterminantCertificate.treeMobius](declarations/flow-unitdeterminantcertificate-treemobius.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Flow.MidpointBalanceMetadata](declarations/flow-midpointbalancemetadata.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Flow.MidpointBalanceMetadata.standard](declarations/flow-midpointbalancemetadata-standard.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [Flow.FiniteMobiusTraceTriple](declarations/flow-finitemobiustracetriple.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Flow.Expression.nodeCount](declarations/flow-expression-nodecount.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Flow.Expression.nodeCountList](declarations/flow-expression-nodecountlist.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Flow.Expression.childEdgesFrom](declarations/flow-expression-childedgesfrom.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Flow.Expression.childEdgesFromList](declarations/flow-expression-childedgesfromlist.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Flow.Expression.childEdges](declarations/flow-expression-childedges.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Flow.Expression.adjacencyMatrix](declarations/flow-expression-adjacencymatrix.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Flow.Expression.reachabilityMatrix](declarations/flow-expression-reachabilitymatrix.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Flow.Expression.zetaBoolMatrix](declarations/flow-expression-zetaboolmatrix.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Flow.Expression.zetaMatrix](declarations/flow-expression-zetamatrix.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Flow.Expression.mobiusMatrix](declarations/flow-expression-mobiusmatrix.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [Flow.MobiusInversion](declarations/flow-mobiusinversion.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Flow.Expression.mobiusInversion](declarations/flow-expression-mobiusinversion.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Flow.Expression.finiteMobiusTraceTriple](declarations/flow-expression-finitemobiustracetriple.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_matrix_eq_mobius](declarations/flow-expression-finitemobiustracetriple-matrix-eq-mobius.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_determinant_one](declarations/flow-expression-finitemobiustracetriple-determinant-one.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_tree_eq](declarations/flow-expression-finitemobiustracetriple-tree-eq.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Flow.Expression.zeta_diagonal](declarations/flow-expression-zeta-diagonal.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Flow.Expression.mobius_diagonal](declarations/flow-expression-mobius-diagonal.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Flow.Expression.mobius_cover_entry](declarations/flow-expression-mobius-cover-entry.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple](declarations/flow-examples-bsdmotivatedfinitemobiustracetriple.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Flow.Examples.bsdMotivatedSymbolicMobiusInversion](declarations/flow-examples-bsdmotivatedsymbolicmobiusinversion.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_determinant](declarations/flow-examples-bsdmotivatedfinitemobiustracetriple-determinant.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_midpoint](declarations/flow-examples-bsdmotivatedfinitemobiustracetriple-midpoint.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b679084ce82db1c96465c0a032d86314a3aae097582b3b19a2409641595a8326 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean","GRWTSK/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
