# Verification target: Basic Basic Namespaced Public Singleton Inj

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a43470dbe466d8b431edd241d90b615d4eeca864",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant44fc9827a8894c4ee3b9bbb9f1d2e9945de2c67b48dacf5ff2a24c864ab24ce1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a43470dbe466d8b431edd241d90b615d4eeca864`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant44fc9827a8894c4ee3b9bbb9f1d2e9945de2c67b48dacf5ff2a24c864ab24ce1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant44fc9827a8894c4ee3b9bbb9f1d2e9945de2c67b48dacf5ff2a24c864ab24ce1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ByteArray.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.MinMax` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [singleton_inj](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/singleton-inj.md) | 34 | `result-track:68ec5c0c8cdfc8df32391202d1421b99b781978a4d5b62da98ede9aa6b9179bc` |
| 2 | `theorem` | [singleton_append_inj](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/singleton-append-inj.md) | 38 | `result-track:28c2c4d9a4705a38d8dee60bbf128ab7feddf9450c5a708a91c298fe8d288b55` |
| 3 | `theorem` | [push_inj](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/push-inj.md) | 42 | `result-track:0a822b97a85bb365109a7ec52a416c4b4366fb198c6ce1e77e153783a78c69a6` |
| 4 | `theorem` | [append_eq_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/append-eq-empty-iff.md) | 46 | `result-track:43e86e7ca908ff94f9af6d5268ea4ac4ac4a7bf8ab1cb784a21ee6684771d779` |
| 5 | `theorem` | [append_eq_left_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/append-eq-left-iff.md) | 50 | `result-track:275e123cd430db1a2b6b3fafff03691c93994066363509289e3edf4bc526a117` |
| 6 | `theorem` | [append_eq_right_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/append-eq-right-iff.md) | 54 | `result-track:6624a3ce45a018fc7851d39398b5a75ae3bd9c5e5d2bc9ac6e6ded72e310f0b5` |
| 7 | `theorem` | [empty_eq_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/empty-eq-iff.md) | 58 | `result-track:ef9d0a2b127253432fb47acba0346ffd60c449557417d277fdbc13373fff2228` |
| 8 | `theorem` | [push_ne_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/push-ne-empty.md) | 62 | `result-track:4d4c58314bfe4bb4eaefbf100fbe6839fff8c9ed20df88b79f6902b9d7813554` |
| 9 | `theorem` | [singleton_ne_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/singleton-ne-empty.md) | 66 | `result-track:e362bd0982f8c525fa84103fde5dd09a66e44c4ec33c01f858f30459139e69a3` |
| 10 | `theorem` | [empty_ne_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/empty-ne-singleton.md) | 69 | `result-track:b4728b81c01a9724a94c80670e570231f4d8853672719ae0bfb9aa83d42e3126` |
| 11 | `theorem` | [ofList_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/oflist-cons.md) | 73 | `result-track:44e5ecb88a2c1c7642da1ec8dddc274944d28e9f2e63552ff8920c432fe99979` |
| 12 | `theorem` | [Slice.Pos.copy_inj](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-pos-copy-inj.md) | 78 | `result-track:846da8f83673b602168e1a1c7b10b28833dcc1f6575939908fd8e7f8bbf85863` |
| 13 | `theorem` | [Pos.startPos_le](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/pos-startpos-le.md) | 82 | `result-track:a37cb2b8cfcb6f9eda48d9c70696efde8a131b36bf8fecfd929141c41aa16776` |
| 14 | `theorem` | [Slice.Pos.startPos_le](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-pos-startpos-le.md) | 86 | `result-track:3390082f31cd1753b4568fb42c55d86d0e5c50380dbd60982ab0e4d1861d1cfb` |
| 15 | `theorem` | [getUTF8Byte_eq_getUTF8Byte_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/getutf8byte-eq-getutf8byte-toslice.md) | 89 | `result-track:1c6f6bde83ae24ea2b43dce191254bfcf9632dd951ebc6a6482c8ed27fc52b7a` |
| 16 | `theorem` | [getUTF8Byte_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/getutf8byte-toslice.md) | 93 | `result-track:942167b6e44d6f0b8c3dd1406192dbb6bb12a1bc1e46ed6bd5e32ddbcec16f9b` |
| 17 | `theorem` | [Pos.byte_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/pos-byte-toslice.md) | 98 | `result-track:70cfd6b40a5c13d0de7fbfb3699757413e8cdfce3517edfef65408460464294f` |
| 18 | `theorem` | [Pos.byte_eq_byte_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/pos-byte-eq-byte-toslice.md) | 102 | `result-track:ec2decd86e41aad1d94375532d0dfb159375b7abb02583f0624fdaa780f79711` |
| 19 | `theorem` | [Slice.toByteArray_copy_slice](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-tobytearray-copy-slice.md) | 106 | `result-track:c97e563c1f63ad5270adddca4e0331ed46a9b1f3049e4ce9ded642d6b895bba3` |
| 20 | `theorem` | [toByteArray_copy_slice](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/tobytearray-copy-slice.md) | 112 | `result-track:89d594dcb6df87af9103f2f271668c81a44b6e562d4c2aa6168ca1513505daaa` |
| 21 | `theorem` | [Slice.utf8ByteSize_eq_size_toByteArray_copy](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-utf8bytesize-eq-size-tobytearray-copy.md) | 116 | `result-track:b79d7f09f10ded8ec5301e261da5e19585cab36960c82b7a98ffb5a72d4fed1a` |
| 22 | `theorem` | [Slice.ext](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-ext.md) | 121 | `result-track:5961c6e21cd0eede3167977071a078c0504e1fda41dfcce1ddfaa4895c1b89ce` |
| 23 | `theorem` | [Slice.sliceTo_sliceFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-sliceto-slicefrom.md) | 137 | `result-track:853b3b0b751009fb3bf2eec284a4385ff1515487a417bce92cb8717340c08659` |
| 24 | `theorem` | [Slice.sliceFrom_sliceTo](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-slicefrom-sliceto.md) | 143 | `result-track:1cf648d08c916bc2c052bbe6386b759970f0fb627e5964719a01f8cc650c606f` |
| 25 | `theorem` | [Slice.sliceFrom_sliceFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-slicefrom-slicefrom.md) | 149 | `result-track:61db368a73f8141c84fc02cc56f7c3a1b3f236f0f2bc800ffa5a60a14678b304` |
| 26 | `theorem` | [Slice.sliceTo_sliceTo](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-sliceto-sliceto.md) | 155 | `result-track:099360dc53b3b2cc9b90e0e5b144867d9929e30f233d735f8ce08c71f5eb597e` |
| 27 | `theorem` | [Slice.sliceFrom_slice](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-slicefrom-slice.md) | 160 | `result-track:7700f5023b956aa2bb610cac523cab65dea7b1989b40c5d416adaf06065c35bf` |
| 28 | `theorem` | [Slice.sliceTo_slice](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-sliceto-slice.md) | 165 | `result-track:b81f4cfa0426a6998e439ff89441eaff2e33961d503503c8e491a3ce009bd5e1` |
| 29 | `theorem` | [sliceTo_sliceFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/sliceto-slicefrom.md) | 170 | `result-track:ec4ed0889af40bd3472908e71998567da05ea9058d687e7090c9a00308fd2a39` |
| 30 | `theorem` | [sliceFrom_sliceTo](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slicefrom-sliceto.md) | 176 | `result-track:5adc6043c6dfca7b69fee430fabe5942753d867cd36b5866b4772cf0ba3ea96a` |
| 31 | `theorem` | [sliceFrom_sliceFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slicefrom-slicefrom.md) | 182 | `result-track:14e0383ee8b37a74172865a74d3d3d97cff9163c1f5bc5c1eda2574d59c4c821` |
| 32 | `theorem` | [sliceTo_sliceTo](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/sliceto-sliceto.md) | 188 | `result-track:f57b7642b0af3699bc880c6f3b4e0f7de439eb7e353765d0003a7772e584a6d7` |
| 33 | `theorem` | [sliceFrom_slice](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slicefrom-slice.md) | 193 | `result-track:b6aa890965126a93c5b3a6b985f77b2a506b446c25af440b78919cc25066c5dd` |
| 34 | `theorem` | [sliceTo_slice](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/sliceto-slice.md) | 198 | `result-track:6fc529aa30ad174a132effd3bbcb391477ad11b2e5fdc4e1772836cc881584b2` |
| 35 | `theorem` | [Slice.sliceFrom_startPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-slicefrom-startpos.md) | 203 | `result-track:a68ac88dc61965c148b8e3bc84300e73a31483a6121c5642768b743b24dcb4c9` |
| 36 | `theorem` | [Slice.sliceFrom_eq_self_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-slicefrom-eq-self-iff.md) | 207 | `result-track:69b11c8b666c47985e34ce703a4428d8564bc25273d562056161391a9101afc0` |
| 37 | `theorem` | [Slice.sliceTo_endPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-sliceto-endpos.md) | 213 | `result-track:988e24d843d423317d58930e2f9d318f138844acf9cc57b4e224a4f6a0782087` |
| 38 | `theorem` | [Slice.sliceTo_eq_self_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-sliceto-eq-self-iff.md) | 217 | `result-track:d0b0ff01c17b04380f26500de8d11c6d005f31f35c706631401da7f4615035d7` |
| 39 | `theorem` | [Slice.slice_startPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-slice-startpos.md) | 225 | `result-track:a1a8c8558b6bbc6b37613ef6c129b9fb01ca66b023736fca306fdce5058bf01d` |
| 40 | `theorem` | [Slice.slice_eq_self_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-slice-eq-self-iff.md) | 230 | `result-track:e168c2d27b3aa6849b9be904fd85801d9a7425128a9a295d7da7167722702f6e` |
| 41 | `theorem` | [Slice.slice_endPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-slice-endpos.md) | 239 | `result-track:9434153d2c551c27bff0023403bdbb36167e30f0a59301d93318c460eb0b518b` |
| 42 | `theorem` | [sliceFrom_startPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slicefrom-startpos.md) | 244 | `result-track:dee841203cae4039b56c4566ae436c1cb85edd4e1a9219085ac2cd2d8d86a7fc` |
| 43 | `theorem` | [sliceFrom_eq_toSlice_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slicefrom-eq-toslice-iff.md) | 248 | `result-track:c8e8dc36b61f4fdc74e863be0fa2a64a9db099c0d9f1a6bca92fc097f0cadb68` |
| 44 | `theorem` | [sliceTo_endPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/sliceto-endpos.md) | 252 | `result-track:f2dce7daad62829066aa78e915d00080e89a840b530b402035bcc4573d32464e` |
| 45 | `theorem` | [sliceTo_eq_toSlice_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/sliceto-eq-toslice-iff.md) | 256 | `result-track:fc00f5c5661a89ac2a6e553c56eee5ccbe3a175187f489f157b5f1baa1599138` |
| 46 | `theorem` | [slice_startPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-startpos.md) | 260 | `result-track:a184ed319ff13a80cb068e98c7d5376a9bf6d27c76eb0f8b4df39b1b4bf2b5be` |
| 47 | `theorem` | [slice_endPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-endpos.md) | 265 | `result-track:a3aa7509700460e992f85beda1ee9ac2f0266f65c825ecccf42c026360e91602` |
| 48 | `theorem` | [slice_eq_toSlice_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-eq-toslice-iff.md) | 270 | `result-track:d506840763230c35cdc512b30c38bd1e9b46ad5e4284e15c872ce3edeb351d93` |
| 49 | `theorem` | [Slice.copy_eq_copy_slice](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-copy-eq-copy-slice.md) | 276 | `result-track:b77fd21ee06254b98f157dd709de7eb7d6a10f35b0e166e24ec8b9d2c88720ca` |
| 50 | `theorem` | [copy_toByteArray_sliceTo](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/copy-tobytearray-sliceto.md) | 280 | `result-track:9e778c543dd3ef61b7e63449f3c118c9824fc382ac6d5537606bce1067f7ebe1` |
| 51 | `theorem` | [Slice.pos!_eq_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-pos-eq-pos.md) | 284 | `result-track:5c4dd5995e508b97b3cfbe93dd53d22e47e836f2dadc13824b22e31514d0928f` |
| 52 | `theorem` | [pos!_eq_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/pos-eq-pos.md) | 288 | `result-track:d9aa6f84c65d0821270b7e39d81e63a0f60f9a4072103ff023ea8f9437471c56` |
| 53 | `theorem` | [Slice.copy_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-copy-pos.md) | 293 | `result-track:9dd4db7a6b9a345db6c0c90becf80c6dfc21656423fb9547f93ceb37334629df` |
| 54 | `theorem` | [Slice.cast_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-cast-pos.md) | 298 | `result-track:e1e0758a0a242cfee5b0001e55dc2baefb2d75c31f1fee5facb361a6de083aef` |
| 55 | `theorem` | [cast_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/cast-pos.md) | 304 | `result-track:39511c32a2b39e937c7d7e563a258dbc6b84b290222f74cae7169c8fa65bc6bd` |
| 56 | `theorem` | [Pos.Raw.isValidForSlice_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/pos-raw-isvalidforslice-zero.md) | 309 | `result-track:90d9154667905259ca4eada52ae4723caa89003151976e97cb85ed71402aee82` |
| 57 | `theorem` | [Pos.get_ofToSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/pos-get-oftoslice.md) | 314 | `result-track:ea928579df23056d58519e2d214268d482c6baf409de13a0258c3d5d9c7dfc9a` |
| 58 | `theorem` | [push_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/push-empty.md) | 319 | `result-track:5aa2642247d30db8b69007b7e8717322df7e2ecd1ff43bbedd52c91272b3b9f2` |
| 59 | `theorem` | [nextn_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/nextn-zero.md) | 324 | `result-track:00678d33fb35cb0b9647a9d292a7dba64ef35cfc7ec86774690b00c64454d0cf` |
| 60 | `theorem` | [nextn_add_one](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/nextn-add-one.md) | 327 | `result-track:102bc05c6139e0e32157de095d3d428f76b2fba774fbc54ecf34057e618868cd` |
| 61 | `theorem` | [nextn_endPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/nextn-endpos-source-edition-2.md) | 332 | `result-track:ca5530e4866acc7c727b8c8a336ca3208715d21c6a8ee7c6614555fbeb70cdba` |
| 62 | `theorem` | [nextn_eq_nextn_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/nextn-eq-nextn-toslice.md) | 339 | `result-track:67ac5c72d46a900fedc1664c5fdccf49b5e54f26cb689ba93efc0d81312cb025` |
| 63 | `theorem` | [nextn_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/nextn-zero-source-edition-2.md) | 343 | `result-track:1d08150042787811f1c2216a90e656fba0cce5484b349eb6f3b7fe4820acc6f7` |
| 64 | `theorem` | [nextn_add_one](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/nextn-add-one-source-edition-2.md) | 346 | `result-track:e0e19298936594738d2dad73f7ceee260084340476258877d0bd1a5045bf6fbd` |
| 65 | `theorem` | [nextn_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/nextn-toslice.md) | 351 | `result-track:2525427563892053f0dfe4b147f9e0374a81af863d9a78cbde8ca818f5441d96` |
| 66 | `theorem` | [toSlice_nextn](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/toslice-nextn.md) | 354 | `result-track:97c80c1f67d35e380fb9e1160bb27c8fc46e7dc6d0b4b994c27d37936c951a5c` |
| 67 | `theorem` | [nextn_endPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/nextn-endpos.md) | 358 | `result-track:2b7d0240bd03a1f5518dcd88dcf8f8351b2bd6c151a58ac3a3d3925dce00e8d4` |
| 68 | `theorem` | [Slice.Pos.cast_toSlice_copy](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-pos-cast-toslice-copy.md) | 364 | `result-track:75ff869d2397d55b7fe00a35df09286f7ff00849dfec8a1920b7eeec07c3f4cb` |
| 69 | `theorem` | [Slice.Pos.sliceFrom_eq_startPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-pos-slicefrom-eq-startpos.md) | 369 | `result-track:732c4960d15f0f2a36d32b2eaea90fcf1b923f247816a1bedb751d895aa2ad28` |
| 70 | `theorem` | [Slice.Pos.sliceFrom_endPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-pos-slicefrom-endpos.md) | 374 | `result-track:a1d877b733eb762482994ea04a5d49929b6715a74d15dc3ebc692b44ad830c7c` |
| 71 | `theorem` | [Slice.Pos.sliceTo_startPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-pos-sliceto-startpos.md) | 379 | `result-track:122c70b5a2df018b4f57dc4968174481a5d7248bc236f2b5fdd34d04f25ec9c9` |
| 72 | `theorem` | [Slice.Pos.sliceTo_eq_endPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-pos-sliceto-eq-endpos.md) | 384 | `result-track:38474f4306b65a925abe6aca5a24f69e92a2fc1a6cbbd5e300fa7e2e3d97da47` |
| 73 | `theorem` | [Slice.Pos.slice_eq_startPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-pos-slice-eq-startpos.md) | 389 | `result-track:46c7eb91644cf48171d2e425c331bafa47d153a4c4b55a42909445ebd9b8418d` |
| 74 | `theorem` | [Slice.Pos.slice_eq_endPos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicSingletonInj.lean/declarations/slice-pos-slice-eq-endpos.md) | 394 | `result-track:0b5cac855d1458c08f8d50679a6a1474450072160e17ea6d7f30e8a0cd784dcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37ba4bebfa049a9c4a80b48fe7de821f8ea8e8976926b78cf4713eee3358a45a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant44fc9827a8894c4ee3b9bbb9f1d2e9945de2c67b48dacf5ff2a24c864ab24ce1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant44fc9827a8894c4ee3b9bbb9f1d2e9945de2c67b48dacf5ff2a24c864ab24ce1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
