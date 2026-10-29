# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableCheckpoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f2c0d66b71552c1f2c6fcd1aaa3880f7b126333",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f2c0d66b71552c1f2c6fcd1aaa3880f7b126333`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableCheckpoint`](../../../../../Combinatorics/GraphTheory/DirectedGraphPrefixTableCheckpoint.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/loopvertexdecidableeq.md) | 17 | `declaration-track:62f1a593b10773296e95cd2bdbe110a526548d3a261fd7f6028fc4b4f8111020` |
| 2 | `instance` | [loopTagDecidableEq](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/looptagdecidableeq.md) | 20 | `declaration-track:3bb94ca726b68ae57e9341f4d95591152ef840b44617a4bf50dfc4641c051e99` |
| 3 | `def` | [falseTag](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/falsetag.md) | 23 | `declaration-track:9be14629ed899a2aeca381387e897041ce90d19961f064b116c29db5120b2445` |
| 4 | `def` | [trueTag](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/truetag.md) | 26 | `declaration-track:a8314ff7ab028518b2991aa01c66a3653ab78b8fbf92c98c416f4e6f567e9b51` |
| 5 | `theorem` | [tags_distinct](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/tags-distinct.md) | 29 | `result-track:009a46ed54d2406cf0c87ad30198e632c9d9f0e9dff3896c407261c081654ced` |
| 6 | `def` | [falseOccurrence](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/falseoccurrence.md) | 35 | `declaration-track:8c334219af193004324e7ca891926a56d06f449b7140820f67910baa6958ce02` |
| 7 | `def` | [trueOccurrence](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/trueoccurrence.md) | 38 | `declaration-track:44417fa7be4f5fe3a592d948651edbd91d86ec75f4611ac965738373fc29b932` |
| 8 | `def` | [seedRows](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/seedrows.md) | 41 | `declaration-track:02b287db841d36f4c95a7735175e21ed1d3ef661dd6d046c4089e7e120fc01d5` |
| 9 | `def` | [seed](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/seed.md) | 44 | `declaration-track:22805bd2d9aded8d4e8a00ecf639d3366a2ef590ffd41f00bfb212b2cac748ef` |
| 10 | `def` | [before](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/before.md) | 47 | `declaration-track:68fa47cba739dcbf41585b5a31406dc400b1af6d0689e7fe11cd1fd08302ef93` |
| 11 | `def` | [retainedRows](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/retainedrows.md) | 50 | `declaration-track:bc0fb4884860ecfdd11fed2a01af9d3a8e4d2cc0a4fc580e08a1b234ffc7168e` |
| 12 | `theorem` | [seed_inventory](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/seed-inventory.md) | 53 | `result-track:fe3c6a46b5b609f26f5b18fdec63add97baae68238f70d61a9c1a2d52817e84e` |
| 13 | `theorem` | [before_dictionary](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/before-dictionary.md) | 58 | `result-track:da67cc3eb44ab0d115e4bd8ba1a8d0bfb35e5cac5dee840bbd8449c67b05daa3` |
| 14 | `theorem` | [before_wellFormed](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/before-wellformed.md) | 64 | `result-track:b918e11799718dfd2d4a7ecee22a12e530fcaec36442172ed86f6622f946c59c` |
| 15 | `theorem` | [before_nodes](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/before-nodes.md) | 73 | `result-track:eadfed8d224ed006b382d414205c1394d0e6d4956203033b9e14ee78c19ee2ac` |
| 16 | `theorem` | [before_actual_decode](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/before-actual-decode.md) | 78 | `result-track:4fa27e57f249b8bdaa50800ffb7e46ee17d7a45e55c033b20eea54b9dd67291b` |
| 17 | `theorem` | [before_realEntries](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/before-realentries.md) | 84 | `result-track:6441f1b333f160e7b952a35eea6b8c8281072ff3c0d77a7441597853a187d7e8` |
| 18 | `theorem` | [before_realRows](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/before-realrows.md) | 88 | `result-track:364b5252cee8172c43b461d1afa6c658d103566e003da7fd8032401dbd550bb8` |
| 19 | `def` | [after](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/after.md) | 91 | `declaration-track:f6289e3b5206a61d497910bad76a6f045cb90a0064ad69017d4683c7023871c8` |
| 20 | `theorem` | [retained_inventory](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/retained-inventory.md) | 93 | `result-track:0313a7e825f68d63c2567bd181c3458190bb33617481cd96cf4614a16376f838` |
| 21 | `theorem` | [after_wellFormed](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/after-wellformed.md) | 98 | `result-track:b23d445cb3a7378d8af2af2dff43b36b88832987b56405bd653c5b650d5ad4f6` |
| 22 | `theorem` | [after_dictionary](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/after-dictionary.md) | 100 | `result-track:a1eb4af3002afcbc73cd67a07c359f0c6f2c593cfef16b58be4cd3265cb37024` |
| 23 | `theorem` | [after_nodes](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/after-nodes.md) | 103 | `result-track:6e890dfdf6a864e2775b0ea83875c4a52d817efc3aa1eb632cae19af6d73b970` |
| 24 | `theorem` | [after_references](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/after-references.md) | 107 | `result-track:7f0a6a35aa42713ed14c072845c556c4eb12159551241aa888002fc4a4c34b98` |
| 25 | `theorem` | [after_actual_decode](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/after-actual-decode.md) | 114 | `result-track:ae196e4a247d9d775b4ca54268b1e49813687fc670c6c0d96fc076f06178c570` |
| 26 | `theorem` | [actual_unused_branch_removed](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/actual-unused-branch-removed.md) | 117 | `result-track:8bf4e8bbbe555d91119f23d743c605b884616e58b0b2d1868f0f5fa8a6a0b970` |
| 27 | `theorem` | [actual_old_false_slot_remapped](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/actual-old-false-slot-remapped.md) | 123 | `result-track:d56ebf2b6cd4c6a614df95a95cce81ab191f44a59db78bfa2642f00243453ff4` |
| 28 | `theorem` | [actual_parent_slot_remapped](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/actual-parent-slot-remapped.md) | 132 | `result-track:5fd866b66c08a7af60a039a620b989a20bb74a94ed752bc3154ef32da49eb936` |
| 29 | `theorem` | [actual_old_true_slot_removed](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/actual-old-true-slot-removed.md) | 141 | `result-track:ac80bbf73e79049fb4f7ae7b97710dec31a9792125db1cad6515384f576675aa` |
| 30 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/example-source-edition-2.md) | 149 | `declaration-track:94caf81f4f0e893e7d00bbb532e1a5616049f40962e0b97f932cdaa2a0cbd8e9` |
| 31 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/example-source-edition-5.md) | 153 | `declaration-track:f1284cd0607612fd4f75bd4b0414173df0dd07db81932054903bd110d6dafe23` |
| 32 | `def` | [stale](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/stale.md) | 159 | `declaration-track:14ce462c0a50d282eb72eb30a87c86c107482258a4107c186f746fc3f4bfc461` |
| 33 | `theorem` | [stale_wellFormed](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/stale-wellformed.md) | 162 | `result-track:7f163359f3765c31ff5cf156baceec7b31b0fa5ce006ecec0fff7a46b77efc55` |
| 34 | `theorem` | [stale_actual_decode](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/stale-actual-decode.md) | 173 | `result-track:1c20f113667b404b9ba3430fac18902167619be24a235f38198796760168c9be` |
| 35 | `theorem` | [stale_histories_changed](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/stale-histories-changed.md) | 179 | `result-track:0cc2eb34d5523cbf8b9bf6946b9f4d6ef6116a4eef8dedd747275bced131f5a3` |
| 36 | `def` | [parallelRows](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/parallelrows.md) | 186 | `declaration-track:002d09dfcc274e8dfadab541227ec089a2567c31babe34eb5a24d68d77b20293` |
| 37 | `def` | [post](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/post.md) | 189 | `declaration-track:71e624a93fc6f7711dd3e3d5d6ca78afd43eb4e7c58d792e6453f542154636d7` |
| 38 | `def` | [direct](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/direct.md) | 190 | `declaration-track:ce35dca1b0c7cddbe038caf01a12323b8dd77c333a901ba72fe5fce9b2753c18` |
| 39 | `def` | [stalePost](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/stalepost.md) | 191 | `declaration-track:b1491c72375520d76b0722395adb3c166d3fb724e6e52972edea721ab5516af4` |
| 40 | `theorem` | [post_actual_update](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/post-actual-update.md) | 193 | `result-track:da32b3f1b25739c57b78dd2468930b83a937effd7f9b949d3822fa1a23485c68` |
| 41 | `theorem` | [post_wellFormed](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/post-wellformed.md) | 195 | `result-track:95eb2059489b8b5f0bbcc52016d23ce6c92519ff87b594b236d1aa1f9aa65b10` |
| 42 | `theorem` | [post_dictionary](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/post-dictionary.md) | 197 | `result-track:cfc0445228f23722a0a52366c95a70a909254194e6d18c559372f7dc3d4a58df` |
| 43 | `theorem` | [post_references](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/post-references.md) | 207 | `result-track:b154a4476a349c17b2263350542bc6cd817654569f9239d4441f8ae406fd844e` |
| 44 | `theorem` | [post_actual_decode](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/post-actual-decode.md) | 219 | `result-track:00d3c344665e74886752de94364eae09f7e4fa174165e661c2692e104fa8e8a5` |
| 45 | `theorem` | [direct_dictionary](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/direct-dictionary.md) | 226 | `result-track:a2deda8439ac76f8b614af8c8eeb4f6a4b645dc86ea1f67591336ac21c8158a6` |
| 46 | `theorem` | [direct_references](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/direct-references.md) | 237 | `result-track:aa8cc0d950502005504bb18bec6cf48339639fee35fc27c1640149acac322deb` |
| 47 | `theorem` | [actual_checkpoint_histories](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/actual-checkpoint-histories.md) | 249 | `result-track:befc485c92e4bd7694c1527139b7323d0bad14f31cc3ce84fc2b380e92af5268` |
| 48 | `theorem` | [actual_arrays_differ](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/actual-arrays-differ.md) | 254 | `result-track:ccce8515f20ad3813afcdff557007209921e3d7e2e237996c6c2f1a0bfb8e0f5` |
| 49 | `theorem` | [stalePost_wellFormed](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/stalepost-wellformed.md) | 260 | `result-track:fd085a32ffe4dc58e8787a91a00c85b96d8eef9dfd8699eb9bbbab1ef0ed6ff9` |
| 50 | `theorem` | [stalePost_bounds](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/stalepost-bounds.md) | 263 | `result-track:b732a761315b7c4d2caf9466a822afe7279ba9f8f24e09c3184212138f9c1aa7` |
| 51 | `theorem` | [stalePost_actual_decode](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/stalepost-actual-decode.md) | 265 | `result-track:7c4cd9c1bc5529f686b0dbfd2f879584bb2b2eacf92301428ed971837c3cb57b` |
| 52 | `theorem` | [stale_slots_change_histories](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/stale-slots-change-histories.md) | 274 | `result-track:e88db344799c6f8df9c43ecb5b039cf944d0aebb834fa4c70d0b76d68aab176a` |
| 53 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/example-source-edition-4.md) | 282 | `declaration-track:ad368bb9826c284e8ee47ad6e5c39b5418c01c58b0be715e4468ad9a5acb715c` |
| 54 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/example-source-edition-3.md) | 285 | `declaration-track:9b9c51430ff305e44e44b9bbedc3ac63227d45214c26a29cdd8377743003ffe7` |
| 55 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/example.md) | 292 | `declaration-track:5f105611fc0aa40771fadd6339db2c976a9a1753eab5847a47002a730f15d25b` |
| 56 | `instance` | [boolQuiver](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/boolquiver.md) | 302 | `declaration-track:6cbb285abba66f6acd6289b432fe5d9cc30cd7d913cad525ccc9949fe9132024` |
| 57 | `instance` | [boolTagDecidableEq](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/booltagdecidableeq.md) | 304 | `declaration-track:362a0ffb54b23e8e9221382806b8841cd8856fa0f305d2d70e0c8fe6904a1f45` |
| 58 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePrefixTableCheckpoint.lean/declarations/example-source-edition-6.md) | 307 | `declaration-track:fea678b4ce2461d434f683beff283473eb52ba9d90b9afae4621a5ee55740b7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8464d204dfb21894b378fd4dbef02edbec39dce5b349c36625dd28615d7f8fad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
