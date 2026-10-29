# Tactic Def Eq Transformations Refold FVars

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variante6cd5d277510a945132b5d942c25c8e2e28494446c11593a099d66fcbe38aaa7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3b84c14745bf69917ef33bc0af71403a1e6fc08`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsRefoldFVars.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.Lean.MVarId.changeLocalDecl'](declarations/root-lean-mvarid-changelocaldecl.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [runDefEqTactic](declarations/rundefeqtactic.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [runDefEqConvTactic](declarations/rundefeqconvtactic.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `elab` | [(anonymous)](declarations/elab-source-edition-12.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `elab` | [(anonymous)](declarations/elab-source-edition-8.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `elab` | [(anonymous)](declarations/elab-source-edition-4.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `elab` | [(anonymous)](declarations/elab-source-edition-7.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [unfoldFVars](declarations/unfoldfvars.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `syntax` | [(anonymous)](declarations/syntax-source-edition-3.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `elab_rules` | [(anonymous)](declarations/elab-rules-source-edition-3.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `syntax` | [(anonymous)](declarations/syntax-source-edition-4.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `elab_rules` | [(anonymous)](declarations/elab-rules-source-edition-2.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [refoldFVars](declarations/refoldfvars.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `syntax` | [(anonymous)](declarations/syntax-source-edition-2.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `elab_rules` | [(anonymous)](declarations/elab-rules.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `syntax` | [(anonymous)](declarations/syntax.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `elab_rules` | [(anonymous)](declarations/elab-rules-source-edition-4.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [unfoldProjs](declarations/unfoldprojs.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `elab` | [(anonymous)](declarations/elab-source-edition-9.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `elab` | [(anonymous)](declarations/elab-source-edition-3.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [etaReduceAll](declarations/etareduceall.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `elab` | [(anonymous)](declarations/elab-source-edition-6.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `elab` | [(anonymous)](declarations/elab-source-edition-2.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [etaExpandAll](declarations/etaexpandall.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `elab` | [(anonymous)](declarations/elab-source-edition-5.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `elab` | [(anonymous)](declarations/elab-source-edition-11.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [getProjectedExpr](declarations/getprojectedexpr.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [etaStruct?](declarations/etastruct.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [etaStructAll](declarations/etastructall.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `elab` | [(anonymous)](declarations/elab-source-edition-10.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `elab` | [(anonymous)](declarations/elab.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfb18a51386e94981e5eeb7e20d43c3be071f4b4598f760e0b69e6e32731a34b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variante6cd5d277510a945132b5d942c25c8e2e28494446c11593a099d66fcbe38aaa7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
