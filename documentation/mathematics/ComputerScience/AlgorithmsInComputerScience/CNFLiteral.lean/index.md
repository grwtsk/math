# CNFLiteral

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e7f0474cdb9cd11bf64cc7e8fe3e134524f6b10`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/CNFLiteral.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Literal](declarations/literal-source-edition-2.md) | 12 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Clause](declarations/clause.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Literal.eval](declarations/literal-eval.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Literal.toFormula](declarations/literal-toformula.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Literal.eval_toFormula](declarations/literal-eval-toformula.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Clause.eval](declarations/clause-eval.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Clause.toFormula](declarations/clause-toformula.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Clause.eval_toFormula](declarations/clause-eval-toformula.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [CNF](declarations/cnf.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [evalClauses](declarations/evalclauses.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [clausesToFormula](declarations/clausestoformula.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [eval](declarations/eval.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toFormula](declarations/toformula.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [evalClauses_toFormula](declarations/evalclauses-toformula.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eval_toFormula](declarations/eval-toformula.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [truth](declarations/truth.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [falsum](declarations/falsum.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [literal](declarations/literal.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [conj](declarations/conj.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [disjoinClauses](declarations/disjoinclauses.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [disj](declarations/disj.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Clause.eval_append](declarations/clause-eval-append.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [evalClauses_append](declarations/evalclauses-append.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [evalClauses_map_append_left](declarations/evalclauses-map-append-left.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eval_disjoinClauses](declarations/eval-disjoinclauses.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eval_truth](declarations/eval-truth.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval_falsum](declarations/eval-falsum.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [eval_literal](declarations/eval-literal.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eval_conj](declarations/eval-conj.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eval_disj](declarations/eval-disj.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [toCNF](declarations/tocnf.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [negToCNF](declarations/negtocnf.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [eval_toCNF_and_negToCNF](declarations/eval-tocnf-and-negtocnf.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [eval_toCNF](declarations/eval-tocnf.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eval_negToCNF](declarations/eval-negtocnf.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7315eae2a3a2974ca6c3f081a99f96cca5e74a050198d148075937c21ffed6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
