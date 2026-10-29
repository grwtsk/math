# Predictive Representation

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variant260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db071a14662a4192c3a2779b9f8ce5eb411bdec3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/PredictiveRepresentation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PredictiveRepresentation](declarations/predictiverepresentation.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [run](declarations/run.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [run_nil](declarations/run-nil.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [run_cons](declarations/run-cons.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [encode_run](declarations/encode-run.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [read_run_encode](declarations/read-run-encode.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [encode_eq_implies_causalEquivalent](declarations/encode-eq-implies-causalequivalent.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [EffectiveMemory](declarations/effectivememory.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [toEffectiveMemory](declarations/toeffectivememory.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toEffectiveMemory_surjective](declarations/toeffectivememory-surjective.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [effectiveStep](declarations/effectivestep.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [effectiveRead](declarations/effectiveread.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [effectiveStep_toEffectiveMemory](declarations/effectivestep-toeffectivememory.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [effectiveRead_toEffectiveMemory](declarations/effectiveread-toeffectivememory.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [effectiveToCausal](declarations/effectivetocausal.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [effectiveToCausal_toEffectiveMemory](declarations/effectivetocausal-toeffectivememory.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [effectiveToCausal_surjective](declarations/effectivetocausal-surjective.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [effectiveToCausal_step](declarations/effectivetocausal-step.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [effectiveToCausal_read](declarations/effectivetocausal-read.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [effectiveToCausal_unique](declarations/effectivetocausal-unique.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [causalState_terminal](declarations/causalstate-terminal.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Exact](declarations/exact.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [effectiveToCausal_injective_of_exact](declarations/effectivetocausal-injective-of-exact.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [effectiveMemoryEquivCausalState](declarations/effectivememoryequivcausalstate.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [card_causalState_le_effectiveMemory](declarations/card-causalstate-le-effectivememory.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [card_effectiveMemory_le_memory](declarations/card-effectivememory-le-memory.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [card_causalState_le_memory](declarations/card-causalstate-le-memory.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [card_causalState_le_memory_of_finite_memory](declarations/card-causalstate-le-memory-of-finite-memory.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [card_causalState_le_memory_of_finite_state](declarations/card-causalstate-le-memory-of-finite-state.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [natCard_causalState_le_memory](declarations/natcard-causalstate-le-memory.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44d6cc7a4b90db55a1587aa3fc8c7cbaa93671d7f55e1baa6f6b5fb9daf0ba61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variant260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
