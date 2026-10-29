# Tactic Solve By Elim

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5edc6405bb9d3379ec16ad71ee3afa318d241a43`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElim.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](declarations/initialize.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [applyTactics](declarations/applytactics.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [applyFirst](declarations/applyfirst.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Config](declarations/config.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [ApplyRulesConfig](declarations/applyrulesconfig.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [accept](declarations/accept.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mainGoalProc](declarations/maingoalproc.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [intros](declarations/intros.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [synthInstance](declarations/synthinstance.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [withDischarge](declarations/withdischarge.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [introsAfter](declarations/introsafter.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [synthInstanceAfter](declarations/synthinstanceafter.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [testPartialSolutions](declarations/testpartialsolutions.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [testSolutions](declarations/testsolutions.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [requireUsingAll](declarations/requireusingall.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [elabContextLemmas](declarations/elabcontextlemmas.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [applyLemmas](declarations/applylemmas.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [applyFirstLemma](declarations/applyfirstlemma.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [solveByElim](declarations/solvebyelim.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [_root_.Lean.MVarId.applyRules](declarations/root-lean-mvarid-applyrules.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mkAssumptionSet](declarations/mkassumptionset.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `syntax` | [(anonymous)](declarations/syntax-source-edition-7.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `syntax` | [(anonymous)](declarations/syntax-source-edition-4.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `syntax` | [(anonymous)](declarations/syntax-source-edition-8.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `syntax` | [(anonymous)](declarations/syntax-source-edition-2.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `syntax` | [(anonymous)](declarations/syntax-source-edition-3.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [parseArgs](declarations/parseargs.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [parseUsing](declarations/parseusing.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `syntax` | [(anonymous)](declarations/syntax.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [solveByElim.processSyntax](declarations/solvebyelim-processsyntax.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `elab_rules` | [(anonymous)](declarations/elab-rules-source-edition-3.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `syntax` | [(anonymous)](declarations/syntax-source-edition-6.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `elab_rules` | [(anonymous)](declarations/elab-rules.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `syntax` | [(anonymous)](declarations/syntax-source-edition-5.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `elab_rules` | [(anonymous)](declarations/elab-rules-source-edition-2.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f7ca07efb3a7dec5e8090152d62011d126108f74777f37e4b3579cb1fea612a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
