# Matrix Flow

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58cf01ade6ff6f15321d10c77ac422c3b7f2f2db`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/MatrixFlow.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Flow.IntMatrix](declarations/flow-intmatrix.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Flow.IntMatrix.entry](declarations/flow-intmatrix-entry.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Flow.IntMatrix.identity](declarations/flow-intmatrix-identity.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Flow.IntMatrix.ofBool](declarations/flow-intmatrix-ofbool.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Flow.UnitDeterminantCertificate](declarations/flow-unitdeterminantcertificate.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Flow.UnitDeterminantCertificate.treeMobius](declarations/flow-unitdeterminantcertificate-treemobius.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Flow.MidpointBalanceMetadata](declarations/flow-midpointbalancemetadata.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Flow.MidpointBalanceMetadata.standard](declarations/flow-midpointbalancemetadata-standard.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [Flow.FiniteMobiusTraceTriple](declarations/flow-finitemobiustracetriple.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Flow.Expression.nodeCount](declarations/flow-expression-nodecount.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Flow.Expression.nodeCountList](declarations/flow-expression-nodecountlist.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Flow.Expression.childEdgesFrom](declarations/flow-expression-childedgesfrom.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Flow.Expression.childEdgesFromList](declarations/flow-expression-childedgesfromlist.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Flow.Expression.childEdges](declarations/flow-expression-childedges.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Flow.Expression.adjacencyMatrix](declarations/flow-expression-adjacencymatrix.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Flow.Expression.reachabilityMatrix](declarations/flow-expression-reachabilitymatrix.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Flow.Expression.zetaBoolMatrix](declarations/flow-expression-zetaboolmatrix.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Flow.Expression.zetaMatrix](declarations/flow-expression-zetamatrix.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Flow.Expression.mobiusMatrix](declarations/flow-expression-mobiusmatrix.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [Flow.MobiusInversion](declarations/flow-mobiusinversion.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Flow.Expression.mobiusInversion](declarations/flow-expression-mobiusinversion.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Flow.Expression.finiteMobiusTraceTriple](declarations/flow-expression-finitemobiustracetriple.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_matrix_eq_mobius](declarations/flow-expression-finitemobiustracetriple-matrix-eq-mobius.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_determinant_one](declarations/flow-expression-finitemobiustracetriple-determinant-one.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_tree_eq](declarations/flow-expression-finitemobiustracetriple-tree-eq.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Flow.Expression.zeta_diagonal](declarations/flow-expression-zeta-diagonal.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Flow.Expression.mobius_diagonal](declarations/flow-expression-mobius-diagonal.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Flow.Expression.mobius_cover_entry](declarations/flow-expression-mobius-cover-entry.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple](declarations/flow-examples-bsdmotivatedfinitemobiustracetriple.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Flow.Examples.bsdMotivatedSymbolicMobiusInversion](declarations/flow-examples-bsdmotivatedsymbolicmobiusinversion.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_determinant](declarations/flow-examples-bsdmotivatedfinitemobiustracetriple-determinant.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_midpoint](declarations/flow-examples-bsdmotivatedfinitemobiustracetriple-midpoint.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c06772bc3cf4f3fd8031c319bccc6fcbe420fdc486d67364a0378bf06fce5192 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
