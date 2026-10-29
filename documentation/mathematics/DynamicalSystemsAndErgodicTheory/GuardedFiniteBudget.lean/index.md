# Guarded Finite Budget

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d3f4f339e079b69883fca2ed763e26109b3bfd8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ControllerPolicy](declarations/controllerpolicy.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [EffectReceipt](declarations/effectreceipt.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [ControllerState](declarations/controllerstate.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ControllerProposal](declarations/controllerproposal.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ReceiptValid](declarations/receiptvalid.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Safe](declarations/safe.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [initialState](declarations/initialstate.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [initial_state_safe](declarations/initial-state-safe.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [Guard](declarations/guard.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [update](declarations/update.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [GuardedStep](declarations/guardedstep.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [update_source](declarations/update-source.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [update_issued_mono](declarations/update-issued-mono.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [update_verified_mono](declarations/update-verified-mono.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [update_retains_pending](declarations/update-retains-pending.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [guard_preserves_safe](declarations/guard-preserves-safe.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [guarded_step_safe](declarations/guarded-step-safe.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [GuardedSteps](declarations/guardedsteps.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [GuardedReachable](declarations/guardedreachable.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [guarded_steps_safe](declarations/guarded-steps-safe.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [reachable_safe](declarations/reachable-safe.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [guarded_steps_issued_mono](declarations/guarded-steps-issued-mono.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [guarded_steps_verified_mono](declarations/guarded-steps-verified-mono.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [guarded_steps_retain_pending](declarations/guarded-steps-retain-pending.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [reachable_obligation_retention](declarations/reachable-obligation-retention.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [guarded_steps_source](declarations/guarded-steps-source.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [guarded_steps_lift](declarations/guarded-steps-lift.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [guarded_steps_checkpoint](declarations/guarded-steps-checkpoint.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [guarded_steps_receipts_append](declarations/guarded-steps-receipts-append.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [guarded_steps_budget](declarations/guarded-steps-budget.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [guarded_steps_length_le_budget](declarations/guarded-steps-length-le-budget.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [no_infinite_guarded_trajectory](declarations/no-infinite-guarded-trajectory.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [unproved_obligation_blocks](declarations/unproved-obligation-blocks.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [unauthenticated_effect_blocks](declarations/unauthenticated-effect-blocks.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [unauthorized_effect_blocks](declarations/unauthorized-effect-blocks.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [forbidden_surface_blocks](declarations/forbidden-surface-blocks.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [changed_source_blocks](declarations/changed-source-blocks.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [exhausted_budget_blocks](declarations/exhausted-budget-blocks.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=123e64d5a3dc7f587333af36be4b4834c9553e11619248df1882ecc107d7468d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean","GRWTSK/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
