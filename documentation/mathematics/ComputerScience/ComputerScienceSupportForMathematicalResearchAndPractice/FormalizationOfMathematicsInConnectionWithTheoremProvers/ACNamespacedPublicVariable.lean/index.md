# ACNamespaced Public Variable

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4fb30e862e29a6a5f4eb47fb4b7fac6a43eb418`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ACNamespacedPublicVariable.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expr](declarations/expr.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Variable](declarations/variable.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Context](declarations/context.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [ContextInformation](declarations/contextinformation.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [EvalInformation](declarations/evalinformation.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Context.var](declarations/context-var.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [eval](declarations/eval.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Expr.toList](declarations/expr-tolist.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [evalList](declarations/evallist.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [insert](declarations/insert.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [sort](declarations/sort.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mergeIdem](declarations/mergeidem.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [removeNeutrals](declarations/removeneutrals.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [norm](declarations/norm.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [List.two_step_induction](declarations/list-two-step-induction.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Context.mergeIdem_nonEmpty](declarations/context-mergeidem-nonempty.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Context.mergeIdem_head](declarations/context-mergeidem-head.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Context.mergeIdem_head2](declarations/context-mergeidem-head2.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Context.evalList_mergeIdem](declarations/context-evallist-mergeidem.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [insert_nonEmpty](declarations/insert-nonempty.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Context.sort_loop_nonEmpty](declarations/context-sort-loop-nonempty.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Context.evalList_insert](declarations/context-evallist-insert.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Context.evalList_sort_congr](declarations/context-evallist-sort-congr.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Context.evalList_sort_loop_swap](declarations/context-evallist-sort-loop-swap.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Context.evalList_sort_cons](declarations/context-evallist-sort-cons.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Context.evalList_sort](declarations/context-evallist-sort.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Context.toList_nonEmpty](declarations/context-tolist-nonempty.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Context.unwrap_isNeutral](declarations/context-unwrap-isneutral.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Context.evalList_removeNeutrals](declarations/context-evallist-removeneutrals.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Context.evalList_append](declarations/context-evallist-append.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Context.eval_toList](declarations/context-eval-tolist.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Context.eval_norm](declarations/context-eval-norm.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Context.eq_of_norm](declarations/context-eq-of-norm.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fddf7bb777eb26ef636a5d8d973af235cd5c8a9473acae1206655085fcc7fec8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
