# Epsilon NFAPublic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d3eaf24eb2109aa58c75669e9e2fe8fe9251571`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/EpsilonNFAPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [εNFA](declarations/nfa.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [MemεClosure](declarations/mem-closure.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [εClosure](declarations/closure.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [subset_εClosure](declarations/subset-closure.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [εClosure.base](declarations/closure-base.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mem_εClosure_of_mem_step](declarations/mem-closure-of-mem-step.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [εClosure.step](declarations/closure-step.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [εClosure_induction](declarations/closure-induction.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [εClosure_min](declarations/closure-min.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [εClosure_empty](declarations/closure-empty.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [εClosure_univ](declarations/closure-univ.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_εClosure_iff_exists](declarations/mem-closure-iff-exists.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stepSet](declarations/stepset.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_stepSet_iff](declarations/mem-stepset-iff.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [stepSet_empty](declarations/stepset-empty.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [evalFrom](declarations/evalfrom.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [evalFrom_empty](declarations/evalfrom-empty.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_evalFrom_iff_exists](declarations/mem-evalfrom-iff-exists.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [eval](declarations/eval.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eval_nil](declarations/eval-nil.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval_singleton](declarations/eval-singleton.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [accepts](declarations/accepts.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `inductive` | [IsPath](declarations/ispath.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isPath_nil](declarations/ispath-nil.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isPath_singleton](declarations/ispath-singleton.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isPath_append](declarations/ispath-append.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_εClosure_iff_exists_path](declarations/mem-closure-iff-exists-path.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_evalFrom_iff_exists_path](declarations/mem-evalfrom-iff-exists-path.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_accepts_iff_exists_path](declarations/mem-accepts-iff-exists-path.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [toNFA](declarations/tonfa.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toNFA_correct](declarations/tonfa-correct.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [pumping_lemma](declarations/pumping-lemma.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [toεNFA](declarations/to-nfa.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toεNFA_εClosure](declarations/to-nfa-closure.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toεNFA_evalFrom_match](declarations/to-nfa-evalfrom-match.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toεNFA_correct](declarations/to-nfa-correct.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [step_zero](declarations/step-zero.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [step_one](declarations/step-one.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [start_zero](declarations/start-zero.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [start_one](declarations/start-one.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [accept_zero](declarations/accept-zero.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [accept_one](declarations/accept-one.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a48e51a5ef64957c90992b78754c3a2f0ff04576d82d234319d724fa83bb839b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
