# Globally Anchored Window Diffusion

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant28c2532dcb4dd3d27ffe46b4fbb4513e3d8f0a3be29afeace394013a8b377200.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d637a1d37deb6062ae114c55c2a4f3f5b7045301`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GloballyAnchoredWindowDiffusion.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WindowLinearOperators](declarations/windowlinearoperators.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [AnchoredWindowFusion](declarations/anchoredwindowfusion.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofCores](declarations/ofcores.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [localOperators](declarations/localoperators.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [localOperator_apply_twice](declarations/localoperator-apply-twice.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [fusedWindowNumerator](declarations/fusedwindownumerator.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [fusedWindowOperator](declarations/fusedwindowoperator.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [fusedWindowLinear](declarations/fusedwindowlinear.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [operator](declarations/operator.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [operator_apply](declarations/operator-apply.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [operator_add](declarations/operator-add.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [operator_smul](declarations/operator-smul.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [query](declarations/query.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [query_eq_restriction](declarations/query-eq-restriction.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [orderedWindowInput](declarations/orderedwindowinput.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [orderedWindowInput_eq_snapshot_restriction](declarations/orderedwindowinput-eq-snapshot-restriction.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [orderedWindowNumerator](declarations/orderedwindownumerator.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [orderedWindowNumerator_eq_fused](declarations/orderedwindownumerator-eq-fused.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [orderedTimestep](declarations/orderedtimestep.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [orderedTimestep_eq_operator](declarations/orderedtimestep-eq-operator.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [orderedTimestep_order_independent](declarations/orderedtimestep-order-independent.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [WindowTimestepSchedule](declarations/windowtimestepschedule.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [window_input_eq_prior_snapshot](declarations/window-input-eq-prior-snapshot.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [state_succ_eq_operator](declarations/state-succ-eq-operator.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [alternative_order_eq_next_state](declarations/alternative-order-eq-next-state.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [fusedWindowLinear_apply](declarations/fusedwindowlinear-apply.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [fusedWindowQuery](declarations/fusedwindowquery.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [fusedWindowQuery_eq_restriction](declarations/fusedwindowquery-eq-restriction.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [GlobalWindowInvolutionCertificate](declarations/globalwindowinvolutioncertificate.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [apply_twice](declarations/apply-twice.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f31e22c4be4f72d9ca4ab96c1153bbf159fee996b17b852d80a14fd991129bf1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant28c2532dcb4dd3d27ffe46b4fbb4513e3d8f0a3be29afeace394013a8b377200.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
