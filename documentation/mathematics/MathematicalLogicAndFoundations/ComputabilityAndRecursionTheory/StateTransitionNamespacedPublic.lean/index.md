# State Transition Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdec1b827e32b23b3973527c3038855fcb07c371`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/StateTransitionNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [eval](declarations/eval.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Reaches](declarations/reaches-source-edition-2.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Reaches₁](declarations/reaches.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [reaches₁_eq](declarations/reaches-eq.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [reaches_total](declarations/reaches-total.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [reaches₁_fwd](declarations/reaches-fwd.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Reaches₀](declarations/reaches-source-edition-3.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Reaches₀.trans](declarations/reaches-trans.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Reaches₀.refl](declarations/reaches-refl.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Reaches₀.single](declarations/reaches-single.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Reaches₀.head](declarations/reaches-head.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Reaches₀.tail](declarations/reaches-tail.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [reaches₀_eq](declarations/reaches-eq-source-edition-2.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Reaches₁.to₀](declarations/reaches-to-source-edition-2.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Reaches.to₀](declarations/reaches-to.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Reaches₀.tail'](declarations/reaches-tail-source-edition-2.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [evalInduction](declarations/evalinduction.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_eval](declarations/mem-eval.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval_maximal₁](declarations/eval-maximal-source-edition-2.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eval_maximal](declarations/eval-maximal.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [reaches_eval](declarations/reaches-eval.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Respects](declarations/respects.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [tr_reaches₁](declarations/tr-reaches.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tr_reaches](declarations/tr-reaches-source-edition-2.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [tr_reaches_rev](declarations/tr-reaches-rev.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [tr_eval](declarations/tr-eval.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [tr_eval_rev](declarations/tr-eval-rev.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [tr_eval_dom](declarations/tr-eval-dom.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [FRespects](declarations/frespects.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [frespects_eq](declarations/frespects-eq.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fun_respects](declarations/fun-respects.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tr_eval'](declarations/tr-eval-source-edition-2.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [EvalsTo](declarations/evalsto.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [EvalsToInTime](declarations/evalstointime.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [EvalsTo.refl](declarations/evalsto-refl.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [EvalsTo.trans](declarations/evalsto-trans.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [EvalsToInTime.refl](declarations/evalstointime-refl.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [EvalsToInTime.trans](declarations/evalstointime-trans.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12125adc0f3e03da064ed85f15b4a48a033b1bc8f8f6e1347532fcd5f31d0bab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
