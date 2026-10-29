# Verification target: Inseparable Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59b2ec991587de238c6e0c425547d933a2a33a35",
  "lexical_observation_count": 171,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Inseparable/Variantdca5fb650652280da014c44e928d3992da800db80c65ffebcdf51e3f2e5c0556.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/InseparablePublic.lean/index.md) · [Full source](../../../../GeneralTopology/InseparablePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59b2ec991587de238c6e0c425547d933a2a33a35`.

Source path: `GRWTSK/Topology/GeneralTopology/Inseparable/Variantdca5fb650652280da014c44e928d3992da800db80c65ffebcdf51e3f2e5c0556.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Inseparable/Variantdca5fb650652280da014c44e928d3992da800db80c65ffebcdf51e3f2e5c0556.lean.json)

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
| 1 | `theorem` | [specializes_TFAE](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-tfae.md) | 55 | `result-track:b62952d213ff20530315939e9291281b8f9e6bca8bfebd5502c9c9a33ba4dc42` |
| 2 | `theorem` | [specializes_iff_nhds](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-iff-nhds.md) | 77 | `result-track:d3f9971b5f1fd4c8e75a685e1413b883218c1a9a96889b8b388f6733bd10b4c8` |
| 3 | `theorem` | [Specializes.not_disjoint](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-not-disjoint.md) | 80 | `result-track:2043df3aa22792220f5fbba7f6412479e3cb550dd3b9920c4afc57d5a18f26d4` |
| 4 | `theorem` | [specializes_iff_pure](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-iff-pure.md) | 83 | `result-track:f9cb21db1caafb495f5b30e1ddd58fd338a823c87b4d4d2bb0e22590da4bb2a9` |
| 5 | `theorem` | [ker_nhds_eq_specializes](../../../../GeneralTopology/InseparablePublic.lean/declarations/ker-nhds-eq-specializes.md) | 90 | `result-track:3ce3480cbd1dd3758db56c7158a7a5f0a71040bfb682cc9ee87ea49532ca80ed` |
| 6 | `theorem` | [specializes_iff_forall_open](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-iff-forall-open.md) | 93 | `result-track:6709a59b7938aced5542c7f0b8c5885819d2357cd185acfd0ebf7c9e78d4e70e` |
| 7 | `theorem` | [Tendsto.specializes](../../../../GeneralTopology/InseparablePublic.lean/declarations/tendsto-specializes.md) | 97 | `result-track:08570d054ba950da3896ace0f7a2235b440013feb8de6bfd4f1dc7da8142fce5` |
| 8 | `theorem` | [Specializes.mem_open](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-mem-open.md) | 103 | `result-track:eaf097d5cadb61c2dc8fbb13afa7245dae09fb1429098dd6442b9c490bdc08fe` |
| 9 | `theorem` | [IsOpen.not_specializes](../../../../GeneralTopology/InseparablePublic.lean/declarations/isopen-not-specializes.md) | 106 | `result-track:e88b243045e33c2fef58bc8eeffd58476588e5315aa80786b022c0bd8a60b94d` |
| 10 | `theorem` | [specializes_iff_forall_closed](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-iff-forall-closed.md) | 109 | `result-track:7724376c8f4b9aa048098f91e171cd9646d893b85acc9c2a89155ddae861db86` |
| 11 | `theorem` | [Specializes.mem_closed](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-mem-closed.md) | 112 | `result-track:32e71428c30dc341af9716f2135005c07b6ac81979a3ec759d12939af4b57cc4` |
| 12 | `theorem` | [IsClosed.not_specializes](../../../../GeneralTopology/InseparablePublic.lean/declarations/isclosed-not-specializes.md) | 115 | `result-track:deeedeecfff447e8df29e14c1344c9faa2416352d7001a198e23279931c95d77` |
| 13 | `theorem` | [specializes_iff_mem_closure](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-iff-mem-closure.md) | 118 | `result-track:e47407ca54e6dd850b4dcef7b913bd7962f0d1d7a4a78aa0103f7b73e8ae0791` |
| 14 | `theorem` | [specializes_iff_closure_subset](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-iff-closure-subset.md) | 123 | `result-track:35c87c858b51941d812b703c6d423e6d360150437a8f45ee4064acf768cf5f3d` |
| 15 | `theorem` | [specializes_iff_clusterPt](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-iff-clusterpt.md) | 128 | `result-track:a52bb573ce70938280fdd69ee5d33066a9fe0e9a4b979c4189634cecd7ed340e` |
| 16 | `theorem` | [Filter.HasBasis.specializes_iff](../../../../GeneralTopology/InseparablePublic.lean/declarations/filter-hasbasis-specializes-iff.md) | 131 | `result-track:7e1a873ea37cc049a159681cb3ed08080ece9a5f362a4aa21405ec05f5694c1f` |
| 17 | `theorem` | [specializes_rfl](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-rfl.md) | 135 | `result-track:06ec490478b00ca69e7ed150e1abc3152cf97f468fa91f6ca2150a9e135b6741` |
| 18 | `theorem` | [specializes_refl](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-refl.md) | 138 | `result-track:d7c49b62d415d775a63b99801b63821b55be27f5f3fe2b88f33f3f61d7c3676c` |
| 19 | `theorem` | [Specializes.trans](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-trans.md) | 142 | `result-track:95426a7b7083773eb32f7e1965bbd3f20daa4d297bd9a676a274dca887acd621` |
| 20 | `theorem` | [specializes_of_eq](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-of-eq.md) | 145 | `result-track:2786a3689c5889e7057389691658875bc488310e816c94e7707c9458697ac70f` |
| 21 | `theorem` | [specializes_of_nhdsWithin](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-of-nhdswithin.md) | 150 | `result-track:6916d18d16ecce580dc1bec0429388639afe142fb4863a4352ad63f4778c82f7` |
| 22 | `theorem` | [Specializes.map_of_continuousWithinAt](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-map-of-continuouswithinat.md) | 157 | `result-track:8647a323637650f195833c1eab39c10f2b97a50ed21e7f47cd8df9727c3f90e2` |
| 23 | `theorem` | [Specializes.map_of_continuousOn](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-map-of-continuouson.md) | 166 | `result-track:9396e5de15b2bb7fab01798b3e0fb49b5f4bdc95a3a7a16ed0edd1efba6aeaa6` |
| 24 | `theorem` | [Specializes.map_of_continuousAt](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-map-of-continuousat.md) | 170 | `result-track:c39b26b2340ca8d063c0b833387a5782c41f1557b24a3cd4ac4b927efe0c7bd2` |
| 25 | `theorem` | [Specializes.map](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-map.md) | 173 | `result-track:e47c0cfc8e39423e3f275443a94109f49b7632f13157539422be3959cbd85226` |
| 26 | `theorem` | [Topology.IsInducing.specializes_iff](../../../../GeneralTopology/InseparablePublic.lean/declarations/topology-isinducing-specializes-iff.md) | 176 | `result-track:f89749c807a6978ac59bb736b4c67e7741835e66ebf69ccf5be7b733d5cb1a59` |
| 27 | `theorem` | [subtype_specializes_iff](../../../../GeneralTopology/InseparablePublic.lean/declarations/subtype-specializes-iff.md) | 180 | `result-track:2a232baca0ebb851815cb90782adc57e408b67c1d67714e1f8cea6bce64e11ad` |
| 28 | `lemma` | [specializationPreorder_subtype](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializationpreorder-subtype.md) | 185 | `result-track:28e08e6c5f99b2135de9a1aa309eb76236ee4b80323f66e9f3dc144350b4d2d3` |
| 29 | `theorem` | [specializes_prod](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-prod.md) | 190 | `result-track:8b50b04f07f20083511f0b32dc022e5e57e9ee0c419deec06c92bff98d6104be` |
| 30 | `theorem` | [Specializes.prod](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-prod-source-edition-2.md) | 193 | `result-track:bde0567e5e7789a7d5118c810fa6712bec02b77bf0a2940f56abcee8b46d9ede` |
| 31 | `theorem` | [Specializes.fst](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-fst.md) | 197 | `result-track:c625aa6a924f683407fb9efb7adf7cd270050509699b0db0ce130edbccb96189` |
| 32 | `theorem` | [Specializes.snd](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-snd.md) | 198 | `result-track:be2e40a10408de9c5bea09b488f83143a6f3a1487ccbe50330445f6510b2e5f3` |
| 33 | `theorem` | [specializes_pi](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-pi.md) | 201 | `result-track:e748c6ea25dd7005904e842654e2daac27c1b4206c9bc8ed50bff5cb5d32db05` |
| 34 | `theorem` | [not_specializes_iff_exists_open](../../../../GeneralTopology/InseparablePublic.lean/declarations/not-specializes-iff-exists-open.md) | 204 | `result-track:03395f917f6eb52aab0bfbead8094714971f52cb0244420709ac078fcdc1de83` |
| 35 | `theorem` | [not_specializes_iff_exists_closed](../../../../GeneralTopology/InseparablePublic.lean/declarations/not-specializes-iff-exists-closed.md) | 209 | `result-track:422a6e9b45a7d6981703e6f3d5e072ed6f3003eb95f8233b73175cee112820b0` |
| 36 | `theorem` | [IsOpen.continuous_piecewise_of_specializes](../../../../GeneralTopology/InseparablePublic.lean/declarations/isopen-continuous-piecewise-of-specializes.md) | 214 | `result-track:faf6481f9a06ad9691b5d0a83fa7ed1c6533020bdb4234a776cfd5bacce93801` |
| 37 | `theorem` | [IsClosed.continuous_piecewise_of_specializes](../../../../GeneralTopology/InseparablePublic.lean/declarations/isclosed-continuous-piecewise-of-specializes.md) | 223 | `result-track:2f48ad4568497b285554adb6ac166f58390e05b794d37a0aff97348070c5fad0` |
| 38 | `theorem` | [Specializes.clusterPt](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-clusterpt.md) | 228 | `result-track:dd01720628e8f70a582d0a727fc4fa5fc60baea5aa5c988c67d028a90b0816d6` |
| 39 | `theorem` | [IsCompact.of_subset_of_specializes](../../../../GeneralTopology/InseparablePublic.lean/declarations/iscompact-of-subset-of-specializes.md) | 232 | `result-track:7a16ca712014f52452e5cf3dc8f9bb7429d354326fee146dea7bab2d96d60494` |
| 40 | `theorem` | [Continuous.specialization_monotone](../../../../GeneralTopology/InseparablePublic.lean/declarations/continuous-specialization-monotone.md) | 243 | `result-track:c6febff59f036e696f76e61c3a08b599a9c4b6e52229cb4e17f591c9eff73cec` |
| 41 | `lemma` | [closure_singleton_eq_Iic](../../../../GeneralTopology/InseparablePublic.lean/declarations/closure-singleton-eq-iic.md) | 246 | `result-track:ef8396c4462fc42c2680e15c4b969b6b50ce18af42d45614f422595c70247239` |
| 42 | `def` | [StableUnderSpecialization](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableunderspecialization.md) | 251 | `declaration-track:28458fffb4df2bf4daf2b137305b32c2c86840061a122be12d6ba790832ad308` |
| 43 | `def` | [StableUnderGeneralization](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableundergeneralization.md) | 256 | `declaration-track:49a6a32c5ffc84f596c1656ad36bba12a80bb3e94e30fdd50945cd9c64770235` |
| 44 | `example` | [(anonymous)](../../../../GeneralTopology/InseparablePublic.lean/declarations/example-source-edition-2.md) | 259 | `declaration-track:b9eff3a6b87ea2b2126c9e06fe12253c3e3847d1d5ff75239fa2c9c4455ffed0` |
| 45 | `example` | [(anonymous)](../../../../GeneralTopology/InseparablePublic.lean/declarations/example.md) | 260 | `declaration-track:272f17f8605d5f03b39422c7f46f93389099ade32d57c745fedd674f0084ca26` |
| 46 | `lemma` | [IsClosed.stableUnderSpecialization](../../../../GeneralTopology/InseparablePublic.lean/declarations/isclosed-stableunderspecialization.md) | 262 | `result-track:3fcba676460fa04961a0c28e58fa07ebe118dff6eb4736b69cb6edb6bdc4afdd` |
| 47 | `lemma` | [IsOpen.stableUnderGeneralization](../../../../GeneralTopology/InseparablePublic.lean/declarations/isopen-stableundergeneralization.md) | 266 | `result-track:ceb57852e6c649fb1d00486ed83fc0a34b9464f235ccb028aae9bc172f997811` |
| 48 | `lemma` | [stableUnderSpecialization_compl_iff](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableunderspecialization-compl-iff.md) | 271 | `result-track:4838f45586fdad11c8757f7c0d454ab3dc8cf6f2d5b4fd4b16e6849720844ae3` |
| 49 | `lemma` | [stableUnderGeneralization_compl_iff](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableundergeneralization-compl-iff.md) | 276 | `result-track:74e0ba2d35fa1fd26cb18c123b793290487d2b1fca10c7697f0d2d704f29bf9e` |
| 50 | `lemma` | [stableUnderSpecialization_univ](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableunderspecialization-univ.md) | 283 | `result-track:5a3eb844ab775299a655637a36a534d08859c9fa4d57d940b345c4808a34ed51` |
| 51 | `lemma` | [stableUnderSpecialization_empty](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableunderspecialization-empty.md) | 284 | `result-track:966cee09fc5005e33c100dc1143c88dd8ce27510e600b8f54b2f74d5a6eb7038` |
| 52 | `lemma` | [stableUnderGeneralization_univ](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableundergeneralization-univ.md) | 285 | `result-track:bb38ca4bc6908d9501ecce90a4884d0fef37e8bdb6586871fafc80ab9c47a364` |
| 53 | `lemma` | [stableUnderGeneralization_empty](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableundergeneralization-empty.md) | 286 | `result-track:9c3b89d70cbbeb99c945e3cd213bcd2bbdd391be7a18c27988f4d67ff0ddc2b5` |
| 54 | `lemma` | [stableUnderSpecialization_sUnion](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableunderspecialization-sunion.md) | 288 | `result-track:dbfe668ed70172e52ba1cc4a992c831e1611460d7cbe0cd9f2176684da6c1c1a` |
| 55 | `lemma` | [stableUnderSpecialization_sInter](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableunderspecialization-sinter.md) | 292 | `result-track:c24f21acfe60f71ba6164c122f4b67977222ed7313ce304f9175aa54fd7b59ed` |
| 56 | `lemma` | [stableUnderGeneralization_sUnion](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableundergeneralization-sunion.md) | 296 | `result-track:6ec03f2cae1657d66e6f972e2a9be9b591e0a6cd3cee114ff6f4222df86e4e7d` |
| 57 | `lemma` | [stableUnderGeneralization_sInter](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableundergeneralization-sinter.md) | 300 | `result-track:2fd4e095beb00495d406c93e3d28194e30d7f5ac71a2a76432a463abbc97387c` |
| 58 | `lemma` | [stableUnderSpecialization_iUnion](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableunderspecialization-iunion.md) | 304 | `result-track:ef5d2e55fca2ed1a2ee33a679200073ad7fd4347edd5501b51f94220646fd9cf` |
| 59 | `lemma` | [stableUnderSpecialization_iInter](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableunderspecialization-iinter.md) | 308 | `result-track:c2cda2f62aae38266857a7ee06f9cc4ceca7b078d1ddcd302e5bca877f68c885` |
| 60 | `lemma` | [stableUnderGeneralization_iUnion](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableundergeneralization-iunion.md) | 312 | `result-track:fcf5d8d5d504ee964153c02c88ed1ce1b8cff68325b3d71dec480663e6fdcb94` |
| 61 | `lemma` | [stableUnderGeneralization_iInter](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableundergeneralization-iinter.md) | 316 | `result-track:a9ea14822949d5492e8328a8009d079d0c4539430d66734e7cc690e8d6b53078` |
| 62 | `lemma` | [Union_closure_singleton_eq_iff](../../../../GeneralTopology/InseparablePublic.lean/declarations/union-closure-singleton-eq-iff.md) | 320 | `result-track:79763a6a34eec312c41ddae5928021e21c0b1769cbd16bf45120b2c61ea2664a` |
| 63 | `lemma` | [stableUnderSpecialization_iff_Union_eq](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableunderspecialization-iff-union-eq.md) | 324 | `result-track:3492648bed869e9eadb6f15117ab11a096f5f583725dc1798a354cde2f19bf92` |
| 64 | `lemma` | [stableUnderSpecialization_iff_exists_sUnion_eq](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableunderspecialization-iff-exists-sunion-eq.md) | 331 | `result-track:c8b80bdffed785d5134ca4e64607229acc89821047f9842918b41a92e024ad29` |
| 65 | `lemma` | [stableUnderGeneralization_iff_exists_sInter_eq](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableundergeneralization-iff-exists-sinter-eq.md) | 340 | `result-track:8cf8426c56d57708fbe571a7aadfc278aa312af4f05d82a3d14be35c00e9f5e4` |
| 66 | `lemma` | [StableUnderSpecialization.preimage](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableunderspecialization-preimage.md) | 348 | `result-track:851e3b6c12e9b2dd825fcc4e3327364ee3d1c93011cca5724bc67f796cc934f4` |
| 67 | `lemma` | [StableUnderGeneralization.preimage](../../../../GeneralTopology/InseparablePublic.lean/declarations/stableundergeneralization-preimage.md) | 353 | `result-track:45c12c4501ac3cda09f2ae730c643df11f2b2119b393b7f81f8e820240e93e14` |
| 68 | `def` | [SpecializingMap](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializingmap.md) | 360 | `declaration-track:a89571effb1b6e269e3ac2a8dd081dd48e4f4300d91cddbd2ce2bda76c9e0c4b` |
| 69 | `def` | [GeneralizingMap](../../../../GeneralTopology/InseparablePublic.lean/declarations/generalizingmap.md) | 365 | `declaration-track:e0663acbb9009feafde82389131bc50713e1202d431c7f220a939838bcf97082` |
| 70 | `lemma` | [specializingMap_iff_closure_singleton_subset](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializingmap-iff-closure-singleton-subset.md) | 368 | `result-track:d32ae4ce38c76675077c500278d6f414e039be8d2d78a0f02da223b6116a04f0` |
| 71 | `lemma` | [SpecializingMap.stableUnderSpecialization_image](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializingmap-stableunderspecialization-image.md) | 374 | `result-track:5b1a002840bb55c91714e3a108ec2412a2b2cfc6f451f1c77b23c839cb794a90` |
| 72 | `lemma` | [specializingMap_iff_stableUnderSpecialization_image_singleton](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializingmap-iff-stableunderspecialization-image-singleton.md) | 380 | `result-track:a7e924abf7fa3032829be5d7fafcf994b45370a922ad2ed9d42cff5be9335661` |
| 73 | `lemma` | [specializingMap_iff_stableUnderSpecialization_image](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializingmap-iff-stableunderspecialization-image.md) | 384 | `result-track:5bd64ebd7d520c08e755a4842bd2bb823f2234c9bc1e96acdd91b407c753e988` |
| 74 | `lemma` | [specializingMap_iff_closure_singleton](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializingmap-iff-closure-singleton.md) | 388 | `result-track:4ec40aab3f0e641bbe16f482027f52ff321bb48da620fd7a9333b8d5313a6604` |
| 75 | `lemma` | [specializingMap_iff_isClosed_image_closure_singleton](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializingmap-iff-isclosed-image-closure-singleton.md) | 393 | `result-track:122005024e2bda69e622b94293bf1a4b66fc6d8f68b54ff1147e90110d5bec5f` |
| 76 | `lemma` | [SpecializingMap.comp](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializingmap-comp.md) | 400 | `result-track:1f1feb451b78dff599ab3cdb9f62bad00a8c15833e5a39e3a1736ea5fbfa9d26` |
| 77 | `lemma` | [IsClosedMap.specializingMap](../../../../GeneralTopology/InseparablePublic.lean/declarations/isclosedmap-specializingmap.md) | 406 | `result-track:1efd6dbd9444a7084e9f96f2afce7217c4bc387611df5242f60dd2b168c783ec` |
| 78 | `lemma` | [Topology.IsInducing.specializingMap](../../../../GeneralTopology/InseparablePublic.lean/declarations/topology-isinducing-specializingmap.md) | 410 | `result-track:22e298a8a1ab047dccd908c2dcb59a9e3d94a699e87a7b6554053c4e589cda77` |
| 79 | `lemma` | [Topology.IsInducing.generalizingMap](../../../../GeneralTopology/InseparablePublic.lean/declarations/topology-isinducing-generalizingmap.md) | 416 | `result-track:6acd5beac0de24981e811e5aa3cd04f0ead437b352e30dfe198b60b28053a5fc` |
| 80 | `lemma` | [Topology.IsOpenEmbedding.generalizingMap](../../../../GeneralTopology/InseparablePublic.lean/declarations/topology-isopenembedding-generalizingmap.md) | 422 | `result-track:47ca050fe4f7434363e66b815632b5c44c3d502bcafcb3a9ad7e74c26166281a` |
| 81 | `lemma` | [SpecializingMap.stableUnderSpecialization_range](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializingmap-stableunderspecialization-range.md) | 425 | `result-track:7ee60ffe1c695a4699b5ded31a03fb8835546c0d7d3fa413fe53d1001ca35ef7` |
| 82 | `lemma` | [GeneralizingMap.stableUnderGeneralization_image](../../../../GeneralTopology/InseparablePublic.lean/declarations/generalizingmap-stableundergeneralization-image.md) | 429 | `result-track:75bc5ec1f3c16b6727cb41bd89aa9b244ff8c115dba696d336adbe1712608238` |
| 83 | `lemma` | [GeneralizingMap_iff_stableUnderGeneralization_image](../../../../GeneralTopology/InseparablePublic.lean/declarations/generalizingmap-iff-stableundergeneralization-image.md) | 433 | `result-track:11ececf721e0d2938c12963f1c985ba5928f3d830bfca82952f6daa05623fd48` |
| 84 | `lemma` | [GeneralizingMap.stableUnderGeneralization_range](../../../../GeneralTopology/InseparablePublic.lean/declarations/generalizingmap-stableundergeneralization-range.md) | 439 | `result-track:37709f14fe69f32bef0f1c36a6506f5b87aa5a598e0393b8756678f1f1b90501` |
| 85 | `lemma` | [GeneralizingMap.comp](../../../../GeneralTopology/InseparablePublic.lean/declarations/generalizingmap-comp.md) | 443 | `result-track:c3894048483e6012a494a5234acabf5d420d88cd046061f69fd73a0b91c112e9` |
| 86 | `theorem` | [inseparable_def](../../../../GeneralTopology/InseparablePublic.lean/declarations/inseparable-def.md) | 455 | `result-track:893ec67ebd979b1423e13e26f0db556e0b0111d03d9b9386fa4b7d297503f99b` |
| 87 | `theorem` | [inseparable_iff_specializes_and](../../../../GeneralTopology/InseparablePublic.lean/declarations/inseparable-iff-specializes-and.md) | 458 | `result-track:a1d2f11443b845b5b3a24d1b6856a4eaa7da929c54fb336216f7b72912b25b14` |
| 88 | `theorem` | [Inseparable.specializes](../../../../GeneralTopology/InseparablePublic.lean/declarations/inseparable-specializes-source-edition-2.md) | 461 | `result-track:6dc17cc7d879f549772f85d973cce5a520d2f71141cee0d4827ea4d996190d19` |
| 89 | `theorem` | [Inseparable.specializes'](../../../../GeneralTopology/InseparablePublic.lean/declarations/inseparable-specializes.md) | 463 | `result-track:586a5f0c2dcb9a6b9f88f19e72b7a7af97cf8806a5fbd23a1fe186611d183d48` |
| 90 | `theorem` | [Specializes.antisymm](../../../../GeneralTopology/InseparablePublic.lean/declarations/specializes-antisymm.md) | 465 | `result-track:217180246da8ab77efe0d2b345ef473107e2f097d66409b373030822db88638e` |
| 91 | `theorem` | [inseparable_iff_forall_isOpen](../../../../GeneralTopology/InseparablePublic.lean/declarations/inseparable-iff-forall-isopen.md) | 468 | `result-track:cb0ba5dc48e99a7597ad8c2097eee5efb392fca6ff1e702b7fc652d56bef4da9` |
| 92 | `theorem` | [not_inseparable_iff_exists_open](../../../../GeneralTopology/InseparablePublic.lean/declarations/not-inseparable-iff-exists-open.md) | 472 | `result-track:1f52563ca850e2841c2c0a44ac450adadd5306e9c30073380f37fcb398f3e395` |
| 93 | `theorem` | [inseparable_iff_forall_isClosed](../../../../GeneralTopology/InseparablePublic.lean/declarations/inseparable-iff-forall-isclosed.md) | 476 | `result-track:0b65c55cf02d32e3eadc500817ca7525fbaf13c6704e419b2794cf1e5a95fc54` |
| 94 | `theorem` | [inseparable_iff_mem_closure](../../../../GeneralTopology/InseparablePublic.lean/declarations/inseparable-iff-mem-closure.md) | 480 | `result-track:9ec14834127f26b45c256aabf1abeb7a1b3df6017db55cdb4b7be2b2aa2e9fb8` |
| 95 | `theorem` | [inseparable_iff_closure_eq](../../../../GeneralTopology/InseparablePublic.lean/declarations/inseparable-iff-closure-eq.md) | 484 | `result-track:758f233df9f0bfdb04dd0897634e0a289dc620e9b582d44ec8966c3a42d259bd` |
| 96 | `theorem` | [inseparable_of_nhdsWithin_eq](../../../../GeneralTopology/InseparablePublic.lean/declarations/inseparable-of-nhdswithin-eq.md) | 488 | `result-track:bbbe8e85d61954b309352f395ab8d9df99b20632dd6014896c456938d7e6cc14` |
| 97 | `theorem` | [Topology.IsInducing.inseparable_iff](../../../../GeneralTopology/InseparablePublic.lean/declarations/topology-isinducing-inseparable-iff.md) | 491 | `result-track:6ec13943ba3f791939d7ec338b47474bb572e77ca70ed89907ff37d4fa4b6cbb` |
| 98 | `theorem` | [subtype_inseparable_iff](../../../../GeneralTopology/InseparablePublic.lean/declarations/subtype-inseparable-iff.md) | 494 | `result-track:4da4d410ca5c6868812fbfa54cdaed6de218fdef282029dbc1ff7fbcc2867a03` |
| 99 | `theorem` | [inseparable_prod](../../../../GeneralTopology/InseparablePublic.lean/declarations/inseparable-prod.md) | 497 | `result-track:00da840b8197f2362017e37e97ed341181091a19151d6848d6c96ab57139eb42` |
| 100 | `theorem` | [Inseparable.prod](../../../../GeneralTopology/InseparablePublic.lean/declarations/inseparable-prod-source-edition-2.md) | 501 | `result-track:66e0a7fa05e2178c5a3c528bd611dda0001b94d8db27f505435ffee7498191a9` |
| 101 | `theorem` | [inseparable_pi](../../../../GeneralTopology/InseparablePublic.lean/declarations/inseparable-pi.md) | 506 | `result-track:7b593676c9bbddb3d81a0ba38934179b43880ecc7c772da9e2e922ed8e13e0fe` |
| 102 | `theorem` | [refl](../../../../GeneralTopology/InseparablePublic.lean/declarations/refl.md) | 512 | `result-track:4a0aff5a8b9f10f504e7e163f116786ef80d959d89b1c9d74c8db946b5e2d14d` |
| 103 | `theorem` | [rfl](../../../../GeneralTopology/InseparablePublic.lean/declarations/rfl.md) | 515 | `result-track:f2631194bf6a5cbd11ca228297d94de204cfde9e8b9443b720b66c1d21c753d3` |
| 104 | `theorem` | [of_eq](../../../../GeneralTopology/InseparablePublic.lean/declarations/of-eq.md) | 518 | `result-track:0db416361b280f2251a5d098f2f22d441384c89ef189c157416205a851363d61` |
| 105 | `theorem` | [symm](../../../../GeneralTopology/InseparablePublic.lean/declarations/symm.md) | 522 | `result-track:3349e7f61eb049f911308d61f3182ed3742e88bc66e00fc50ca0f750bc24bd85` |
| 106 | `theorem` | [trans](../../../../GeneralTopology/InseparablePublic.lean/declarations/trans.md) | 525 | `result-track:40092efb3b90496f55f4551a31353ef4c677279e9ac05b434a4c72b35abc3677` |
| 107 | `theorem` | [nhds_eq](../../../../GeneralTopology/InseparablePublic.lean/declarations/nhds-eq.md) | 527 | `result-track:814a1592281e78052c066b22f05a83d1aafe6a0af111963dc28776d5e9183853` |
| 108 | `theorem` | [mem_open_iff](../../../../GeneralTopology/InseparablePublic.lean/declarations/mem-open-iff.md) | 529 | `result-track:52058c24a6be06a004a0a6240e0b3e233c5ec6a74abb4dc39e4663fcb6ce9788` |
| 109 | `theorem` | [mem_closed_iff](../../../../GeneralTopology/InseparablePublic.lean/declarations/mem-closed-iff.md) | 532 | `result-track:8bc7424d45371b03063dc3946a32fb9895f422ab7b447a835cd69d6d7fc2f809` |
| 110 | `theorem` | [map_of_continuousWithinAt](../../../../GeneralTopology/InseparablePublic.lean/declarations/map-of-continuouswithinat.md) | 535 | `result-track:4414ac4a2d2965678fbbda0d3dd8751f2b83b705aa3fc1bc66b779b7e26996ad` |
| 111 | `theorem` | [map_of_continuousOn](../../../../GeneralTopology/InseparablePublic.lean/declarations/map-of-continuouson.md) | 541 | `result-track:3510ecb9dab09004e8c43f1db4c9c262a9f9628b7c329b584ec97b3391e3ee8f` |
| 112 | `theorem` | [map_of_continuousAt](../../../../GeneralTopology/InseparablePublic.lean/declarations/map-of-continuousat.md) | 545 | `result-track:eef33b775fee0e34aa812c0f8b09ad15a36ad76784bc8b80509a4e27cb90584c` |
| 113 | `theorem` | [map](../../../../GeneralTopology/InseparablePublic.lean/declarations/map.md) | 549 | `result-track:e6b76f126a337a5d5ee294827886f2f9ab2b625b6d3a8e6efd89a4af51ddfac9` |
| 114 | `theorem` | [IsClosed.not_inseparable](../../../../GeneralTopology/InseparablePublic.lean/declarations/isclosed-not-inseparable.md) | 554 | `result-track:8111b91e02f1bb196013d2834a347c0c695e6b7ab570274fefe31560448ad9eb` |
| 115 | `theorem` | [IsOpen.not_inseparable](../../../../GeneralTopology/InseparablePublic.lean/declarations/isopen-not-inseparable.md) | 557 | `result-track:a7206015dcbf0c56daf8aa56609cd984aeaff8f8ea300218fb4d977398789ebd` |
| 116 | `instance` | [(anonymous)](../../../../GeneralTopology/InseparablePublic.lean/declarations/instance-source-edition-8.md) | 567 | `declaration-track:e6192747221458a1a726c1dec42714f90a106bed1549a77fdfdf06faf0926214` |
| 117 | `def` | [mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/mk.md) | 575 | `declaration-track:4e7e8e05930201ecfff62be74572ad9a6df32278b2be0a423a170e0b4f74c932` |
| 118 | `theorem` | [isQuotientMap_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/isquotientmap-mk.md) | 577 | `result-track:ecaef4218a436f6acb88b84b53c0d149d585cb8dc1558b52728842b44dbe7eaf` |
| 119 | `theorem` | [continuous_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/continuous-mk.md) | 581 | `result-track:a0b61673bee46441f8d67d5e605c482ab6c5b5455fceca3a5f3cb8cc5d30df48` |
| 120 | `theorem` | [mk_eq_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/mk-eq-mk.md) | 585 | `result-track:e3cd30191d0b9fd0b3081d92a830c41857f8a24248573edd489d85a08a2ff235` |
| 121 | `theorem` | [«forall»](../../../../GeneralTopology/InseparablePublic.lean/declarations/forall.md) | 588 | `result-track:1423fc5a9c232dc9de1d218d5bade66a8dc071d922e37c899b5ec5e43f95e7c9` |
| 122 | `theorem` | [«exists»](../../../../GeneralTopology/InseparablePublic.lean/declarations/exists.md) | 591 | `result-track:812f04012bd2d5c6243bb44536bfbb5e901133b6357822e1ecb4342769db1bd4` |
| 123 | `theorem` | [surjective_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/surjective-mk.md) | 594 | `result-track:6b098132de3f99582f97fa2eec204d4b2cad3568b7a72b19081e01a9f10ca786` |
| 124 | `theorem` | [range_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/range-mk.md) | 598 | `result-track:7818be7bdcd1fd6ad07b5ada37d230cfddce5a0af4297beccca7b87de656a745` |
| 125 | `instance` | [(anonymous)](../../../../GeneralTopology/InseparablePublic.lean/declarations/instance-source-edition-5.md) | 601 | `declaration-track:af6aa018b4e5a61f43acac33c0b9c7b9ed04f95eedec0009019782855f05b4b9` |
| 126 | `instance` | [(anonymous)](../../../../GeneralTopology/InseparablePublic.lean/declarations/instance-source-edition-6.md) | 604 | `declaration-track:b2be2d56203fbc53478bcf8c5edb0372e4c1a12e5564153b214ecaf66ddf435d` |
| 127 | `instance` | [(anonymous)](../../../../GeneralTopology/InseparablePublic.lean/declarations/instance-source-edition-4.md) | 607 | `declaration-track:7a9648dad5572a330eeee1183519c2848d6cd9c0a1b83ba1f5ad0049db7583e1` |
| 128 | `theorem` | [inseparableSetoid_eq_top_iff](../../../../GeneralTopology/InseparablePublic.lean/declarations/inseparablesetoid-eq-top-iff.md) | 611 | `result-track:e0e0c531cdbaab771fa5336d3c6130976fa64efab1674aa3ec7481bc36ec43e2` |
| 129 | `theorem` | [subsingleton_iff](../../../../GeneralTopology/InseparablePublic.lean/declarations/subsingleton-iff.md) | 615 | `result-track:695ff40c3f8c1d388c8ef72f328c3e889d1e39469a8f89f7f5341acc8caaf601` |
| 130 | `instance` | [(anonymous)](../../../../GeneralTopology/InseparablePublic.lean/declarations/instance.md) | 619 | `declaration-track:0eee1969b0cb8a58ad9fefd68b64623b986d060a9a6fef41a85a2cb387266bbe` |
| 131 | `instance` | [(anonymous)](../../../../GeneralTopology/InseparablePublic.lean/declarations/instance-source-edition-7.md) | 622 | `declaration-track:dc7c3732f40ac57fb46151388ea6cf1955b88530d2d4ea9083b494002f8396bb` |
| 132 | `theorem` | [nontrivial_iff](../../../../GeneralTopology/InseparablePublic.lean/declarations/nontrivial-iff.md) | 626 | `result-track:b58655570d3d25b8fc7cf30e5e04069955aa56c3c34e7a6aed8d897fc8b0ee73` |
| 133 | `instance` | [(anonymous)](../../../../GeneralTopology/InseparablePublic.lean/declarations/instance-source-edition-3.md) | 630 | `declaration-track:63216d70c8e6bc70b769c3c4fb8ee97ef48e0dceba882c32caca3ba72af4f80c` |
| 134 | `instance` | [(anonymous)](../../../../GeneralTopology/InseparablePublic.lean/declarations/instance-source-edition-2.md) | 633 | `declaration-track:505f337dbeaa515966792e161e60b33768c1f1dc716509d339ded7e51e64b9ff` |
| 135 | `theorem` | [mk_one](../../../../GeneralTopology/InseparablePublic.lean/declarations/mk-one.md) | 635 | `result-track:a7923a03536e4e506b1dde1a0d94237200e2b3419d3b32511ab40209fd481c14` |
| 136 | `theorem` | [preimage_image_mk_open](../../../../GeneralTopology/InseparablePublic.lean/declarations/preimage-image-mk-open.md) | 637 | `result-track:54cfc56e9a53d1fb0a591bb5b082d3ef33ae0ad739d225719ab8cc24bfff4f8e` |
| 137 | `theorem` | [isOpenMap_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/isopenmap-mk.md) | 642 | `result-track:905eb667571cd2ec568d38cd384ada68da0d73e7ac92458bce265344f1843806` |
| 138 | `theorem` | [isOpenQuotientMap_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/isopenquotientmap-mk.md) | 645 | `result-track:478ef3edd0f8dca7cc2c083f546f768035b5d028b4dfedc5814c41f9116fd02b` |
| 139 | `theorem` | [preimage_image_mk_closed](../../../../GeneralTopology/InseparablePublic.lean/declarations/preimage-image-mk-closed.md) | 648 | `result-track:436345d1046b8969eb7421264fbeb7b49ec1a55a67dcea82ba045cb44a0960ff` |
| 140 | `theorem` | [isInducing_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/isinducing-mk.md) | 653 | `result-track:53f676256ed120a80bd7be89523475e626c61acc69c6d3ccfdceba68c1c4e72b` |
| 141 | `theorem` | [isClosedMap_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/isclosedmap-mk.md) | 657 | `result-track:cf0da1c810355c35c42e826a9c979317a6101ec3c3720009fbc275e8ee561dba` |
| 142 | `theorem` | [comap_mk_nhds_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/comap-mk-nhds-mk.md) | 661 | `result-track:0db16d29710b71f02f4af3edcc7098174db3989000aff7015edcbde72eea2098` |
| 143 | `theorem` | [comap_mk_nhdsSet_image](../../../../GeneralTopology/InseparablePublic.lean/declarations/comap-mk-nhdsset-image.md) | 665 | `result-track:bbefb247084dacb579a72ffc73bcc5566c55407f21ab9eebc5312cf240085ea8` |
| 144 | `theorem` | [map_mk_nhds](../../../../GeneralTopology/InseparablePublic.lean/declarations/map-mk-nhds.md) | 670 | `result-track:19c8e756bd882d100d8955b1301399b062b31df8b0e9c15830444d66a70acf15` |
| 145 | `theorem` | [map_mk_nhdsSet](../../../../GeneralTopology/InseparablePublic.lean/declarations/map-mk-nhdsset.md) | 673 | `result-track:4f29804a21d9a7908226d8dd17fc8b7884029e00cbb9c1c3c9fa3a24cb8cdbe1` |
| 146 | `theorem` | [comap_mk_nhdsSet](../../../../GeneralTopology/InseparablePublic.lean/declarations/comap-mk-nhdsset.md) | 676 | `result-track:26f54a5a9c7e64585cce5ab4d6540a6493829284fc911291b60f821a5db4aa86` |
| 147 | `theorem` | [preimage_mk_closure](../../../../GeneralTopology/InseparablePublic.lean/declarations/preimage-mk-closure.md) | 679 | `result-track:3a0f4d398c1e502050599fd288bf84afb57477168ee1f6f1be4b28381885bbbc` |
| 148 | `theorem` | [preimage_mk_interior](../../../../GeneralTopology/InseparablePublic.lean/declarations/preimage-mk-interior.md) | 682 | `result-track:b5b76d26d8c3596fc630d25014b23d92e47ed5820d76d6d2cc0fcda029ce9604` |
| 149 | `theorem` | [preimage_mk_frontier](../../../../GeneralTopology/InseparablePublic.lean/declarations/preimage-mk-frontier.md) | 685 | `result-track:5b5a19e20569c222247eb1ce171b5113b954fe1da48879093d4079dd2b6b489d` |
| 150 | `theorem` | [image_mk_closure](../../../../GeneralTopology/InseparablePublic.lean/declarations/image-mk-closure.md) | 688 | `result-track:8667b0c5164824ab685cd86fbeda7105d6f1ff1fb95f9b05a029b46e74b3e984` |
| 151 | `theorem` | [map_prod_map_mk_nhds](../../../../GeneralTopology/InseparablePublic.lean/declarations/map-prod-map-mk-nhds.md) | 692 | `result-track:cf455a58c8f92491cad549bb47f0ca616ba071a4b691f73c22498526996b3fc3` |
| 152 | `theorem` | [map_mk_nhdsWithin_preimage](../../../../GeneralTopology/InseparablePublic.lean/declarations/map-mk-nhdswithin-preimage.md) | 696 | `result-track:cac48d86c57dbf0e6987e47de99cc87c22ff336f68d24d494150463b40e8ce48` |
| 153 | `theorem` | [isQuotientMap_prodMap_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/isquotientmap-prodmap-mk.md) | 701 | `result-track:5abc36418f9b671d8d6f5e34235fca544072b08b46ae12385abcd4d6117af2c4` |
| 154 | `def` | [lift](../../../../GeneralTopology/InseparablePublic.lean/declarations/lift.md) | 706 | `declaration-track:785ac7f0002ea5fa9f87920d9f582bf1203725f2cb8ed89c5ac67367f0b4d9a8` |
| 155 | `theorem` | [lift_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/lift-mk-source-edition-2.md) | 710 | `result-track:ad5734828b71be710c45a70b6fe86ef2541aa2249faa2d5ec951484f46954511` |
| 156 | `theorem` | [lift_comp_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/lift-comp-mk.md) | 714 | `result-track:17bf49175e9c967d48db246df63447420f9a12b13b1035bb52522941d86a00e7` |
| 157 | `theorem` | [tendsto_lift_nhds_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/tendsto-lift-nhds-mk.md) | 718 | `result-track:ab5b997b08a3df6f9efcca6929697f9aae1e5033e84ffc6550e5c560027663c7` |
| 158 | `theorem` | [tendsto_lift_nhdsWithin_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/tendsto-lift-nhdswithin-mk.md) | 723 | `result-track:a98731edc335fa518622006b4df5d5af0b6a609a04c543fd32cd9737e99e2e5a` |
| 159 | `theorem` | [continuousAt_lift](../../../../GeneralTopology/InseparablePublic.lean/declarations/continuousat-lift.md) | 729 | `result-track:2dd3cb2d54aa5af0b42816f2a724d1e278f8c3390009455c808d97f14d8caacc` |
| 160 | `theorem` | [continuousWithinAt_lift](../../../../GeneralTopology/InseparablePublic.lean/declarations/continuouswithinat-lift.md) | 734 | `result-track:886e24e7c7ef7db86b3495b301bbf2ef80aac6cd118dde8dc54b0a1bd7e48f6e` |
| 161 | `theorem` | [continuousOn_lift](../../../../GeneralTopology/InseparablePublic.lean/declarations/continuouson-lift.md) | 740 | `result-track:23bd9bc48e2e24367fa9a408fce110d1bda262fca8d609013c55eeb480d8fa83` |
| 162 | `theorem` | [continuous_lift_iff](../../../../GeneralTopology/InseparablePublic.lean/declarations/continuous-lift-iff.md) | 745 | `result-track:b93474e7761bc14ab3d28a57ced27656661dbce849d2865a13a08c9318acb58c` |
| 163 | `def` | [lift₂](../../../../GeneralTopology/InseparablePublic.lean/declarations/lift-source-edition-2.md) | 754 | `declaration-track:f1640aebf8d1a06d68b7f9d46bf0991369ec4bde4badbce55ebcbabf988367c4` |
| 164 | `theorem` | [lift₂_mk](../../../../GeneralTopology/InseparablePublic.lean/declarations/lift-mk.md) | 758 | `result-track:2c3131fd1fcae6bc100ae822172873d007bcad5484424fe14a7b4eeaa324e961` |
| 165 | `theorem` | [tendsto_lift₂_nhds](../../../../GeneralTopology/InseparablePublic.lean/declarations/tendsto-lift-nhds.md) | 763 | `result-track:c2f376f20d242ea9553b9ddb3724803ea12cf3c5c2b64934415b50d4e4a79898` |
| 166 | `theorem` | [tendsto_lift₂_nhdsWithin](../../../../GeneralTopology/InseparablePublic.lean/declarations/tendsto-lift-nhdswithin.md) | 769 | `result-track:09e64e5591023f11df3f3cbef181f7d1e362e4994558195fcc7c78287c740ab0` |
| 167 | `theorem` | [continuousAt_lift₂](../../../../GeneralTopology/InseparablePublic.lean/declarations/continuousat-lift-source-edition-2.md) | 778 | `result-track:8da7eb2898b6587c79b3006f2faf77710e7e33b15ff15aa0f7adf1fa992b6f23` |
| 168 | `theorem` | [continuousWithinAt_lift₂](../../../../GeneralTopology/InseparablePublic.lean/declarations/continuouswithinat-lift-source-edition-2.md) | 783 | `result-track:f5d93cc7c54d422a715e367ef56912e4eb72183eb85d7269d9547b4c3a9dad94` |
| 169 | `theorem` | [continuousOn_lift₂](../../../../GeneralTopology/InseparablePublic.lean/declarations/continuouson-lift-source-edition-2.md) | 791 | `result-track:40d7f4e35c70380c3b28c012634f17527d9b854cc014b3f8a496365cf92e9d68` |
| 170 | `theorem` | [continuous_lift₂](../../../../GeneralTopology/InseparablePublic.lean/declarations/continuous-lift.md) | 799 | `result-track:6795d977c38ff97537c942053d426f450d1b19a3defa647559d7333be7cc9878` |
| 171 | `theorem` | [continuous_congr_of_inseparable](../../../../GeneralTopology/InseparablePublic.lean/declarations/continuous-congr-of-inseparable.md) | 805 | `result-track:a30b05fe764778bcb8608e6c6536c0fe7508eeb0c8b29945d07d1f6af8f80298` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6442980227e5dbc2e3fddd5d642f2bc3349c1a01a8894983809253c0345f9bdb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Inseparable/Variantdca5fb650652280da014c44e928d3992da800db80c65ffebcdf51e3f2e5c0556.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Inseparable/Variantdca5fb650652280da014c44e928d3992da800db80c65ffebcdf51e3f2e5c0556.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
