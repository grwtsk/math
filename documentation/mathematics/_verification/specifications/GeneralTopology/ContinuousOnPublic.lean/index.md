# Verification target: Continuous On Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "873802fa283da8722f1cb0d4ac5e2e73cda916f6",
  "lexical_observation_count": 169,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variantb2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousOnPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousOnPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `873802fa283da8722f1cb0d4ac5e2e73cda916f6`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousOn/Variantb2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousOn/Variantb2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContinuousWithinAt.tendsto](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-tendsto.md) | 39 | `result-track:25a692de4cc14105ae5291d1bfc510c96cbb3361065a7c7c76546ba2ba476051` |
| 2 | `theorem` | [continuousWithinAt_univ](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-univ.md) | 43 | `result-track:c4ae3c7d935654167730b571be073896fefa47130445a515200d0f76a05bb922` |
| 3 | `theorem` | [continuousOn_univ](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-univ.md) | 48 | `result-track:5a39c18d6dd5e25f9c9e3fd4f74a75581e6c2305c732d20680ca5f2d521d917a` |
| 4 | `theorem` | [continuousWithinAt_iff_continuousAt_domRestrict](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-iff-continuousat-domrestrict.md) | 52 | `result-track:c366cde69d6c4e8ab2b8c18c5e35883f45bfb4da0504dbaa9ec6191239b6a02f` |
| 5 | `theorem` | [ContinuousWithinAt.tendsto_nhdsWithin](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-tendsto-nhdswithin.md) | 59 | `result-track:5a41f4cc534503a11fe6d64a86068ea5f7fcc6b075df5255de8d7674ece976e0` |
| 6 | `theorem` | [ContinuousWithinAt.tendsto_nhdsWithin_image](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-tendsto-nhdswithin-image.md) | 64 | `result-track:ccdfc55dec0495d8700b4f1fd91f74422397c58670699da9ea068ff8cf12aef3` |
| 7 | `theorem` | [nhdsWithin_le_comap](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/nhdswithin-le-comap.md) | 68 | `result-track:ededff1700b85190432d8f97e71ce6b90be54103158c911b8dd2d27245eb906c` |
| 8 | `theorem` | [ContinuousWithinAt.preimage_mem_nhdsWithin](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-preimage-mem-nhdswithin-source-edition-3.md) | 72 | `result-track:85ade4d59aeaa849b92d67d8f84311f69c72946d7adfa4cfc047b3ef3f67c8bd` |
| 9 | `theorem` | [ContinuousWithinAt.preimage_mem_nhdsWithin'](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-preimage-mem-nhdswithin.md) | 76 | `result-track:358e4f432fdcf168723dd33866c7abfe284a2a8d8f641be78ecb371bfafddc34` |
| 10 | `theorem` | [ContinuousWithinAt.preimage_mem_nhdsWithin''](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-preimage-mem-nhdswithin-source-edition-2.md) | 80 | `result-track:52ba0197eaa3f908c480465e6f1267068823ec91cbf3bdcfa4662e31c5990da6` |
| 11 | `theorem` | [continuousWithinAt_of_notMem_closure](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-of-notmem-closure.md) | 86 | `result-track:eeb0c7a61464488cb86f705943688a1578f2f8b0c0e17f08f80ba3d0fba9aad6` |
| 12 | `theorem` | [continuousOn_iff](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-iff.md) | 96 | `result-track:3a00a4d53facf13d8d7564e96f37a1f35e47c4161d7945ea5ae70ece18aaaebf` |
| 13 | `theorem` | [ContinuousOn.continuousWithinAt](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-continuouswithinat.md) | 101 | `result-track:53a526737399b1f51c2773d096fba0146e7e363335dbab9bf0eb06732661225f` |
| 14 | `theorem` | [continuousOn_iff_continuous_domRestrict](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-iff-continuous-domrestrict.md) | 105 | `result-track:fa8a77523f6ed8b804596e2b61f8ba44ee0cafc238631a25f54764df8be32e18` |
| 15 | `theorem` | [ContinuousOn.mapsToRestrict](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-mapstorestrict.md) | 120 | `result-track:b907f40523ca934e9373984d1833911ab677a52222f71f99f2f6df4808db555e` |
| 16 | `theorem` | [continuousOn_iff'](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-iff-source-edition-2.md) | 124 | `result-track:71de24125e0a14cbe6e0aba31a0ab138f64ce2c6aec3c7156387f6898ea29ad4` |
| 17 | `theorem` | [ContinuousOn.mono_dom](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-mono-dom.md) | 137 | `result-track:68eeaae2e991378bb59d954b7a93d7e53662e775ff560a4524c5c011723988f1` |
| 18 | `theorem` | [ContinuousOn.mono_rng](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-mono-rng.md) | 144 | `result-track:f42aecdf09c3d36ad066efa74f97440231db0d288e1021e7b1c4e347bf7ea8d6` |
| 19 | `theorem` | [continuousOn_iff_isClosed](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-iff-isclosed.md) | 149 | `result-track:ad41c0c320921f1b3a127660f94b6c56c7460c965c17c0d11d3b48010e9955d4` |
| 20 | `theorem` | [continuous_of_cover_nhds](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuous-of-cover-nhds.md) | 157 | `result-track:898f52598b7583c3090f02da91b1c118a57d0b043ce70cb46c760ec32112e4d0` |
| 21 | `theorem` | [continuousOn_empty](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-empty.md) | 164 | `result-track:fda9e6fcc8c87ede4f77c51f20cb41f41f293f548ea07b0fc94dc70f5439ec25` |
| 22 | `theorem` | [continuousOn_singleton](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-singleton.md) | 167 | `result-track:4cf4d61258bd1f3fc322c71d5c1ba4122ede007c0dea75b2e0c60c8bab5a71cd` |
| 23 | `theorem` | [Set.Subsingleton.continuousOn](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/set-subsingleton-continuouson.md) | 172 | `result-track:4a1a4501cfd6095d18b134bf588b4f0b7de0378e30c0421da3dbcdec90bde19d` |
| 24 | `theorem` | [continuousOn_open_iff](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-open-iff.md) | 176 | `result-track:7c1db17d139d950fb667d8570605a995b0c7d0c9e48da2d0a01048583d7ae03f` |
| 25 | `theorem` | [ContinuousOn.isOpen_inter_preimage](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-isopen-inter-preimage.md) | 188 | `result-track:4da6fc2575cc7a40d8616376dd962eeb29b68425d66ce2bdd5598b853ac88343` |
| 26 | `theorem` | [ContinuousOn.isOpen_preimage](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-isopen-preimage.md) | 192 | `result-track:b79114da6d429f5997fee09d1b0dc0e29ad0c99f27b0230e7f0d2781a3e63fd9` |
| 27 | `theorem` | [ContinuousOn.preimage_isClosed_of_isClosed](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-preimage-isclosed-of-isclosed.md) | 197 | `result-track:d508652bafda9c86abef26559cc487b0b8f1d6b3f6eb6e6c6a674e6cc6a65218` |
| 28 | `theorem` | [ContinuousOn.preimage_interior_subset_interior_preimage](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-preimage-interior-subset-interior-preimage.md) | 203 | `result-track:3da345de2972eecdbed267000a5a2e7c2255035f96a9137da43e59ed0518c813` |
| 29 | `theorem` | [continuousOn_of_locally_continuousOn](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-of-locally-continuouson.md) | 211 | `result-track:280581df79b24367a934de9a8f64afe7cc9965e3efc3ecb894460738b1c4caa5` |
| 30 | `theorem` | [continuousOn_to_generateFrom_iff](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-to-generatefrom-iff.md) | 218 | `result-track:7e8034967c8e198e2a890aa7165fcc06a3871fc8ae7114a9eb78411923bc3d3d` |
| 31 | `theorem` | [continuousOn_isOpen_of_generateFrom](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-isopen-of-generatefrom.md) | 226 | `result-track:d8573de9052e35d43adb2d42095e67ae0d9e0394c78eedef3eaa3b10ef870c73` |
| 32 | `theorem` | [ContinuousWithinAt.mono](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-mono.md) | 236 | `result-track:cc6ce6894d40b8dc5c4643ff86afa343bf9b688fed201bf4085ef87ea430628e` |
| 33 | `theorem` | [ContinuousWithinAt.mono_of_mem_nhdsWithin](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-mono-of-mem-nhdswithin.md) | 240 | `result-track:9783b05ed51c8d199db67eceb9f885a116298007f244c61ad4d379c6d2624c57` |
| 34 | `theorem` | [continuousWithinAt_congr_set](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-congr-set.md) | 247 | `result-track:50ea96d017717a6591d1b79ead0af875c631d34d6c49e22aa67c515dd2fb8564` |
| 35 | `theorem` | [ContinuousWithinAt.congr_set](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-congr-set-source-edition-2.md) | 251 | `result-track:f93c0749b9887af93262702524d4af758626c7212545ed8a41192cd1bb949e68` |
| 36 | `theorem` | [continuousWithinAt_inter'](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-inter-source-edition-2.md) | 255 | `result-track:a34546eacd46362b6718e2217779cd9091dae4d6141a869c2a5cf425e367d976` |
| 37 | `theorem` | [continuousWithinAt_inter](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-inter.md) | 259 | `result-track:6a08dfa3a55e48ba66546ea0c8aed92396dd94ea9d63c3aa5973d8f206b266bd` |
| 38 | `theorem` | [continuousWithinAt_union](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-union-source-edition-2.md) | 263 | `result-track:823ba1db48d57c015aa3880efc34f71899ff07ac2220323fed6bb9e100b390d9` |
| 39 | `theorem` | [ContinuousWithinAt.union](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-union.md) | 267 | `result-track:05fb78c9716b8b616a08cffacafa057864eeb3b555a28f42f2766cd407f22fdd` |
| 40 | `theorem` | [continuousWithinAt_singleton](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-singleton.md) | 272 | `result-track:c51854f11343b41185b50b55c71cd0c8e4bcd1d006565878ec7548c5363fd1a9` |
| 41 | `theorem` | [continuousWithinAt_insert_self](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-insert-self.md) | 276 | `result-track:d053f3e3b45a4d6d886db0d092ea2ca72e848eee418138e3fc80f81ef56c84d2` |
| 42 | `theorem` | [ContinuousWithinAt.sdiff_iff](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-sdiff-iff.md) | 285 | `result-track:da212d5fdabddd6d36e64b20ec0812a36ba52abcd8fdffad858e1f010b29c241` |
| 43 | `theorem` | [continuousWithinAt_sdiff_self](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-sdiff-self.md) | 293 | `result-track:872fcbb0a25f34380efe7658c7fd3f2f1d20d8ab3e068183994f62bced5741c1` |
| 44 | `lemma` | [continuousWithinAt_of_not_accPt](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-of-not-accpt.md) | 302 | `result-track:8b5b980925f89093c8dec31fbbd0da0198ff1870deab8415cb154ea96e72b13c` |
| 45 | `theorem` | [continuousWithinAt_compl_self](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-compl-self.md) | 307 | `result-track:ea7d9fa8c50f9dd4f998754207b55fa49696eed593d53dfb36d6cb75ac4210d0` |
| 46 | `lemma` | [continuousAt_of_not_accPt](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuousat-of-not-accpt.md) | 312 | `result-track:5d71e5ef6da8144512a7d8633d2f2350e7a51af93072caafacecf7508b6ca970` |
| 47 | `lemma` | [continuousAt_of_not_accPt_top](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuousat-of-not-accpt-top.md) | 317 | `result-track:572043e89df2e10564da437f4b023e8047efcf5da6f615d0bc911703982a094a` |
| 48 | `theorem` | [ContinuousOn.mono](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-mono.md) | 320 | `result-track:447c4d352d74a60c9bb47393cf8f78edc0f729e423cc25b9663e2c14e34be4e9` |
| 49 | `theorem` | [antitone_continuousOn](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/antitone-continuouson.md) | 323 | `result-track:2f330572734395ed1993a910ee7e92170969c9ea230caf0d078899fe9fad22a5` |
| 50 | `theorem` | [ContinuousAt.continuousWithinAt](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuousat-continuouswithinat.md) | 331 | `result-track:e589adfe2f1b146da73a399ad7104fc056709caeaaf7c161bd20dc4d5c5a452a` |
| 51 | `theorem` | [continuousWithinAt_iff_continuousAt](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-iff-continuousat.md) | 335 | `result-track:62a9a7ade84428ef2055a149dbc1cce8a5376e2495510516791581e783809f98` |
| 52 | `theorem` | [ContinuousWithinAt.continuousAt](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-continuousat.md) | 339 | `result-track:f6f58dd70a0720b82ba1281ca42eb00e872d76bf60cc2147d8f2a2a099c1c0ae` |
| 53 | `theorem` | [IsOpen.continuousOn_iff](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/isopen-continuouson-iff.md) | 343 | `result-track:1de0a39eb11c4c2fc5c650c313340c3ed7a8780325141caf234936618c8aec34` |
| 54 | `theorem` | [ContinuousOn.continuousAt](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-continuousat.md) | 347 | `result-track:3fb468a70e72cb0d9bf4a26e06810fabe282cb1aed24f32aec4a3e7549a9984c` |
| 55 | `theorem` | [continuousOn_of_forall_continuousAt](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-of-forall-continuousat.md) | 351 | `result-track:98b0c541ea6bd306425ade62a9a9b89d0ce6bfae90e6bb7cda0806afab14bdc3` |
| 56 | `theorem` | [Continuous.continuousOn](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuous-continuouson.md) | 355 | `result-track:59aa8f4e27dac9daab9533c7e42e6378022b9e6301fa866f7f4ce1c63f08e662` |
| 57 | `theorem` | [Continuous.continuousWithinAt](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuous-continuouswithinat.md) | 360 | `result-track:266a4061ae54bad9fcb19081cbd0ae87d2ea5c6631cd0f043ea8607fde2edd6b` |
| 58 | `theorem` | [ContinuousOn.congr_mono](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-congr-mono.md) | 369 | `result-track:17822ac64fbf1f3dc4c5313232a6dba727d7ce8776b8de20dffc7e549c806abe` |
| 59 | `theorem` | [ContinuousOn.congr](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-congr.md) | 378 | `result-track:3de13c24935251dcbc81e2fa090749edfa25d6ea63f90578c121ecc5c93f0299` |
| 60 | `theorem` | [continuousOn_congr](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-congr-source-edition-2.md) | 382 | `result-track:6b31ef0f926035c23ebc83cec648a1a3aa22816daf3ce75b810e96e8030b151d` |
| 61 | `theorem` | [Filter.EventuallyEq.congr_continuousWithinAt](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/filter-eventuallyeq-congr-continuouswithinat.md) | 386 | `result-track:43d3f293aed02da334f86b296a34ef8ed252f372ef3ec33f36bebfb4a0f60aa1` |
| 62 | `theorem` | [ContinuousWithinAt.congr_of_eventuallyEq](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-congr-of-eventuallyeq.md) | 390 | `result-track:5da9a30c0c77ea893351924197b6144a50ddfaffaf8a758cd3ae585bc7337b2b` |
| 63 | `theorem` | [ContinuousWithinAt.congr_of_eventuallyEq_of_mem](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-congr-of-eventuallyeq-of-mem.md) | 395 | `result-track:f63959bd6e04fc908b341b31a44f255d68ee54f9ca6e53530f1c86f329828510` |
| 64 | `theorem` | [Filter.EventuallyEq.congr_continuousWithinAt_of_mem](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/filter-eventuallyeq-congr-continuouswithinat-of-mem.md) | 400 | `result-track:49413eb177f3f453997caf284ad30c54f835cb78c857b434f74f36128f430291` |
| 65 | `theorem` | [ContinuousWithinAt.congr_of_eventuallyEq_insert](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-congr-of-eventuallyeq-insert.md) | 405 | `result-track:1be4f1ff3d0d16f23aa6c2bbc67ad3799e097e84b0330767f1a2ddf764807bbf` |
| 66 | `theorem` | [Filter.EventuallyEq.congr_continuousWithinAt_of_insert](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/filter-eventuallyeq-congr-continuouswithinat-of-insert.md) | 411 | `result-track:1e77a7efb438821cfc329dd024c040802a75ea1930a497e1790ff112d1d18c23` |
| 67 | `theorem` | [ContinuousWithinAt.congr](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-congr.md) | 416 | `result-track:7a9855a584dc5084a699263fb8e9cb956f4fd93b7ef3681f41f623a85edfe772` |
| 68 | `theorem` | [continuousWithinAt_congr](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-congr-source-edition-2.md) | 420 | `result-track:b65af355a1c08dcc10c8772373a6f0a9b434c57e13ee42c735d12ba37aa7deea` |
| 69 | `theorem` | [ContinuousWithinAt.congr_of_mem](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-congr-of-mem.md) | 424 | `result-track:955fb9c8abe0fd712c8cf29ffb4ccf10b4a95eb29246e6c45eca71c116c648e4` |
| 70 | `theorem` | [continuousWithinAt_congr_of_mem](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-congr-of-mem-source-edition-2.md) | 428 | `result-track:dfda2685f3a11f558eee59b26b56f700b74ca40ea8a1ab77c565bed7471511e9` |
| 71 | `theorem` | [ContinuousWithinAt.congr_of_insert](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-congr-of-insert.md) | 432 | `result-track:012d3a4cf4b749e259030adb6c179f578d17583db1f9245726dc4db602df85a6` |
| 72 | `theorem` | [continuousWithinAt_congr_of_insert](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-congr-of-insert-source-edition-2.md) | 436 | `result-track:b386b5aff10f4442f1b2a27c99a69601953daadee935bc37add9c0f33dd0258f` |
| 73 | `theorem` | [ContinuousWithinAt.congr_mono](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-congr-mono.md) | 441 | `result-track:830c8ae5c3a215df7b0189ddbd132d7279e95316c6e0d8d145bfa7d058fb0d27` |
| 74 | `theorem` | [ContinuousAt.congr_of_eventuallyEq](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuousat-congr-of-eventuallyeq.md) | 446 | `result-track:d40d6ef76d1ede02ea55796ff6d3c4d2c23112f9391b4d3a12f8f9ea971b3413` |
| 75 | `theorem` | [ContinuousWithinAt.comp](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-comp.md) | 454 | `result-track:56a44a1d7099b2e921a538d3787a35789385646f4925f989b2c1c8426d55ee08` |
| 76 | `theorem` | [ContinuousWithinAt.comp_of_eq](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-comp-of-eq.md) | 459 | `result-track:7f5d08964cbf6929951bd7adbc1df86fadcf72c00e9395ef3c447c6504eb3a24` |
| 77 | `theorem` | [ContinuousWithinAt.comp_inter](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-comp-inter.md) | 464 | `result-track:37aabc3450fdfc63c1a15ab06ad5046bdae6e887829ba001d53002127fc7e2a8` |
| 78 | `theorem` | [ContinuousWithinAt.comp_inter_of_eq](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-comp-inter-of-eq.md) | 469 | `result-track:dd964d478264baf185172c2da53398d9ed3ab6917200be19d4bd4f34af216e80` |
| 79 | `theorem` | [ContinuousWithinAt.comp_of_preimage_mem_nhdsWithin](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-comp-of-preimage-mem-nhdswithin.md) | 474 | `result-track:a3b2132787f7c4fad1d9784ceb0078e33a444cb8c09a967f0edbc11196901fae` |
| 80 | `theorem` | [ContinuousWithinAt.comp_of_preimage_mem_nhdsWithin_of_eq](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-comp-of-preimage-mem-nhdswithin-of-eq.md) | 479 | `result-track:f15981b7452ba136f83b1536fc5be6d2a532533ad66e3fddbdf38625edf96c73` |
| 81 | `theorem` | [ContinuousWithinAt.comp_of_mem_nhdsWithin_image](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-comp-of-mem-nhdswithin-image.md) | 485 | `result-track:80afc02a5cf0bfca6a10ff37317f73cdd9760b5568742ae449a612eb2c18aad4` |
| 82 | `theorem` | [ContinuousWithinAt.comp_of_mem_nhdsWithin_image_of_eq](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-comp-of-mem-nhdswithin-image-of-eq.md) | 490 | `result-track:97efff881b8abf9a7c3eae955750b6033c5c3db443e7c097703c5d2b09805b26` |
| 83 | `theorem` | [ContinuousAt.comp_continuousWithinAt](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuousat-comp-continuouswithinat.md) | 495 | `result-track:12cb5b272130c049ee722ab93a8c417c3ccf120ee8ca820a39b6c323d6f20c4e` |
| 84 | `theorem` | [ContinuousAt.comp_continuousWithinAt_of_eq](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuousat-comp-continuouswithinat-of-eq.md) | 499 | `result-track:24963baeebf4be2a2d7789118dce876d8ef6de635d22134eafd12652c465aa7e` |
| 85 | `theorem` | [ContinuousOn.comp](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-comp.md) | 505 | `result-track:39375424926c9646f1a008a58fafc1e85c2e7fcf305c18fc7ce951699596a027` |
| 86 | `theorem` | [ContinuousOn.comp'](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-comp-source-edition-2.md) | 511 | `result-track:b23185ca99003df6a91915925774a9e37384ae52430303d8fee7acecf7ef09ad` |
| 87 | `theorem` | [ContinuousOn.comp_inter](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-comp-inter.md) | 516 | `result-track:84122271998a70da84f5967c8d1f8e7ed8431767ff4ab93d5580b9b78cdbbfe1` |
| 88 | `theorem` | [Continuous.comp_continuousOn](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuous-comp-continuouson.md) | 522 | `result-track:499cf30c984619b1adb63ed37d9c44266546f49be54676336719b094b0122408` |
| 89 | `theorem` | [Continuous.comp_continuousOn'](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuous-comp-continuouson-source-edition-2.md) | 529 | `result-track:c6220d99680afe8fc19ab3a2a0813317a4468870c61be86fe5ad0b7a45bb66de` |
| 90 | `theorem` | [ContinuousOn.comp_continuous](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-comp-continuous.md) | 533 | `result-track:a332dbd1a98c9fee95bc18edefd511546db7a53886e5e8a6fc5b6c1d22528086` |
| 91 | `theorem` | [ContinuousOn.image_comp_continuous](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-image-comp-continuous.md) | 538 | `result-track:c598c9aa45459270fd1fa092eff588d2927e485ec12530d5dce2b3668864d5dc` |
| 92 | `theorem` | [ContinuousAt.comp₂_continuousWithinAt](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuousat-comp-continuouswithinat-source-edition-2.md) | 542 | `result-track:38409262d98d6f996348d1383b2a2c247e73726aee68379bbd664592b9a688fa` |
| 93 | `theorem` | [ContinuousAt.comp₂_continuousWithinAt_of_eq](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuousat-comp-continuouswithinat-of-eq-source-edition-2.md) | 548 | `result-track:f6673c570d102710a6b1d91ece1a23da88421b25ecf2f7691daa14f2e8d8dd96` |
| 94 | `theorem` | [ContinuousWithinAt.mem_closure_image](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-mem-closure-image.md) | 559 | `result-track:d0d76fe721209abef2edfffef5d6681bec16fc730e6cf169e277068260ca2bee` |
| 95 | `theorem` | [ContinuousWithinAt.mem_closure](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-mem-closure.md) | 564 | `result-track:b74712db4a47fb250a0722ecff41b013e42c61239b09627d3b2a7639ce3f8c90` |
| 96 | `theorem` | [Set.MapsTo.closure_of_continuousWithinAt](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/set-mapsto-closure-of-continuouswithinat.md) | 568 | `result-track:25dd00e8840adef359b084682b0f608f070ba7026544f420fdff0c5855bb62d7` |
| 97 | `theorem` | [Set.MapsTo.closure_of_continuousOn](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/set-mapsto-closure-of-continuouson.md) | 572 | `result-track:e38b1a8330841f2614dfb9710793c2a397c9f6e49c99330ce921136a2ff27b60` |
| 98 | `theorem` | [ContinuousWithinAt.image_closure](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-image-closure.md) | 576 | `result-track:3d2a27e3004531a1d1db30723c73721697444b78d99eb3c8bfa3f3b7af594cd0` |
| 99 | `theorem` | [ContinuousOn.image_closure](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-image-closure.md) | 580 | `result-track:9fbf18bae80df3fd330e5195804e82bb0b2ceb487ec46f09c79405ebf3ac9007` |
| 100 | `theorem` | [ContinuousWithinAt.prodMk](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-prodmk.md) | 588 | `result-track:8a5df794005203be438d1d4a9fd08df567da3a23364dfd7f689023edc21d9a61` |
| 101 | `theorem` | [ContinuousOn.prodMk](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-prodmk.md) | 594 | `result-track:640e41ce67011b3ad3fcc1482878c69061a097b7970dba46848a2c9facd24741` |
| 102 | `theorem` | [continuousOn_fst](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-fst.md) | 598 | `result-track:de6ad95b66fbd04efe9b6e1f45d41d513a873548dbc744df5add31d42300588f` |
| 103 | `theorem` | [continuousWithinAt_fst](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-fst-source-edition-2.md) | 601 | `result-track:dffd977f12dd258553dac435804cdf83de840a64f3496be8c612b1bab53a01db` |
| 104 | `theorem` | [ContinuousOn.fst](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-fst-source-edition-2.md) | 605 | `result-track:f36688ef0d4d54cc63bedc694984b3fc1b1b7dea2d4b0df871105be9d5a9dc98` |
| 105 | `theorem` | [ContinuousWithinAt.fst](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-fst.md) | 609 | `result-track:68dbc30127693f03e4bf5365774b3a013adbea6d0f306fab23023a5c02e13ef6` |
| 106 | `theorem` | [continuousOn_snd](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-snd-source-edition-2.md) | 613 | `result-track:611526166d0d8af5fda866a2b468ad79c7746615634e35498629e97a994e3468` |
| 107 | `theorem` | [continuousWithinAt_snd](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-snd-source-edition-2.md) | 616 | `result-track:52aa306b3430dd51f3b315b0c5273ba1d038372c43c8f7cedfbc47c51fb513b0` |
| 108 | `theorem` | [ContinuousOn.snd](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-snd.md) | 620 | `result-track:1fab562b55cdc02f2ebd3bb7f72f74111edbfe30614c11efe571c605d62db78a` |
| 109 | `theorem` | [ContinuousWithinAt.snd](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-snd.md) | 624 | `result-track:127686d3f5af2466a2ba6d1f8b81f1d9d1dba7117137b95f4638f1567dc0a585` |
| 110 | `theorem` | [continuousWithinAt_prod_iff](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-prod-iff.md) | 628 | `result-track:b63de25f3f85ac712d3a2a673e6b69b7b077ce4aba378a52313381220c1321ee` |
| 111 | `theorem` | [ContinuousWithinAt.prodMap](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-prodmap.md) | 633 | `result-track:360c5f4694ed0b1bc963874d21495f2ffcc1bc6b9a8c35c0fcfbe6fc0e0dc7e9` |
| 112 | `theorem` | [ContinuousOn.prodMap](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-prodmap.md) | 639 | `result-track:6258eef6fa752f903673cefc9698e1e336497324d55acbfd0623bf2ec91e59c0` |
| 113 | `theorem` | [continuousWithinAt_prod_of_discrete_left](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-prod-of-discrete-left.md) | 643 | `result-track:164af712f8eec7348116f19d123f840f7abdf382eecd52dc8f94ac9c9023f12e` |
| 114 | `theorem` | [continuousWithinAt_prod_of_discrete_right](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-prod-of-discrete-right.md) | 649 | `result-track:187a4d7a59db826fc0a70318d1c9aad64397a9604f216e9986814e09b0b45e17` |
| 115 | `theorem` | [continuousAt_prod_of_discrete_left](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuousat-prod-of-discrete-left.md) | 655 | `result-track:189c266509d069ae7fbdc52a377c149f5b05884e04dd54d07793010936f11531` |
| 116 | `theorem` | [continuousAt_prod_of_discrete_right](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuousat-prod-of-discrete-right.md) | 659 | `result-track:4061ac4d08b8706c69a8207bf3da76b7314a03da1b4fb2b88d6fcf70f9495ccc` |
| 117 | `theorem` | [continuousOn_prod_of_discrete_left](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-prod-of-discrete-left.md) | 663 | `result-track:a9f8413ab802e4b3009a7de76306d82bddfb6b1dc68c78aa00ead70040807567` |
| 118 | `theorem` | [continuousOn_prod_of_discrete_right](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-prod-of-discrete-right.md) | 667 | `result-track:4736774b7d52f39b41bdaa7bf3e3181e3d2aadd8ec1cc13cafa2d3c7b0f4c6cb` |
| 119 | `theorem` | [continuous_prod_of_discrete_left](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuous-prod-of-discrete-left.md) | 673 | `result-track:911ac667af3cad666ffaa13a01c09ff1d83758a4d775461d90a53f62ca82adab` |
| 120 | `theorem` | [continuous_prod_of_discrete_right](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuous-prod-of-discrete-right.md) | 677 | `result-track:0dc95b9c0b3048c5d312525dd8fe95ac2be61c1288fb51047c4f5c7ee72912b9` |
| 121 | `theorem` | [isOpenMap_prod_of_discrete_left](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/isopenmap-prod-of-discrete-left.md) | 681 | `result-track:f4da0a8ebed6865d9a18d637048e1e67dc2a4f09e279d4b507815c1c0a9cc647` |
| 122 | `theorem` | [isOpenMap_prod_of_discrete_right](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/isopenmap-prod-of-discrete-right.md) | 686 | `result-track:48210ae953dfee11c6ff852402ab97676e3d5b8e5e3efffa75b08c05665861d3` |
| 123 | `theorem` | [ContinuousOn.uncurry_left](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-uncurry-left.md) | 691 | `result-track:f1ad35d9c9e69536a598d7a267460cccef0940606aafa929e7e316ffe9b0a9c7` |
| 124 | `theorem` | [ContinuousOn.uncurry_right](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-uncurry-right.md) | 697 | `result-track:73b90e7d5d49e9d13c52dca849241db8d93228d3a1eeb1dff3bbc17dab18fd67` |
| 125 | `theorem` | [continuousWithinAt_pi](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-pi.md) | 707 | `result-track:c0ce45fcfe97ea426ffea36d2edf8253f3157d1895b4606ed76c6a9732d5b2c4` |
| 126 | `theorem` | [continuousOn_pi](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-pi.md) | 712 | `result-track:e008a16f4c0d18365a17c52a8ef882d3f2815cdb6f6fa5686b7051ce8484ddf8` |
| 127 | `theorem` | [continuousOn_pi'](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-pi-source-edition-2.md) | 717 | `result-track:fd2a0f766b86e3b57ac0ad5b53fcd02f9c621155951578452cea0ecb8e48b2e8` |
| 128 | `theorem` | [continuousOn_apply](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-apply.md) | 723 | `result-track:37e830d2f49c87d666fdd5802784637780a2beb19181b1703760c62d7eba805a` |
| 129 | `theorem` | [continuousOn_const](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-const.md) | 733 | `result-track:86ce3c5ac9ed0fc800bc04d9635a1ad6cb89d0729c517aa69bdc8fa854317c66` |
| 130 | `theorem` | [continuousWithinAt_const](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-const.md) | 737 | `result-track:16bc5668aab1196f2c2d52f491ed8e19e9c5bd6026e59bbf03681f04c3591729` |
| 131 | `theorem` | [continuousOn_id](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-id-source-edition-2.md) | 741 | `result-track:5514b03b2a109a12284b36a04c9774ecff5864bd49dbca785e51a1f6168c7756` |
| 132 | `theorem` | [continuousOn_id'](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-id.md) | 745 | `result-track:3de04070c0a47b5a21c6d12737b56fd0ce0caaf6dfe3b0ff59bf5db39baa861b` |
| 133 | `theorem` | [continuousWithinAt_id](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-id.md) | 747 | `result-track:8a3c4cbee40f96b387700a175a39ef6a8256581c3497d99fd7b6b34fb766872e` |
| 134 | `theorem` | [ContinuousOn.iterate](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-iterate.md) | 750 | `result-track:67afd1a5105890a50eaa5effccbb02449311f0046a484c6b970ac4f3f8b25165` |
| 135 | `theorem` | [ContinuousWithinAt.finCons](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-fincons.md) | 758 | `result-track:2348f7c400d4715887651f0f40493bd037a3601826f1569d376f4052085503e8` |
| 136 | `theorem` | [ContinuousOn.finCons](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-fincons.md) | 764 | `result-track:449f6b7ffcf0ffb6275428aadc9974d88f3688b151a13ce215c32b8bf807c6e1` |
| 137 | `theorem` | [ContinuousWithinAt.matrixVecCons](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-matrixveccons.md) | 769 | `result-track:1995c7204a9e1fc611c8e8c609587e64eb8d8adeabc68e325fcceda920d54c5d` |
| 138 | `theorem` | [ContinuousOn.matrixVecCons](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-matrixveccons.md) | 774 | `result-track:b0940d15b3d002d55fb5808971f82d91a722e1619b5c08f497681160c9261364` |
| 139 | `theorem` | [ContinuousWithinAt.finSnoc](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-finsnoc.md) | 779 | `result-track:5824b4f8ac44472de144863f023aea8b3813533200b12856bc0d55f83e5aceee` |
| 140 | `theorem` | [ContinuousOn.finSnoc](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-finsnoc.md) | 785 | `result-track:c265deac3959fdcba23f72d7d0693e1b45bd4ed55fb36bb825765c8017268896` |
| 141 | `theorem` | [ContinuousWithinAt.finInsertNth](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouswithinat-fininsertnth.md) | 791 | `result-track:277393532a6c2c56c11e9c115890454ad9dad340091c2d644aeba38384cf00af` |
| 142 | `theorem` | [ContinuousOn.finInsertNth](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-fininsertnth.md) | 797 | `result-track:ea5f267173509ca7fecb20be9bbd44275d32a946577dd679a3f6a4fae55e26f0` |
| 143 | `theorem` | [Set.LeftInvOn.map_nhdsWithin_eq](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/set-leftinvon-map-nhdswithin-eq.md) | 805 | `result-track:92feb446aa7ecc7c09e7f8e396a8a6caa39143cfc076c742b45a3bd6623b87bd` |
| 144 | `theorem` | [Function.LeftInverse.map_nhds_eq](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/function-leftinverse-map-nhds-eq.md) | 815 | `result-track:c3aa8e3f8da3b81f0f62da9544d49932dc90399b49ca6ada4dd4311d76d5d44a` |
| 145 | `lemma` | [Topology.IsInducing.continuousWithinAt_iff](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/topology-isinducing-continuouswithinat-iff.md) | 821 | `result-track:d7d1b681e41d472e68742742e408937b5f7a871dccb6c099eb5d30473aa9beae` |
| 146 | `lemma` | [Topology.IsInducing.continuousOn_iff](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/topology-isinducing-continuouson-iff.md) | 825 | `result-track:bdbb8ebfbac509c2fd1ba00442c8afbc112be87abd8be201963e50487f9b7a67` |
| 147 | `lemma` | [Topology.IsInducing.map_nhdsWithin_eq](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/topology-isinducing-map-nhdswithin-eq.md) | 829 | `result-track:65cbdebcf5019d8f4e5098773dd6f8d46eee1be2f2f9fe7b2535ca9062729bfa` |
| 148 | `lemma` | [Topology.IsInducing.continuousOn_image_iff](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/topology-isinducing-continuouson-image-iff.md) | 833 | `result-track:e12ba2ea1b1d5a5150ff3a19c7880ec29945896e0be2ecbaea93c8d00e592b79` |
| 149 | `lemma` | [Topology.IsEmbedding.continuousOn_iff](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/topology-isembedding-continuouson-iff.md) | 837 | `result-track:e5a8bb9bca84b8035f2bac776369ed5be90882ce64770ad3e7bd38b4ca7d9c53` |
| 150 | `lemma` | [Topology.IsEmbedding.map_nhdsWithin_eq](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/topology-isembedding-map-nhdswithin-eq.md) | 841 | `result-track:f7c31f2684a25b50f9e714812d4125a20aa2fedb264045c5e61d021f29a8957a` |
| 151 | `theorem` | [Topology.IsOpenEmbedding.map_nhdsWithin_preimage_eq](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/topology-isopenembedding-map-nhdswithin-preimage-eq.md) | 845 | `result-track:10ec2cc07e0eaaab66e098270869278bc0e04f816e15065dffed77ef37950a9e` |
| 152 | `theorem` | [Topology.IsQuotientMap.continuousOn_isOpen_iff](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/topology-isquotientmap-continuouson-isopen-iff.md) | 851 | `result-track:df10c28465abe0cf188d343fce0497736d24cb3442a39ed8ad8687a7df5ce100` |
| 153 | `theorem` | [IsOpenMap.continuousOn_image_of_leftInvOn](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/isopenmap-continuouson-image-of-leftinvon.md) | 856 | `result-track:cb9b363592e7bb3252fbbcc41bd672aeccd0efab0ca03483888d02f7e6b3cfa9` |
| 154 | `theorem` | [IsOpenMap.continuousOn_range_of_leftInverse](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/isopenmap-continuouson-range-of-leftinverse.md) | 864 | `result-track:d92a7cd0fae71a9c7d6e10e3b40c7d9557c8a4c2005ff49a94caab6b23feb5de` |
| 155 | `lemma` | [ContinuousOn.union_continuousAt](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-union-continuousat.md) | 871 | `result-track:bf533a24f367ab844e4dd8fd886ba3527ab0db6dea7302d446c94e918012cb77` |
| 156 | `theorem` | [ContinuousOn.union_of_isClosed](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-union-of-isclosed.md) | 879 | `result-track:1df9e2605b8fd1044740d57862749ff8dd420c5a50490af8b868d27287d2ace6` |
| 157 | `theorem` | [continuousOn_union_iff_of_isClosed](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-union-iff-of-isclosed.md) | 889 | `result-track:b4afe78483d82f7fe1d67bce9eba69199f7265674b0f82c806e6383576d270f8` |
| 158 | `theorem` | [ContinuousOn.union_of_isOpen](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-union-of-isopen.md) | 895 | `result-track:e62294c671efe002de54db53358bf40d763769a8cd7e8b09be1a4659532a2ae6` |
| 159 | `theorem` | [continuousOn_union_iff_of_isOpen](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-union-iff-of-isopen.md) | 900 | `result-track:d9c2be3c1f0587d538843e77760308a3a2e782d9564732318ca1712d5e3b2882` |
| 160 | `lemma` | [ContinuousOn.iUnion_of_isOpen](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-iunion-of-isopen.md) | 906 | `result-track:424373683f6eed6b6942baed4174ae4ced8962e2e2a54ff241e77c5e6c7a6f2b` |
| 161 | `lemma` | [continuousOn_iUnion_iff_of_isOpen](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-iunion-iff-of-isopen.md) | 913 | `result-track:0ad2a333e51d9c160e4e62626230111178f5d25bd9c76f2979527309bdb9533d` |
| 162 | `lemma` | [continuous_of_continuousOn_iUnion_of_isOpen](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuous-of-continuouson-iunion-of-isopen.md) | 919 | `result-track:fc183656308987be4c6f2e02e0a8909633371561a1912f268178faba474f3e29` |
| 163 | `theorem` | [ContinuousOn.tendsto_nhdsSet](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-tendsto-nhdsset.md) | 928 | `result-track:0101248c5d49689c6e813ab0be4fea055c2972f670a90429108502365cc01281` |
| 164 | `theorem` | [Continuous.tendsto_nhdsSet](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuous-tendsto-nhdsset.md) | 941 | `result-track:e9caad2214394f784b6639c07f59b2253b06457c5a06c09dcea6da15a666b651` |
| 165 | `lemma` | [Continuous.tendsto_nhdsSet_nhds](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuous-tendsto-nhdsset-nhds.md) | 945 | `result-track:f00edec1a50120bcc09db59749607ccb208a54b089d18bec679ccd4b1660e219` |
| 166 | `lemma` | [ContinuousOn.preimage_mem_nhdsSetWithin](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-preimage-mem-nhdssetwithin.md) | 951 | `result-track:79c71d449a3977edf64ca9e99713ae8dcf50d17eb56c193d74395877aa6030c3` |
| 167 | `lemma` | [ContinuousOn.preimage_mem_nhdsSetWithin_of_mem_nhdsSet](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuouson-preimage-mem-nhdssetwithin-of-mem-nhdsset.md) | 964 | `result-track:28719754a165a2d9e752492e1c7f8b3347d3712a5735403239034a9a1a1cee46` |
| 168 | `lemma` | [Continuous.preimage_mem_nhdsSetWithin](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuous-preimage-mem-nhdssetwithin.md) | 968 | `result-track:7095c97aee5bff3db40b23a7aca7821ed16c1306cbcefda5a193d6ad10e048a6` |
| 169 | `lemma` | [Continuous.preimage_mem_nhdsSet](../../../../GeneralTopology/ContinuousOnPublic.lean/declarations/continuous-preimage-mem-nhdsset.md) | 972 | `result-track:a073410418b9386488b6e88b50b5d6fdb4b45eb32a3a50f54c92fe9ee0de4f0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=853b07606219b41c41dee5d55cdb2916ec46a92ead45ec3c5d571c0236874432 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousOn/Variantb2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ContinuousOn/Variantb2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
