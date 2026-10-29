# NFANamespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantd536c82b356995d1eb62a849c7c16d631da47b684a710ed0500b8cb56f3559ab.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9aa8c80ce31387ead641d9c2750f6e971243ce41`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFANamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NFA](declarations/nfa.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [stepSet](declarations/stepset.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_stepSet](declarations/mem-stepset.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [stepSet_empty](declarations/stepset-empty.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [evalFrom](declarations/evalfrom.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [eval](declarations/eval.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eval_nil](declarations/eval-nil.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eval_singleton](declarations/eval-singleton.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [accepts](declarations/accepts.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_accepts](declarations/mem-accepts.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [toDFA](declarations/todfa.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toDFA_correct](declarations/todfa-correct.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pumping_lemma](declarations/pumping-lemma.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [toNFA](declarations/tonfa.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toNFA_correct](declarations/tonfa-correct.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [reverse](declarations/reverse.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [reverse_reverse](declarations/reverse-reverse.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [disjoint_stepSet_reverse](declarations/disjoint-stepset-reverse.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [disjoint_evalFrom_reverse](declarations/disjoint-evalfrom-reverse.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [disjoint_evalFrom_reverse_iff](declarations/disjoint-evalfrom-reverse-iff.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_accepts_reverse](declarations/mem-accepts-reverse.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsRegular.reverse](declarations/isregular-reverse.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsRegular.of_reverse](declarations/isregular-of-reverse.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isRegular_reverse_iff](declarations/isregular-reverse-iff.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f227567189d0d610e3958df0dddcc14f3f232fbf8fb1e2f0c0eb584c650b53a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantd536c82b356995d1eb62a849c7c16d631da47b684a710ed0500b8cb56f3559ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
