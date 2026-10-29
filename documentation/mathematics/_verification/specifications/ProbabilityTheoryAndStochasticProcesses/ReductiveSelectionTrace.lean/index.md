# Verification target: Reductive Selection Trace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "424d0f329c544ca93442543d989b78ece746a8be",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `424d0f329c544ca93442543d989b78ece746a8be`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.ReductiveSiteSelection` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [foldStageResults](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/foldstageresults.md) | 17 | `declaration-track:c394df6e193feba904d8f24af501a79bee9efd054d42247c3a980a52f9e59e3f` |
| 2 | `theorem` | [foldStageResults_subset](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/foldstageresults-subset.md) | 27 | `result-track:965ab123b0bae53a3fc8c9332cb8365a28c82a4081e7accf483010ae6f909583` |
| 3 | `def` | [StageResultChain](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/stageresultchain.md) | 45 | `declaration-track:085d0a574376212edde7c931d932b004ad76c01ede9b3f4bed85c1741a45e0d1` |
| 4 | `def` | [executeReductiveStages](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/executereductivestages.md) | 59 | `declaration-track:b9e0c96db843b7febc826f5e17f4bbd596729e1ada9d014b30aa6b2151ea7528` |
| 5 | `theorem` | [executeReductiveStages_stage_order](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/executereductivestages-stage-order.md) | 79 | `result-track:9f3c5af2220c26d2f22b3550ab35f849e5f84b33370053e4ee7404d4d982bfbb` |
| 6 | `theorem` | [executeReductiveStages_configured_order](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/executereductivestages-configured-order.md) | 102 | `result-track:0857ee10f1d063f0562a04015758c685a5d102f7ca37b7b9507a4876d5506044` |
| 7 | `theorem` | [executeReductiveStages_chain](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/executereductivestages-chain.md) | 124 | `result-track:cf7f66f79f28c970456e558052186883ebe75b3bdff2a18921790e5029efbee3` |
| 8 | `theorem` | [stageResultChain_after_prefix](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/stageresultchain-after-prefix.md) | 147 | `result-track:5b100fbbc2cf917b31900a57ce2864d519cf6be4a2cd3249198ee0f7211f7779` |
| 9 | `theorem` | [stageResultChain_adjacent](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/stageresultchain-adjacent.md) | 164 | `result-track:2316ab36b371d15dd7acaa59ea0cabb9067365be02b0702ae3efc83e944cbac8` |
| 10 | `structure` | [ReductiveSiteSelectionTrace](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/reductivesiteselectiontrace.md) | 183 | `declaration-track:a298bb38aad5f1e00c70932ac1733563774dae20557b0f14f5410a0a72643c40` |
| 11 | `def` | [ofStages](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/ofstages.md) | 227 | `declaration-track:a8c9a7ca1127423e6bb320918615d962171590609b0e064ea9598cd45f21e62e` |
| 12 | `theorem` | [final_subset_initial](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/final-subset-initial.md) | 285 | `result-track:71c1d3f2667222b8bf850d10d13889361d44bc40cc7ca7971fd13f3cbcfee9d2` |
| 13 | `theorem` | [initial_candidates_not_truncated](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/initial-candidates-not-truncated.md) | 295 | `result-track:902c1fe394992e823d9b3d2b9de86945eeba8f0e304f9d94a10b92f5fedbf3e5` |
| 14 | `theorem` | [initial_stage_inputs_exact](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/initial-stage-inputs-exact.md) | 304 | `result-track:1cd41558d4f789f8077493ce6c94d1281b51e7105a2749dc47bb0adb65842030` |
| 15 | `theorem` | [consecutive_stage_inputs_exact](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/consecutive-stage-inputs-exact.md) | 319 | `result-track:23365dbfaabfbc2141d8cf04c5e03e98d54fb9d239efca95f73d8b53e4d97b84` |
| 16 | `theorem` | [executed_stage_configurations_are_root_policy](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/executed-stage-configurations-are-root-policy.md) | 334 | `result-track:444dbad489b1cf0d674c82277ffe8a7c94fc395a06268d398410c73f34ca27ad` |
| 17 | `theorem` | [executed_stage_configuration_enabled](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/executed-stage-configuration-enabled.md) | 344 | `result-track:9afdfeeefe81b0dae4a5733a40069d376c5285ded6afa4cddf4c1ff45fd9727e` |
| 18 | `theorem` | [executed_stage_exact_policy_binding](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/executed-stage-exact-policy-binding.md) | 363 | `result-track:0dfc8779dc674b9c96042bad15dc5fb3ff2c725a1413e38dced7a977ed258444` |
| 19 | `theorem` | [unknown_sites_retained](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/unknown-sites-retained.md) | 379 | `result-track:08c9bfa70c815cb58996cbd7f43d9b50e2e00817806bc0501613e0b5f65b9202` |
| 20 | `theorem` | [blocked_sites_retained](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/blocked-sites-retained.md) | 390 | `result-track:5ad0e168b34f6c80db3c932566a06765c2acd901d6374c2087fc316601877798` |
| 21 | `theorem` | [external_sites_retained](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/external-sites-retained.md) | 401 | `result-track:a7018d30285f60b10ef9b1b8333a74c758d17f213a7e8535b67ae991b3d4a4aa` |
| 22 | `theorem` | [conflicted_sites_retained](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/conflicted-sites-retained.md) | 412 | `result-track:3d3cd4e0bc33ed15adcdf9cc0966eecaab2c3b4a0205aeb1f2aa627949c19580` |
| 23 | `theorem` | [attention_sites_retained](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/attention-sites-retained.md) | 423 | `result-track:48e345979bc965a58f13a8f47b086596130844fd74cadc0beffa628a09b40f20` |
| 24 | `theorem` | [excluded_site_has_certificate](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/excluded-site-has-certificate.md) | 434 | `result-track:ea5d9bbf8eedd74f3bc302eb2ca2fde6a1335cbd64e72fe0713cf8aaa32523a7` |
| 25 | `theorem` | [stage_order_is_configured_order](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/stage-order-is-configured-order.md) | 447 | `result-track:420892d34bc49b41a6198bf7a682135b105e70c9264b2d82f86c4c470d28dbc3` |
| 26 | `theorem` | [stage_order_is_root_policy_order](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/stage-order-is-root-policy-order.md) | 457 | `result-track:4ccb1c2319053fa40e56d719f71aacb5e0b8b6807974e79c09fb79a3c37fc54f` |
| 27 | `theorem` | [deterministic](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/deterministic.md) | 467 | `result-track:c6d2226f5ba3e545e75fe9122e39540c184dd9f4910671d0b6ddc5869adb6b42` |
| 28 | `def` | [evaluate](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/evaluate.md) | 477 | `declaration-track:b62e3fcba23d61ed1c9db19ae536a1542d85e63e4b1ec9d6f3ba306004eb4c78` |
| 29 | `theorem` | [runtime_order_independent](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/runtime-order-independent.md) | 486 | `result-track:d6e8e09b284d998b1f016ede35e40ab0bdcc7ca6b02ffef77adc1094d08c55e5` |
| 30 | `theorem` | [cache_state_independent](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/cache-state-independent.md) | 496 | `result-track:a3a861d5d01122b1b571886819812716dd98c53bf6d625f20aa2cb55564a8cde` |
| 31 | `theorem` | [no_site_reentry](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/no-site-reentry.md) | 506 | `result-track:9d3d09540b7380caf9f4be9f231ade7dfdca18e2cc219e5172da646213033147` |
| 32 | `def` | [ValidForConfiguration](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/validforconfiguration.md) | 522 | `declaration-track:73b7958250c97fe865dec14bd1f2c6efba04fe6a4b480d56384d074e94048e1f` |
| 33 | `theorem` | [changed_config_invalidates_trace](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/changed-config-invalidates-trace.md) | 534 | `result-track:936333ac4300a981a16cb9f63d2b31af1f411cbdf8decd9b2d1d288996f07420` |
| 34 | `theorem` | [changed_registry_invalidates_trace](../../../../ProbabilityTheoryAndStochasticProcesses/ReductiveSelectionTrace.lean/declarations/changed-registry-invalidates-trace.md) | 546 | `result-track:839d56beb79925a9cf813c0c11fe34cc7c616579bef97504e0d0a764bc97b90f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a08851fa5c9c126b39f4c1f89864f6cc2ef2572428de02fb12da437734223674 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
