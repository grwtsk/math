# Verification target: Byte Dictionary And Output Maps Historical Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8650b7ad2218741f0582cf5d422cd1a04864d02",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantc3e136aca942a4b260eb827cf20912caabaf267e11d38d0642b69e8ca0d244b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8650b7ad2218741f0582cf5d422cd1a04864d02`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantc3e136aca942a4b260eb827cf20912caabaf267e11d38d0642b69e8ca0d244b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantc3e136aca942a4b260eb827cf20912caabaf267e11d38d0642b69e8ca0d244b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SourceRefinement.Basic` — import line 1; internal source missing from the pinned tree.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findSlot](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/findslot.md) | 14 | `declaration-track:12d03007af311588b13ad1ab6a481cd274ad4e945922dd98149b6b1ad3fc9cdf` |
| 2 | `def` | [intern](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/intern.md) | 19 | `declaration-track:e24c61e5453e54266c35b5319b994913c61a8eac4f2d5df94583bd0efd39c96a` |
| 3 | `theorem` | [findSlot_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/findslot-sound.md) | 24 | `result-track:6ae612d738e967f9bf0ed2e4eaa93cc50d96a5f44d6ecb2ff76144459568fdea` |
| 4 | `theorem` | [findSlot_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/findslot-none-iff.md) | 40 | `result-track:cd8e8183bae0b5b087b823c3b7eba0e73b359613d6038538b2f3739c00d5fdcb` |
| 5 | `theorem` | [intern_literal](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/intern-literal.md) | 49 | `result-track:763a3998bb02da1d188e9876c0f69685634db0f49c7351cc7b449cd4cf3c4a57` |
| 6 | `theorem` | [intern_old_slots](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/intern-old-slots.md) | 56 | `result-track:01888cd69f7e7a2057b6bbdecae76a6e6996638abc6e49430b543ed9bbf0e1e3` |
| 7 | `theorem` | [intern_prefix](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/intern-prefix.md) | 65 | `result-track:6d5a5fcfb1457c16d72562df1dd4710d930098cdcf1ee7d1833cc876a2e2732a` |
| 8 | `theorem` | [intern_reuses_exact_slot](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/intern-reuses-exact-slot.md) | 72 | `result-track:f633493878ee5c6d6304597b733edc73cd632fc6d54b4ef23bc70f0bdfad2abd` |
| 9 | `theorem` | [intern_appends_iff_missing](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/intern-appends-iff-missing.md) | 76 | `result-track:e5b168099541ce8d83d8dd3bc457fa83ce378e0439386d7a9afff38fc0d35a10` |
| 10 | `theorem` | [intern_preserves_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/intern-preserves-nodup.md) | 85 | `result-track:34507e6f06b0234f143e9cd987cb610ca1d775487200aecde36f7848b819a74d` |
| 11 | `def` | [sourceSlot](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/sourceslot.md) | 97 | `declaration-track:8548d40486f188cd3be150dab91e6cbc72d4b5725114b0e4aa741bd15f9036aa` |
| 12 | `def` | [collect](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/collect.md) | 101 | `declaration-track:7c313706bf9b896aa4cc2b862a03b79769490b75277967d30b92faa418228034` |
| 13 | `theorem` | [sourcePayload_slot](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/sourcepayload-slot.md) | 109 | `result-track:4d24e53fe9e28963ddb55bbad81057d0d18d33f2562ab5d2e4188897fe20d1ad` |
| 14 | `theorem` | [collect_binding_order](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/collect-binding-order.md) | 115 | `result-track:255397b9ead0bef090fa3a5b992a9981d9f480d1398ced4b2edb5ede9abc93a7` |
| 15 | `theorem` | [collect_length](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/collect-length.md) | 136 | `result-track:5b3ee1f7111c9478f8a85507486198eaafbb92a9cad3fff98abfe3892c5c73fe` |
| 16 | `theorem` | [collect_exact_realization](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/collect-exact-realization.md) | 142 | `result-track:90c1754ca6058f0732ae57cfebd935b3fd5376d5c8cbba78e644692df51e0311` |
| 17 | `theorem` | [collect_complete_source_order](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/collect-complete-source-order.md) | 173 | `result-track:10440804b03b56ebce862c43102030f5449aa2f38d20cba2a3aa01584ad99837` |
| 18 | `theorem` | [missing_named_source_rejects](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/missing-named-source-rejects.md) | 180 | `result-track:9e3309af882b10c743738d7669536b3f1eac08a87948543e80bb9cf98cd0faaa` |
| 19 | `theorem` | [missing_literal_slot_rejects](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/missing-literal-slot-rejects.md) | 185 | `result-track:3eabe704f3f3dc633e3b9c4dc72b6a0984f457ae1681a4a2711c250bca890285` |
| 20 | `def` | [outputKey](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/outputkey.md) | 191 | `declaration-track:847304eaf014f9d2d030aa941674e3ab328301ce48aadf06f41db9d731ffed52` |
| 21 | `def` | [outputLookup](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/outputlookup.md) | 193 | `declaration-track:213fb7487f97fae735c29fff14d7fe55dcaf7f0562d04864a7848c0b65bed362` |
| 22 | `def` | [insertOutput](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/insertoutput.md) | 197 | `declaration-track:ac68f99b3e8158969299ac02c1b2dcdabdee6977e6a6911825d05f7d7dcfab20` |
| 23 | `def` | [mergeOutputs](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/mergeoutputs.md) | 202 | `declaration-track:f948ade5455c8a278adff1018bb84c31dfa64db9aa97805294022b5f48364e73` |
| 24 | `theorem` | [outputLookup_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/outputlookup-none-iff.md) | 208 | `result-track:e51f188f0d346eb7308f383b24d0d53a3f651881ed4a97fed269954df3a365b5` |
| 25 | `theorem` | [outputLookup_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/outputlookup-append.md) | 217 | `result-track:9fe55e99ab7c6578474fddcbff38009a925c6c21d2ef6e2e5341b8bdfc0f4dc4` |
| 26 | `theorem` | [insertOutput_preserves_lookup](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/insertoutput-preserves-lookup.md) | 227 | `result-track:796b2f33fdde5933f032c3f80e6893c3ccb9a564473a13da908cb127ee86175e` |
| 27 | `theorem` | [insertOutput_contains_row](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/insertoutput-contains-row.md) | 243 | `result-track:5eb51608ffb60e90452e0bb5fe7f6b0704924be6327137cc317972dd513b0230` |
| 28 | `theorem` | [insertOutput_key_inventory](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/insertoutput-key-inventory.md) | 259 | `result-track:8c26bf2b61e77d8a56675322669347b30e7b227121d4746b6f0619b67091ebc5` |
| 29 | `theorem` | [insertOutput_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/insertoutput-unique.md) | 285 | `result-track:62f247a369c06640790f65c6c6f8f277384e864a213046fcd4579a1dbadf762b` |
| 30 | `theorem` | [mergeOutputs_preserves_lookup](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/mergeoutputs-preserves-lookup.md) | 303 | `result-track:eda807fb62b2b806bea15631f1365aae394af06b31f0efcf8431bc24d93fc9a7` |
| 31 | `theorem` | [mergeOutputs_covers_rows](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/mergeoutputs-covers-rows.md) | 317 | `result-track:0bf4bc631596ad7448f1e11baa9be2bd0f0e71446c7888bf774172b418ebc35b` |
| 32 | `theorem` | [mergeOutputs_key_inventory](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/mergeoutputs-key-inventory.md) | 334 | `result-track:b0d5e90220e178438aa92349a29425a0dcfb94c6788faaec33e6c1e265f18ecc` |
| 33 | `theorem` | [mergeOutputs_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/mergeoutputs-unique.md) | 348 | `result-track:1c2e80bcbb6a6d5c927e4fbec86ae22b4bcc771ab7f1c6b25555f257b0715836` |
| 34 | `theorem` | [conflicting_output_rows_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/conflicting-output-rows-rejected.md) | 361 | `result-track:5ffbefec99e276d4c8cb92348db3611d1b2f88e2f2cb6c0cb4f3fe3d43df383b` |
| 35 | `theorem` | [renderOutputs_lookup](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/renderoutputs-lookup.md) | 373 | `result-track:b501ec208dcaaf65911434482602b19f26663d0a6c760991b4fe3b9fb67431a0` |
| 36 | `def` | [occurrenceOutput](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/occurrenceoutput.md) | 394 | `declaration-track:08cb012f44005e8cbc5c53f218d33fea2ae6097d22daec49c9e3cbd89f9a26c7` |
| 37 | `theorem` | [renderOccurrences_covered](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/renderoccurrences-covered.md) | 397 | `result-track:4a708979b434a28e4b94fc022e3f29f7bdfc1dd6d0d4c6eae02fdc39b61ad404` |
| 38 | `structure` | [RawRoute](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/rawroute.md) | 426 | `declaration-track:5b44ddf87b3cbe900042e16833e6dbc7ed2c94d1e6467b7d358ed77b7950e217` |
| 39 | `def` | [routeBindings](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/routebindings.md) | 431 | `declaration-track:720ee6e342e1f285a43e30d8fb5a4f6af12c33c6f3d905fa48b50f7f9f5b5d75` |
| 40 | `def` | [retentionCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/retentioncheck.md) | 434 | `declaration-track:4a3ee31f5198cc751dfcd8f3f0604e460cfa96c4acb281678a124f59b93ca656` |
| 41 | `def` | [archiveOutputs](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/archiveoutputs.md) | 441 | `declaration-track:14c55dedba1a0f515b107581e4992789f3633d3b41e237c16fb3d2cb8defd316` |
| 42 | `def` | [placeholderOutputs](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/placeholderoutputs.md) | 446 | `declaration-track:9888f98c9ae2201bb539e246d95888ea80deab1191aad4ff257b0c1c5cf50981` |
| 43 | `structure` | [Produced](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/produced.md) | 449 | `declaration-track:e078d5eded1e48884bc685c4a36c412ba6f8df17d92bf9e900f854e5b98bf75d` |
| 44 | `def` | [inputCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/inputcheck.md) | 456 | `declaration-track:a201726079bc89756f29a7978c84feb1a1a3736f32fb54a37ba3bf8590b9fa46` |
| 45 | `def` | [produce](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/produce.md) | 463 | `declaration-track:d96de49321a225ba342f452f82cd5e3868540287657966c74910aaed82c4cc2b` |
| 46 | `theorem` | [inputCheck_spec](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/inputcheck-spec.md) | 472 | `result-track:dd4d486ae9a3f60378d24528ed8184fdec98741c4a289b6f78178c5a1bb1535c` |
| 47 | `theorem` | [produce_spec](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/produce-spec.md) | 481 | `result-track:688c7fb8315ecb5e4d1bee3abeedf8e4a2b47709fc1daf279b0839185b9b134b` |
| 48 | `theorem` | [produced_occurrence_order](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/produced-occurrence-order.md) | 524 | `result-track:1d6b983347d88e1a7f2f8484a4ff33ff990bbc251300f33932e7ee8bc60ed531` |
| 49 | `theorem` | [produced_occurrence_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/produced-occurrence-count.md) | 530 | `result-track:af8c596b3921806dea509bd6d17e0715e30f1aa4f0c417a5da0ad1cefe88d92b` |
| 50 | `theorem` | [produced_complete_source_occurrences](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/produced-complete-source-occurrences.md) | 538 | `result-track:a309e2ddeb3fed38b1549433201bbf785284dcf813242f2d633839b2e5b4fc4c` |
| 51 | `theorem` | [produced_output_keys_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/produced-output-keys-unique.md) | 545 | `result-track:5e23775dd767f87bc82fd5f697e01447b0f3b736fba063d91fd1168cc52187d0` |
| 52 | `theorem` | [produced_complete_output_inventory](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/produced-complete-output-inventory.md) | 551 | `result-track:63469323789143730d05a614b83c7477ee81afc686ecbe08a155dc5923ae9c5e` |
| 53 | `theorem` | [produced_exact_decode](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/produced-exact-decode.md) | 561 | `result-track:bf526b6f2b0d884783709cd88cde0dd3c6e656d71df45b2e68637c4d7b993cc6` |
| 54 | `theorem` | [retentionCheck_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/retentioncheck-exact.md) | 580 | `result-track:b565b4fd9721cc326dfd31f51aa2f2197ec320a1595c0b62d1f3a28dd407bf44` |
| 55 | `theorem` | [produced_raw_retention_exact_bytes](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/produced-raw-retention-exact-bytes.md) | 597 | `result-track:f146caae51f7735e7333e4c1110afafeaab51f27cb247a874de9fb6c00444a4e` |
| 56 | `theorem` | [collect_source_payloads](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/collect-source-payloads.md) | 608 | `result-track:308c38795c975953fd98f5a0f0c6c3ff21abb140a859325090e5f43fcbe4d62a` |
| 57 | `theorem` | [produced_raw_retained_payload](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/produced-raw-retained-payload.md) | 631 | `result-track:f0f2f3f69fd0fc48e4e7decb889aa8c4c0fcc66e7f19a7d68d47f19ae66557f5` |
| 58 | `theorem` | [produced_binding_multiplicity](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/produced-binding-multiplicity.md) | 643 | `result-track:84ad063d9ea76686150aa702829a49b36ae66a82818f907193c27278a068a48d` |
| 59 | `theorem` | [intern_preserves_sourcePayload](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/intern-preserves-sourcepayload.md) | 650 | `result-track:ee5b87b3707ff4b9012c0c63e1558c528312d3da9bfcdfc20a816a3b98a2d62e` |
| 60 | `def` | [candidateLookup](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/candidatelookup.md) | 663 | `declaration-track:ceb5c0a5164a287c9b35d97552097cc3dc3fa7efd3dbb24b33ba6434b8f7a5e4` |
| 61 | `theorem` | [candidateLookup_hit_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/candidatelookup-hit-sound.md) | 670 | `result-track:751ccfbf0d9a2e503dfd71d18571b6cbb200893d4eeb936499a6d829ed255f0c` |
| 62 | `theorem` | [candidateLookup_miss_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/candidatelookup-miss-iff.md) | 687 | `result-track:c42ce7401ee1599147fe826681243479afa514a7e7d43d855951c21e99bb2f5b` |
| 63 | `def` | [CandidateCoverage](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/candidatecoverage.md) | 703 | `declaration-track:ceab9d3dceb37a971de6f55f591887b6c50275b12e26a964a98ad37909daf45a` |
| 64 | `theorem` | [complete_candidate_miss_implies_absent](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/complete-candidate-miss-implies-absent.md) | 706 | `result-track:34405d9d3fca8175ac6ba1083b465c1bf537824133cbaf157387b37d7fcf8b9a` |
| 65 | `theorem` | [complete_valid_candidates_find_existing](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/complete-valid-candidates-find-existing.md) | 714 | `result-track:f90edbee49be398a556354d3ec74d55819c865e7e18d1d9778dff69eef3d3252` |
| 66 | `theorem` | [same_digest_does_not_justify_bucket_omission](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/same-digest-does-not-justify-bucket-omission.md) | 743 | `result-track:ad128afd1e5bf5c5e08ca83e7a1faed6a55b73d2cb9f7ea2e1b26e34b89ce90d` |
| 67 | `theorem` | [produced_certificate_check](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/produced-certificate-check.md) | 746 | `result-track:55d56adfde09becd7b986622009c1bf5513b045733b13575ac349ee9d58a80f2` |
| 68 | `theorem` | [incomplete_source_routes_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/incomplete-source-routes-rejected.md) | 764 | `result-track:90a46921d16afdd9038d2b89b14ea6019171f486f5fd4878649e8ad3e949536a` |
| 69 | `theorem` | [unretained_raw_routes_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/unretained-raw-routes-rejected.md) | 770 | `result-track:4a087bad27ffe6550efb2415f8d87b8c46c4f98535d74df6eaea63cb740c4fde` |
| 70 | `theorem` | [nonempty_placeholder_bytes_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/nonempty-placeholder-bytes-rejected.md) | 776 | `result-track:56fd50d8bad914ae276afc576ab21f1bffa2144a45f6317572c88f8a5f7f8bfc` |
| 71 | `theorem` | [successful_production_example](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/successful-production-example.md) | 785 | `result-track:884a7c5d725997914dff16e29145b00052ddcd41232f4938dab337fdb51d5f2f` |
| 72 | `theorem` | [outputLookup_witness](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/outputlookup-witness.md) | 797 | `result-track:b72aded4c3af8134aec4f1b440db78d03679681596d32af7194fb7afb0acc6d6` |
| 73 | `theorem` | [equal_output_identity](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/equal-output-identity.md) | 810 | `result-track:c0f8866363f6dfed313a634fa3615d7c010d75d9d18d4db318e4947006f703ba` |
| 74 | `theorem` | [insertOutput_record_inventory](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/insertoutput-record-inventory.md) | 817 | `result-track:d8964525bf2af9f282b8685bd93440146cfa06f824fd4aae47a0c693c6cc9718` |
| 75 | `theorem` | [mergeOutputs_record_inventory](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/mergeoutputs-record-inventory.md) | 841 | `result-track:79b27f72b642f276a5bae10f68a6cf372609af08c14095b591cc1f3e3d9bdf34` |
| 76 | `theorem` | [produced_complete_output_records](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/produced-complete-output-records.md) | 855 | `result-track:f2cc2ad06410329d9826eb1c2083ec46331d6e2d67510ade61b2c35b40aef18b` |
| 77 | `def` | [labelCandidates](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/labelcandidates.md) | 865 | `declaration-track:b99ebb151f3db27c8bae2ee74b09e30cc948683d195086684868f8cafb7f4b3c` |
| 78 | `theorem` | [labelCandidates_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/labelcandidates-valid.md) | 871 | `result-track:fd327492dda252841046518151001d375030244c04757502f9b82050448713a2` |
| 79 | `theorem` | [labelCandidates_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/labelcandidates-complete.md) | 891 | `result-track:c3ca43a83c7b7bf6bd7e565ea538487cddc63f56eac1362ac0919b522dbb0d7c` |
| 80 | `theorem` | [digest_bucket_finds_literal](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/digest-bucket-finds-literal.md) | 908 | `result-track:b4e40552165318c3b653a104aa334175b738cc7ecf8d70f7a33acef6acc8376a` |
| 81 | `theorem` | [constant_digest_collision_example](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMapsHistoricalSourceEdition2.lean/declarations/constant-digest-collision-example.md) | 917 | `result-track:db1abe888cb7a60a587ce5021eed12e2ede84d90d73c2e52bcd8d857e534c9d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e3286b1dcd2bdc36a0281323349f4cdc6ca390bfe896ef02291c265d083d775 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantc3e136aca942a4b260eb827cf20912caabaf267e11d38d0642b69e8ca0d244b3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantc3e136aca942a4b260eb827cf20912caabaf267e11d38d0642b69e8ca0d244b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
