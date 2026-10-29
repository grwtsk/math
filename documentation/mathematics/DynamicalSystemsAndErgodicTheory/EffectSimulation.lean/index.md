# Effect Simulation

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DynamicalSystems/TransitionSystems/EffectSimulation.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bec971c7707b5ba49d8c73574a3d25790f0292fc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [System](declarations/system.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [Trace](declarations/trace.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Reachable](declarations/reachable.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [initial_reachable](declarations/initial-reachable.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Trace.snoc](declarations/trace-snoc.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [reachable_step](declarations/reachable-step.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Simulation](declarations/simulation.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Simulation.trace_correspondence](declarations/simulation-trace-correspondence.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Simulation.reachable_correspondence](declarations/simulation-reachable-correspondence.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [EffectsSafe](declarations/effectssafe.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [PolicyBridge](declarations/policybridge.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Simulation.transfers_effect_safety](declarations/simulation-transfers-effect-safety.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [RelComp](declarations/relcomp.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Simulation.comp](declarations/simulation-comp.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Simulation.identity](declarations/simulation-identity.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `inductive` | [State](declarations/state.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [Label](declarations/label.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [concrete](declarations/concrete.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [absentAbstract](declarations/absentabstract.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [silentAbstract](declarations/silentabstract.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isEffect](declarations/iseffect.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [concrete_effect](declarations/concrete-effect.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [absent_abstract_safe](declarations/absent-abstract-safe.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [silent_abstract_safe](declarations/silent-abstract-safe.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [concrete_not_safe](declarations/concrete-not-safe.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [no_simulation_to_absent](declarations/no-simulation-to-absent.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [no_simulation_to_silent](declarations/no-simulation-to-silent.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db58903626915f55c582402d115ef017e02fedc65cc41de91b9833442979e3fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/EffectSimulation.lean","GRWTSK/DynamicalSystems/TransitionSystems/EffectSimulation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
