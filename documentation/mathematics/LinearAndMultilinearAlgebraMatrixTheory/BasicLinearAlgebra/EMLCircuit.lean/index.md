# EMLCircuit

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 3 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8602a7a5f970e3aa36ab70b8570ea2ba96f3b30d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EMLCircuit.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [CircuitNodeKind](declarations/circuitnodekind.md) | 5 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [matchesKind](declarations/matcheskind.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [EMLCircuitMatrix](declarations/emlcircuitmatrix.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [HasNodeKinds](declarations/hasnodekinds.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [KindMarkersDiagonal](declarations/kindmarkersdiagonal.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ExactlyOneKindPerNode](declarations/exactlyonekindpernode.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [OperatorChildrenFunctional](declarations/operatorchildrenfunctional.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [LeafNodesHaveNoChildren](declarations/leafnodeshavenochildren.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [VariableLeavesUseOneInput](declarations/variableleavesuseoneinput.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ConstantLeavesUseNoInput](declarations/constantleavesusenoinput.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [ChildrenDecrease](declarations/childrendecrease.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [ReachableFromRoot](declarations/reachablefromroot.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [RootIsLast](declarations/rootislast.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [WellFormed](declarations/wellformed.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [lastFin](declarations/lastfin.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [kindAt](declarations/kindat.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [varInputAt](declarations/varinputat.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [leftChildAt](declarations/leftchildat.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [rightChildAt](declarations/rightchildat.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [optionNatMatches](declarations/optionnatmatches.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [treeKindOneMatrix](declarations/treekindonematrix.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [treeKindVarMatrix](declarations/treekindvarmatrix.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [treeKindOpMatrix](declarations/treekindopmatrix.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [treeLeftEdgeMatrix](declarations/treeleftedgematrix.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [treeRightEdgeMatrix](declarations/treerightedgematrix.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [treeInputUseMatrix](declarations/treeinputusematrix.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [treeToMatrix](declarations/treetomatrix.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [matrixToTree?](declarations/matrixtotree.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [treeToMatrix_wellFormed](declarations/treetomatrix-wellformed.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [matrixToTree_treeToMatrix](declarations/matrixtotree-treetomatrix.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [tree_encoding_injective](declarations/tree-encoding-injective.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e3e14f216395a3a47d469de9943c4229b285407818ee2d2b1ad699478ce962d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
