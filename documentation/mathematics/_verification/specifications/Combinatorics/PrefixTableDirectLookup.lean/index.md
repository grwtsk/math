# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableDirectLookup

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55584e6630fa4889e19de96aec865ddc8b2302a7",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableDirectLookup.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/PrefixTableDirectLookup.lean/index.md) · [Full source](../../../../Combinatorics/PrefixTableDirectLookup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55584e6630fa4889e19de96aec865ddc8b2302a7`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableDirectLookup.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableDirectLookup.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableDirectLookup`](../../../../Combinatorics/GraphTheory/PrefixTableDirectLookup.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/loopvertexdecidableeq.md) | 27 | `declaration-track:1f1e480170eff09f833b1f5408d5b955874cbde0bad19885db846b24a710ee98` |
| 2 | `instance` | [loopTagDecidableEq](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/looptagdecidableeq.md) | 30 | `declaration-track:dccf2a44818e05dd8151ffe669b425a00abee11b5a3ada7b2821e4463a3a8032` |
| 3 | `def` | [falseTag](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/falsetag.md) | 33 | `declaration-track:3aa252fb57a87858abd4acbff708ea587c927c9a9c7831814e08c6dc188009ac` |
| 4 | `def` | [trueTag](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/truetag.md) | 36 | `declaration-track:9308a3802613744d1e2156f30da44171013e0f9229dc777c6c1d6d3c4547e085` |
| 5 | `theorem` | [tags_distinct](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/tags-distinct.md) | 39 | `result-track:6f6fc57dd5446d39f86af7c405096f6624f60975dc7cc3684fb9ec2155ba418c` |
| 6 | `def` | [falseOccurrence](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/falseoccurrence.md) | 45 | `declaration-track:b38d0d5d005cb25ac466e53fedf55a91db169afaca10b119fbdebddd8ccb3cd7` |
| 7 | `def` | [trueOccurrence](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/trueoccurrence.md) | 48 | `declaration-track:d72214a9dcb6e92e6941f0d7f46c6c0d315f285830e387a7f58cfc54159904ef` |
| 8 | `def` | [seedRows](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/seedrows.md) | 51 | `declaration-track:f9ca8e5e000a055acae638a973148d8d80f5d6d0aff8d11b10fd52b7398fbefa` |
| 9 | `def` | [seed](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/seed.md) | 54 | `declaration-track:d415dba938324fddc0ea4e7f0337d27fcd33d18fb5eed01cee8dee21973bfd49` |
| 10 | `def` | [before](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/before.md) | 57 | `declaration-track:fd16c68311c7b05d4a7d7892d9182afefbbc3a2b598386139fce2a1534f313f8` |
| 11 | `def` | [retainedRows](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/retainedrows.md) | 60 | `declaration-track:b62af8afec82c7ee623646759dd0cfe2019b034f935375aab0e1a5a325e59083` |
| 12 | `theorem` | [seed_inventory](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/seed-inventory.md) | 63 | `result-track:57a04c77f6e4dbec44e074f55c142d6b699a2fd9411793a5966ad2f0794abc52` |
| 13 | `theorem` | [before_dictionary](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/before-dictionary.md) | 68 | `result-track:6825cc865cd7c666126ce1780c62f7fd77a3579d1c97ea57f96d3e3611e74c46` |
| 14 | `theorem` | [before_wellFormed](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/before-wellformed.md) | 74 | `result-track:c535aa2c7c9305269e284920e40a36552fc3fc2736a11d86f82172d01c38b383` |
| 15 | `theorem` | [before_actual_decode](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/before-actual-decode.md) | 83 | `result-track:d40c7aaa7fe1a083fa5474136390e0d18eb3a455587e6835ae9f93f59ecd8efd` |
| 16 | `theorem` | [before_realRows](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/before-realrows.md) | 89 | `result-track:a4fd4b0ef8ad261a05837f2ed42c73f80577b1674919321a34cd7637a1544bec` |
| 17 | `def` | [after](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/after.md) | 92 | `declaration-track:0523aaf4415bdc49003d1a4c818d282d5d1600ab3a1c93ac61bd334e619bcd1f` |
| 18 | `theorem` | [retained_inventory](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/retained-inventory.md) | 94 | `result-track:5c53e7c5bd7c53b171d72fcf2b832c8029f0887943bc01bc54c673c61d0e6c4e` |
| 19 | `theorem` | [after_wellFormed](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/after-wellformed.md) | 99 | `result-track:1f946ecfda46c3e5a5a9d5ad713ed69ed16a7b2ab8918734014c3a8abe4b30d3` |
| 20 | `theorem` | [after_dictionary](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/after-dictionary.md) | 101 | `result-track:507f1387e8fd32a16f8f115442cc405756b3a368242592fd09793e27a6005969` |
| 21 | `theorem` | [after_actual_decode](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/after-actual-decode.md) | 104 | `result-track:b69fb354214954fa62817f8b86c53782d57dbfc023860dd3ff295ee1752b2825` |
| 22 | `theorem` | [actual_old_false_slot_remapped](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-old-false-slot-remapped.md) | 107 | `result-track:dc4b83d988eec9ea6154870e725797027533b1ae9054d7d43e9ae37bb83fdbc1` |
| 23 | `theorem` | [actual_old_true_slot_removed](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-old-true-slot-removed.md) | 116 | `result-track:f239c7d49eacd12429bfca10728a5dc1a9b81a235c0c5814d5557729e5a282ff` |
| 24 | `def` | [parallelRows](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/parallelrows.md) | 124 | `declaration-track:b2d2b7ca365a9c5926ea7a81613750ac37e027b4526dcd5331d106fa4cc8c504` |
| 25 | `def` | [post](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/post.md) | 127 | `declaration-track:029dec53fee1f75ba5285c713c879f3c76ddb9899c3377ab33fbb11778489920` |
| 26 | `theorem` | [post_wellFormed](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/post-wellformed.md) | 129 | `result-track:a857b5d1d0590eb3a7b89523be9d7a60350b5a0863dfb4f4c4d1b2cc4bb33be0` |
| 27 | `theorem` | [post_dictionary](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/post-dictionary.md) | 131 | `result-track:baf845ee0eb490adceb42565373331de019ab73e4975fac916f4d85295bcdca0` |
| 28 | `theorem` | [post_actual_decode](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/post-actual-decode.md) | 141 | `result-track:230b05686bb8421d80c827faee0c2b757b9d302d069f53d31810e3bb512f43f8` |
| 29 | `def` | [actions](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actions.md) | 148 | `declaration-track:c18622cae77930efc0831c2db2a46ac36614c9f9f786dda72da214028b4f3fe3` |
| 30 | `def` | [scheduled](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/scheduled.md) | 151 | `declaration-track:3b1c464a01b19a0505a70670db4befd18299c8cba1dfe943c2aad82d012f29f0` |
| 31 | `def` | [finalRows](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/finalrows.md) | 153 | `declaration-track:0445cf59ce15d0a110328692421cdd42c34326892d4b877a825bca5b1bdb53c9` |
| 32 | `theorem` | [scheduled_actual_producer](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/scheduled-actual-producer.md) | 156 | `result-track:db93971590896ffff8867e1220ec67b394e4ce74762b7993c3a49af502cca5a9` |
| 33 | `theorem` | [post_realRows](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/post-realrows.md) | 158 | `result-track:c255e15f4152b9b955c4d4cbf88ced44f2cf6fd564cc95137b0afb4aca0a5a1f` |
| 34 | `theorem` | [final_inventory](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/final-inventory.md) | 161 | `result-track:4afc6e2da8ec66dd10a31112976a0b2fec47873032bfd1d5ebb1a485fe6ea894` |
| 35 | `theorem` | [scheduled_dictionary](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/scheduled-dictionary.md) | 166 | `result-track:0cd5e706aa9cdcbe484d268243911b18c02ebfa8836d25b7523e0052648b45b5` |
| 36 | `def` | [initial](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/initial.md) | 169 | `declaration-track:0f5bcd12d10d0d3342015ec674b1fe60bfd616be6b8145486b00ae1a6a16f4cd` |
| 37 | `theorem` | [original_real_reference](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/original-real-reference.md) | 172 | `result-track:5b79c5a39de5f48a494b9b6a8523679e526115d1f6c6fd37b265ce684e5dc1ee` |
| 38 | `theorem` | [unused_slot_bound](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/unused-slot-bound.md) | 176 | `result-track:842288a3a3a4676e3f2f92331a9fcc16f7ceb00d24fe92bc2c8b22f55600642a` |
| 39 | `theorem` | [unused_slot_not_referenced](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/unused-slot-not-referenced.md) | 181 | `result-track:4051a59a9a8dc44d3e3ec5dae012ad4d004593705fb3bd3c131739f96c527389` |
| 40 | `theorem` | [actual_first_compaction](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-first-compaction.md) | 185 | `result-track:fbac5cd4770056c59f6e6c42de52d35515daf66ab92be7baf86885023af88937` |
| 41 | `theorem` | [post_false_remap](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/post-false-remap.md) | 189 | `result-track:bc920252e7a633e9d35edd8ce6538bfcd2487ae2d67dec841c1773fe88360e8f` |
| 42 | `theorem` | [actual_retained_transport](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-retained-transport.md) | 202 | `result-track:77bca0fb26becb712be512cb72759d25c6cd05bd04ebe9d3d9e4b733a888744a` |
| 43 | `theorem` | [actual_dropped_transport](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-dropped-transport.md) | 209 | `result-track:8bc066990e11adc1c0b6fb21675684cddd7e2bb96ab440a2bbbc6f742baf547e` |
| 44 | `theorem` | [actual_intermediate_append](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-intermediate-append.md) | 217 | `result-track:2bb837b57b1557454df91b24bb0af2d67f39a97454be182bf5526270846256bd` |
| 45 | `theorem` | [actual_supported_equality](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-supported-equality.md) | 224 | `result-track:ac34983570e8aacd2c114fa0923fb333fad613b8ba1cf1ad2182726cca20e705` |
| 46 | `theorem` | [actual_referenced_direct_lookup](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-referenced-direct-lookup.md) | 230 | `result-track:41abf1498b0794453955ed6efa0c061ed00abafdbf35cc9c29900f62d5898e9a` |
| 47 | `theorem` | [actual_reintroduced_direct_lookup](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-reintroduced-direct-lookup.md) | 236 | `result-track:64cf59e1807ab0123f6f503bfc55e85c3f9f843de6355d1987ef569939673735` |
| 48 | `theorem` | [actual_endpoint_dictionaries_equal](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-endpoint-dictionaries-equal.md) | 245 | `result-track:d56b8f25d8f832878b6e74340dd8ecc85a41b6de5b48bccb3f728beb8fe91917` |
| 49 | `theorem` | [actual_bounded_global_equality_false](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-bounded-global-equality-false.md) | 249 | `result-track:ce3b4033fafced47868a747b2c7d49964b958ea82b4a5d9a9123cb42bd08e87a` |
| 50 | `theorem` | [actual_repeated_direct_searches](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-repeated-direct-searches.md) | 259 | `result-track:670091874d4e3fd3bdefa242e9234fc2f50f66f0a16ea19553e073aede29cf36` |
| 51 | `theorem` | [actual_empty_actions_reference](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-empty-actions-reference.md) | 268 | `result-track:48a171b49a85e18db545c3405574aca19444ff006d803b7c9179ba73ef680bf9` |
| 52 | `def` | [ordered](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/ordered.md) | 275 | `declaration-track:22b0f5966277601b6317c8fada576c14a40d422010ab5f367e745c3ca3a0cc80` |
| 53 | `theorem` | [ordered_wellFormed](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/ordered-wellformed.md) | 278 | `result-track:a5ebecdd9f9c780bbe2c0a6a49f10c429f20427cda43a44e96d980b396231c43` |
| 54 | `def` | [orderedInitial](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/orderedinitial.md) | 290 | `declaration-track:3af2761696bada076ff6328d3d5fbf5d961db478a1b7b32564597280c1065889` |
| 55 | `theorem` | [actual_distinct_key_order](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-distinct-key-order.md) | 294 | `result-track:34bddb352daf7a143a44f4fd0da7d045ec9b0b9f46422349e2ddba1918f29c9a` |
| 56 | `def` | [emptyInitial](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/emptyinitial.md) | 314 | `declaration-track:f8614031407ccfbc218230a55753c998ca88e4f4c6084740b67a8e38f319967c` |
| 57 | `theorem` | [actual_empty_support](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-empty-support.md) | 318 | `result-track:d3020250e31b7645cebdaf439d727ab5aa1dc33a7dec4fa457367248da86b26b` |
| 58 | `theorem` | [actual_empty_support_references](../../../../Combinatorics/PrefixTableDirectLookup.lean/declarations/actual-empty-support-references.md) | 326 | `result-track:c1aefe8f361b94a1572e9827bb19e4fc9f8a423ef02c19c7da4f7f5f261e31b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e984e57d56e0352b59943a0cdd2433b2da7b1ac1da7e2371743d96bbee4ac4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableDirectLookup.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableDirectLookup.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
