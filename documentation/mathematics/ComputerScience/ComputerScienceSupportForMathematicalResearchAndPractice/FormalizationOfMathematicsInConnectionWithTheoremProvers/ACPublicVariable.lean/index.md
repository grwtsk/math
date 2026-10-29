# ACPublic Variable

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d68f645f39eb54676fe35ddcd7df853d73b0ca6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ACPublicVariable.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expr](declarations/expr.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Variable](declarations/variable.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Context](declarations/context.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [ContextInformation](declarations/contextinformation.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [EvalInformation](declarations/evalinformation.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Context.var](declarations/context-var.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [eval](declarations/eval.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Expr.toList](declarations/expr-tolist.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [evalList](declarations/evallist.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [insert](declarations/insert.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [sort](declarations/sort.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mergeIdem](declarations/mergeidem.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [removeNeutrals](declarations/removeneutrals.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [norm](declarations/norm.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [List.two_step_induction](declarations/list-two-step-induction.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Context.mergeIdem_nonEmpty](declarations/context-mergeidem-nonempty.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Context.mergeIdem_head](declarations/context-mergeidem-head.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Context.mergeIdem_head2](declarations/context-mergeidem-head2.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Context.evalList_mergeIdem](declarations/context-evallist-mergeidem.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [insert_nonEmpty](declarations/insert-nonempty.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Context.sort_loop_nonEmpty](declarations/context-sort-loop-nonempty.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Context.evalList_insert](declarations/context-evallist-insert.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Context.evalList_sort_congr](declarations/context-evallist-sort-congr.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Context.evalList_sort_loop_swap](declarations/context-evallist-sort-loop-swap.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Context.evalList_sort_cons](declarations/context-evallist-sort-cons.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Context.evalList_sort](declarations/context-evallist-sort.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Context.toList_nonEmpty](declarations/context-tolist-nonempty.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Context.unwrap_isNeutral](declarations/context-unwrap-isneutral.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Context.evalList_removeNeutrals](declarations/context-evallist-removeneutrals.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Context.evalList_append](declarations/context-evallist-append.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Context.eval_toList](declarations/context-eval-tolist.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Context.eval_norm](declarations/context-eval-norm.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Context.eq_of_norm](declarations/context-eq-of-norm.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48a593050d8b77cf4388442a14ad318fcf04042986b209b79b1c8b2ec0832a2f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
