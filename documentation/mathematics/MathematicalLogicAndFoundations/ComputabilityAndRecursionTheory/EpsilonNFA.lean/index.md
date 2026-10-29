# Epsilon NFA

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95a1f0eec660288cb8962eaab6391c789c29ee50`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/EpsilonNFA.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [εNFA](declarations/nfa.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [εClosure](declarations/closure.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [subset_εClosure](declarations/subset-closure.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [εClosure_empty](declarations/closure-empty.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [εClosure_univ](declarations/closure-univ.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_εClosure_iff_exists](declarations/mem-closure-iff-exists.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [stepSet](declarations/stepset.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_stepSet_iff](declarations/mem-stepset-iff.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [stepSet_empty](declarations/stepset-empty.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [evalFrom](declarations/evalfrom.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [evalFrom_empty](declarations/evalfrom-empty.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_evalFrom_iff_exists](declarations/mem-evalfrom-iff-exists.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [eval](declarations/eval.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eval_nil](declarations/eval-nil.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eval_singleton](declarations/eval-singleton.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [accepts](declarations/accepts.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [IsPath](declarations/ispath.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isPath_nil](declarations/ispath-nil.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isPath_singleton](declarations/ispath-singleton.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isPath_append](declarations/ispath-append.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_εClosure_iff_exists_path](declarations/mem-closure-iff-exists-path.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_evalFrom_iff_exists_path](declarations/mem-evalfrom-iff-exists-path.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_accepts_iff_exists_path](declarations/mem-accepts-iff-exists-path.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toNFA](declarations/tonfa.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toNFA_correct](declarations/tonfa-correct.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pumping_lemma](declarations/pumping-lemma.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [toεNFA](declarations/to-nfa.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toεNFA_εClosure](declarations/to-nfa-closure.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toεNFA_evalFrom_match](declarations/to-nfa-evalfrom-match.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toεNFA_correct](declarations/to-nfa-correct.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [step_zero](declarations/step-zero.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [step_one](declarations/step-one.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [start_zero](declarations/start-zero.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [start_one](declarations/start-one.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [accept_zero](declarations/accept-zero.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [accept_one](declarations/accept-one.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b66ad4b20e50d6e3712d7bdd47d93e7cbf4a2a4d7d2647430e7988ae6b2b7e05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
