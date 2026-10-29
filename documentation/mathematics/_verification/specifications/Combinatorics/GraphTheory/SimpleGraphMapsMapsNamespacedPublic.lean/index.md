# Verification target: Simple Graph Maps Maps Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4baec2a18339d91705b44912d441dd82c003522a",
  "lexical_observation_count": 161,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Varianteeb9644058f6bfb4517f10cab3f6f5ccd6a6a6c4f5ea7b0bdb160b42c65005aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4baec2a18339d91705b44912d441dd82c003522a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Varianteeb9644058f6bfb4517f10cab3f6f5ccd6a6a6c4f5ea7b0bdb160b42c65005aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Varianteeb9644058f6bfb4517f10cab3f6f5ccd6a6a6c4f5ea7b0bdb160b42c65005aa.lean.json)

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
| 1 | `def` | [map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map.md) | 65 | `declaration-track:115941603214dbd609e250b280e55cb8bdad58f8ce55ad2996dbe03513c489fd` |
| 2 | `instance` | [instDecidableMapAdj](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/instdecidablemapadj.md) | 69 | `declaration-track:a1a46a5263d68d0924942a6baaf8e2d8b3707eb3436aa801f0de1eb7f04d5bcc` |
| 3 | `theorem` | [map_adj'](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-adj.md) | 74 | `result-track:2bc6340431d794dfeede441be87189df0a861efe62f05c3297d087dd4664e3ca` |
| 4 | `theorem` | [map_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-adj-source-edition-3.md) | 79 | `result-track:c9055f110dc3917074fb96be5051b29ed134621fb2a87ec1f8de0177b25484c9` |
| 5 | `theorem` | [edgeSet_map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/edgeset-map.md) | 83 | `result-track:1c7e7d308f5dce34bee25a5565926af116d5e00b093c95e013241cb8a934b759` |
| 6 | `theorem` | [neighborSet_map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/neighborset-map.md) | 98 | `result-track:f4ae3f85f1564d81d54c24ab41b795d16908f7bb6064bc7b3148b32c7823d48c` |
| 7 | `lemma` | [map_adj_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-adj-apply.md) | 104 | `result-track:0097c5d7524515b1648a3c5b8ed77f7f0be94cdc34d4dc3d3dfaaf04db2c891b` |
| 8 | `theorem` | [map_adj_apply'](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-adj-apply-source-edition-2.md) | 108 | `result-track:919c60afd58f257b89230dc8d23a4586c74f5fb6700b6555ee754f44f0306d3d` |
| 9 | `theorem` | [map_monotone](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-monotone.md) | 113 | `result-track:393f17ef9db8db9ae388418c9d5e3535f1724abaf11f24a5eed755c20fbdfba5` |
| 10 | `lemma` | [map_id](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-id.md) | 117 | `result-track:e6393a00c37009138e44ea8250dc21ae27256902bc6ad72f3506a2f448fa7cd1` |
| 11 | `lemma` | [map_map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-map.md) | 121 | `result-track:09076ee89698a121d7b2a0d5f103bb68612f523ba67fec81a5263aae93168749` |
| 12 | `theorem` | [support_map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/support-map.md) | 125 | `result-track:14eea6aa860f5f410b16ab77fb83602e0e6790f9a65249dd7afebfdc134e7726` |
| 13 | `def` | [comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap.md) | 134 | `declaration-track:2a751da874cda5fd8f1808bf231273080445babcaf86bfe7deb7a5e4f13b89c8` |
| 14 | `lemma` | [comap_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-adj.md) | 138 | `result-track:6670ff1a3b6e5df6b2c0a7c61b90ccaf7795da807c9986f9dc7e0e0f864ebdc2` |
| 15 | `lemma` | [comap_id](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-id.md) | 141 | `result-track:4a35475f66d53c30aca4b9eb8bc9f3bbd2ede45ff93a9e0df334b61032a448f8` |
| 16 | `lemma` | [comap_comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-comap.md) | 143 | `result-track:0c7c653df2da8db6f97fb71aab8a51fbc0a8bcda7f58ef62302c08f2d72309d3` |
| 17 | `theorem` | [support_comap_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/support-comap-subset.md) | 146 | `result-track:09c56432ae616901922b45ed693a3e6652f489ace47abd9ac040c40b0f337649` |
| 18 | `instance` | [instDecidableComapAdj](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/instdecidablecomapadj.md) | 150 | `declaration-track:8019a1cdfe551b2485bcacb08fcb4a87e2a9ef98aaebad9c98cd6ebf5a3f4c15` |
| 19 | `lemma` | [comap_symm](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-symm.md) | 153 | `result-track:ad629cf4280f34acaf48a9f4744955b87527ea34ee864eb9efd08f04da2d8097` |
| 20 | `lemma` | [map_symm](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-symm.md) | 158 | `result-track:9a7e330ed841130fb6582039c540989cc9d9fb1261071c0f4005d46dee7250b3` |
| 21 | `theorem` | [comap_monotone](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-monotone.md) | 162 | `result-track:ba0e36817f136d9ee36a6aaad7aa111100cc5a2690e8659192075a240543412f` |
| 22 | `lemma` | [comap_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-bot.md) | 165 | `result-track:f6acaace8f86ed8abeb76a447ff0beabd1dc867c1b67a7d95198c52d333c2180` |
| 23 | `lemma` | [comap_top](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-top.md) | 167 | `result-track:bc00906a9d2c3a9abec0d3e0eb4890226231f818b3c1be757885080ed38ada1f` |
| 24 | `theorem` | [comap_map_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-map-eq.md) | 171 | `result-track:1611cdbda93c6a67d1b3ecb4174755dcf4d1993362e143d6ac5ff12343b13bbb` |
| 25 | `theorem` | [leftInverse_comap_map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/leftinverse-comap-map.md) | 175 | `result-track:6692566861fd8ed9fab0ca79e03952f7378da32cada28cb2b1a2e54e058be7e1` |
| 26 | `theorem` | [map_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-injective.md) | 179 | `result-track:57979c9678bd79a0e80f584f693c3d2a820bb6b7cb5d41e34f14571f5fcf57c3` |
| 27 | `theorem` | [comap_surjective](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-surjective.md) | 182 | `result-track:5089b70c39f4fc038301c7b2a28a4fdaf4191ba045e819e1994f3c243296462b` |
| 28 | `theorem` | [map_le_of_le_comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-le-of-le-comap.md) | 186 | `result-track:dc7c04f355186c50e15ef73080d7537c0705880e5a93d8a86d3f4f8a7935ad70` |
| 29 | `theorem` | [map_le_iff_le_comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-le-iff-le-comap.md) | 191 | `result-track:82008bb9b9036a83a6b09cd95fd9d510a9dde1158fb69b5459ae63f3af7e3afa` |
| 30 | `theorem` | [map_comap_le](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-comap-le.md) | 194 | `result-track:096d14d15a99aefbca8c6f88de99a283ec71e8681c110d00b730046f2ec59d1f` |
| 31 | `lemma` | [le_comap_of_subsingleton](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/le-comap-of-subsingleton.md) | 197 | `result-track:16e85effd5f50898ab69e000dc8c1e048bcb4b195b29e4baacc89a6b088549ed` |
| 32 | `lemma` | [map_le_of_subsingleton](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-le-of-subsingleton.md) | 200 | `result-track:93b2dd1cd9d05ea7713dbc76f8edea4469726172c6c6f172847edc7dc9672919` |
| 33 | `abbrev` | [completeMultipartiteGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/completemultipartitegraph.md) | 206 | `declaration-track:35ddf078f91e8f835440f76d578c3abb3e3504a2ffece91454a912cf391f691e` |
| 34 | `def` | [Simple Graph Maps Maps Namespaced Public](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/simplegraph.md) | 211 | `declaration-track:de1f666c6e6dba761cc1a203a5c5e5b13ae4acefe5a03437b05b795c7e921a10` |
| 35 | `lemma` | [Simple Graph Maps Maps Namespaced Public](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/simplegraph-refl.md) | 217 | `result-track:b7b7096d39750d53c24d46b60ae60053a03b844d96f10672d16c359ece2e770a` |
| 36 | `lemma` | [Simple Graph Maps Maps Namespaced Public](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/simplegraph-trans.md) | 220 | `result-track:b7869024ce8fb743544a792254eb9b0ef9ae3e590461be641ff3c1a51389f58f` |
| 37 | `lemma` | [Simple Graph Maps Maps Namespaced Public](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/symm-simplegraph.md) | 224 | `result-track:efd98da560880cf6f9a092497d871002f64175440a97aa94b897dc30d5ef32ae` |
| 38 | `abbrev` | [induce](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/induce.md) | 235 | `declaration-track:3f92b85767357748e00c991e74bc1785fb9e8a6204ec2bb37b08bd8d41e47353` |
| 39 | `lemma` | [induce_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/induce-adj.md) | 239 | `result-track:aae48f603fdbbfa84ffae704f4ca9147a3d116360af810bb1b56c6976fcaeaba` |
| 40 | `lemma` | [induce_top](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/induce-top.md) | 241 | `result-track:9b433b0cdf316c063149195428115950ad6ee8c67df16ea038b1f15b7a57c0a6` |
| 41 | `lemma` | [induce_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/induce-bot.md) | 244 | `result-track:94aeaeec0dd04b4366e2e5b4364151446611e6e98c2979ec69c627b6a9fe0de4` |
| 42 | `lemma` | [support_induce_subset_coe_preimage](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/support-induce-subset-coe-preimage.md) | 247 | `result-track:e98048b35b47d69e862e21d9e60eee198656cc05658ccbf3f90b5d971af45422` |
| 43 | `lemma` | [support_induce_subset_coe_preimage_support](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/support-induce-subset-coe-preimage-support.md) | 250 | `result-track:0a9013e8468ba83798768c62031ec59e26cb83ca67fcd0e9c28cdcf584f0a2ac` |
| 44 | `lemma` | [induce_singleton_eq_top](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/induce-singleton-eq-top.md) | 254 | `result-track:11d50120364efcab19e2f164aa7a3c28be01482489a9cc0d4bb7a6965f7445b8` |
| 45 | `abbrev` | [spanningCoe](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/spanningcoe-source-edition-2.md) | 260 | `declaration-track:eaf72dd3d9b1f393cfedb3c132113b3fb69f96fd338df2f5be5ed0b333fa4d0f` |
| 46 | `theorem` | [support_spanningCoe](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/support-spanningcoe.md) | 263 | `result-track:ec39bfaf4ddd87f32075dac074aa950ab69bad4f7f4e7c9439dc112460edcd75` |
| 47 | `theorem` | [induce_spanningCoe](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/induce-spanningcoe.md) | 267 | `result-track:c22f1476a318c9e364db02cb56e52ca5c69261d2fd5008689ec96c99cdb84d36` |
| 48 | `theorem` | [spanningCoe_induce_le](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/spanningcoe-induce-le.md) | 270 | `result-track:bff3567a9c29d32d76962ba9d2bb6153c29fb0911b94432a95ceda35f629c915` |
| 49 | `theorem` | [spanningCoe_induce_eq_self](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/spanningcoe-induce-eq-self.md) | 273 | `result-track:fad435cf7da488a1394b2ed51c7884bd115e3f3ab8d060f7fcb14c251092b328` |
| 50 | `theorem` | [spanningCoe_induce_support](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/spanningcoe-induce-support.md) | 281 | `result-track:fd7fd77e05ebeab799d7b234ddd85ca2f8c13249011dc6837cdcda68a71e2416` |
| 51 | `theorem` | [spanningCoe_induce_univ](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/spanningcoe-induce-univ.md) | 285 | `result-track:4b76b9a2cdd5fe848519e8b980c97e4a5a74be1036dc8c1c5766f8f250583ee7` |
| 52 | `theorem` | [IsCompleteBetween.induce](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/iscompletebetween-induce.md) | 289 | `result-track:0266371f5d7653483e752ae42b5f7d5ccdd9ce6945ac2471e338bb4744c68ff0` |
| 53 | `abbrev` | [Hom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/hom.md) | 301 | `declaration-track:62417c59f50923feddd09d28094bfe9c4022aaacb4c54406150cf0b6c21e6390` |
| 54 | `abbrev` | [Embedding](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/embedding.md) | 308 | `declaration-track:c75dcaab1600a0e35506c77008a9306d04f0672fa69f7f625a645cdc89e0b8ed` |
| 55 | `abbrev` | [Iso](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/iso.md) | 315 | `declaration-track:7ef31d20c2cf670099ba21ee6d44f455e4d4fc5916b211945a73defbe183a594` |
| 56 | `abbrev` | [HomClass](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/homclass.md) | 323 | `declaration-track:9582de03b38acd3476beeb1e2c885eee17c7369e36ad4b68a23dfaff60b0fd29` |
| 57 | `abbrev` | [id](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/id.md) | 331 | `declaration-track:4ee3d48917681aab1001ab7099eebf8c586215e5aae2d569675931e6810422cb` |
| 58 | `lemma` | [coe_id](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/coe-id.md) | 334 | `result-track:677cec9f96132c5290499150c5bf5d970e6d3d829da0673d1541c617bf4339b6` |
| 59 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 336 | `declaration-track:f75b9f223667e754112a8d4076d20f42135b6836a79d9d3b2dab4c63423a2846` |
| 60 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/instance.md) | 338 | `declaration-track:5a25e5fe761bcbead21aeab697a9526d1dcaff068bb034d572d8055cb8aca4b7` |
| 61 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 340 | `declaration-track:a01dd7f84c86998c5a8b8a16d5cc4bff78194962f280c9a7a37dad688ce38fc5` |
| 62 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 344 | `declaration-track:eb3f04a06331964163a12610d0d3a6b2b11ade425127a8d48929fdd5dfaeb539` |
| 63 | `theorem` | [map_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-adj-source-edition-2.md) | 346 | `result-track:bced8259e18ce12be4aa3c66b5777044bd9e10085845e97624a8e03af4d67d34` |
| 64 | `theorem` | [map_mem_edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-mem-edgeset.md) | 349 | `result-track:40d30c4b61cd52cff102da98e243dd7d96e1d4341ead5c72929cf25842285e74` |
| 65 | `theorem` | [subset_preimage_edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/subset-preimage-edgeset.md) | 352 | `result-track:5f30ac4b18bdc28bb3a87b33c33e20b3deca15a77b8609ab4171b1239632c785` |
| 66 | `theorem` | [image_edgeSet_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/image-edgeset-subset.md) | 355 | `result-track:312fdd609284cbcaf0c20408af34f1b05f0d2dc5a5aa74bf4bdbe122a0e628d3` |
| 67 | `theorem` | [apply_mem_neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/apply-mem-neighborset.md) | 358 | `result-track:7f6641801c037789d2dbfb8304764f3a7b9f67ac75be090663c3e9cf33c082bf` |
| 68 | `theorem` | [subset_preimage_neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/subset-preimage-neighborset.md) | 362 | `result-track:74ebe6662fe914b56922225d9ff349679e676ac971c1f9e1578b8327707d6023` |
| 69 | `theorem` | [image_neighborSet_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/image-neighborset-subset.md) | 366 | `result-track:99b6e833e8a78bbfc1b48ee48906e50cc50484795fc6d9fc686c04002912a4c6` |
| 70 | `def` | [mapEdgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/mapedgeset-source-edition-2.md) | 372 | `declaration-track:4cdd0d0e63fa81788a3dec0d9eb96de935516448f7096ecd1eaf5d3599ca7f30` |
| 71 | `def` | [mapNeighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/mapneighborset-source-edition-3.md) | 377 | `declaration-track:f429e1d190bdc80e76446f97f3d3cca439e2a8e2036e147c58b2e1e078279164` |
| 72 | `def` | [mapDart](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/mapdart.md) | 381 | `declaration-track:44564dc40cb4b14f9f6e87840cce3d8f63e8c1738c0caafa9d90415e266ff93e` |
| 73 | `theorem` | [mapDart_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/mapdart-apply.md) | 385 | `result-track:9ab5e5b03316f09ebd50add3c663999086832acbdd21a949cd874e2f94f4b281` |
| 74 | `def` | [ofLE](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/ofle.md) | 390 | `declaration-track:b694e3e10b3e49fca4488cf4d447cdc56215dce5371aaa93974734b79ef47b54` |
| 75 | `lemma` | [coe_ofLE](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/coe-ofle.md) | 392 | `result-track:2bca06213d42bd4d5986b554fbb4acdea8df75fcd7cb0536b77788984f45afb3` |
| 76 | `lemma` | [ofLE_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/ofle-apply.md) | 394 | `result-track:da18317f989f2e0e985a92f6ae81b7bc9ea095e7116b69d4b8e2373191dccb9c` |
| 77 | `theorem` | [mapEdgeSet.injective](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/mapedgeset-injective.md) | 396 | `result-track:170e56aef35de4e873b4b6425156ee4bb53008d6a661c7e242358d5cc17318f8` |
| 78 | `theorem` | [injective_of_top_hom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/injective-of-top-hom.md) | 403 | `result-track:0448a89b2b414681d6e46783124450b448c02e5a3ec8f643caa1b9521f531221` |
| 79 | `def` | [map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-source-edition-3.md) | 412 | `declaration-track:bfb3d404555b6dbc20845d021ebaceff6e35e51d821eb7bab4d2d0095d7cacc7` |
| 80 | `def` | [comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-source-edition-3.md) | 420 | `declaration-track:b198b8c58292c6b97a749882e1757553f13dc7c8886846bcba120bf6c8f7776f` |
| 81 | `theorem` | [le_comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/le-comap.md) | 424 | `result-track:4a25720aa83108782b69c4e66c5ca0dd8355bb37b892ca017c674166af8d7527` |
| 82 | `theorem` | [map_le](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-le.md) | 428 | `result-track:8a5739b19c34e40d514779b13fadfc142d116ff8e561c7ad1ad47c907a80a560` |
| 83 | `theorem` | [nonempty_hom_iff_exists_le_comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/nonempty-hom-iff-exists-le-comap.md) | 431 | `result-track:423ba9106d2a0ebbd78140f8ed91a94d63508d84297c6249e6938ccdf5aae21c` |
| 84 | `abbrev` | [comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comp-source-edition-2.md) | 437 | `declaration-track:1bc4516386a0d81a05d4d52dbf037297c10a7cf9e6990924a7b203ab64078b0e` |
| 85 | `theorem` | [coe_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/coe-comp-source-edition-3.md) | 441 | `result-track:e2cecf96b1a9e429e1088006c62bb45977d87ede905f6b80fcfda00615138826` |
| 86 | `theorem` | [comp_assoc](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comp-assoc-source-edition-2.md) | 444 | `result-track:3778650df1905e21e32da07128373e290d0f02424c3302447229bb65c3b76374` |
| 87 | `theorem` | [comp_id](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comp-id.md) | 448 | `result-track:1bc707e3c7b7fcf3c93f7ef9d84c71042a370f18bcce9957733d00b735d9520e` |
| 88 | `theorem` | [id_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/id-comp.md) | 451 | `result-track:5c29b32ef099497e3653b87e4b4cebf70fa610df7cf8096fdcee81a292741897` |
| 89 | `theorem` | [comp_comap_ofLE](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comp-comap-ofle.md) | 454 | `result-track:cdf40d84b631364493eec785707b60520643f5583d3e2df8651178826fe8f0ac` |
| 90 | `abbrev` | [refl](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/refl.md) | 464 | `declaration-track:3466abdd0d856e2599cefd845ce73bafa8d0e4b768d159718a6e908c00d296ee` |
| 91 | `abbrev` | [toHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/tohom.md) | 468 | `declaration-track:79fa339001626c279fbe754650ba4108087324a334054f6288694c9d9f11bd25` |
| 92 | `lemma` | [coe_toHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/coe-tohom.md) | 471 | `result-track:d83a5791d14a85b813845cfea0b08c8510f18c5dd76e34687ff86f1353a762d0` |
| 93 | `theorem` | [map_adj_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-adj-iff.md) | 473 | `result-track:26f3721488d1880d2eab3ceeb2c19da224685bbf20958e896e2f10b80b26720a` |
| 94 | `theorem` | [map_mem_edgeSet_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-mem-edgeset-iff.md) | 476 | `result-track:72df4e916737aa70b72a91dbc929063ec4ccec7812252ccc4282515f87f93096` |
| 95 | `theorem` | [preimage_edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/preimage-edgeset.md) | 480 | `result-track:2e8111a24ff0a5a5d20d7fb7622fb9c3c4f8af2e3caa2e7490c9804b1e7705c8` |
| 96 | `theorem` | [apply_mem_neighborSet_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/apply-mem-neighborset-iff-source-edition-2.md) | 483 | `result-track:e55322f740afe5ec63ff0f6245fae6f91b7f8091fa423d2afbab96d146d19872` |
| 97 | `theorem` | [preimage_neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/preimage-neighborset.md) | 488 | `result-track:36f7e8f73a2081864c04afc1a6344bd917c39b1f91dc1a828c1f33309c8409eb` |
| 98 | `def` | [mapEdgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/mapedgeset.md) | 493 | `declaration-track:4b02bca6ba8759b2465bcf736fd27f4cd5074df4d6f55e558f3981388bf26199` |
| 99 | `def` | [mapNeighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/mapneighborset.md) | 499 | `declaration-track:128066c3f5c870aae7dda67721b1cbb8896447adf6fac5480e2a142d90aecbb8` |
| 100 | `def` | [isoInduceRange](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/isoinducerange.md) | 507 | `declaration-track:3db346ce923079aa79b3fca2626fa2d9f106bcccb57820b5c141ee66ae9c00b7` |
| 101 | `def` | [comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-source-edition-4.md) | 515 | `declaration-track:e00baec11a035a2c2dd5b038b52d1b54b72a89c41c0520855953f3791639f0c9` |
| 102 | `theorem` | [comap_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-apply-source-edition-2.md) | 520 | `result-track:ad30c869ecc8fb961fb0f273d3641a606b34a70aab613edbe1efd76621814c2a` |
| 103 | `theorem` | [comap_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-eq.md) | 523 | `result-track:3924d86904385528f101b24160fc748e7207ce9e10b93a1a644d607ceded6979` |
| 104 | `def` | [map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-source-edition-4.md) | 530 | `declaration-track:e8ec2ebc5ae0ded82daae7204ceed5271f853ed2f8c9e5a8712d8ea41d823246` |
| 105 | `theorem` | [map_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-apply-source-edition-2.md) | 535 | `result-track:d8c9869a43e71827214955b0b3207c275bdcae20d54034636830a526e3387274` |
| 106 | `abbrev` | [induce](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/induce-source-edition-3.md) | 542 | `declaration-track:956902b723d57c6c245ca0c80c1fe40a1cb89093e981ec2ce0592711a27f16a6` |
| 107 | `abbrev` | [spanningCoe](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/spanningcoe.md) | 546 | `declaration-track:96500b487f737c28ebbc706a021f56ddc6e700aeab0898de8fbdf5177cb90458` |
| 108 | `def` | [completeGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/completegraph.md) | 550 | `declaration-track:6210efb8e677365f4334bb3262634506132f2e615e170817b48e63dbe1e80ca8` |
| 109 | `lemma` | [coe_completeGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/coe-completegraph.md) | 554 | `result-track:366dabc061432a49597c58dcb0d91993546388fea04eda0f2bea13441a8a44fb` |
| 110 | `abbrev` | [comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comp.md) | 559 | `declaration-track:185a4a9d2c4b80698d5d84f6380519ca0888401dc6f4645d31c51da30eec1ad2` |
| 111 | `theorem` | [coe_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/coe-comp.md) | 563 | `result-track:399fb7c51a38bafd573e4de5c1cbebb7cd18f9bb9480540b57cb48686e18e87a` |
| 112 | `theorem` | [comp_assoc](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comp-assoc-source-edition-3.md) | 566 | `result-track:ee381728a4ce164a59fb68fb902c8bfbf70873fe5070b8f9ee0a0bcf260c1cce` |
| 113 | `theorem` | [comp_refl](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comp-refl.md) | 570 | `result-track:786cdd1aedf5b15ff3fe292e5278876a4fba755171c4d99cf13854a464adae4b` |
| 114 | `theorem` | [refl_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/refl-comp-source-edition-2.md) | 573 | `result-track:5b5cd85820b1a93f67946f9dceaa2858e27f7f3322ca829bcbd0010837a59da0` |
| 115 | `def` | [complEquiv](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/complequiv.md) | 576 | `declaration-track:46f065da04f955272eb4e5bc747a67739e0c11113aa950f97b72304ea0289072` |
| 116 | `def` | [induceHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/inducehom.md) | 591 | `declaration-track:fff83bae62b76495e00bfff26b2e7ee501ee56161f0dd185505864b340a084f2` |
| 117 | `lemma` | [coe_induceHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/coe-inducehom.md) | 595 | `result-track:a0ca761a45c3b04fd6233eba8d9e785ed9979634ad39fdf9e98c80e7cb66ff9a` |
| 118 | `lemma` | [induceHom_id](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/inducehom-id.md) | 598 | `result-track:51810464e89f1908d1b6903155d55855080564ac269de88ab585c216247cefea` |
| 119 | `lemma` | [induceHom_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/inducehom-comp.md) | 603 | `result-track:75536413ca6e18e9d5847784c8c4f55bc10d10024af50593040367a21a32a445` |
| 120 | `lemma` | [induceHom_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/inducehom-injective.md) | 608 | `result-track:807c25da92dadde32386d83339003313a399eb6fa93df63337ccc7b0af8333fb` |
| 121 | `def` | [induceHomOfLE](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/inducehomofle.md) | 619 | `declaration-track:d58e1f5ecd54c7028770b8f00de41893f934a4df16028090be64d8ddc068eef4` |
| 122 | `lemma` | [induceHomOfLE_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/inducehomofle-apply.md) | 623 | `result-track:92d8d9572e0f596181f50aaf9339f52d731ccbb4ce1803ce742417f0a962d586` |
| 123 | `lemma` | [induceHomOfLE_toHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/inducehomofle-tohom.md) | 626 | `result-track:6e745fc95dbbbbbef3b752b59d009f5ccb8560c2bec22231b7fe5c1904b1636d` |
| 124 | `abbrev` | [refl](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/refl-source-edition-2.md) | 637 | `declaration-track:e1e82c3dd2e0e2d8a7861a3a8e5cb1e95b0cb925126a3d940a29a756d83335b1` |
| 125 | `abbrev` | [toEmbedding](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/toembedding.md) | 641 | `declaration-track:7f84e72feefde8a372c1add9408ea655d5d39f80fef3213d11c08c1bb7c1aaab` |
| 126 | `abbrev` | [toHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/tohom-source-edition-2.md) | 645 | `declaration-track:b705dae8c9e0fe7f0fa8ab2aec11b3a8a15ed76173d50c4867d1a8024f7b796b` |
| 127 | `abbrev` | [symm](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/symm.md) | 649 | `declaration-track:9a93ee8ccb518f42a820ecd77b8b191c1031373ea4b51927ab6a38026144d1ec` |
| 128 | `theorem` | [map_adj_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-adj-iff-source-edition-2.md) | 652 | `result-track:2c7f4159f982bfb6e97a7fa584461acbadcf60e1cb1fd09609f9afe01a627fff` |
| 129 | `theorem` | [map_mem_edgeSet_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-mem-edgeset-iff-source-edition-2.md) | 655 | `result-track:75510e219d27e73fe1f32ea6dc4faa6a3eac0dfa5a6641afde48fb42b2c28bbe` |
| 130 | `theorem` | [apply_mem_neighborSet_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/apply-mem-neighborset-iff.md) | 658 | `result-track:2776e59b3eed44a3e17c729774903471796ace9584b690d5e93b4c5b0439963c` |
| 131 | `theorem` | [image_neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/image-neighborset.md) | 661 | `result-track:885a5ea8d9372fc27f31501fa8073017c29e4803e4b99fbde30edd28976d9e65` |
| 132 | `theorem` | [symm_toHom_comp_toHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/symm-tohom-comp-tohom.md) | 666 | `result-track:6df80a4fa04aace2759a612a521565324c616662dba4b47a37982b95bac573dd` |
| 133 | `theorem` | [toHom_comp_symm_toHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/tohom-comp-symm-tohom.md) | 672 | `result-track:31182b00d3c3e57f68fe9aa82b4da912e034bfcd5fc421ee48df277f50a807d9` |
| 134 | `def` | [mapEdgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/mapedgeset-source-edition-3.md) | 679 | `declaration-track:d1c6ffb41c2d2a80e6e23d13c5fcbfa4c94becbf85108ed4be9f64a5dda8c979` |
| 135 | `def` | [mapNeighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/mapneighborset-source-edition-2.md) | 695 | `declaration-track:d5b5877345f0472356acfdab3d95b7f3d650c173ea66d76c7c4562fc2205097b` |
| 136 | `theorem` | [card_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/card-eq.md) | 704 | `result-track:655ea9eaf03acdfeed6dac4a7aec4fb83e33dd9a509dd60f01385f307174c9ce` |
| 137 | `def` | [comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-source-edition-2.md) | 712 | `declaration-track:32498cd7660d4a9b5d3c005004f7d3d71d26430cb77ca01308e61701474255f6` |
| 138 | `lemma` | [comap_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-apply.md) | 717 | `result-track:ab1d6485f1372637c9d1cf9349defa0fa71777870b5bf6f4c6a4d7d62ede3d37` |
| 139 | `lemma` | [comap_symm_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comap-symm-apply.md) | 722 | `result-track:3c7656e3ba7609ba62c646a4ad234369fb54fd1e910334df72448bb262758513` |
| 140 | `def` | [map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-source-edition-2.md) | 726 | `declaration-track:8c9e22ad60e5da4d5715ef690b9a55ca3fdc4ec4973891011b56a9926d6a2527` |
| 141 | `lemma` | [map_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-apply.md) | 731 | `result-track:95066293304661ddc39066e35368d262760207e9a7d619667e6d028850140379` |
| 142 | `lemma` | [map_symm_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/map-symm-apply.md) | 734 | `result-track:b5da00450a8388268c790d45adc75ec80dbc4b1a135f0d7f563a8f8d59c4806a` |
| 143 | `def` | [completeGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/completegraph-source-edition-2.md) | 738 | `declaration-track:e0301244ccbd372b5fe06820acf61f33affc142ae4cb97c1fafe6506902b77bc` |
| 144 | `theorem` | [toEmbedding_completeGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/toembedding-completegraph.md) | 742 | `result-track:7ea9acc8f101dbfd1cdb4637d7db90f018cc501266ab58a77a619a3830c0a690` |
| 145 | `abbrev` | [homCongr](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/homcongr.md) | 749 | `declaration-track:16d9f3d661717ebcc065b7f65623c96ef13436f7c7b053403a7d3d128abcc05d` |
| 146 | `abbrev` | [comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comp-source-edition-3.md) | 752 | `declaration-track:600a0e8ccde66ded0affb813c3d3a6806a904bccb925776a40588f4d73404868` |
| 147 | `theorem` | [coe_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/coe-comp-source-edition-2.md) | 756 | `result-track:8f4357dc69630de0fe16ffa8dbd8e7371058b0abb5ddd88d01a173b170ccefb6` |
| 148 | `theorem` | [comp_assoc](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comp-assoc.md) | 759 | `result-track:16d75cf11c8d05a7d56e26fe92a26553bc48c6ad0b996f2a77bc0699b2db9089` |
| 149 | `theorem` | [comp_refl](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/comp-refl-source-edition-2.md) | 763 | `result-track:ba7e23bb99f9632cd1b6be810218ef5375d755f290f0ea324e16b422c9ce7a66` |
| 150 | `theorem` | [refl_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/refl-comp.md) | 766 | `result-track:3bb89b9b6cccfa1aea9d94d4941f77499719597eda473cda333a3687fad37ab0` |
| 151 | `def` | [induce](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/induce-source-edition-2.md) | 774 | `declaration-track:4e8b5031f65cd90ff4790cc5f53223e1f9097ea44f9b0fbea8185f0b2f9ee792` |
| 152 | `lemma` | [coe_induce](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/coe-induce.md) | 782 | `result-track:c8aada172edfd72f3a5bc9ec1cc6f86817009e0baed7e7c31f3898bae4656168` |
| 153 | `lemma` | [induce_refl](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/induce-refl.md) | 786 | `result-track:d0cbe9e837485c72b2b77682397a7df94c74c15a8178e5dd663eb3c9a89201a5` |
| 154 | `lemma` | [induce_comp_induce](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/induce-comp-induce.md) | 790 | `result-track:67a23008825a71682609eee6894544b390d718037eec8fd71a0ec2e42f271cea` |
| 155 | `theorem` | [neighborSet_comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/neighborset-comap.md) | 798 | `result-track:afaa3a204eacf140e4c759e3f1072c49110a342cbaaa2fdfb1882177600020fb` |
| 156 | `theorem` | [neighborSet_induce](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/neighborset-induce.md) | 802 | `result-track:77ece1bcbfe37d30f0cf6a53e760051725209420f6f8c42c531e21d8fade7a56` |
| 157 | `theorem` | [neighborSet_map_equiv](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/neighborset-map-equiv.md) | 806 | `result-track:5ad81edb7a95147ed32e30d894bcd3816acacbf16e659ca14931c2bd74efe484` |
| 158 | `def` | [induceUnivIso](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/induceuniviso.md) | 812 | `declaration-track:5d31314b5f1355c3927c9130d12aa7e4678b466d55435754f7b982aa047a5444` |
| 159 | `def` | [completeBipartiteGraphCongr](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/completebipartitegraphcongr.md) | 820 | `declaration-track:fe3b7641c3db01d32b2972f0edb9af399013a59251202af7e07cba1d11a5aedf` |
| 160 | `def` | [overFin](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/overfin.md) | 831 | `declaration-track:516261a4bd58223b3b064849904ff111b8dff0dfb021a0145165a04b7f95bec1` |
| 161 | `def` | [overFinIso](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsNamespacedPublic.lean/declarations/overfiniso.md) | 835 | `declaration-track:66402c6cd9172da3da585bff8aa59a68d516830320c68641fe398104d76c7e07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a013a95b513bf291fccfba1f16a85bb4303bd3c7bd9dcf3622119101b4da4f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Varianteeb9644058f6bfb4517f10cab3f6f5ccd6a6a6c4f5ea7b0bdb160b42c65005aa.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Varianteeb9644058f6bfb4517f10cab3f6f5ccd6a6a6c4f5ea7b0bdb160b42c65005aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
