# Verification target: Finset Scalar Scalar Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "616a54e83ebaea6bbf17909967f5c705bbb412e6",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variantac700ccb3b6f99d6e54ec33533784aa89f4ba42179f45f6bd490d75580182c47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `616a54e83ebaea6bbf17909967f5c705bbb412e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variantac700ccb3b6f99d6e54ec33533784aa89f4ba42179f45f6bd490d75580182c47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Scalar/Variantac700ccb3b6f99d6e54ec33533784aa89f4ba42179f45f6bd490d75580182c47.lean.json)

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
| 1 | `def` | [smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul.md) | 70 | `declaration-track:55414f5e4d9eb59ac9d7488bf7643b5a753b3a5c4c8d782c0a026ee19eb74d9e` |
| 2 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-def.md) | 74 | `result-track:e21014332f7ca7c0cc39f48bb3f6bdcba055430c18563fcf02766a4d1e3d3c9d` |
| 3 | `lemma` | [image_smul_product](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/image-smul-product.md) | 77 | `result-track:10a1a2cdd605e5855ebe760cdb6a8fb8b723ad4fb81e1ee40482e9ac27563c7a` |
| 4 | `lemma` | [mem_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/mem-smul.md) | 79 | `result-track:fb31f9eb94392469ada1f6a0a053c703c10677396d530aeaa962b7662729d3ad` |
| 5 | `lemma` | [coe_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/coe-smul.md) | 82 | `result-track:9c84f0ffa5d74ceecd8d9b5165e0abbd2d41743a727d05e9484fcf5f645c5f00` |
| 6 | `lemma` | [smul_mem_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-mem-smul.md) | 84 | `result-track:181cafd8dead32ef4f0f0b7982e08636dac6afdb6d4c70c49e746e59bf41eb18` |
| 7 | `lemma` | [card_smul_le](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/card-smul-le.md) | 86 | `result-track:5420dc3099626bcd95684f7e6fe70e58d4acfab8343dc46975b1f4cba7ab9d55` |
| 8 | `lemma` | [empty_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/empty-smul.md) | 89 | `result-track:e17baadab4665a4681886de0f523cc3e768ebafef661f3afc35cec318c6ab2c3` |
| 9 | `lemma` | [smul_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-empty.md) | 92 | `result-track:39fb34a40eb4587c6bf9403100121d8ea1c57bfadde508953ac5207b86589683` |
| 10 | `lemma` | [smul_eq_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-eq-empty.md) | 95 | `result-track:9d1397280353d0289a41fd962c9b658b8bebc3ebd8871b0b48b399e91359486f` |
| 11 | `lemma` | [smul_nonempty_iff](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-nonempty-iff.md) | 98 | `result-track:e948df6b92ea25acb7957a8a7bedb450a5ee200bf7976430afe798464e443bbb` |
| 12 | `lemma` | [Nonempty.smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/nonempty-smul.md) | 101 | `result-track:471a6cbdfd2e98242f016f2ba58d7dd9b25b0c15b162ea93ff80bc3ccf31058f` |
| 13 | `lemma` | [Nonempty.of_smul_left](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/nonempty-of-smul-left.md) | 103 | `result-track:a2f97c0f9d07ea6f8da1b02460dbc314165b054c844dc289472d2131e9e24251` |
| 14 | `lemma` | [Nonempty.of_smul_right](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/nonempty-of-smul-right.md) | 104 | `result-track:0cade66dc4a6e8fb2dea1575169e83d314edff519b71dfb6bad1d13c613a20e8` |
| 15 | `lemma` | [smul_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-singleton.md) | 107 | `result-track:03fdf9c5575cc3b851d1134cbc313f14346f8491b7a8dce0c92a17cd9ae9a7e9` |
| 16 | `lemma` | [singleton_smul_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/singleton-smul-singleton.md) | 110 | `result-track:675340531720d027cd058763a98be9097037067a7df94a19794c129644b27f12` |
| 17 | `lemma` | [smul_subset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-subset-smul.md) | 114 | `result-track:96dd6881e9bdcd696dd41eaf6784caac2646e7aaefdde840e29ebf7ed5d06b1a` |
| 18 | `lemma` | [smul_subset_smul_left](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-subset-smul-left.md) | 116 | `result-track:9a607c82292d05f0dc0974c799b9ada76f0b8486f46dcd20ed08765d1c5810db` |
| 19 | `lemma` | [smul_subset_smul_right](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-subset-smul-right.md) | 117 | `result-track:f216ee462fe1c1fbddb8d8bb5d981edbcbbb9d17df9b48859e13b769179793b1` |
| 20 | `lemma` | [smul_subset_iff](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-subset-iff.md) | 118 | `result-track:0d73a2c09b2d0acc87724a5abed5bd68ac8ecfbb34f739129e6b705661e1595e` |
| 21 | `lemma` | [union_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/union-smul.md) | 121 | `result-track:3da2a952c5f2b4869672f279a0352df92f80f5462b817ab1f09a20cdb28fc472` |
| 22 | `lemma` | [smul_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-union.md) | 124 | `result-track:7004620b826e289c5be75e0f2a55c2e1e285651e02928b4f37cf09ddf92de5c8` |
| 23 | `lemma` | [inter_smul_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/inter-smul-subset.md) | 127 | `result-track:c2c1ff23eed806c148e6cb37d5724576dc6ba238fd9fa4f05b9b3ba02ba949b0` |
| 24 | `lemma` | [smul_inter_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-inter-subset.md) | 131 | `result-track:1577f38baa12c2d0c57269ec04ee5cfea2c4d6b2a3a7580146c1ee3f1e71ba57` |
| 25 | `lemma` | [inter_smul_union_subset_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/inter-smul-union-subset-union.md) | 134 | `result-track:4dd9fe47f63cc2b643845f27079aac3c6c1f77393d7e9d0935eaae350857c4ac` |
| 26 | `lemma` | [union_smul_inter_subset_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/union-smul-inter-subset-union.md) | 138 | `result-track:f43ea9753cdbda03f7c9f5706dfcdaf49063cfd668dfb02e541a467984ed1bac` |
| 27 | `lemma` | [subset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/subset-smul.md) | 146 | `result-track:35b07605186c4464cb72306df046d1aec7755f4f6ee4aadec4f2f55c780c868c` |
| 28 | `def` | [smulFinset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smulfinset.md) | 160 | `declaration-track:49fb822d9814bbbca2f1f7bb96b27d590975e3c8da63d1ec54ef4dcac8022175` |
| 29 | `lemma` | [smul_finset_def](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-finset-def.md) | 164 | `result-track:851cd82d195de8135712fd4334b6f1f5ff6c3ba59281f05fde6797b98753d0c1` |
| 30 | `lemma` | [image_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/image-smul.md) | 166 | `result-track:ba96fd8d5fb189c169cbe810235355e05521875662bc3b49b17c0400b186bf2b` |
| 31 | `lemma` | [mem_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/mem-smul-finset.md) | 169 | `result-track:43186801153d82d3ebb0872c4f551e7fac5ff1461d6024c6de86b1dcfbf1cbad` |
| 32 | `lemma` | [coe_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/coe-smul-finset.md) | 173 | `result-track:81be77a06608420ec1866868914cbbb82f9f10a625ec67b4a00c7b0bfe8f3acc` |
| 33 | `lemma` | [smul_mem_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-mem-smul-finset.md) | 175 | `result-track:5b6a49e35d8fcda102aded90318d7dc79d88d3e3f13145b1d122095061553e90` |
| 34 | `lemma` | [card_smul_finset_le](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/card-smul-finset-le.md) | 177 | `result-track:f575a8b5c9888eb629847340506d6d3f859d0380ffa83bdac73390c3e81543c9` |
| 35 | `lemma` | [smul_finset_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-finset-empty.md) | 182 | `result-track:f5b76efa3054bdb9ecb258819110346bf3d3313d87791d83b367f5f6f3528e73` |
| 36 | `lemma` | [smul_finset_eq_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-finset-eq-empty.md) | 185 | `result-track:922e1a1fc5d0fc7b157f04b5aa3fdee210267e880e535530fb5209c92f8c12d3` |
| 37 | `lemma` | [smul_finset_nonempty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-finset-nonempty.md) | 188 | `result-track:9a118ed99ba104e5e1ade43645231ae7606e23ad81603bfffc433c3638a30bc7` |
| 38 | `lemma` | [Nonempty.smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/nonempty-smul-finset.md) | 191 | `result-track:7a432a985516234807a8881c45ba9b2d10fe5ee86daf8d9a3590369debff0dce` |
| 39 | `lemma` | [singleton_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/singleton-smul.md) | 195 | `result-track:3e0bf94707deb97cded6172d7ab23cd274552e2b102b04a725816549dbdd981e` |
| 40 | `lemma` | [smul_finset_subset_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-finset-subset-smul-finset.md) | 198 | `result-track:7a8842d2f495b131439b4db28806443d505db4f4dd8e41e415ad05ea428a3e6b` |
| 41 | `lemma` | [smul_finset_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-finset-singleton.md) | 201 | `result-track:15adb904e92ef9848eb7d639551d8c6eba5ab70f928501724a04020afcc748ae` |
| 42 | `lemma` | [smul_finset_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-finset-union.md) | 204 | `result-track:2e78da480d34109d2b2fb069f2f033e98ced6edb0011cedcbacf8ed83bbe3a8f` |
| 43 | `lemma` | [smul_finset_insert](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-finset-insert.md) | 207 | `result-track:d32d5c162f7baa184b72efa0d2c2af0d2b1bd2b0b803ed0713fea5e410029ce7` |
| 44 | `lemma` | [smul_finset_inter_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-finset-inter-subset.md) | 211 | `result-track:ccd5a08e1cdf6acf8b68e0c7bbdfd3c334dd07471d65921b79fc8e06c365e1f4` |
| 45 | `lemma` | [smul_finset_subset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/smul-finset-subset-smul.md) | 214 | `result-track:067daa80888cbfcf9593ff188decf94fef5781dbfaab725374f2f6653ee7b321` |
| 46 | `lemma` | [biUnion_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/biunion-smul-finset.md) | 217 | `result-track:352846d74963bd8bab332f14b208ab6a98be8cafefa7da891a9c8b9061ebfcc6` |
| 47 | `def` | [sdiv](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/sdiv.md) | 237 | `declaration-track:2d024b83a0a69908cf07bd41c5ab06071ea16191f21895762764a0aaf43c8363` |
| 48 | `theorem` | [sdiv_def](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/sdiv-def.md) | 243 | `result-track:c396b9350083f769dfbaf8402e9c3723aca699c661f87772f09eb1457dfbf127` |
| 49 | `theorem` | [image_sdiv_product](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/image-sdiv-product.md) | 247 | `result-track:c395cfbb2d3a3b9a9afb02013cae31ddd4235be7ead8b2df54703f98c273b296` |
| 50 | `theorem` | [mem_sdiv](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/mem-sdiv.md) | 251 | `result-track:b18af16b562d2d463deae63fa9f04bb4982584526c485fe4b5aac9f51624d66e` |
| 51 | `theorem` | [coe_sdiv](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/coe-sdiv.md) | 255 | `result-track:3a614b980653eb86425789281f3f0e43db3fe9d84ff48e52155ea60490eebc8b` |
| 52 | `theorem` | [sdiv_mem_sdiv](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/sdiv-mem-sdiv.md) | 259 | `result-track:9e44424186e1a394d62776145c253c8758e361f165abd08119aa8ef1df8bce6f` |
| 53 | `theorem` | [sdiv_card_le](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/sdiv-card-le.md) | 263 | `result-track:4041ee8833ab475eea7326b9e7e8f179946a5c0600970e02fcda76c78eee5302` |
| 54 | `theorem` | [empty_sdiv](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/empty-sdiv.md) | 267 | `result-track:f9299c89428dcb64c90915ecf80f3bc32448bd95478ea04d8a17df43a0acf8d9` |
| 55 | `theorem` | [sdiv_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/sdiv-empty.md) | 271 | `result-track:4ce66d80a2f26ee65d9136fa7c31d16b54b2abf6b632ab38b51ebb904914eb8d` |
| 56 | `theorem` | [sdiv_eq_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/sdiv-eq-empty.md) | 275 | `result-track:d916a2f7a57ac4153400ea4f0fc1b2f2e5069a039315483f6bbbf6da8bfc407f` |
| 57 | `theorem` | [sdiv_nonempty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/sdiv-nonempty.md) | 279 | `result-track:b0524cfa1d0f21c7adfec613355e0efd6a0b44ac824a85256d976f929175f928` |
| 58 | `theorem` | [Nonempty.sdiv](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/nonempty-sdiv.md) | 283 | `result-track:a5fe5c82bb68c0b7e4f5929ee49c1184ee8d89ff41213fbccdde6b5f4230e74b` |
| 59 | `theorem` | [Nonempty.of_sdiv_left](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/nonempty-of-sdiv-left.md) | 287 | `result-track:ff82547a43572ed03f5113c0f488c33f50ff9c9124e8a9f3469d6f05bad00a39` |
| 60 | `theorem` | [Nonempty.of_sdiv_right](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/nonempty-of-sdiv-right.md) | 291 | `result-track:95583a949dabf4fed35746976eccec8ae43fae36f0d8fc099532981424f4245a` |
| 61 | `theorem` | [sdiv_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/sdiv-singleton.md) | 295 | `result-track:aea2eecc403f420b1f182d9452756a30b9672e595e1895d6be7530e68ab75a51` |
| 62 | `theorem` | [singleton_sdiv](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/singleton-sdiv.md) | 299 | `result-track:257e3de641416ca5d6a9da6bbe618302b12e6e38424073cb14c4ab6da607005d` |
| 63 | `theorem` | [singleton_sdiv_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/singleton-sdiv-singleton.md) | 303 | `result-track:845f0c0ea2167d805810520d3a1613e60c06e7af7e298d937ed5e8719f404fe4` |
| 64 | `theorem` | [sdiv_subset_sdiv](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/sdiv-subset-sdiv.md) | 307 | `result-track:f4f373a7ac44acbbcdc51ab5ef1cde809a583d86c0187f2378a5027da1b10020` |
| 65 | `theorem` | [sdiv_subset_sdiv_left](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/sdiv-subset-sdiv-left.md) | 311 | `result-track:608afc15ae8964f0b4df694ab511f3acf97ea11606a56f990588ffb02713531e` |
| 66 | `theorem` | [sdiv_subset_sdiv_right](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/sdiv-subset-sdiv-right.md) | 315 | `result-track:7f2623be682e6de2cb3ccb042b3a7d6b88580d07eb9241d0ae543a80c3b0666f` |
| 67 | `theorem` | [sdiv_subset_iff](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/sdiv-subset-iff.md) | 319 | `result-track:573c0acd2691ee916ddf1e816b653ba4b26fe0704df0208f7ba50e12f88c4a75` |
| 68 | `theorem` | [union_sdiv](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/union-sdiv.md) | 327 | `result-track:47f9fe6c39730ec3aa1152c575099b5909b2ca62085818b7ad56177d4f29ef25` |
| 69 | `theorem` | [sdiv_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/sdiv-union.md) | 331 | `result-track:aea4ab383c83b428b547ab74699fa1fc73bad64fe4a5ff496860de1040e2260e` |
| 70 | `theorem` | [inter_sdiv_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/inter-sdiv-subset.md) | 335 | `result-track:8baed7be18dc4d28474a7480da5a8782fb7192c501f08c1a027fa137edceb11c` |
| 71 | `theorem` | [sdiv_inter_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/sdiv-inter-subset.md) | 339 | `result-track:c16e1c354845e865d211b4ea5e7b633a80b1bea4907b78634f3a2fc6fd893b20` |
| 72 | `theorem` | [subset_sdiv](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/subset-sdiv.md) | 349 | `result-track:d989a8706d693c0cc0a19b45433344cced3c31148bcf76ee621ce5179d9c716c` |
| 73 | `theorem` | [op_smul_finset_smul_eq_smul_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/op-smul-finset-smul-eq-smul-smul-finset.md) | 361 | `result-track:606f4a859b9fa1846d72e894507fd5cdaf36d9a78cf1909d2b041fd50b1a7e2c` |
| 74 | `theorem` | [image_smul_comm](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/image-smul-comm.md) | 369 | `result-track:7dfa6cfde6881d9b688670cc7f6e0dfc8b2339fb1e65261799f292f195eca048` |
| 75 | `theorem` | [toFinset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/tofinset-smul.md) | 384 | `result-track:1e3916a304552423b4cc8835bb4a4abd94e833933c4c660843c09d164e0c2dbc` |
| 76 | `theorem` | [Finite.toFinset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/finite-tofinset-smul.md) | 389 | `result-track:ba919561870cb74bfb18b27f4761706f27ecb25d0c75da12dd598e48ea3b6c17` |
| 77 | `theorem` | [toFinset_smul_set](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/tofinset-smul-set.md) | 400 | `result-track:8e002cdd8dac04e393abb6abb1b1dcedfb255d5f09cb46c73d2ac0e796f1cb0e` |
| 78 | `theorem` | [Finite.toFinset_smul_set](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/finite-tofinset-smul-set.md) | 405 | `result-track:9c72143e3a223188a74f7863ada5b13d86b03027c8d8e8b36a5de07bf8a29ba3` |
| 79 | `theorem` | [toFinset_sdiv](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/tofinset-sdiv.md) | 416 | `result-track:4f8bb789e6628a3f83f68cee00fa17f478d374ad51ab6344ee57ad4aff52360a` |
| 80 | `theorem` | [Finite.toFinset_sdiv](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarPublic.lean/declarations/finite-tofinset-sdiv.md) | 421 | `result-track:82ec298f3a50fa55814626f232624cdefd214d1663b7e5a2233615a2a47c5817` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c05ec75499b74152bb214eb739061e6b085a65e83404008de1df15add098b71f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variantac700ccb3b6f99d6e54ec33533784aa89f4ba42179f45f6bd490d75580182c47.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Scalar/Variantac700ccb3b6f99d6e54ec33533784aa89f4ba42179f45f6bd490d75580182c47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
