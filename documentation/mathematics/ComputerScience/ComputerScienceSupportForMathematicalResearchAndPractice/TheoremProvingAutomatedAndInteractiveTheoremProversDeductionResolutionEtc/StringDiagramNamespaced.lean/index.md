# String Diagram Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variant711c797d0a6fc1ec7a634d811980ae59266c9f2e5f7524d00b3e8e38fa590868.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28c2655184e172fc1233be0e59108baaf6724c07`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](declarations/initialize.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [AtomNode](declarations/atomnode.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [IdNode](declarations/idnode.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [Node](declarations/node.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Node.e](declarations/node-e.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Node.srcList](declarations/node-srclist.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Node.tarList](declarations/node-tarlist.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Node.vPos](declarations/node-vpos.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Node.hPosSrc](declarations/node-hpossrc.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Node.hPosTar](declarations/node-hpostar.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [Strand](declarations/strand.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Strand.vPos](declarations/strand-vpos.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [WhiskerRight.nodes](declarations/whiskerright-nodes.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [HorizontalComp.nodes](declarations/horizontalcomp-nodes.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [WhiskerLeft.nodes](declarations/whiskerleft-nodes.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [topNodes](declarations/topnodes.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [NormalExpr.nodesAux](declarations/normalexpr-nodesaux.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [NormalExpr.nodes](declarations/normalexpr-nodes.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [pairs](declarations/pairs.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [NormalExpr.strands](declarations/normalexpr-strands.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [PenroseVar](declarations/penrosevar.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Node.toPenroseVar](declarations/node-topenrosevar.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Strand.toPenroseVar](declarations/strand-topenrosevar.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [addPenroseVar](declarations/addpenrosevar.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [addConstructor](declarations/addconstructor.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mkStringDiagram](declarations/mkstringdiagram.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [dsl](declarations/dsl.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [sty](declarations/sty.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `inductive` | [Kind](declarations/kind.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Kind.name](declarations/kind-name.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [mkKind](declarations/mkkind.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [stringM?](declarations/stringm.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [mkEqHtml](declarations/mkeqhtml.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [stringEqM?](declarations/stringeqm.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [stringMorOrEqM?](declarations/stringmororeqm.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [stringPresenter](declarations/stringpresenter.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [rpc](declarations/rpc.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [StringDiagram](declarations/stringdiagram.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `syntax` | [(anonymous)](declarations/syntax.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [elabStringDiagramCmd](declarations/elabstringdiagramcmd.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe98aba790ad687e4e188a0a36f1f9748e62176dbcf973c01cb63ab37be1016f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variant711c797d0a6fc1ec7a634d811980ae59266c9f2e5f7524d00b3e8e38fa590868.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
