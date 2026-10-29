# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteInventoryAdmission

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2766654d41cae1efbcc98c39867930654a3b347e",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteInventoryAdmission.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2766654d41cae1efbcc98c39867930654a3b347e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteInventoryAdmission.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteInventoryAdmission.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OccurrenceCertificateProjection`](../../../../../ComputerScience/AlgorithmsInComputerScience/OccurrenceCertificateProjection.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExpectedSet](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/expectedset.md) | 13 | `declaration-track:62915f9c33fe91ae82d41dc0fb232221d221fb5081707d63d88031dcc592743f` |
| 2 | `structure` | [RawBatch](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/rawbatch.md) | 21 | `declaration-track:c5e480df25f857504fe28359b7f5bc48be87f48b038728330f9f96057175d869` |
| 3 | `structure` | [Mapping](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/mapping.md) | 26 | `declaration-track:7339c43bbfe293a3d2f726d9ef6b0089c1c508755b946d2a568acbc2ba5beb72` |
| 4 | `structure` | [Capture](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/capture.md) | 33 | `declaration-track:2cf136259b206551691f529fa5541474abeb2ef76d9f3b506295c14e3e8d2e42` |
| 5 | `def` | [retainedLabel](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/retainedlabel.md) | 50 | `declaration-track:315b829f50b868d52de11e9cedcecc7bdb439c0df8e3680d770f92b82eacacce` |
| 6 | `def` | [rawAt](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/rawat.md) | 53 | `declaration-track:f42747aef65f2c41a05d543bcb1e1c4878112397801a12e45fe883b14186fe41` |
| 7 | `def` | [rawRoutes](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/rawroutes.md) | 60 | `declaration-track:90634903293a4fd0e4d7e768c8a25e9d33e77090e7bcc9af77a43dca7e55a6a6` |
| 8 | `def` | [prepared](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/prepared.md) | 66 | `declaration-track:79e8d2985232e9425ad6cf3dd6f2906ed1c04bf809d4631a4d446b1b9658c227` |
| 9 | `def` | [frozen](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/frozen.md) | 69 | `declaration-track:b22aff6ddf5ebd24b6a74396c74349ea552eeaa201e003107628332cad4125b0` |
| 10 | `def` | [CanonicalFileMaps](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/canonicalfilemaps.md) | 76 | `declaration-track:0c09fe79ae408a03d81137c970c00c60a641be9e183f8a46aa5612b8f9abd6b7` |
| 11 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/instance-source-edition-2.md) | 79 | `declaration-track:b9aa4d1e5e2a30d7db742f6643a31f1c6fa6010ac6e895a390c9e60417f811eb` |
| 12 | `def` | [AdjacentSorted](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/adjacentsorted.md) | 83 | `declaration-track:97d474c90505fbfdbab4c2ba49ba34cf918c2bc1810e142ca739cf83851b19a6` |
| 13 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/instance.md) | 87 | `declaration-track:8e9c22445a30b4cd1a6d1d8aca60e3c0b41f20fc956fa0e0a28d7ba267ffd8db` |
| 14 | `theorem` | [adjacent_implies_pairwise](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/adjacent-implies-pairwise.md) | 91 | `result-track:2b763d70669a728838a7de7ca815474e0363bcc941e52f5ffde698f672eae59a` |
| 15 | `theorem` | [pairwise_implies_adjacent](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/pairwise-implies-adjacent.md) | 108 | `result-track:3c20f06014c84afefb82ebe05a9c0a52c81cdb19542f1030a916c1ac6b9e209c` |
| 16 | `theorem` | [adjacent_iff_pairwise](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/adjacent-iff-pairwise.md) | 113 | `result-track:4b092b76bd7af0ccd5de39f3c07b161337ab6802b0fce9c0c5349a83ee9a3b0b` |
| 17 | `theorem` | [sorted_strings_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/sorted-strings-nodup.md) | 117 | `result-track:dc422dbfe062efe78097ee397f8449edf4c6ce6eba0c32e202f4b69a3ba4d1dd` |
| 18 | `theorem` | [canonical_key_domain_equal](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/canonical-key-domain-equal.md) | 122 | `result-track:cd6b0632f3d656861630a5c4a43857ec44b3e1878bc6638090b346430c38a4ac` |
| 19 | `def` | [captureCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/capturecheck.md) | 141 | `declaration-track:0669cdd7c5e50d5bdc8ec88f887790a9d0f5abbb70d1a5cd723cb9f1fb659507` |
| 20 | `def` | [readsetMatches](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/readsetmatches.md) | 146 | `declaration-track:a51fade42b1b8471d6f036a0afe8715d7f8c89b5556dcfcf173e1d4100d1e509` |
| 21 | `def` | [mappingCoverage](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/mappingcoverage.md) | 152 | `declaration-track:9b002cbbeeaba66a3d6cb13d4ace43913591c3cde83336da383fbb751caa2ef4` |
| 22 | `def` | [planCoverage](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/plancoverage.md) | 157 | `declaration-track:b5eb2c0f0aeb83a2f2d40bfa60509522a34e95b9f38a40a350ea28ed91d59ab6` |
| 23 | `def` | [rawRetention](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/rawretention.md) | 162 | `declaration-track:a9fc4403dcea4c15e39371d5092b0f18c2cac70d839427f486ccf99ebd8b2b7a` |
| 24 | `def` | [admissionCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/admissioncheck.md) | 168 | `declaration-track:2067e9993e5531dd425d6f2c3e3e99c3360aa4c2fc3d90448610f7525b73f82b` |
| 25 | `theorem` | [captureCheck_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/capturecheck-exact.md) | 178 | `result-track:6d5eff604eac0695ff2fd907185d21d442a3491c1c7c0722e5338a7df69d589d` |
| 26 | `theorem` | [readsetMatches_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/readsetmatches-exact.md) | 184 | `result-track:de06e2cc4247d56f24ab48d60c21de9c008bc7718fb1b5eb92ce7a04faef3bb1` |
| 27 | `theorem` | [mappingCoverage_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/mappingcoverage-exact.md) | 192 | `result-track:6b65d36bd7cfa99f1c605a5655435ba682495e6147764e2269a9ff5e56f5005d` |
| 28 | `theorem` | [planCoverage_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/plancoverage-exact.md) | 198 | `result-track:1224cb9cc8401eca6243ee734ad9cbd132f41061839021aef8e2375692dfb7a3` |
| 29 | `theorem` | [readset_domain_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/readset-domain-exact.md) | 204 | `result-track:502fe01d93498f7926ad4f7b9b3242646d6841204c8d399f266b48ee277556c6` |
| 30 | `theorem` | [mapping_coverage_ordered_keys](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/mapping-coverage-ordered-keys.md) | 216 | `result-track:1446ad9c20b527d8fab87c24774bd04e4aac6776ac629388987acdd67a514aa4` |
| 31 | `theorem` | [plan_and_capture_establish_mapping_coverage](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/plan-and-capture-establish-mapping-coverage.md) | 227 | `result-track:64983d076381b66603a997bf47c86a8e14dd5572402518b521f1f4fceab6ce5e` |
| 32 | `theorem` | [rawRetention_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/rawretention-exact.md) | 241 | `result-track:78879fd65331daa73cf9902babc736a137e617268150e3848425b758f28637f6` |
| 33 | `theorem` | [expected_label_lookup_of_unique_member](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/expected-label-lookup-of-unique-member.md) | 250 | `result-track:743a7c2f1fe57da982d1067f8d0c1a2aa5ba5dff81483b4479acb48a371970e1` |
| 34 | `theorem` | [raw_retention_from_finite_membership](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/raw-retention-from-finite-membership.md) | 269 | `result-track:3980ad1fbc78b2d084996db77774c6579eb8fe93c6ddbd03febe1356c6299c33` |
| 35 | `theorem` | [admissionCheck_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/admissioncheck-exact.md) | 281 | `result-track:8edcec8d20fa58672f4205b868234f63fbf265f4d4b34e87865fc74a7607757b` |
| 36 | `theorem` | [bounded_capture_canonical](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/bounded-capture-canonical.md) | 291 | `result-track:a8c054984270d9fbb9e2f2333701a747b6a4c3831dde6987a343d69724705f33` |
| 37 | `theorem` | [admitted_named_capture_checks](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/admitted-named-capture-checks.md) | 297 | `result-track:ad2a823e5565a38b7dd0150fda7094084610a8c850b36365127a983c00d5db32` |
| 38 | `theorem` | [admitted_all_readsets_canonical](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/admitted-all-readsets-canonical.md) | 306 | `result-track:288aaf9855e10bcf66e539ca4a047b48f739bae8cd22d2b61fbd7eafd01abf51` |
| 39 | `theorem` | [rawAt_keys](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/rawat-keys.md) | 322 | `result-track:4d635737064ace6e748895f4c05b74073e47d37989d3c67f397e0aea9f9d1118` |
| 40 | `theorem` | [prepared_keys](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/prepared-keys.md) | 327 | `result-track:f02a6b0112406784eeef44efc54328a207ff903dfcb18ff37d11d34c9d14bd50` |
| 41 | `theorem` | [rawRoutes_keys](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/rawroutes-keys.md) | 331 | `result-track:9f3051573877ea08d9593f37281a06c691a5031fe4fb2128bfc40908fdedb5a7` |
| 42 | `theorem` | [complete_source_keys_decompose](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/complete-source-keys-decompose.md) | 340 | `result-track:ae607b7777447df4b461baeeea5bccd63171297a502bc2906240c91694314f55` |
| 43 | `theorem` | [admitted_ordered_complete_source_keys](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/admitted-ordered-complete-source-keys.md) | 347 | `result-track:4ff10c36000fd66e90093ee21242557e451acf9098b846aa47783f61defd274c` |
| 44 | `theorem` | [raw_route_witness](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/raw-route-witness.md) | 358 | `result-track:86f78c2462c3b5ed014fc20f7bc169a24a49a6c0964252fc036b1bf6704b6b40` |
| 45 | `theorem` | [admitted_raw_retention](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/admitted-raw-retention.md) | 373 | `result-track:1910ae858c2c922a14ea87a3b301f5dc08ae3a96d5239222593fd6cd6679d003` |
| 46 | `theorem` | [admitted_prepared_source_only](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/admitted-prepared-source-only.md) | 400 | `result-track:11b9c7e2d5a2ddb932e15737e6230668cdb44dc9ec1b65f7aa963e0d9ac53d3a` |
| 47 | `theorem` | [admitted_mapping_origins_source](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/admitted-mapping-origins-source.md) | 406 | `result-track:550a2d6ef3b5cc3c9fede622797481643769848cba1ded50e240de828d6e8a9c` |
| 48 | `theorem` | [capture_establishes_input_admission](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/capture-establishes-input-admission.md) | 414 | `result-track:5297b54bf8081fecb055be5eb304032ea25b10681e6131b7a84411326ad8c28b` |
| 49 | `theorem` | [capture_establishes_executable_input_gate](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/capture-establishes-executable-input-gate.md) | 422 | `result-track:a2a78dc266885681378cd637422de5fe4ab17842193fa814674cf8a6f705d6af` |
| 50 | `theorem` | [capture_successful_source_contract_transports](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/capture-successful-source-contract-transports.md) | 428 | `result-track:542bfe97a175930058b01179d4a6c20a686fbfee042cfc0f133345ca0628e4fb` |
| 51 | `theorem` | [capture_successful_producer_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/capture-successful-producer-checked.md) | 437 | `result-track:63eac1bdbbda7142f85239750dc74a61dff6d47e77639bb3fd121a7f40d45438` |
| 52 | `theorem` | [capture_successful_producer_has_lean_execution](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/capture-successful-producer-has-lean-execution.md) | 445 | `result-track:816f5e195c15e3cb2469da752a80dca9a306bcf369c0a41c3c99bdeff33d2626` |
| 53 | `theorem` | [capture_successful_producer_exact_decode](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/capture-successful-producer-exact-decode.md) | 455 | `result-track:0a6721799aed2a1092469dd471939bed2baf8cca68701da645a24393751cf5dd` |
| 54 | `def` | [bindRaw](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/bindraw.md) | 468 | `declaration-track:08a1844a4e41d91f8631846e5e23730ff44663ad3489e5dd4eba6cd6fdb7f11e` |
| 55 | `theorem` | [zipRaw_projections](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/zipraw-projections.md) | 471 | `result-track:7d4110391d2777b135eb170ecd038a435aaee351ad5cbcd15975760a7830d297` |
| 56 | `theorem` | [bindRaw_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/bindraw-exact.md) | 485 | `result-track:e61d2343608f0ca402cca84f5fd12acf1a161faf794dd598e2368b5bbb695461` |
| 57 | `theorem` | [bindRaw_rejects_truncation](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/bindraw-rejects-truncation.md) | 495 | `result-track:ec29dd4069edc1cf55e15216eb06330ecf75b5d2313c1ccfb7ff5e458ca1a83f` |
| 58 | `theorem` | [bindRaw_accepts_equal_length](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/bindraw-accepts-equal-length.md) | 499 | `result-track:fa18c53b7f41587f7efc199c3774e0d6bff441252f420f0e169386b4de9a936c` |
| 59 | `theorem` | [canonical_readset_survives_intern](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/canonical-readset-survives-intern.md) | 504 | `result-track:54dd24c0432b887fab4ad31fe4526ba2eeccb975bfec9276faa3e8a2bf3d304e` |
| 60 | `theorem` | [interning_empty_preserves_captured_slots](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/interning-empty-preserves-captured-slots.md) | 511 | `result-track:f04ee87c6f9cc0f2ec5ad2a36d807a78a561997faf9c72b4bceafffafe27568b` |
| 61 | `def` | [fixtureCapture](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/fixturecapture.md) | 517 | `declaration-track:a51370e65249404cff0d4e3daa6f6d0d05f5f5eb82f6949a19460a0eca6049e7` |
| 62 | `def` | [fixtureCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/fixturecertificate.md) | 533 | `declaration-track:313d14797c1827a2f590a96dc49f0630c028dd96efbe5faeed27487a55027baf` |
| 63 | `theorem` | [fixture_capture_accepted](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/fixture-capture-accepted.md) | 544 | `result-track:50d57da26c9c85d8042818a003a79e01b20545f7bb13d675729373942d312d31` |
| 64 | `theorem` | [fixture_maps_canonical](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/fixture-maps-canonical.md) | 546 | `result-track:dbe4e46a078468ba723e75e34518b4fc0d9febab58e60745356d3d47b23b7d74` |
| 65 | `theorem` | [fixture_plan_coverage](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/fixture-plan-coverage.md) | 548 | `result-track:5d4aa7cdfb275da36b505dc8be07714a2ac412ad8f37a80347315ee6eb136e5c` |
| 66 | `theorem` | [fixture_admitted_by_capture](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/fixture-admitted-by-capture.md) | 550 | `result-track:e6dcf40f4f2a17228c0651ebfb5e75a0d434b05215e937a261c2bfd8ce1f1e7a` |
| 67 | `theorem` | [fixture_native_postcondition](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/fixture-native-postcondition.md) | 553 | `result-track:89cac1d3beb8518c7938039bfae84a9f1547f69524791f10f4a2081ee926f6bc` |
| 68 | `theorem` | [fixture_transported_certificate_accepted](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/fixture-transported-certificate-accepted.md) | 558 | `result-track:47cb51d09fb4c01f25218a3ce0a842c188168c37629287bf207ad7a9d4c30774` |
| 69 | `theorem` | [fixture_lean_execution_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/fixture-lean-execution-exists.md) | 564 | `result-track:31364ff223fc8fbebac3ceb519293c8e54618bd98b4613ae4bd9ac6d177b1a3f` |
| 70 | `theorem` | [fixture_inventory_namespace_distinct_from_retention](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/fixture-inventory-namespace-distinct-from-retention.md) | 573 | `result-track:bf9ce8a70a7278a7a8b994581359a599ded0ef806167f2e4439accb857fb531c` |
| 71 | `def` | [repeatedRootCapture](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/repeatedrootcapture.md) | 577 | `declaration-track:919d368eaae7e618b3c5a61e8720da3eda527c62d2de0af2a2ef55fbe3cce4f4` |
| 72 | `theorem` | [fixture_repeated_roots_remain_positional](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/fixture-repeated-roots-remain-positional.md) | 580 | `result-track:ba67a3eb06c62b57e50ea6992f9dd1ad556329ebb7e820dad4a9b4d939c0396b` |
| 73 | `theorem` | [repeated_root_observations_agree](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/repeated-root-observations-agree.md) | 584 | `result-track:95619b1d3b41dc844235d94ed078a907ba7ddeb4bfa80386fe77a597cd4d2a91` |
| 74 | `theorem` | [omitted_mapping_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/omitted-mapping-rejected.md) | 589 | `result-track:3a077df45e6443726929fa91959808e26693e2e45646435ee5b444b4a46778b3` |
| 75 | `theorem` | [nonsource_mapping_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/nonsource-mapping-rejected.md) | 591 | `result-track:0e844e454dd9493abeef31fbd3deda1407973f8db2f28524751d827b65526e20` |
| 76 | `theorem` | [duplicate_mapping_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/duplicate-mapping-rejected.md) | 594 | `result-track:57dd365b1fac6a1efb4132c4a63b897201a4e4cdafa8d66e3db82bfeff0d8be3` |
| 77 | `theorem` | [unused_invalid_slot_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/unused-invalid-slot-rejected.md) | 597 | `result-track:c0f4aa181d52afd62278aa39b584f0637a3c202d0538bfd8c0b2e899115625fd` |
| 78 | `theorem` | [absent_nonempty_directory_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/absent-nonempty-directory-rejected.md) | 601 | `result-track:1f29915fab10ca2b75b256179e0deebc8ebabc8df5a4fb23171435281c3a59c7` |
| 79 | `theorem` | [noncanonical_directory_order_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/noncanonical-directory-order-rejected.md) | 605 | `result-track:155e47d87004496d3ccb5f60a1ee1c2d1b91c889c561b68342d52cc38a4cb3a8` |
| 80 | `theorem` | [changed_root_metadata_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/changed-root-metadata-rejected.md) | 609 | `result-track:e3ea432ab2805c44a983ea8b305a4090ee4bd5cb9d6f15a50618f5c8fe029f83` |
| 81 | `theorem` | [extra_expected_raw_key_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/extra-expected-raw-key-rejected.md) | 612 | `result-track:ebec139224f7f429f16af87f7fa74c547006615a5a30ab54f5a7197976963915` |
| 82 | `theorem` | [wrong_retained_literal_slot_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/wrong-retained-literal-slot-rejected.md) | 616 | `result-track:4fdd207d95064c577078e678f1a6bcefa42c6c3ca641a726f4a8f6de95823497` |
| 83 | `theorem` | [nonempty_empty_slot_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/nonempty-empty-slot-rejected.md) | 619 | `result-track:530a800d02ccc7eec3a8c37b2eb90d2c28e29d6ddce5417791db0e0c08c57789` |
| 84 | `theorem` | [absent_empty_slot_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/absent-empty-slot-rejected.md) | 621 | `result-track:f3431793dd4f70726aaa53b4834c742dc70733a08996a06553f0c81b45e94aae` |
| 85 | `def` | [twoSourceCapture](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/twosourcecapture.md) | 623 | `declaration-track:56c9fb711d57fcf16720318e7dbe663a548e9e7b7b1126e16927608f84c6137e` |
| 86 | `theorem` | [two_source_fixture_accepted](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/two-source-fixture-accepted.md) | 629 | `result-track:fef5dacd475476ebc4b8a13d112edaadff8adcc0cd16dfdf5f310d357bd4fbaf` |
| 87 | `theorem` | [reversed_source_mapping_order_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/reversed-source-mapping-order-rejected.md) | 631 | `result-track:fdd4ae717ab50c6ba30a3ca4e60e1896cc3e9bdc90eba75159132383ffd9bb8a` |
| 88 | `theorem` | [repeated_source_mapping_at_equal_length_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/repeated-source-mapping-at-equal-length-rejected.md) | 634 | `result-track:73e3dd9542bb943de0f984a3ee5868f2362cc381ee141f339257e29248bd1a88` |
| 89 | `theorem` | [raw_array_length_mismatch_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/raw-array-length-mismatch-rejected.md) | 637 | `result-track:5b64512fca3d9a057d7103ac9b0118b74b10eed7da920f90ede5373b857803e1` |
| 90 | `def` | [emptyCapture](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/emptycapture.md) | 640 | `declaration-track:cd05bb2abcfb90658c95d9a3a7f1ce0499707492ae66efd76067742d5311b06c` |
| 91 | `theorem` | [empty_capture_accepted](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/empty-capture-accepted.md) | 650 | `result-track:a3ccc485b80632e2ece360970f584f7a864f6f079333d79e1efe76bdfab3899f` |
| 92 | `theorem` | [empty_capture_canonical](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/empty-capture-canonical.md) | 652 | `result-track:9408dfb9fff180ffb8f01ce4b6359dc8a21a1aa5c7b67907e04c748cd74f4eb0` |
| 93 | `theorem` | [empty_capture_admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/declarations/empty-capture-admitted.md) | 654 | `result-track:5682805ce5cb061e692cae2d4f3ea4ddc2d4cc4d579b9fd315c28c7455ee0922` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed9ee7062b03ad72618602f43e731fc6447b7daabe7167d2586ca22696c6ebf9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteInventoryAdmission.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteInventoryAdmission.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
