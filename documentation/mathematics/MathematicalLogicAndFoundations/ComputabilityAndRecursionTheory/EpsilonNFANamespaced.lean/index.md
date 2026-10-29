# Epsilon NFANamespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4b69f7c1b3e754ecde5a8f4bac55371a271ae59`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/EpsilonNFANamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [εNFA](declarations/nfa.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [εClosure](declarations/closure.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [subset_εClosure](declarations/subset-closure.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [εClosure_empty](declarations/closure-empty.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [εClosure_univ](declarations/closure-univ.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_εClosure_iff_exists](declarations/mem-closure-iff-exists.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [stepSet](declarations/stepset.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_stepSet_iff](declarations/mem-stepset-iff.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [stepSet_empty](declarations/stepset-empty.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [evalFrom](declarations/evalfrom.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [evalFrom_empty](declarations/evalfrom-empty.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_evalFrom_iff_exists](declarations/mem-evalfrom-iff-exists.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [eval](declarations/eval.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eval_nil](declarations/eval-nil.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eval_singleton](declarations/eval-singleton.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [accepts](declarations/accepts.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [IsPath](declarations/ispath.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isPath_nil](declarations/ispath-nil.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isPath_singleton](declarations/ispath-singleton.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isPath_append](declarations/ispath-append.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_εClosure_iff_exists_path](declarations/mem-closure-iff-exists-path.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_evalFrom_iff_exists_path](declarations/mem-evalfrom-iff-exists-path.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_accepts_iff_exists_path](declarations/mem-accepts-iff-exists-path.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toNFA](declarations/tonfa.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toNFA_correct](declarations/tonfa-correct.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pumping_lemma](declarations/pumping-lemma.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [toεNFA](declarations/to-nfa.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toεNFA_εClosure](declarations/to-nfa-closure.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toεNFA_evalFrom_match](declarations/to-nfa-evalfrom-match.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toεNFA_correct](declarations/to-nfa-correct.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [step_zero](declarations/step-zero.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [step_one](declarations/step-one.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [start_zero](declarations/start-zero.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [start_one](declarations/start-one.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [accept_zero](declarations/accept-zero.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [accept_one](declarations/accept-one.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ff966600266c5da14fd39ca8e6e55a4294a468e7710339d4f3ae77982533bfc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
