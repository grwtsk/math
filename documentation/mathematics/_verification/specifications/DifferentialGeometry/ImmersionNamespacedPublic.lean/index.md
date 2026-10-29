# Verification target: Immersion Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23c6443c76265e8edb72ffe0f16497aae96eaf1a",
  "lexical_observation_count": 108,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23c6443c76265e8edb72ffe0f16497aae96eaf1a`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean.json)

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
| 1 | `def` | [ImmersionAtProp](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/immersionatprop.md) | 155 | `declaration-track:03df5f5e224915ba2a423064b52a637f865f4f2a513d38a429147313b331c2c1` |
| 2 | `lemma` | [isLocalSourceTargetProperty_immersionAtProp](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/islocalsourcetargetproperty-immersionatprop.md) | 162 | `result-track:e960aa32389bcf0720e00146c4c81eef4ea5d18da2910b02c0ef5c7a78abad46` |
| 3 | `def` | [IsImmersionAtOfComplement](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersionatofcomplement.md) | 186 | `declaration-track:fd6e9bc5a6e45f2e064c2f6bfe0057e0b9d9d1d8e59d2fc51b57778d522e380b` |
| 4 | `def` | [IsImmersionAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersionat-source-edition-4.md) | 203 | `declaration-track:dd2a845530a22edb86c14dc39e06350f683356e11bc35b839954077026d5c395` |
| 5 | `lemma` | [mk_of_charts](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/mk-of-charts-source-edition-2.md) | 211 | `result-track:97c05644bdd4185cba2d4f05f9d1711f0aee87106e17d06d56f3e50c7a7cfb2c` |
| 6 | `lemma` | [mk_of_continuousAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/mk-of-continuousat-source-edition-2.md) | 226 | `result-track:f90be97e34c29435f9a6f21c9c4d37f9f337fc68caffc27855cdeed9ddcef55a` |
| 7 | `lemma` | [mk_of_continuousAt_of_extChartAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/mk-of-continuousat-of-extchartat.md) | 239 | `result-track:d881766a763becaf5f5eb68924c1766a3d10745aae69eeb6bb0c80a996ab2fe7` |
| 8 | `def` | [domChart](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/domchart-source-edition-2.md) | 252 | `declaration-track:de060f6abf8aff2ef146de447e15142ecef8b244a1614068b8b00e77a24ef1fb` |
| 9 | `def` | [codChart](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/codchart.md) | 260 | `declaration-track:29a62cf1b3d720b1671a16d62dd22bc180f6ae2e6298244c7e8ed72e9f9bf34f` |
| 10 | `lemma` | [mem_domChart_source](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/mem-domchart-source.md) | 263 | `result-track:49a5a4949a4a24974c762f32845612866ee50048dcaa3d6363f83d103b9c07b8` |
| 11 | `lemma` | [mem_codChart_source](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/mem-codchart-source-source-edition-2.md) | 266 | `result-track:ba00581a70b67a9d63cb3998c76839bf334e8dda6c2e6f3c4c51b0eb1df91223` |
| 12 | `lemma` | [domChart_mem_maximalAtlas](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/domchart-mem-maximalatlas.md) | 269 | `result-track:02d2f2d7b88a0dc0974ebaa9a32d0287a72bb37a445578cd8dd6714cd0087bc0` |
| 13 | `lemma` | [codChart_mem_maximalAtlas](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/codchart-mem-maximalatlas-source-edition-2.md) | 273 | `result-track:aeb545163c0e393639b08052d3a4632814148b99cd2347c2669e76996ac7bb8f` |
| 14 | `lemma` | [source_subset_preimage_source](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/source-subset-preimage-source.md) | 277 | `result-track:8353249cca3cab29300e778dd23dd30d62083d229f954c984353f57ab0abeec5` |
| 15 | `lemma` | [mapsto_domChart_source_codChart_source](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/mapsto-domchart-source-codchart-source.md) | 281 | `result-track:5ea45d6734731df3df39bca407f3cf74c3e2e874632bdc22587de6058f5503e7` |
| 16 | `def` | [equiv](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/equiv-source-edition-2.md) | 288 | `declaration-track:cb48ebed19466e9ad5e49f120aa31ec51bbbb2580d64adb71a24b9b1f4cf8b81` |
| 17 | `lemma` | [writtenInCharts](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/writtenincharts-source-edition-2.md) | 291 | `result-track:ef7fa4251515908f7b3f16ab9f071baa92b7649728ea4c6a61a6e67b86f2a057` |
| 18 | `lemma` | [property](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/property-source-edition-2.md) | 296 | `result-track:e3e826355b5c0fd3f7df0f0f655c533d273a624c2b32dd088660836590f921ee` |
| 19 | `lemma` | [map_target_subset_target](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/map-target-subset-target-source-edition-2.md) | 318 | `result-track:cf9f7c43e5593be4892fa8a09166ce4add198054e778368bf41f5edaa7b03b72` |
| 20 | `lemma` | [target_subset_preimage_target](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/target-subset-preimage-target-source-edition-2.md) | 330 | `result-track:da9ba0287071aed4ec417731a45b6e780b9ebdf02f1ff108203f838251992f03` |
| 21 | `lemma` | [congr_of_eventuallyEq](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/congr-of-eventuallyeq-source-edition-2.md) | 336 | `result-track:9f74a9584f543525fed19690b45052942d9af4c30b37388e11265dfc4d9da325` |
| 22 | `lemma` | [congr_iff_of_eventuallyEq](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/congr-iff-of-eventuallyeq.md) | 343 | `result-track:925be6213442cceabad8979255d11f5acc55c9520ae0a101ab6c022dbd48cf93` |
| 23 | `lemma` | [small](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/small.md) | 348 | `result-track:54258e140c4c9b6bb0341c1d5a67bb6e7d9a88cccec1940bb7fb713f648f8ff0` |
| 24 | `def` | [smallComplement](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/smallcomplement.md) | 353 | `declaration-track:55337e0329dc61f90d516fce75fc598072361f7fa155e5b324bd7cc75179a9c6` |
| 25 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 357 | `declaration-track:b4877f1697d9da3e16eddd081c2576178ba4f176d100116ae183612aa294a856` |
| 26 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 361 | `declaration-track:de9d12a083e38893d3cc39847f20b56d0dc2c34f34ce399fe2fe62243701debe` |
| 27 | `def` | [smallEquiv](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/smallequiv.md) | 369 | `declaration-track:f5362238be832ee48301956eb4c7baeccd1d9b7d1f99704bad50ef03928ba33c` |
| 28 | `lemma` | [trans_F](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/trans-f.md) | 373 | `result-track:43090fb7e4368bf7fa61072c1ff22d023e464836c14c3c92b8466f011c0e9e4f` |
| 29 | `lemma` | [congr_F](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/congr-f.md) | 383 | `result-track:22ba3434b744dfc2e390fc25518f0a5694ba9ee8d8afb39d00566878f544bbac` |
| 30 | `lemma` | [Immersion Namespaced Public](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersionatofcomplement-source-line-388-occurrence-2.md) | 388 | `result-track:5a8eecd2c0d740dd547fa9a205293b5341ca2e069b48b3784bddca1cc0ebd151` |
| 31 | `theorem` | [prodMap](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/prodmap-source-edition-3.md) | 394 | `result-track:e078200fda4473a7d6780d0b1697e535e21f16a29e009fd1f89e4e52532a85ff` |
| 32 | `lemma` | [isImmersionAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersionat.md) | 410 | `result-track:1bf2450fd107c5c79fa69a1a2a3dd9435fe618766cade633f071ae58a52ea19d` |
| 33 | `lemma` | [of_opens](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/of-opens.md) | 417 | `result-track:a3ec60bb64305949d9f83cccd49bd3579e22b5b7047287fd732a1413c6015576` |
| 34 | `lemma` | [Immersion Namespaced Public](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersionatofcomplement-source-line-425-occurrence-2.md) | 425 | `result-track:9ae20056c7476347df34dbbd7ed5f8e3e25ad6c120f63e8090c2891ed92243b9` |
| 35 | `theorem` | [continuousOn](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/continuouson-source-edition-2.md) | 431 | `result-track:9152726c271b16c5999cb37f9d6831c9d56b4857e86945372236543b30bdcc91` |
| 36 | `theorem` | [continuousAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/continuousat-source-edition-2.md) | 440 | `result-track:6ca23116a1ba3ea492ab7363737166fbdb3600608435649dbde8634b56996958` |
| 37 | `theorem` | [contMDiffOn](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/contmdiffon-source-edition-2.md) | 444 | `result-track:d4f09e4ff91724924f9ace84167cce0cf47d8fa5f0f33c233133bedf6012382f` |
| 38 | `theorem` | [contMDiffAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/contmdiffat-source-edition-2.md) | 454 | `result-track:e44c8746bd03246430325725e7b52dec4a7a94c3a7090871ebfe179228470400` |
| 39 | `lemma` | [aux](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/aux.md) | 461 | `result-track:f0ac4e2e4293815d3140c97d7e9774ada15707670707e0124a24fe12a955ce4f` |
| 40 | `lemma` | [Immersion Namespaced Public](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/iff-comp-isimmersionatofcomplement.md) | 501 | `result-track:0bb7a38b85c8ad3ccc1ae11a280ca3776f3839b261fad989bed9c039d081206f` |
| 41 | `lemma` | [comp_diffeomorph](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/comp-diffeomorph-source-edition-3.md) | 529 | `result-track:e16f73c0195726253d99161b248ba86de7150cc24c4a1ae8c306e73eff8f22da` |
| 42 | `lemma` | [isDiffImmersionAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isdiffimmersionat-source-edition-4.md) | 545 | `result-track:e3bfa4307e0ccf3e2f22a60ebfbdd6f2907afed154eefcc525d89f78c9097773` |
| 43 | `lemma` | [injective_mfderiv](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/injective-mfderiv-source-edition-2.md) | 572 | `result-track:45e6d3f6eb522a4df4618e0bf914bcaffe51fc1063fa205b76e79e82bc4f1618` |
| 44 | `lemma` | [mk_of_charts](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/mk-of-charts.md) | 580 | `result-track:2604041de90607e0cbf85d3a9123d523722e731404d406558379a7310f41d496` |
| 45 | `lemma` | [mk_of_continuousAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/mk-of-continuousat.md) | 597 | `result-track:246908c5e6f89c0135420f53d7dba0eec920e3f42af2b93c086282066c4b50f2` |
| 46 | `def` | [complement](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/complement.md) | 611 | `declaration-track:60390050540777d7795c27814c2d26c3d9fd41485fa09481de2f56dab0eab1c7` |
| 47 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/instance.md) | 613 | `declaration-track:060a323b9a2f10a2d54e0a5c08a7d7d6d912d6ed98f84e8d8a74e655dd0dc10a` |
| 48 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 616 | `declaration-track:fdcb1d0bd2ce962212c802827fd2ae54b14ea72de1125bcf4ed1e4405c26e9a0` |
| 49 | `lemma` | [isImmersionAtOfComplement_complement](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersionatofcomplement-complement.md) | 619 | `result-track:9d63554de294448ae15d3791ee18d621f2a3d988234f7194fb904ce9ea00adaa` |
| 50 | `def` | [domChart](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/domchart.md) | 628 | `declaration-track:428bac69f0900fa03364058c4b5602ac728121e57b9d4163d21738db9d425bd7` |
| 51 | `def` | [codChart](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/codchart-source-edition-2.md) | 636 | `declaration-track:b23c389b56a3650a027e11023e4df799ac44d380ad6fa977348055da80b2fc4f` |
| 52 | `lemma` | [mem_domChart_source](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/mem-domchart-source-source-edition-2.md) | 639 | `result-track:5d73f0f851e67f0cf01e23e35289fb19ed03eb23ae4e4113898da90d8e5f76a3` |
| 53 | `lemma` | [mem_codChart_source](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/mem-codchart-source.md) | 642 | `result-track:aeef724585e779b1610679f111ddc4f640f7fc5b0e2f313a44eaee0b7d6bb3bb` |
| 54 | `lemma` | [domChart_mem_maximalAtlas](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/domchart-mem-maximalatlas-source-edition-2.md) | 645 | `result-track:79868d9c45911139b6d7f0bdc53b0682db8f4f13faf7ac2051c081e4265564c8` |
| 55 | `lemma` | [codChart_mem_maximalAtlas](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/codchart-mem-maximalatlas.md) | 649 | `result-track:2ef0f054f89552975c0764ecfdb5a38f9686a3ce1251c511075e380cfab7718b` |
| 56 | `lemma` | [source_subset_preimage_source](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/source-subset-preimage-source-source-edition-2.md) | 653 | `result-track:bfabac864e0acc23b18ce2598d59dbcb1bff6955dc5b3b13c4b30fb6f7837171` |
| 57 | `def` | [equiv](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/equiv.md) | 660 | `declaration-track:691cf29aeb41009182b92c2dd3a0768f5351f7847e3bb5bd9c088d9a4479ea6c` |
| 58 | `lemma` | [writtenInCharts](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/writtenincharts.md) | 663 | `result-track:e3fb3b5f37d713d858d19a3621dd4553cd23c092470fada064ffbcdec98e9bcf` |
| 59 | `lemma` | [property](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/property.md) | 668 | `result-track:cb74b952e28b199358715bbf024892415ab1b43ca5764fcea1935294cc0ec3b6` |
| 60 | `lemma` | [map_target_subset_target](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/map-target-subset-target.md) | 691 | `result-track:43d73269316e1532a0aa3c38fbd7904ad2153e7f3edc8f75d4b5e6fca5756b6c` |
| 61 | `lemma` | [target_subset_preimage_target](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/target-subset-preimage-target.md) | 698 | `result-track:b51d350e75c3bf1c2bf9f704d647f6e29fffa75c933686fe77b7c94254642bf0` |
| 62 | `lemma` | [congr_of_eventuallyEq](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/congr-of-eventuallyeq.md) | 704 | `result-track:81c10eb6e2ff3a563e4d5aa0e7d6e73f8e771e343ae53b9560df393d605c9fe9` |
| 63 | `lemma` | [congr_iff](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/congr-iff.md) | 711 | `result-track:251234df6c8d33bca67f43a74a3e089011b66ab626ef3be6795c2706cbc29b8a` |
| 64 | `lemma` | [Immersion Namespaced Public](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersionat-source-line-716-occurrence-2.md) | 716 | `result-track:9b6087cfa67682a6bff610dca9b3625f30a5ef89cc76544003a15ce9b00beb1c` |
| 65 | `theorem` | [prodMap](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/prodmap.md) | 725 | `result-track:6b67f521acdf6dde659331c0fb2cf3f32887c111c190048f07905154de19af1e` |
| 66 | `lemma` | [of_opens](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/of-opens-source-edition-3.md) | 733 | `result-track:bea3eafbceb60c911996d611df57c150fe73b37ca19f073e3bea10f9e16bf94b` |
| 67 | `lemma` | [Immersion Namespaced Public](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersionat-source-line-739-occurrence-2.md) | 739 | `result-track:776416c8bbc639150bac051f7a8a672e6ee6e7cff4bcb6e96fb0d0ed9ed89a8a` |
| 68 | `theorem` | [continuousOn](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/continuouson.md) | 745 | `result-track:87c135a4121b24d6861ba9d865f2182c84e2eeb6c38f7479c6f1c65c99ff46ac` |
| 69 | `theorem` | [continuousAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/continuousat.md) | 749 | `result-track:00af02b3c92ad28cd847224da12d3efdf5e79ab3e1142fcf5b92750d517fd183` |
| 70 | `theorem` | [contMDiffOn](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/contmdiffon.md) | 753 | `result-track:b6802db846ab4e9c542f9560ac1055555c6e8d3a02b8f862cc136c9ca4813b5a` |
| 71 | `theorem` | [contMDiffAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/contmdiffat.md) | 757 | `result-track:75e92e6e0f2805eba290c98cfd659833ea26c48e4f18ef1d2ce1d90bb913b50d` |
| 72 | `lemma` | [Immersion Namespaced Public](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/iff-comp-isimmersionat.md) | 762 | `result-track:a05c071252901b634663ae45bf39ddf0739bb0308fcdac4c1c9296877e6fbf39` |
| 73 | `lemma` | [comp_diffeomorph](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/comp-diffeomorph.md) | 771 | `result-track:6434b82bf2431e7eb1c02aa72e59151355db7bb24f6c4a387ae28c457f227681` |
| 74 | `lemma` | [isDiffImmersionAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isdiffimmersionat-source-edition-2.md) | 779 | `result-track:58ceb7fda5bcf21d8c70308efd74676e3a543c7fc0c4cd136463ca660a64f1d6` |
| 75 | `lemma` | [injective_mfderiv](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/injective-mfderiv-source-edition-4.md) | 783 | `result-track:f9f73512df16d0e4cf33ebdddbfb245aaffe6de11bf5a8f78cb0f0e838353538` |
| 76 | `def` | [IsImmersionOfComplement](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersionofcomplement.md) | 799 | `declaration-track:b920d6b056c65a36e36b06166d34bbbbb6db7c16ace0aec2ba21249c139064aa` |
| 77 | `def` | [IsImmersion](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersion.md) | 814 | `declaration-track:711cbed1a55d8f331f53d89f48b4e4910d6ebdb24956a9d2c3312896cb5bee4b` |
| 78 | `lemma` | [isImmersionAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersionat-source-edition-3.md) | 822 | `result-track:b8b9b4e8f76feeb64db2306387909b6bfe5cd92408e7d15b026f38f9b1c34d48` |
| 79 | `theorem` | [congr](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/congr.md) | 826 | `result-track:18d8febe276a10acd6f5efd3c06acb912803f28e4fee746e65b292814be2d4ca` |
| 80 | `lemma` | [trans_F](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/trans-f-source-edition-2.md) | 830 | `result-track:83ac89ce6f9ff56e6c12220051b8c26a3873690b201c7955778eec0957b69488` |
| 81 | `lemma` | [congr_F](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/congr-f-source-edition-2.md) | 835 | `result-track:aec4188958638f9800747d16736984762002390f4ca33af99d5acc2cff00be98` |
| 82 | `theorem` | [prodMap](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/prodmap-source-edition-4.md) | 841 | `result-track:fe49beee0fe01d7a7a79d012213cd31c914ca0373f6d941723e1663bb821a659` |
| 83 | `lemma` | [isImmersion](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersion-source-edition-2.md) | 853 | `result-track:da9ce72c8ffef2b32d7fabec8da861ff9c6c353bb27a7aff80a62670b98d2aa4` |
| 84 | `lemma` | [id](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/id-source-edition-2.md) | 865 | `result-track:1ed34707ac8e3e0ccca5bd2915a6b31fadf0bf6014adf220c7d9700733d83982` |
| 85 | `lemma` | [of_opens](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/of-opens-source-edition-4.md) | 874 | `result-track:d93b8c79d4a76c2a6d0563cf7dc3c21189c8b66adea2b2f8d0786d3ef1b950a3` |
| 86 | `lemma` | [Immersion Namespaced Public](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersionofcomplement-source-line-879-occurrence-2.md) | 879 | `result-track:aad8de773964fa6c74a990e3b00ace74f7cb0f598d68c26e0f44e0ce1e4988fa` |
| 87 | `lemma` | [comp_diffeomorph](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/comp-diffeomorph-source-edition-2.md) | 885 | `result-track:cbd242c91a482648008d92d1f47c22b3b875f28a50634240dd0558b526d79336` |
| 88 | `lemma` | [sumInl](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/suminl.md) | 893 | `result-track:ea71ff9048a0586dac4281cb433792d9bc7e59f2f2e79f62fac28093421f67cf` |
| 89 | `lemma` | [sumInr](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/suminr.md) | 905 | `result-track:62b263ef34f403f933d46006684891b7729e2ad0e232cd3d59106e4f55ec9950` |
| 90 | `theorem` | [contMDiff](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/contmdiff.md) | 912 | `result-track:09613568edfd87364c0148249efca9bfe3f21ff0db7166e39185726cabd1f5e6` |
| 91 | `lemma` | [Immersion Namespaced Public](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/iff-comp-isimmersionofcomplement.md) | 917 | `result-track:fc3dd4b759672d764f28ddebcca39746f24e2d59563e0c7ed0cc398a1e3f5247` |
| 92 | `lemma` | [isDiffImmersionAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isdiffimmersionat-source-edition-3.md) | 925 | `result-track:cfd03d62fc838159b98ab555c1c0acc9a6f53bd2e3008a5a5e8a4a4026a11b13` |
| 93 | `lemma` | [injective_mfderiv](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/injective-mfderiv-source-edition-3.md) | 930 | `result-track:87b6578af283f713189ab89246c171b2af64e9352aa888d308faa29a369a0189` |
| 94 | `def` | [complement](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/complement-source-edition-2.md) | 942 | `declaration-track:f3d7d11f2cdcd6f2193a5900faa9a9c551c6528bd17abff26cd10d250b8002f2` |
| 95 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 944 | `declaration-track:604c08ac0fdb6c77bdaf54ffad9501dda8e7a95b925c9d8f25adc3fce7edca09` |
| 96 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 947 | `declaration-track:a2a09b6a8496e479b41297ef2137cefb509b9508b9de7cb19b54103e1e43582f` |
| 97 | `lemma` | [isImmersionOfComplement_complement](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersionofcomplement-complement.md) | 950 | `result-track:901b3c91418d2986d3e631d420beabf14b07563a6b9d75008e9d5364666b37bd` |
| 98 | `lemma` | [isImmersionAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersionat-source-edition-2.md) | 965 | `result-track:214dee0a08fb4a482adf35dbb482cf0217b91c9133db2ad065c5dcfa1b29e88c` |
| 99 | `theorem` | [congr](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/congr-source-edition-2.md) | 971 | `result-track:aa477e20b57c7516f4cc48540cb10fc3272883db86d237dadae8bd6af3e00eaa` |
| 100 | `theorem` | [prodMap](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/prodmap-source-edition-2.md) | 976 | `result-track:73b51731a3966d92a7021bbbe4ca0cf9ef4f00f5c9b68bb13fa7c11fc8ca7d78` |
| 101 | `lemma` | [id](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/id.md) | 984 | `result-track:016be71963cede04c758ad9d9ffa5d0d86866537fbe0c8e86360ad34aebb6f9f` |
| 102 | `lemma` | [of_opens](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/of-opens-source-edition-2.md) | 989 | `result-track:b4158202f4a08717ec3155c8cbaec77186dc868c74c174c26f1c0c847a807ec2` |
| 103 | `lemma` | [Immersion Namespaced Public](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isimmersion-source-line-995-occurrence-2.md) | 995 | `result-track:601e0772c22ade38c18db8c4d38a58c62607481240a3b363869d6946ba01c0f0` |
| 104 | `theorem` | [contMDiff](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/contmdiff-source-edition-2.md) | 1001 | `result-track:0af2eddb295b4fe03ac13e0f92fafb22c411a5bcf80237d2d0e33a11223e0e07` |
| 105 | `lemma` | [Immersion Namespaced Public](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/iff-comp-isimmersion.md) | 1007 | `result-track:b59386f7e4f5dd4fc80c500d972a31a37ae71de6e9cec4f5960964938e9bcaf2` |
| 106 | `lemma` | [comp_diffeomorph](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/comp-diffeomorph-source-edition-4.md) | 1013 | `result-track:f4ac2d134ddc8141c0c994f2ca32f4a9f4947818c61667ad892ceda54d003f2e` |
| 107 | `lemma` | [isDiffImmersionAt](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/isdiffimmersionat.md) | 1020 | `result-track:068ca9867f0fa6743c2780175cc1a925f721d3bfc82722caa618f1ad64a06c25` |
| 108 | `lemma` | [injective_mfderiv](../../../../DifferentialGeometry/ImmersionNamespacedPublic.lean/declarations/injective-mfderiv.md) | 1025 | `result-track:13b381856b0632862a904228207cecb437cdfa2e44acafe2cab277c608ba69e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a5e6a526aaf4a403368dda42d9d6f82dda1b1d8d5de7e82f59bf33daac35e7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
