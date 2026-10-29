# NFA

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a089b6d03ee441f5680e31f264248aeeb1e8e43`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFA.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NFA](declarations/nfa.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [stepSet](declarations/stepset.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_stepSet](declarations/mem-stepset.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [stepSet_empty](declarations/stepset-empty.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [evalFrom](declarations/evalfrom.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [eval](declarations/eval.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eval_nil](declarations/eval-nil.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eval_singleton](declarations/eval-singleton.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [accepts](declarations/accepts.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_accepts](declarations/mem-accepts.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [toDFA](declarations/todfa.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toDFA_correct](declarations/todfa-correct.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pumping_lemma](declarations/pumping-lemma.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [toNFA](declarations/tonfa.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toNFA_correct](declarations/tonfa-correct.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [reverse](declarations/reverse.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [reverse_reverse](declarations/reverse-reverse.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [disjoint_stepSet_reverse](declarations/disjoint-stepset-reverse.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [disjoint_evalFrom_reverse](declarations/disjoint-evalfrom-reverse.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [disjoint_evalFrom_reverse_iff](declarations/disjoint-evalfrom-reverse-iff.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_accepts_reverse](declarations/mem-accepts-reverse.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsRegular.reverse](declarations/isregular-reverse.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsRegular.of_reverse](declarations/isregular-of-reverse.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isRegular_reverse_iff](declarations/isregular-reverse-iff.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb8837df9e720bc152a1d4a0e831f9fb70e4bb2ee6c52de4ac1b3ceaab80a01f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
