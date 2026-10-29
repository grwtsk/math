# Reductive Selection Trace

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `424d0f329c544ca93442543d989b78ece746a8be`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [foldStageResults](declarations/foldstageresults.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [foldStageResults_subset](declarations/foldstageresults-subset.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [StageResultChain](declarations/stageresultchain.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [executeReductiveStages](declarations/executereductivestages.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [executeReductiveStages_stage_order](declarations/executereductivestages-stage-order.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [executeReductiveStages_configured_order](declarations/executereductivestages-configured-order.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [executeReductiveStages_chain](declarations/executereductivestages-chain.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [stageResultChain_after_prefix](declarations/stageresultchain-after-prefix.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [stageResultChain_adjacent](declarations/stageresultchain-adjacent.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [ReductiveSiteSelectionTrace](declarations/reductivesiteselectiontrace.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [ofStages](declarations/ofstages.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [final_subset_initial](declarations/final-subset-initial.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [initial_candidates_not_truncated](declarations/initial-candidates-not-truncated.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [initial_stage_inputs_exact](declarations/initial-stage-inputs-exact.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [consecutive_stage_inputs_exact](declarations/consecutive-stage-inputs-exact.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [executed_stage_configurations_are_root_policy](declarations/executed-stage-configurations-are-root-policy.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [executed_stage_configuration_enabled](declarations/executed-stage-configuration-enabled.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [executed_stage_exact_policy_binding](declarations/executed-stage-exact-policy-binding.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [unknown_sites_retained](declarations/unknown-sites-retained.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [blocked_sites_retained](declarations/blocked-sites-retained.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [external_sites_retained](declarations/external-sites-retained.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [conflicted_sites_retained](declarations/conflicted-sites-retained.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [attention_sites_retained](declarations/attention-sites-retained.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [excluded_site_has_certificate](declarations/excluded-site-has-certificate.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [stage_order_is_configured_order](declarations/stage-order-is-configured-order.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [stage_order_is_root_policy_order](declarations/stage-order-is-root-policy-order.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [deterministic](declarations/deterministic.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [evaluate](declarations/evaluate.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [runtime_order_independent](declarations/runtime-order-independent.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [cache_state_independent](declarations/cache-state-independent.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [no_site_reentry](declarations/no-site-reentry.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [ValidForConfiguration](declarations/validforconfiguration.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [changed_config_invalidates_trace](declarations/changed-config-invalidates-trace.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [changed_registry_invalidates_trace](declarations/changed-registry-invalidates-trace.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e63b729e20fd4f14714e426bb87d3269e8733bf8d6ca74d4dc5277a223413529 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
