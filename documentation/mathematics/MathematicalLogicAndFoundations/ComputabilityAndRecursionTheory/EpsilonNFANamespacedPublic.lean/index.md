# Epsilon NFANamespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b067fe8080cd161b9bda38a2777062ab3f2a8310`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/EpsilonNFANamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [εNFA](declarations/nfa.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [MemεClosure](declarations/mem-closure.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [εClosure](declarations/closure.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [subset_εClosure](declarations/subset-closure.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [εClosure.base](declarations/closure-base.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mem_εClosure_of_mem_step](declarations/mem-closure-of-mem-step.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [εClosure.step](declarations/closure-step.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [εClosure_induction](declarations/closure-induction.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [εClosure_min](declarations/closure-min.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [εClosure_empty](declarations/closure-empty.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [εClosure_univ](declarations/closure-univ.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_εClosure_iff_exists](declarations/mem-closure-iff-exists.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stepSet](declarations/stepset.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_stepSet_iff](declarations/mem-stepset-iff.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [stepSet_empty](declarations/stepset-empty.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [evalFrom](declarations/evalfrom.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [evalFrom_empty](declarations/evalfrom-empty.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_evalFrom_iff_exists](declarations/mem-evalfrom-iff-exists.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [eval](declarations/eval.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eval_nil](declarations/eval-nil.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval_singleton](declarations/eval-singleton.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [accepts](declarations/accepts.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `inductive` | [IsPath](declarations/ispath.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isPath_nil](declarations/ispath-nil.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isPath_singleton](declarations/ispath-singleton.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isPath_append](declarations/ispath-append.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_εClosure_iff_exists_path](declarations/mem-closure-iff-exists-path.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_evalFrom_iff_exists_path](declarations/mem-evalfrom-iff-exists-path.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_accepts_iff_exists_path](declarations/mem-accepts-iff-exists-path.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [toNFA](declarations/tonfa.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toNFA_correct](declarations/tonfa-correct.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [pumping_lemma](declarations/pumping-lemma.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [toεNFA](declarations/to-nfa.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toεNFA_εClosure](declarations/to-nfa-closure.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toεNFA_evalFrom_match](declarations/to-nfa-evalfrom-match.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toεNFA_correct](declarations/to-nfa-correct.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [step_zero](declarations/step-zero.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [step_one](declarations/step-one.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [start_zero](declarations/start-zero.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [start_one](declarations/start-one.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [accept_zero](declarations/accept-zero.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [accept_one](declarations/accept-one.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65a379bd61875fdb866dd210e0a898bd5052be8aaced49027bb55252bfb9d6ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
