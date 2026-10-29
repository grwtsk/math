# Verification target: Pairwise Namespaced Public Rel Of Pairwise Cons

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3610292b5ee3b4496e236e6209cda357f8f58ed4",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant704d65a17c4509a5fc62d33930fce65a9fb60e2f66774fa0e252af7060ce102c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3610292b5ee3b4496e236e6209cda357f8f58ed4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant704d65a17c4509a5fc62d33930fce65a9fb60e2f66774fa0e252af7060ce102c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant704d65a17c4509a5fc62d33930fce65a9fb60e2f66774fa0e252af7060ce102c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Count` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Pairwise.sublist](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-sublist.md) | 41 | `result-track:4aa8e6b2cb273b5f961e89e60e58b1faf8ca48961fe1c9e9dc72e967c149a5c8` |
| 2 | `theorem` | [Pairwise.imp](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-imp.md) | 46 | `result-track:8622873fec4453a5117bd4aa2d54161250aa7618a0666c642a24dc5c4b508299` |
| 3 | `theorem` | [rel_of_pairwise_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/rel-of-pairwise-cons.md) | 51 | `result-track:93aa2a809f636684599cd99b686f471def8845e7e5400d7681197d4de3558103` |
| 4 | `theorem` | [Pairwise.of_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-of-cons.md) | 54 | `result-track:a24c2a216503dd7b9fcf2e55d9eb92baa246f278794225ba6eb73d01fa5cc1fd` |
| 5 | `theorem` | [Pairwise.tail](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-tail.md) | 58 | `result-track:786cb5d3e375910db9330a85b5a20f3828838824bc5841a9f90240e60f329d2d` |
| 6 | `theorem` | [Pairwise.imp_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-imp-of-mem.md) | 62 | `result-track:ce8b058276ab77d0c18b7e5afca7c7ff1d0173492ff35ca07599c426725b7e1a` |
| 7 | `theorem` | [Pairwise.and](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-and.md) | 71 | `result-track:1381ceec50704d1c7e8a3d4f77a27b0fe21e8d32f9631fa1ab63aadbb4930e62` |
| 8 | `theorem` | [pairwise_and_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-and-iff.md) | 79 | `result-track:9920df7b1cdeeb8d591902d4d397291b5d7776a9bead30a193298c83251e0dca` |
| 9 | `theorem` | [Pairwise.imp₂](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-imp-source-edition-2.md) | 82 | `result-track:a1f550617252fdc56dc2987f82422fe3a146622d0dd7eb70d1a0a96912f84a28` |
| 10 | `theorem` | [Pairwise.iff_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-iff-of-mem.md) | 86 | `result-track:45dc302f78601496e2d5a0e9e44ac2bfe2f7eee9f928ded27b67c240eb8b6a57` |
| 11 | `theorem` | [Pairwise.iff](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-iff.md) | 90 | `result-track:1a322ee8e5fcf7341e356bead1c586f717d5237104fed30a0a65fee543fdc418` |
| 12 | `theorem` | [pairwise_of_forall](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-of-forall.md) | 94 | `result-track:c41f0f8f7338590246b5d3ce02b977dae61eca806b89cdc67da3d8e639d687cf` |
| 13 | `theorem` | [Pairwise.and_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-and-mem.md) | 97 | `result-track:8b9fa2b2a782f6c14d84dc66ef0eb1e80cf40bc050f1030674d167daf94191e5` |
| 14 | `theorem` | [Pairwise.imp_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-imp-mem.md) | 101 | `result-track:2ee0ce0dce88963d47c2933f739dcf15ad642ee50b4793c2fe4de0dca01d6fde` |
| 15 | `theorem` | [Pairwise.forall_of_forall_of_flip](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-forall-of-forall-of-flip.md) | 105 | `result-track:3176f636b0de9d8d34e611d625fc472f4c27a6f696b3f9dba40fe56b869ccde2` |
| 16 | `theorem` | [pairwise_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-singleton.md) | 118 | `result-track:b288e3b46d05b57539b6dce8ef900f2ea34e6616c6a8af24120f86ca99294d79` |
| 17 | `theorem` | [pairwise_pair](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-pair.md) | 120 | `result-track:044da506f4b741947936850d7938dbc792ab67654c79d4940d5c8a8ff13fd8da` |
| 18 | `theorem` | [pairwise_map](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-map-source-edition-2.md) | 122 | `result-track:64728af129df5cff1e57a543d77514fe67d95935ac256da57fb365d978ba0d88` |
| 19 | `theorem` | [Pairwise.of_map](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-of-map.md) | 128 | `result-track:f4271410a841b1e153e8af8df633c04b27207a70e1f5ac25bf8b4efcc04c6b64` |
| 20 | `theorem` | [Pairwise.map](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-map.md) | 132 | `result-track:36f527cb6f400512964194b9c6783890fa2efb6f9a2eca9b74f9e27426e1264a` |
| 21 | `theorem` | [pairwise_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-filtermap.md) | 136 | `result-track:4fee122ee5c14ce07bcf8214b719c1b59821447485a2600256256704da600ef8` |
| 22 | `theorem` | [Pairwise.filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-filtermap-source-edition-2.md) | 151 | `result-track:aa6e3dcba9e253b4c763fee5d52fcd82b836f539647629c04873598da0a998a8` |
| 23 | `theorem` | [pairwise_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-filter-source-edition-2.md) | 156 | `result-track:df761e79ed28e84167a8bdb14ed748bc5e9199107f40bb6593a9690ae7b61559` |
| 24 | `theorem` | [Pairwise.filter](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-filter.md) | 161 | `result-track:d81bad48f89abaa0c0c7d603435afd773d316b33ea41d41f74bac4aef9b279f0` |
| 25 | `theorem` | [pairwise_append](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-append.md) | 164 | `result-track:940e13371dad00baa098b94c050da1e79db930cbd55c4dfecf5895b48e9aae8e` |
| 26 | `theorem` | [pairwise_append_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-append-comm.md) | 168 | `result-track:41ecb3fefd365c2d73b085556974bc3d86bb317bbac893234e972cd24c3193e0` |
| 27 | `theorem` | [pairwise_middle](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-middle.md) | 174 | `result-track:509087c479858a4b36dbf6972ba1360759359081eb7d0ed624ef9b370511efa4` |
| 28 | `theorem` | [pairwise_flatten](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-flatten.md) | 180 | `result-track:6823ec30095d45d60bc116f6d3147feafaca85b9a3025b172a383c32e1f7abf6` |
| 29 | `theorem` | [pairwise_flatMap](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-flatmap.md) | 191 | `result-track:0b2415e72ba46333b45b62445f1ccb54cc80618e73b333c70fd16e676d26ed79` |
| 30 | `theorem` | [pairwise_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-reverse.md) | 196 | `result-track:1c6f61c10b94d3287cccb9b3a1c5fbefc0e7013b80008e51fc1dc7c7df387487` |
| 31 | `theorem` | [pairwise_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-replicate.md) | 200 | `result-track:cd3a64892f30f2b27e469f7600b925aefe0c2bd23ba08af1bf1fd809adb241dd` |
| 32 | `theorem` | [Pairwise.drop](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-drop.md) | 222 | `result-track:cdfc98b4baa3a825c0abca6d77afdaaf96a3e0cde8c3b379364956ea12f7f318` |
| 33 | `theorem` | [Pairwise.take](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-take.md) | 225 | `result-track:c74dd1af97588dc9d165d775a71aeed5f0070ace967eb842da8c067a19f6b5f8` |
| 34 | `theorem` | [pairwise_iff_forall_sublist](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-iff-forall-sublist.md) | 229 | `result-track:d0b589d33297b196f27a156b1bcf194da8b00640162c2d4f96bac8815998a57e` |
| 35 | `theorem` | [pairwise_of_forall_sublist](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-of-forall-sublist.md) | 247 | `result-track:0ad20114e74cefb9dfc00ff81746c015e95e814553f55d7873cc580f51e0728c` |
| 36 | `theorem` | [Pairwise.forall_sublist](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-forall-sublist.md) | 249 | `result-track:e017b7d7e6813cb45736174dce87f2a195d34a24455f2e4c10f6be96700d7553` |
| 37 | `theorem` | [Pairwise.rel_of_mem_take_of_mem_drop](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-rel-of-mem-take-of-mem-drop.md) | 251 | `result-track:0d2dbf1109d1f8224b15bd76cf205bf91a7a058144782c4fbda5d70ba55bc547` |
| 38 | `theorem` | [Pairwise.rel_of_mem_append](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-rel-of-mem-append.md) | 257 | `result-track:cf0e2eef11b804046dc6034131f8f575e5fdf566b37c00fdf55b334085bf6cba` |
| 39 | `theorem` | [pairwise_of_forall_mem_list](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-of-forall-mem-list.md) | 263 | `result-track:f483aa7f5774b6291e6af748a65c6eefc65a7888536f6a0f0d4669f86950fd76` |
| 40 | `theorem` | [pairwise_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-pmap-source-edition-2.md) | 269 | `result-track:d2ac90edef4997b17881b0030dbbf80c327753bacc2493e6a71bcd15e3e7da32` |
| 41 | `theorem` | [Pairwise.pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/pairwise-pmap.md) | 281 | `result-track:7d0ee80e5a21eb5087d231482f957d713dd1c9d759d114111b37e1fd86f3c869` |
| 42 | `theorem` | [nodup_iff_pairwise_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/nodup-iff-pairwise-ne.md) | 290 | `result-track:bccc2d02d4a87c8dc1e604c3c7808cc1d229eb2d29124ee5d2e4cda28d4f9e0a` |
| 43 | `theorem` | [nodup_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/nodup-nil.md) | 293 | `result-track:302a20be01ea89ffb2d4280f87117ac6953029272c5b9b4b7605f0d6634fe257` |
| 44 | `theorem` | [nodup_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/nodup-cons.md) | 299 | `result-track:2ec2a78c72c43ca37c4ac188710ab1fa39d5c11ed69b6cc01c7c4feebd0bb936` |
| 45 | `theorem` | [nodup_append](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/nodup-append.md) | 302 | `result-track:6487c821c9a1ef03d4e1424b07a9f7c52fa422c34ea4cff88507a3dd65e6da53` |
| 46 | `theorem` | [Nodup.sublist](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/nodup-sublist.md) | 306 | `result-track:622ce8da6011e1d0d4d70ab4518b1dc44f2898d8b69cf351736d734f9cd13bfa` |
| 47 | `theorem` | [Sublist.nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/sublist-nodup.md) | 312 | `result-track:208bd5796c14772e5a9d05de1108f90c05b484134c22b5851f3e2873a3baf39a` |
| 48 | `theorem` | [getElem?_inj](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/getelem-inj.md) | 315 | `result-track:44f661eb1733aeaac06dd0e3f7f7bac80f8c6eb312fa86f58c9bf36c089d8ebc` |
| 49 | `theorem` | [getElem_inj](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/getelem-inj-source-edition-3.md) | 339 | `result-track:dc7b3b8edfdd4a1c9e1699960b539a6d9a6ae5f98b5e53db988fd4e7e0ed0e17` |
| 50 | `theorem` | [getD_inj](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/getd-inj.md) | 343 | `result-track:614cfc02f0b78c61c1bfad9587215441d2daf7715cb8b034496de657e689d117` |
| 51 | `theorem` | [getElem!_inj](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/getelem-inj-source-edition-2.md) | 349 | `result-track:d5908d943afece81a5a018bd4ba4d97db4b84f6699f647b2fb0d310960ce73ab` |
| 52 | `theorem` | [nodup_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/nodup-replicate.md) | 353 | `result-track:34021946b3491f69fd5afaf208f4eb0cf29288b114ad5cab0001bed811444089` |
| 53 | `theorem` | [Nodup.count](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/nodup-count.md) | 356 | `result-track:8117fe9710266ecda5b0e7cc30d5784ce93f433628b262ab4bf1ed0141ecd7f9` |
| 54 | `theorem` | [nodup_iff_count](../../../../../ComputerScience/AlgorithmsInComputerScience/PairwiseNamespacedPublicRelOfPairwiseCons.lean/declarations/nodup-iff-count.md) | 370 | `result-track:56d9f4bcc4ff786012d5fa5746aba845c778cb42326994ebb42c2538ca85fd09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f64cc88bb79433d99a92f37d2ac6d82eb38f8a433c4099d7a24d5968f857357 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant704d65a17c4509a5fc62d33930fce65a9fb60e2f66774fa0e252af7060ce102c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant704d65a17c4509a5fc62d33930fce65a9fb60e2f66774fa0e252af7060ce102c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
