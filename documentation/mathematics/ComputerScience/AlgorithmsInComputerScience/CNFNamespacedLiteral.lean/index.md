# CNFNamespaced Literal

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bd7d1e2cf0af415589435c2b71a17ead5cf7c23`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/CNFNamespacedLiteral.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Literal](declarations/literal-source-edition-2.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Clause](declarations/clause.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Literal.eval](declarations/literal-eval.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Literal.toFormula](declarations/literal-toformula.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Literal.eval_toFormula](declarations/literal-eval-toformula.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Clause.eval](declarations/clause-eval.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Clause.toFormula](declarations/clause-toformula.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Clause.eval_toFormula](declarations/clause-eval-toformula.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [CNF](declarations/cnf.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [evalClauses](declarations/evalclauses.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [clausesToFormula](declarations/clausestoformula.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [eval](declarations/eval.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toFormula](declarations/toformula.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [evalClauses_toFormula](declarations/evalclauses-toformula.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eval_toFormula](declarations/eval-toformula.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [truth](declarations/truth.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [falsum](declarations/falsum.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [literal](declarations/literal.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [conj](declarations/conj.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [disjoinClauses](declarations/disjoinclauses.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [disj](declarations/disj.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Clause.eval_append](declarations/clause-eval-append.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [evalClauses_append](declarations/evalclauses-append.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [evalClauses_map_append_left](declarations/evalclauses-map-append-left.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eval_disjoinClauses](declarations/eval-disjoinclauses.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eval_truth](declarations/eval-truth.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval_falsum](declarations/eval-falsum.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [eval_literal](declarations/eval-literal.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eval_conj](declarations/eval-conj.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eval_disj](declarations/eval-disj.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [toCNF](declarations/tocnf.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [negToCNF](declarations/negtocnf.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [eval_toCNF_and_negToCNF](declarations/eval-tocnf-and-negtocnf.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [eval_toCNF](declarations/eval-tocnf.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eval_negToCNF](declarations/eval-negtocnf.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e652c72e58710d43c41a3a8ab6f46bd16541a1cafad3586e7aa7452b6e6ae032 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
