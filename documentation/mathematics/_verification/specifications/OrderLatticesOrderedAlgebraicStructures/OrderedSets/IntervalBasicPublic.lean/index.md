# Verification target: Interval Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b47201fb74273b0f5ae2ba5163f5398e713fb7bb",
  "lexical_observation_count": 110,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf97d34bb1db04d398660451eb8dbc3ac4ebdbdcb647d8b13b339d562a6a84174.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b47201fb74273b0f5ae2ba5163f5398e713fb7bb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf97d34bb1db04d398660451eb8dbc3ac4ebdbdcb647d8b13b339d562a6a84174.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf97d34bb1db04d398660451eb8dbc3ac4ebdbdcb647d8b13b339d562a6a84174.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonemptyInterval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/nonemptyinterval.md) | 36 | `declaration-track:dca7eb8fba4d43e6b8020cd1fd440faee75667cdc92b1741c9c6273dc9cb3d93` |
| 2 | `theorem` | [toProd_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/toprod-injective.md) | 46 | `result-track:cd987dd4b17f491b43944c87f0394ee854d90660bbe6b36503caab0f937d8f99` |
| 3 | `instance` | [instCanLift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instcanlift.md) | 51 | `declaration-track:dd34a75928e31a3701a45d84a696619d3c324502be4b8047d8286ded0da09b95` |
| 4 | `def` | [toDualProd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/todualprod.md) | 56 | `declaration-track:5926fc1a4be787b9423dfb6c4a3b9ae2e0d758fd614f78443d270b89733da6aa` |
| 5 | `theorem` | [toDualProd_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/todualprod-apply.md) | 60 | `result-track:7c39f26facae5580df6eb92fde347ff347c4de49be7d835c3530f4bb67ee14aa` |
| 6 | `theorem` | [toDualProd_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/todualprod-injective.md) | 63 | `result-track:be5e8693ab58e389328a35edfffc7bb0d617caf9476f823244f155c237f16974` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-13.md) | 66 | `declaration-track:bf04e25dc719f930f65bc85961a04bdc080e04c57eceaceeab28447853b1b2d2` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-8.md) | 69 | `declaration-track:99c3608c05de59280482ee94d4b970972f267cf5219e9fa8b498458045beb8e0` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-6.md) | 72 | `declaration-track:558943407fac2ac170c0af65f2653fa23a355e3a7b3573596c2f7aef6d0df4c0` |
| 10 | `instance` | [le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/le.md) | 75 | `declaration-track:af5d992a507d6283a0e0404f0131de163406360c4593fabe3937722a70c8d07d` |
| 11 | `theorem` | [le_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/le-def.md) | 78 | `result-track:70947584d568d2ef56b60a590ee1aff5d9273fb7d7142f39c17ebb7350906c31` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-18.md) | 81 | `declaration-track:e516080bca810055a61e4f4961e61874683a3b5412c7f0333c1ad67347a0514a` |
| 13 | `def` | [toDualProdHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/todualprodhom.md) | 86 | `declaration-track:05606410ff9a1d0a71aae19c940aaa26efc6366469e599b81e9b0a8a962527c3` |
| 14 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/dual.md) | 92 | `declaration-track:398960e22b6d6e55c2af6c6c623de6c1938f99c1bb766e17ad145471d3fc070f` |
| 15 | `theorem` | [fst_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/fst-dual.md) | 97 | `result-track:c5ce3dd1ec4a7d25e9ce6a753c6960a57236bfccf87ca4432589d3b356d221a8` |
| 16 | `theorem` | [snd_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/snd-dual.md) | 101 | `result-track:7b2b7858de63290f71d662ecc94603653f06b8da0fc5ead8069c8a26eb84dd53` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-10.md) | 110 | `declaration-track:abb4cedde36b71deb7181dae328cc7308412f0bf2b5c07e06b4cc584413fc501` |
| 18 | `theorem` | [toDualProd_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/todualprod-mono.md) | 113 | `result-track:292ab92d0fd1cff389263cfe97a9c4b794085e4ded54c51bdcc9758dd524b318` |
| 19 | `theorem` | [toDualProd_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/todualprod-strictmono.md) | 115 | `result-track:78d554f04d3f0292a4ead6e7ff08411bb62aad132610e33e02dd951182c78272` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-7.md) | 117 | `declaration-track:81481e837084ee3f91346bea9b1dbb76e3f1dac5bf09076b70b6b0278e20016a` |
| 21 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-19.md) | 120 | `declaration-track:eb5484e032a238944688e9b3316ac150acaadb117c2cda781f2058cf7d671bda` |
| 22 | `theorem` | [mem_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/mem-mk.md) | 124 | `result-track:40a1f3bc5e41ec707758f5f7a0595f90712398450ceff61cecdb1f7ad712c5da` |
| 23 | `theorem` | [mem_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/mem-def.md) | 127 | `result-track:a59116bee0dd3aeace95c6b3803a7ad7a221aff429dd1e0708eaf2bb6063e470` |
| 24 | `theorem` | [coe_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-nonempty.md) | 130 | `result-track:3fc2deb05ea5d90dbbc0e62c31ab23b2c224006a0e9250d1fabeaa734633e550` |
| 25 | `def` | [pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/pure.md) | 135 | `declaration-track:853b5b29b14301cddd0ba3451afd9bf9d55d65fa43efc60d9a1cf2bc16f19d8c` |
| 26 | `theorem` | [mem_pure_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/mem-pure-self-source-edition-2.md) | 138 | `result-track:52779f51cae4411b0c25e00a72cb140a14e494a30666051c1abc7d142b26bdae` |
| 27 | `theorem` | [pure_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/pure-injective-source-edition-2.md) | 141 | `result-track:9272d349669b17e402e87af93116ebf2aa39062d8f976011ed02a7b89cdd99cc` |
| 28 | `theorem` | [dual_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/dual-pure-source-edition-2.md) | 145 | `result-track:f1b6def1fe13bbdad9838339dfe296efd060d888118fbd41e4e808931bd04b41` |
| 29 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-3.md) | 148 | `declaration-track:28cab5a9f8dd3874973237fa1cb011cb21712f3b795378d5e7f15762b145d4b3` |
| 30 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-2.md) | 151 | `declaration-track:1b0e42c195d265396e1dfc7350f094b60355e028c40dd71e1977a3c186df74d2` |
| 31 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-16.md) | 154 | `declaration-track:d8abfe3ac89171f4a7379a0ed8d8bf5597abc0d2d2bdc1c6a7d5038b1913b3ac` |
| 32 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/map.md) | 159 | `declaration-track:1bd50bba4a198a19a26e3e462559a57ac94548bac10b7fc75ee7bf2bef02b5ad` |
| 33 | `theorem` | [map_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/map-pure-source-edition-2.md) | 163 | `result-track:54914dc4227c1eb2188278edbd662d9594cd6b2ed7863a6bee1b9ac1af1f403f` |
| 34 | `theorem` | [map_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/map-map-source-edition-2.md) | 167 | `result-track:ee7e32d992e82cd5b7b4562b97b92b4aa4c066a126f6255812e0165183b3e641` |
| 35 | `theorem` | [dual_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/dual-map.md) | 172 | `result-track:2b5bab81df30ae2fe1a2d8054b296175f952632b352ff4c7a23101b4fd6670aa` |
| 36 | `def` | [map₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/map-source-edition-2.md) | 178 | `declaration-track:71baf9bab5f463c0089e79cc91b66c34634e0aef8fd1bef35af7bb4ec49e7790` |
| 37 | `theorem` | [map₂_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/map-pure.md) | 183 | `result-track:106c33141b36af059c4a876f66f9d1e33410f706828f82b60ec1888b0ffa728c` |
| 38 | `theorem` | [dual_map₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/dual-map-source-edition-2.md) | 188 | `result-track:a640ca3ed6306e2710baabe3edd2b7f2e806273fd96280115aba3d8acb23b102` |
| 39 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-12.md) | 196 | `declaration-track:bed878e52a9f69835a3d2dad680f67f7fe3f0bac74dc45f89afb33a49c873181` |
| 40 | `theorem` | [dual_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/dual-top-source-edition-2.md) | 201 | `result-track:df4eae578f4f4c7cb7f68379191c58e52639a4c9d3bc0d1dab83fc8bde3eec4b` |
| 41 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-17.md) | 210 | `declaration-track:d8b4836c036578697ebc802e74d8d43ba57a22858391f4bef558a09855aef65a` |
| 42 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-11.md) | 213 | `declaration-track:ba97e3f9da8e5662147a5764b0365d97eb054b76b6670a7c1620d557e32f5627` |
| 43 | `def` | [coeHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coehom-source-edition-2.md) | 217 | `declaration-track:4051a2c62fe285e50e429400c94ae143064751fe625bc75c5d99e895bdda0e6f` |
| 44 | `instance` | [setLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/setlike.md) | 220 | `declaration-track:253dc641e9b904252bcbd3451a15b2fc70beb3d66d34630d5b6b529e6394d043` |
| 45 | `theorem` | [coe_subset_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-subset-coe-source-edition-2.md) | 225 | `result-track:dd79d9b3a33349ba12554f711917d19681a63f1dab382e0053c715271d44765e` |
| 46 | `theorem` | [coe_ssubset_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-ssubset-coe.md) | 229 | `result-track:0cbfc564e6fe809f22fc2d2126596243a754cf2f87e56c20884d9a811451741f` |
| 47 | `theorem` | [coe_coeHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-coehom.md) | 233 | `result-track:80d288f1845a0de91bda125f5ee3aa5fc9bc864e819ca8f18069f7110b19c80a` |
| 48 | `theorem` | [coe_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-def.md) | 236 | `result-track:14a0a4e72500f3b44dbc366fb40567f99b08422a6279608e197388479d938ef3` |
| 49 | `theorem` | [coe_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-pure-source-edition-2.md) | 239 | `result-track:b19d38435d1c5c07dc725096704c6a20b7e456fae16b0d440bdf0ffca613deed` |
| 50 | `theorem` | [mem_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/mem-pure.md) | 243 | `result-track:1cf5a3b977700ce7bb300995600b115fab100ac6819e1739b34be41637d4a453` |
| 51 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-top.md) | 247 | `result-track:33b7055fb1917e8b0949dfa428511f1af6c6f62eb6b63c410d17942a8bcd7357` |
| 52 | `theorem` | [coe_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-dual-source-edition-2.md) | 251 | `result-track:f33ab8a76a2391e6128366b72558f8f229cf88b685dbb93e4a5cab92f01b041d` |
| 53 | `theorem` | [subset_coe_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/subset-coe-map-source-edition-2.md) | 254 | `result-track:72ac8bc5083a7c4b92b40a55124f39efbffff147d82b3c2795ee248279bd4454` |
| 54 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-14.md) | 263 | `declaration-track:cad56b0a20e4c7412536a33ce2357b93f9b156d7b62a9d0972aa90c35789babe` |
| 55 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance.md) | 266 | `declaration-track:1853619707c38a35b3328a4024af27b7ef64a6fc7605b3bb5250a45694457a07` |
| 56 | `theorem` | [fst_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/fst-sup.md) | 270 | `result-track:c6cc8a0033ffcf1f5c4922487d0adad7ab90f7c5af3483215c40c259d6e7689f` |
| 57 | `theorem` | [snd_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/snd-sup.md) | 274 | `result-track:5f3ee3aa10efb584557032a4f046ab9ab21d5ab49a5088767cd962ca2ca5f205` |
| 58 | `def` | [Interval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/interval.md) | 286 | `declaration-track:c9df7f84e0ee6629148af0c985ac370108b2394c583c672f96baffbaa9de301a` |
| 59 | `def` | [coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe.md) | 297 | `declaration-track:3cfd4cff79e320a5010f5dc2aec0d339151de597053902345f313f983163f227` |
| 60 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-9.md) | 299 | `declaration-track:a329ace819432e080d2183b41b85f4089b3c02d977d12aa95bee0fc8401f5d3f` |
| 61 | `instance` | [canLift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/canlift.md) | 302 | `declaration-track:7aa178cbb0807f349ccf610979c3dbce81996de65ec8df0d496dfcbfa511b824` |
| 62 | `def` | [recBotCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/recbotcoe.md) | 307 | `declaration-track:8bcbb50f9fa95d7ce384681b8d10c59b63471dd4403b76275a713552459e034d` |
| 63 | `theorem` | [coe_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-injective.md) | 311 | `result-track:12fcfa4f32f2822d9b82b5e557cf79cb142756825aef680a920f32d03157ea01` |
| 64 | `theorem` | [coe_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-inj.md) | 315 | `result-track:cd563c51aff83fc59e0b140401796886e1244ebdeb8000b05daf0e4bd24dd798` |
| 65 | `theorem` | [«forall»](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/forall.md) | 319 | `result-track:bde4a6854d4c2579a2f4db5a5f58cbae2b8f3d17e5b1cdde61ec6e6382733906` |
| 66 | `theorem` | [«exists»](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/exists.md) | 323 | `result-track:78dc1d0231918b61a912cb7388aaba541f90075ab712acfb654238940c879a95` |
| 67 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-15.md) | 326 | `declaration-track:cbe9ec7d7a35fa314222e6d34c01ac819835acbea24d676f321e679b7d9bae15` |
| 68 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/dual-source-edition-2.md) | 330 | `declaration-track:770dbc3b52cc73cd1ad38472ae2a328f52eadec570847b9212e79f5abe5ca5d2` |
| 69 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-5.md) | 339 | `declaration-track:4e8e989f7d90fdcda2dfb91a3b9432c177769c2a96c3e2dd79e0aa38288cb516` |
| 70 | `def` | [pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/pure-source-edition-2.md) | 343 | `declaration-track:a347c0c99ec49a9ac5490776884bc9ee0870598a4dc1f5e96de17e39888da25e` |
| 71 | `theorem` | [pure_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/pure-injective.md) | 346 | `result-track:1ab6f42180ecb61ec3455b0546af66c9875de0c6a4b4c3256357d56e0d0dd99e` |
| 72 | `theorem` | [dual_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/dual-pure.md) | 350 | `result-track:0a98fe4847a9bda81d391f0f2920c80ca78eb7bd1b946da3581665b086ddcc7d` |
| 73 | `theorem` | [dual_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/dual-bot.md) | 354 | `result-track:09f6bd698c1c79b8e339add7f4ada6bd771471816acc8a69569023ef3ac529c1` |
| 74 | `theorem` | [pure_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/pure-ne-bot.md) | 358 | `result-track:9b5bd8494a5f212cb4a163cb791e9da710194f15d2f315eefbae87abf123abba` |
| 75 | `theorem` | [bot_ne_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/bot-ne-pure.md) | 362 | `result-track:afdd061642fe97eb2c13801393f415e14198a25c0ef8cf8ac9cc5ff2e719b07e` |
| 76 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/instance-source-edition-4.md) | 365 | `declaration-track:30538377aef4f790603fcc97da0cb34347c81dd229027a0c6d7e1f7474863890` |
| 77 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/map-source-edition-3.md) | 369 | `declaration-track:e7b703f13a2d1a27b71d59d67cdc7c98b30bbad62cbfbf8c5d8f7415f0328aea` |
| 78 | `theorem` | [map_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/map-pure-source-edition-3.md) | 373 | `result-track:a2bc6e2534c5bcb5e454e11b53292958c790cdbe0ae85611e27a77504a2535c9` |
| 79 | `theorem` | [map_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/map-map.md) | 377 | `result-track:9fb9489c7932a2fc95de5308b31294f3b4d56927117cdfbab00c87f9ea274a7c` |
| 80 | `theorem` | [dual_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/dual-map-source-edition-3.md) | 381 | `result-track:dd231355325c1e18fa6a857c8d44a3eee9344173634f6b7d341ee0f148bca099` |
| 81 | `lemma` | [coe_le_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-le-coe.md) | 387 | `result-track:b405fbf34f78809873b1eeef7de1cc9b3e90e1f444b6549cb31b7a87df9439c4` |
| 82 | `instance` | [boundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/boundedorder.md) | 392 | `declaration-track:5668221b913a989316e8f37d3232ab148393ea22a8559a3121e48a9b87d2455a` |
| 83 | `theorem` | [dual_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/dual-top.md) | 396 | `result-track:434f12b3c5d5ff1cd3ad247edb233dd203a2c64cd85a09f86689b0d35b847dc0` |
| 84 | `instance` | [partialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/partialorder.md) | 405 | `declaration-track:d018af5ad27f1775a59e46d50df70fd1e3612688ede84a91d365e954fda65901` |
| 85 | `def` | [coeHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coehom.md) | 409 | `declaration-track:1ba1fac9c2ce37224af0747e625a9fbd1e5bddf07509b6332afc5d1635b2743d` |
| 86 | `instance` | [setLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/setlike-source-edition-2.md) | 422 | `declaration-track:c3bf50ed413842598cebfc553ff2d28be6ada3ec2c7e09f157494e231df46faa` |
| 87 | `theorem` | [coe_subset_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-subset-coe.md) | 427 | `result-track:44b1b31a7031c396018558a094f13af1d3acd4fe221a74c5bfc0f648a431b7db` |
| 88 | `theorem` | [coe_sSubset_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-ssubset-coe-source-edition-2.md) | 431 | `result-track:6677432bc6282fce16e67a0c6b773329a39510209380120cfbbfc67394590b0f` |
| 89 | `theorem` | [coe_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-pure.md) | 435 | `result-track:13a1ff24b5c15d0086f687d06bb5adfd915e1dfd2108bee6eec8107e9003270a` |
| 90 | `theorem` | [coe_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-coe.md) | 439 | `result-track:3cd222e03425349c71269d59abdac7d852319c24d0e0dce1268a3e9f73a16a9f` |
| 91 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-bot.md) | 443 | `result-track:abbfd6a105d1d9350d48d9c310eed7eacd0262b7b2175046ab161d7d752aa822` |
| 92 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-top-source-edition-2.md) | 447 | `result-track:9e8e197b1e8428297a4aab37c4b19867ae7f3197ea6a3bf0dd2c75ed5ebc16ca` |
| 93 | `theorem` | [coe_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-dual.md) | 451 | `result-track:bbc15a4298743c43e107a197f581bbf1a2660d65aea9def4bc0ef49a880ca347` |
| 94 | `theorem` | [subset_coe_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/subset-coe-map.md) | 456 | `result-track:3427c385d6d01c15105a2781b9a4fcbf18ec5f2ed525ad5b13abac2345fc0952` |
| 95 | `theorem` | [mem_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/mem-pure-source-edition-2.md) | 461 | `result-track:7866f5a480a5359c01315e906af06812af0dd4fdb312bb2edb2e92f721221329` |
| 96 | `theorem` | [mem_pure_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/mem-pure-self.md) | 463 | `result-track:4c885ac0a30d4e2da83ccb272b2116d22ec91a29fa2f994f3e3cb3cad1f40df8` |
| 97 | `instance` | [semilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/semilatticesup.md) | 472 | `declaration-track:d58259928e8b4957c9b0b1071c16cadc3b60f2d946382b737c65ece9d47dcef4` |
| 98 | `instance` | [lattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/lattice.md) | 479 | `declaration-track:2348ab9ae95789a7c037d7b77c3d3f5390701bcda2d4d7555e70e3451c292cc5` |
| 99 | `lemma` | [inf_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/inf-coe.md) | 532 | `result-track:d1924168c81f70cde7ac17bf15d35e2e609a71cba6d5f7210b9d9168418424e2` |
| 100 | `theorem` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-inf.md) | 539 | `result-track:a2df2167cd4abf229755eb7fab11d3c558cd62c70b033427877bc8fc50c337ba` |
| 101 | `theorem` | [disjoint_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/disjoint-coe.md) | 557 | `result-track:6a285aadbeb4d8adfba07f566041cdfc3bdad4f463604f9c2f64623113e83abf` |
| 102 | `theorem` | [coe_pure_interval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-pure-interval.md) | 573 | `result-track:29e3f13b0b57bb97488c746a12a6b12584f5378262140975c42c16ef363bab2a` |
| 103 | `theorem` | [coe_eq_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-eq-pure.md) | 577 | `result-track:baa9440e7346149c1cd5828ad1de2f7eb4211c1175cbd278b1c83dd63814ce62` |
| 104 | `theorem` | [coe_top_interval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-top-interval.md) | 581 | `result-track:9d97f197be18715b21c6d6c86eed875f41cbc94fd23b949b2469bdb3f2064c03` |
| 105 | `theorem` | [mem_coe_interval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/mem-coe-interval.md) | 587 | `result-track:94b0d4aaffe31d3e2a9cd9fba5cc120cb4958e458553c8377ac302acc5b002be` |
| 106 | `theorem` | [coe_sup_interval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-sup-interval.md) | 592 | `result-track:361885d4c2a1365fcc7e1df53784484a0ca9a131d920b377c584042c50906a07` |
| 107 | `instance` | [completeLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/completelattice.md) | 605 | `declaration-track:dc907ae33e20609a9c007e1fa5e0f952f1ded0c9f37588e591f3f47077d52ec1` |
| 108 | `theorem` | [coe_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-sinf.md) | 674 | `result-track:661f2805e8f081b49f5802400f8ce1c4c9913e65fba3a7957396cd8a66a2fc28` |
| 109 | `theorem` | [coe_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-iinf.md) | 690 | `result-track:1a429f0bb820b9417c2637a8d868314caee9b11c419daf2b7def757a7fdc6192` |
| 110 | `theorem` | [coe_iInf₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalBasicPublic.lean/declarations/coe-iinf-source-edition-2.md) | 694 | `result-track:2997ccdc9231517803a5691e6919460423144f5289e1242536088ce6dc21bda2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=411849509bf2cf3907925394f62d8e873cc199f88f37a2dad2a9a2bd7aa41a41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf97d34bb1db04d398660451eb8dbc3ac4ebdbdcb647d8b13b339d562a6a84174.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf97d34bb1db04d398660451eb8dbc3ac4ebdbdcb647d8b13b339d562a6a84174.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
