# Verification target: Uniform Space Completion Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fb8218f38c4061ec876e8db12e62ad717e62d41",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant558da649f80ecc2388b7457e4891547d15e4a126d09a9fbcb3b120c8ddc51287.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fb8218f38c4061ec876e8db12e62ad717e62d41`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant558da649f80ecc2388b7457e4891547d15e4a126d09a9fbcb3b120c8ddc51287.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Completion/Variant558da649f80ecc2388b7457e4891547d15e4a126d09a9fbcb3b120c8ddc51287.lean.json)

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
| 1 | `def` | [CauchyFilter](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/cauchyfilter.md) | 68 | `declaration-track:02febfbf941da5cc7e3671a9c5fecf4359dd02c85ee6aca6d43a4816e3b097ae` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/instance.md) | 79 | `declaration-track:1f80268167e4f77ef5e677619abed6e6131378e8181516e33c161a75747c6658` |
| 3 | `def` | [gen](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/gen.md) | 82 | `declaration-track:db23895356e069995459aae366fe3639c8b6f549407311d0c465153cd6009f09` |
| 4 | `theorem` | [monotone_gen](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/monotone-gen.md) | 85 | `result-track:303f8887508437f1570d83ca6fe9729c97e87edac3d89b2f2b9bd8165ccbbc30` |
| 5 | `theorem` | [symm_gen](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/symm-gen.md) | 89 | `result-track:ef70d0b22e0b43267252a76412ff5dcf922885af755b5411ae4ddfe110af72f5` |
| 6 | `theorem` | [subset_gen_relComp](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/subset-gen-relcomp.md) | 106 | `result-track:c708085db1987883f196a1c89e6645c4b45d61f21574444d7cbf995c63e19dfc` |
| 7 | `theorem` | [comp_gen](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/comp-gen.md) | 116 | `result-track:8b3a230b45b6f276ca32ea80c4c26e49cf39d7f69103292662f39522288d27e5` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 130 | `declaration-track:a971f06cf0860ddc6b69bddda803bd70b4b2ec46c7d07e93ea3940f37217e20c` |
| 9 | `theorem` | [mem_uniformity](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/mem-uniformity.md) | 138 | `result-track:de75c19d9bab9ee2783c9d2822954e5decc97b9ab1b7661301261c7a31f83bd2` |
| 10 | `theorem` | [basis_uniformity](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/basis-uniformity.md) | 142 | `result-track:69e18a906a753a390cfe8822043e2b4ac4a44fc07361c2c4c943acbdd164f14b` |
| 11 | `theorem` | [mem_uniformity'](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/mem-uniformity-source-edition-2.md) | 146 | `result-track:fc8f0a43c7578d8ca5b69992378f3c8676f3addd32faa0442697f3d8873133cc` |
| 12 | `def` | [pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/purecauchy.md) | 152 | `declaration-track:b220daae0c2b7321a3f673225d84436d873764c84f15220eefda05a21dc920f4` |
| 13 | `theorem` | [isUniformInducing_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/isuniforminducing-purecauchy.md) | 155 | `result-track:f310e1a4281a4471515b041af103d67971149df797afd86b5f1230a8eec5acd5` |
| 14 | `theorem` | [isUniformEmbedding_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/isuniformembedding-purecauchy.md) | 166 | `result-track:151591df8b07a9ca1cdd13f766cf9d5427851d1a05cab992f523c793cdc79618` |
| 15 | `theorem` | [denseRange_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/denserange-purecauchy.md) | 170 | `result-track:1b291873dc36dd00fb433408698f667d7666da1fa707420f30c30c2d1de8dae6` |
| 16 | `theorem` | [isDenseInducing_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/isdenseinducing-purecauchy.md) | 192 | `result-track:18b6e29fd7b92f796903fc6dacf45eef8e58da7e4772aa42962e4fdb56104622` |
| 17 | `theorem` | [isDenseEmbedding_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/isdenseembedding-purecauchy.md) | 195 | `result-track:8c9a15c3f465352100664de79c2f7b6c690f43f861db3f492dcda8f91a7d2b5a` |
| 18 | `theorem` | [nonempty_cauchyFilter_iff](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/nonempty-cauchyfilter-iff.md) | 198 | `result-track:1bf61f8a86b346aaa5d6f5b1f32369b0d175bb818f79aedf1001fcc69f3110d0` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 207 | `declaration-track:dc0c11a9afcdce39dc5df968b3003b93c72dd4b6fa7b73fa73fced03e61d35de` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 221 | `declaration-track:467ae3afc5d7bbb0365272b7b785614f9592242e3591e68764215d8d56c4f3fa` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 224 | `declaration-track:b1e079212c1acd0ee6e7b520be49b3bf46123a8687318b4ccb74076b9377510f` |
| 22 | `def` | [extend](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/extend.md) | 232 | `declaration-track:67500156e47fa2135a4491c6812069d16b864a59071743cdfc680738d4bb86f6` |
| 23 | `theorem` | [extend_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/extend-purecauchy.md) | 240 | `result-track:6d7687e2ef4106e104ef3b17764429cf04612ce81e6421df0005ec7741789e1d` |
| 24 | `theorem` | [uniformContinuous_extend](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/uniformcontinuous-extend.md) | 250 | `result-track:0a3009869cd2e62fa7bcc2ed911d51febfdf3501edf0dc80b144a094653468d7` |
| 25 | `theorem` | [inseparable_iff](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/inseparable-iff.md) | 259 | `result-track:c4e5753e76ea2f57a34dbea263bbb0401ddf711f305c0ce6279cf01d938d9832` |
| 26 | `theorem` | [inseparable_iff_of_le_nhds](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/inseparable-iff-of-le-nhds.md) | 262 | `result-track:3ca53e886d27faef8e8cb997a0b6cfcf09118d300065359c7671c93b1bf69530` |
| 27 | `theorem` | [inseparable_lim_iff](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/inseparable-lim-iff.md) | 268 | `result-track:1cf7f931f9579e40a56425de71c28a5e13bc37954d4614f1da338fedb0a5a170` |
| 28 | `theorem` | [cauchyFilter_eq](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/cauchyfilter-eq.md) | 274 | `result-track:a044f7f6fd583e4db257619108b172a50a3707ead0ca8d37068ab47aae10a971` |
| 29 | `theorem` | [separated_pureCauchy_injective](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/separated-purecauchy-injective.md) | 281 | `result-track:dd80d74af623649850980952c871113148c282a10886361bdad9960dd733bd97` |
| 30 | `def` | [Completion](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/completion.md) | 299 | `declaration-track:f3981c0a5f422b70cd1f0a0aa2c4dbc174f4ad7142870b4f44bffc2643ae50c3` |
| 31 | `instance` | [inhabited](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/inhabited.md) | 303 | `declaration-track:7583749f18af0818d9e083311d7a4849e67a6d663cc9c77d552d532f17147727` |
| 32 | `instance` | [uniformSpace](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/uniformspace.md) | 306 | `declaration-track:bcb610a7248a9c59c292f77f497d424976137a9c3c432f8263b85028a21865fa` |
| 33 | `instance` | [completeSpace](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/completespace.md) | 309 | `declaration-track:9ab7d960f596541111f8102bfb8986a12032be4837e2af0569ee65ee1b1ba041` |
| 34 | `instance` | [t0Space](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/t0space.md) | 312 | `declaration-track:f321188f8e650fae7cf19d1f0cae8198ad3f138ae0a8e7e796e2589a89e671ff` |
| 35 | `def` | [coe'](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/coe.md) | 316 | `declaration-track:d6797c9fce5af3a20fd03efbdaa25a8b096558efd81a782480b2abdee84abbe3` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 319 | `declaration-track:c59a6ce47094901b513d56e6a4b1133a9896d464b9125738d502b70e2aab2987` |
| 37 | `theorem` | [coe_eq](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/coe-eq.md) | 323 | `result-track:5fa110986f3cbf19429a38fe5ac1cb5afac31143558e5962affc1593b1ebbbd5` |
| 38 | `theorem` | [isUniformInducing_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/isuniforminducing-coe.md) | 325 | `result-track:38b4a0ab9b4d5e89b10af19bda347bf76db71a5503179f360b86c7ff56822493` |
| 39 | `theorem` | [comap_coe_eq_uniformity](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/comap-coe-eq-uniformity.md) | 328 | `result-track:8d934c76ac0e011186e6d4db6657ecb02a32943afe7e8f0507362d5e480b6c1e` |
| 40 | `theorem` | [denseRange_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/denserange-coe.md) | 333 | `result-track:472a09873222010c0c39e36bc111cad3c548b2a15952bbbb7e41c24d52d0bf9e` |
| 41 | `def` | [cPkg](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/cpkg.md) | 338 | `declaration-track:fa4ec0583788a97e4b2b524949b16a9d34cc4d731b2e60049dd84c6354c105a9` |
| 42 | `instance` | [AbstractCompletion.inhabited](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/abstractcompletion-inhabited.md) | 347 | `declaration-track:5a475b60160532236ddf7cd8bfc80a6ed3a8db1aad92468bbfccd9e0a8427429` |
| 43 | `theorem` | [nonempty_completion_iff](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/nonempty-completion-iff.md) | 353 | `result-track:d0855e6ee59cb344a052fe7ad835714e27a189e2f6ddbcf603651f3cb95369be` |
| 44 | `theorem` | [uniformContinuous_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/uniformcontinuous-coe.md) | 357 | `result-track:312448c1b8b71a67e42a3432d00f689bd5c5ecf786cf5abcdea1e5793e3f3e3c` |
| 45 | `theorem` | [continuous_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/continuous-coe.md) | 360 | `result-track:c26c5a56c6c9a7730913b212db148ae5ed1a301c37a63b46c7fb046d6306ed43` |
| 46 | `theorem` | [isUniformEmbedding_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/isuniformembedding-coe.md) | 363 | `result-track:7cc3cfa5d7f54f4d1ee65cf25f2a550fc22ec4dde2591ca7776637caef1a4ed6` |
| 47 | `theorem` | [coe_injective](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/coe-injective.md) | 367 | `result-track:c8b7e2d4f273ab095ab722d22fa6d44a0344ef167cde297ca4e1671e59f2cba6` |
| 48 | `lemma` | [coe_inj](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/coe-inj.md) | 373 | `result-track:e07c3a6b45bb2c18a84040b3041dbdd02dc6cec779c638bd40c22836c802c6a4` |
| 49 | `theorem` | [isDenseInducing_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/isdenseinducing-coe.md) | 376 | `result-track:de37f9343713ef8f2b10416b28b8c292b89849230b4731bb9c6a9c8a8e825d39` |
| 50 | `def` | [UniformCompletion.completeEquivSelf](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/uniformcompletion-completeequivself.md) | 380 | `declaration-track:69982cb12410a47cf7f5f6431c5583bb3bc504692535fb44e5038cca2ffd37ab` |
| 51 | `instance` | [separableSpace_completion](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/separablespace-completion.md) | 385 | `declaration-track:83c80155e31c4b33d7cbbb91433d42fdc73cb2065969cd3bca5a1fa1849ec58b` |
| 52 | `theorem` | [isDenseEmbedding_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/isdenseembedding-coe.md) | 388 | `result-track:92f1db5b6e2af3818ade2717a0dde17f610ab870c913fdd4e3df08d7c4f599f5` |
| 53 | `theorem` | [denseRange_coe₂](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/denserange-coe-source-edition-3.md) | 391 | `result-track:fba7d200ed029920035e7600f476cb33b3aa09e119a0f20db64ded0fe0565964` |
| 54 | `theorem` | [denseRange_coe₃](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/denserange-coe-source-edition-2.md) | 395 | `result-track:48e5f44c83c46a0867371f94271951794acf9fb4b687b8d1e3358f3de49d6a30` |
| 55 | `theorem` | [induction_on](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/induction-on-source-edition-2.md) | 401 | `result-track:59784b061a738a89391bbe901456598c7201726da3d2b2d59649bfd9c56ab058` |
| 56 | `theorem` | [induction_on₂](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/induction-on.md) | 406 | `result-track:3f340b92852ae19c9a55d90630fe1ac6ffc3578781d7af55a15ccd7801903863` |
| 57 | `theorem` | [induction_on₃](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/induction-on-source-edition-3.md) | 414 | `result-track:bd5f605a26c50a8d750dbf9ddb81ecb2d250024a0a684286cdbeb8140a24716a` |
| 58 | `theorem` | [ext](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 422 | `result-track:9ea62037c49a658961e79276f15c9332f106710f09e94a1bab888b47ba6cf2c1` |
| 59 | `theorem` | [ext'](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/ext.md) | 426 | `result-track:73448ad552ea5e65931e52e000db149f46d92def1d2cc11512023f57bb10f3a2` |
| 60 | `def` | [extension](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/extension-source-edition-2.md) | 437 | `declaration-track:bc516e7d7d90baa7f74821c3f959178f7debcc64cecffe638f5da401947b340f` |
| 61 | `theorem` | [uniformContinuous_extension](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/uniformcontinuous-extension.md) | 445 | `result-track:65ceeebc82e0e730c56e93f2e5374edda42ad58bb2c4a944cd39cca2b7bd1088` |
| 62 | `theorem` | [continuous_extension](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/continuous-extension.md) | 449 | `result-track:327bd98bf9960dddb9b4f21ceba9f9b39c39b7a0576fbc5b36d5da9133f54bb7` |
| 63 | `theorem` | [extension_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/extension-coe.md) | 454 | `result-track:fc965f7d8d46320e761ce7817c463107ee89fe04a9fa8e196fbfdb61e4fac40a` |
| 64 | `theorem` | [inseparable_extension_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/inseparable-extension-coe.md) | 458 | `result-track:176fe9584c2da9d383ac8418cc8ccc0f7e5b4fb3027ee0d63d15b58787376440` |
| 65 | `lemma` | [isUniformInducing_extension](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/isuniforminducing-extension.md) | 462 | `result-track:04f498828d76bb3440d4fa092448dcb0b18524c982d8410b1848cc22902843d0` |
| 66 | `theorem` | [extension_unique](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/extension-unique.md) | 468 | `result-track:d956dfb3684e9d21d5acc1129af33e2eb2000e7013a946152887d7ef56c0778d` |
| 67 | `theorem` | [extension_comp_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/extension-comp-coe.md) | 474 | `result-track:6e571ce1d5e2d8decb98a58547ce7d2ee8ee19f6544f581ae3aff5ae11f9dd5b` |
| 68 | `def` | [map](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/map.md) | 485 | `declaration-track:e3beb2e93fd530813112ee078e70cf674df90ecd55eb16fb8378f535b4593561` |
| 69 | `theorem` | [uniformContinuous_map](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/uniformcontinuous-map-source-edition-2.md) | 489 | `result-track:cc5ce05d7eed92233d367c685ff02dce40b57ecf602f80aac78fa768bf5b4994` |
| 70 | `theorem` | [continuous_map](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/continuous-map.md) | 493 | `result-track:0b7cbba8e27a62b4464a1bc0dfca0791f17d4259eb1b54a9d9574367994cfc65` |
| 71 | `theorem` | [map_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/map-coe.md) | 496 | `result-track:9135de58c2541fed11ba9f7548afe3fca8a28b04b225f800ef84e3ae73009a98` |
| 72 | `theorem` | [map_unique](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/map-unique.md) | 499 | `result-track:7e769ae12e6f0703add4ef3986d7102409d89df10cd7193052f4936612392552` |
| 73 | `theorem` | [map_id](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/map-id.md) | 504 | `result-track:f395534584c1ca46a6a903ec5dd2a11434a3ed64330840704cc96383f4c5bd74` |
| 74 | `theorem` | [extension_map](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/extension-map.md) | 507 | `result-track:9f38a02a3d28e9cfc1a19196a97396ed85d62082e5922de48c3d6fbe49ce8b20` |
| 75 | `theorem` | [map_comp](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/map-comp.md) | 514 | `result-track:9340f8a1922a0a52025ab2836241b039eb701300c4caaeeda77ab7d8a5f457f3` |
| 76 | `def` | [mapEquiv](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/mapequiv.md) | 519 | `declaration-track:86b7f0200b2f2682be09a16cf93cbb7b183593b6466131fa387b35950b851165` |
| 77 | `theorem` | [mapEquiv_symm](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/mapequiv-symm.md) | 522 | `result-track:477293fa30ea5be6ca9e3fec78202fd623f93df779c28197f6314e237c066922` |
| 78 | `theorem` | [mapEquiv_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/mapequiv-coe.md) | 526 | `result-track:73bbc64913095415ff9452571447ed1c260618758088588df9e8560c63ac2111` |
| 79 | `def` | [completionSeparationQuotientEquiv](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/completionseparationquotientequiv.md) | 537 | `declaration-track:bc5ecc36e8db9205cf7b01b1acffbf7de1e2e215a5de7af65df21a98a75a06f6` |
| 80 | `theorem` | [uniformContinuous_completionSeparationQuotientEquiv](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/uniformcontinuous-completionseparationquotientequiv.md) | 551 | `result-track:4969049707b9f9e0a9bd198077ebb933136b8843bf79f3ce85685db6e4b08b41` |
| 81 | `theorem` | [uniformContinuous_completionSeparationQuotientEquiv_symm](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/uniformcontinuous-completionseparationquotientequiv-symm.md) | 556 | `result-track:7e58c445100e2fcf6c7a8af5957e2db6051b43d17697adff027e38836f1024be` |
| 82 | `def` | [extension₂](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/extension.md) | 567 | `declaration-track:1a92ac793db010537259ddf5d88ac79944c9519128419f6538eea91098402bf5` |
| 83 | `theorem` | [extension₂_coe_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/extension-coe-coe.md) | 574 | `result-track:1c24298e5e02219a7a52e1ff437d4089d26999d290af03e4ae39da1499ae7351` |
| 84 | `theorem` | [uniformContinuous_extension₂](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/uniformcontinuous-extension-source-edition-2.md) | 583 | `result-track:d74f31b0d4c5c86ce692ccb6929c15ad750407668ca9f041837a0a096740b0ff` |
| 85 | `def` | [map₂](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/map-source-edition-2.md) | 591 | `declaration-track:fa98172103f349820452c50dd86c69d7ef1e4c40ed39aaf6ee2a5580c8755966` |
| 86 | `theorem` | [uniformContinuous_map₂](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/uniformcontinuous-map.md) | 595 | `result-track:5b1d232149b7870046b78dfde7443cfa471a009dc165f69daec8ad4a6a730475` |
| 87 | `theorem` | [continuous_map₂](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/continuous-map-source-edition-2.md) | 598 | `result-track:a657552ed9c3422037a7ee0c9eacc0bc757311b4142292cd1c2e4df8a1328f6b` |
| 88 | `theorem` | [map₂_coe_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedPublic.lean/declarations/map-coe-coe.md) | 603 | `result-track:5d5ba59abb7b0a15b6ba002003d3aca41f0ed5e99c0783d8e91b383fef8e18b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fbdabb16af271847a01918261225a57e1cda55c58744b540f0fb349462cea90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant558da649f80ecc2388b7457e4891547d15e4a126d09a9fbcb3b120c8ddc51287.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Completion/Variant558da649f80ecc2388b7457e4891547d15e4a126d09a9fbcb3b120c8ddc51287.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
