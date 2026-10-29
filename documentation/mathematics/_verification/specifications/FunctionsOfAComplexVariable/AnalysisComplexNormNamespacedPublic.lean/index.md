# Verification target: Analysis Complex Norm Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74f469ce5551f0ff17e2123b164c3ab0079d7be3",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Norm/Variant2f0908710c863c76917626b6951031d208183358ff716d68eb76b117a5b76ea8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74f469ce5551f0ff17e2123b164c3ab0079d7be3`.

Source path: `GRWTSK/Topology/MetricTopology/Norm/Variant2f0908710c863c76917626b6951031d208183358ff716d68eb76b117a5b76ea8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Norm/Variant2f0908710c863c76917626b6951031d208183358ff716d68eb76b117a5b76ea8.lean.json)

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
| 1 | `instance` | [instNorm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/instnorm.md) | 36 | `declaration-track:584d1a97ccba9802f761b5a862724d9a95df9e9e6ccf53ab0f957d418908024b` |
| 2 | `theorem` | [norm_def](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-def.md) | 39 | `result-track:8beb97e0b9e02523fe7ebef0a308b47cde1c9bcad51a2c724ebda7f98524788f` |
| 3 | `theorem` | [norm_mul_self_eq_normSq](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-mul-self-eq-normsq.md) | 41 | `result-track:e24c18d2db5b562c1c2b117a46f3ca96b9b6d772080258b6ce506beb76ef040a` |
| 4 | `theorem` | [norm_nonneg](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-nonneg.md) | 44 | `result-track:43bb002ebafeb095f1f51c650f8081a6dc3944d1dd494dfa654676572e8b1e90` |
| 5 | `theorem` | [abs_re_le_norm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/abs-re-le-norm.md) | 48 | `result-track:2d59a9c044e9eceb56c9f1751ae824400eb8bce1a5512d2a908ef824eed2cbc0` |
| 6 | `theorem` | [re_le_norm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/re-le-norm.md) | 53 | `result-track:c78948c4ef2844f3a62fcdf895c63afe1912b6fd610531be3821e9219817dc2a` |
| 7 | `theorem` | [norm_add_le'](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-add-le.md) | 56 | `result-track:2328d6d10883cf4b89408168d43abc44287744164eb1516f452eceedf61c7979` |
| 8 | `theorem` | [norm_eq_zero_iff](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-eq-zero-iff.md) | 65 | `result-track:a45697dbb46fe290481a964bfdb416fc0d1ce5638692adfd8e920338072a4ebe` |
| 9 | `theorem` | [norm_map_zero'](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-map-zero.md) | 68 | `result-track:a5fef8e37a87e05bb559e1fa8e7297a310094c76caca89cfe0c3f22c36a8921f` |
| 10 | `theorem` | [norm_neg'](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-neg.md) | 71 | `result-track:312869d2e2960d7618a3b8c27581f3915f9c790599890720a1b41b8f880bef96` |
| 11 | `instance` | [instNormedAddCommGroup](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/instnormedaddcommgroup.md) | 74 | `declaration-track:b3249f5cfef41ebf0918e234bc6f8eb59ffd7145db5c93dc1118b4272c3855e3` |
| 12 | `theorem` | [norm_mul](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-mul.md) | 83 | `result-track:71261a097a6af1ce2c33dad6181a80190eb1d60daa687b46c3aa67135a909820` |
| 13 | `theorem` | [norm_div](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-div.md) | 87 | `result-track:08aabfbdc45dd8a497b8588239f9736b26b419b1936c1ab2577c6ffba21d57f5` |
| 14 | `instance` | [isAbsoluteValueNorm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/isabsolutevaluenorm.md) | 90 | `declaration-track:7a0fe4d9a6f5aadb002762b208afa7f616e3fe344cba480434dccde7debba402` |
| 15 | `theorem` | [norm_pow](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-pow.md) | 96 | `result-track:f74bc090ed923fad9b9413021b24f6527202e7e75a966d8d5cef1ac3d3a1675a` |
| 16 | `theorem` | [norm_zpow](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-zpow.md) | 99 | `result-track:d80ab74dd933c805d9994c002282c1d5e61d0883fbc5725169d3c784fc722c62` |
| 17 | `theorem` | [norm_prod](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-prod.md) | 102 | `result-track:1620e25a895cf789f1c3df8f55ba99691237b718b7dc3b75aed7e8eb6ffc4ec1` |
| 18 | `theorem` | [norm_conj](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-conj.md) | 106 | `result-track:bcbcc67646e3935baf4f7c517ff78dac38292a132277ba78f97ad4e5034db15e` |
| 19 | `lemma` | [norm_I](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-i.md) | 108 | `result-track:9097ece93e8f769153a0252b1dd0e71dfd9dc5429fcf0c36f75cad6793968b79` |
| 20 | `lemma` | [nnnorm_I](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/nnnorm-i.md) | 110 | `result-track:15c200228e28b31ae515d8021095080ace63a84ea194f438a7dafa67d72c113b` |
| 21 | `lemma` | [norm_real](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-real.md) | 113 | `result-track:3ca97620af554f6bf2c02cbe65af5052c7cf68771e3d31cab04ea3e3082477c5` |
| 22 | `theorem` | [norm_of_nonneg](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-of-nonneg.md) | 116 | `result-track:9efc8d581e055537d459bc6c639baaabd8faebb627eec769898c644262844a6f` |
| 23 | `lemma` | [nnnorm_real](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/nnnorm-real.md) | 120 | `result-track:8ffda175e41ec14782b86a8cc351d4642bebb49cf90da9d54b11819e03d7933c` |
| 24 | `lemma` | [norm_natCast](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-natcast.md) | 123 | `result-track:3bbe3444b806bdce48dd50f75a393a2ad986801dd975f8e7085f81b58e030d0b` |
| 25 | `lemma` | [norm_ofNat](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-ofnat.md) | 126 | `result-track:6d0f6d18726fd3d36dd149a5fed1689effb1e4e32d98c0295453a8386558fa6e` |
| 26 | `lemma` | [norm_two](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-two.md) | 129 | `result-track:1bd1746c4caba8796324ac76442ff3760dc3c4c73f5fc5a19c1ad6bd8a8bdbc8` |
| 27 | `lemma` | [nnnorm_natCast](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/nnnorm-natcast.md) | 132 | `result-track:32a20f6fb4e193b3fbbdaf97140ec63704cf945862914a1b397e2c2648b569fa` |
| 28 | `lemma` | [nnnorm_ofNat](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/nnnorm-ofnat.md) | 135 | `result-track:716494781771dc0bac522ad4d5282a1bc5751210d51a592a7533e620b1382f72` |
| 29 | `lemma` | [norm_intCast](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-intcast.md) | 139 | `result-track:0a3891ad77481b1c5abc1b211cf4c4902513d9c0bc399c8e0d5746e4aaca8281` |
| 30 | `theorem` | [norm_int_of_nonneg](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-int-of-nonneg.md) | 142 | `result-track:61b328072926b5fd506d28140c784a6d50b1c2e9c268f5bfdadda2ba0ce115d1` |
| 31 | `lemma` | [norm_ratCast](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-ratcast.md) | 146 | `result-track:ce1bc916381a5278d3346857516d3fe3550a5d63218cb93d576157097ddde31f` |
| 32 | `lemma` | [norm_nnratCast](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-nnratcast.md) | 149 | `result-track:5d440f9a7a7d868b34805c6521ac3ab278c32e6d88e33463aeda98b4a7f094f0` |
| 33 | `lemma` | [nnnorm_ratCast](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/nnnorm-ratcast.md) | 152 | `result-track:68e354dec35b4e47a53a5143d6af34d4667eee7a872813c1a209ad90be4c4449` |
| 34 | `lemma` | [nnnorm_nnratCast](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/nnnorm-nnratcast.md) | 155 | `result-track:90bb260b84eba8426fe259a31bfacccd3290d0cf23354601f04d1eac2b0af7df` |
| 35 | `lemma` | [normSq_eq_norm_sq](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/normsq-eq-norm-sq.md) | 157 | `result-track:6f7aeb52c65328a4f6c328a7f085ed37a1e4a561226bc56ae30fb2aacc7b185f` |
| 36 | `theorem` | [sq_norm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/sq-norm.md) | 160 | `result-track:33c797986db6054a0e66bab5ece1e0df45734657b4a1ca5c4d92141d4b34ffa1` |
| 37 | `lemma` | [one_lt_normSq_iff](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/one-lt-normsq-iff.md) | 162 | `result-track:eda891a2997ec5d100aa7c7c8f5d0afafd45f1fa5d064f89131a419768874c99` |
| 38 | `lemma` | [one_le_normSq_iff](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/one-le-normsq-iff.md) | 165 | `result-track:53bd4d24d39b6cbe389722bde5728d0ca8ef34469da98dfeb71f938f0a3bea10` |
| 39 | `theorem` | [sq_norm_sub_sq_re](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/sq-norm-sub-sq-re.md) | 169 | `result-track:5a3c6f13ec7a1ddab628f737249437eac5af7adfeb62073c5624acd9a5eb97c6` |
| 40 | `theorem` | [sq_norm_sub_sq_im](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/sq-norm-sub-sq-im.md) | 173 | `result-track:8bc8c361d8fe8d33352e488985eefd1a96d28ba0d5fae309f3b9a6c35d487a62` |
| 41 | `lemma` | [norm_add_mul_I](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-add-mul-i.md) | 176 | `result-track:e195194d4a0cea4b833c3b6e406b7a90245b19a3e719aaf17029164e9f0f4403` |
| 42 | `lemma` | [norm_eq_sqrt_sq_add_sq](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-eq-sqrt-sq-add-sq.md) | 179 | `result-track:257bceb3fa7456f63d1b8d08110593923e76b8f478e67c550d975c8948121a74` |
| 43 | `theorem` | [range_norm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/range-norm.md) | 183 | `result-track:a3bfe5e2638166504bcba1d822ae529617e4868097bbf335c2aaa6264a407f9a` |
| 44 | `theorem` | [range_normSq](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/range-normsq.md) | 187 | `result-track:0df4de4de55df88cc66ea38c4587f5db93c9ff2bbd9bbd73cf94184bf5b41e58` |
| 45 | `theorem` | [norm_le_abs_re_add_abs_im](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-le-abs-re-add-abs-im.md) | 191 | `result-track:c3a08e4d1ca5dd2a74c1d8455f205d3ba3babac02b8a8d8c139492d47c2ae464` |
| 46 | `theorem` | [abs_im_le_norm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/abs-im-le-norm.md) | 195 | `result-track:faa0111acd15723a152fdad11ed4c7416513637f2e0bf390672b87a00ba242a5` |
| 47 | `theorem` | [im_le_norm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/im-le-norm.md) | 200 | `result-track:7c73091b6a574cf7c01a0a7bd17deace6e1e616277d7ba1d0081a3711d354cba` |
| 48 | `theorem` | [abs_re_lt_norm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/abs-re-lt-norm.md) | 204 | `result-track:573945bea0cbd6807772881212ffb0312d2c490da466eb43bf569ac2f080c7f3` |
| 49 | `theorem` | [abs_im_lt_norm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/abs-im-lt-norm.md) | 209 | `result-track:dd997cb4d9565ba305b57d17984632ac8dfc4f70da5664c055871a728faf83d8` |
| 50 | `lemma` | [abs_re_eq_norm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/abs-re-eq-norm.md) | 213 | `result-track:6a698748271236acb83fb948b7b3b5dff51d0be255be73f044150167777a2a41` |
| 51 | `lemma` | [abs_im_eq_norm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/abs-im-eq-norm.md) | 217 | `result-track:348ce31d39b7ff2a3d851bba7a90ccadf8dfc67ad3ccebf6681446a75b208855` |
| 52 | `theorem` | [norm_le_sqrt_two_mul_max](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-le-sqrt-two-mul-max.md) | 220 | `result-track:861692eda74a564a90acaab5884fa7bf7e68d6a3e408c3c997fa22f967d79158` |
| 53 | `theorem` | [abs_re_div_norm_le_one](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/abs-re-div-norm-le-one.md) | 232 | `result-track:581395e0f5272896a543e7b7e0b27c5728077e1f08e55c44ee096277c335ff87` |
| 54 | `theorem` | [abs_im_div_norm_le_one](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/abs-im-div-norm-le-one.md) | 237 | `result-track:1e153625f17435fc395aac6f7b456a24f022386f7a7d5f610eabb64ca5f10318` |
| 55 | `theorem` | [dist_eq](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/dist-eq.md) | 242 | `result-track:e1af5dc9a14d4bce634e74a4ac06ec5f7e333a3998552f44b99797d0f327e790` |
| 56 | `theorem` | [dist_eq_re_im](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/dist-eq-re-im.md) | 244 | `result-track:14f5f568d0222efff5b482e57e635a96314eddcc1ec29c0adaa0d9f2a99f36b5` |
| 57 | `theorem` | [dist_mk](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/dist-mk.md) | 249 | `result-track:4040ebe97c465e333bdc898ad436eccb4acb62329830aa696947f3200cbed2d0` |
| 58 | `theorem` | [dist_of_re_eq](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/dist-of-re-eq.md) | 253 | `result-track:ccc47e55775e5566bd3735a8dc56696b801153bb5d93a30110265e6f9434fad4` |
| 59 | `theorem` | [nndist_of_re_eq](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/nndist-of-re-eq.md) | 256 | `result-track:e3ee145f6820d3d07ac582ee4063d1be33173309aff5c84a2ced7b23918ec4cc` |
| 60 | `theorem` | [edist_of_re_eq](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/edist-of-re-eq.md) | 259 | `result-track:d56a93aa702539d946092ed3c09917f80aad1891d4587e45b826cea4b222bd16` |
| 61 | `theorem` | [dist_of_im_eq](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/dist-of-im-eq.md) | 262 | `result-track:e96c08e9d64b5f3820cdf345a27f9e3d8d056564a5442369d0b3247d2b5c1ce1` |
| 62 | `theorem` | [nndist_of_im_eq](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/nndist-of-im-eq.md) | 265 | `result-track:d6e63772393598d08d0a0f57eab7714ed115a9abf8ee4f8d1a4601df38185540` |
| 63 | `theorem` | [edist_of_im_eq](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/edist-of-im-eq.md) | 268 | `result-track:dd8b47671897c3d97da36fa07a75bda341989c1922b673f6d17f0f2294e0ba6c` |
| 64 | `theorem` | [dist_conj_self](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/dist-conj-self.md) | 271 | `result-track:fc8cd99f4ca31e2098374538dfc29c57259336baf2719a61ba0e2d89205a4d74` |
| 65 | `theorem` | [nndist_conj_self](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/nndist-conj-self.md) | 275 | `result-track:87dfc9ff6bd2312187ca3e755534a2ffb0cc7f3b243d01adc0c0e0b0d7e5cc05` |
| 66 | `theorem` | [dist_self_conj](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/dist-self-conj.md) | 278 | `result-track:ede2c980c9455957884067afdec2c073536aa008014d495771a22c3db38f8223` |
| 67 | `theorem` | [nndist_self_conj](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/nndist-self-conj.md) | 280 | `result-track:517ea97ed78494254682ea1569d5c43e696b472307958cbf1a2dd0823cdac2fb` |
| 68 | `theorem` | [isCauSeq_re](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/iscauseq-re.md) | 285 | `result-track:427e0614633e093806a7da0131ea4d01cc3e3ea399eade6f0a283118c585ed8f` |
| 69 | `theorem` | [isCauSeq_im](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/iscauseq-im.md) | 289 | `result-track:c1dbcc392137000e1cfe937e9ff42cb8c18ec8fbd9b25c74ff5e123fdeb7303a` |
| 70 | `def` | [cauSeqRe](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/causeqre.md) | 294 | `declaration-track:d59b8c23fc76192ec1e144efab59b935a43d7424e7033fb406b29edff569e78c` |
| 71 | `def` | [cauSeqIm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/causeqim.md) | 298 | `declaration-track:e3a3534c7a6d984e4ed603acb87c3b1c718445cf059a4ef0bd5305003bb5500a` |
| 72 | `theorem` | [isCauSeq_norm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/iscauseq-norm.md) | 301 | `result-track:dfba59e85fdf267ed737d207e80308df43322e0e41fa06d98fdf4fd627ee5f31` |
| 73 | `def` | [limAux](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/limaux.md) | 307 | `declaration-track:0edc89b61bfa2e9d2ece9356ade693a476ea90f3806eb52b95f902cdc4cc949b` |
| 74 | `theorem` | [equiv_limAux](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/equiv-limaux.md) | 310 | `result-track:8788b07b09141a4e3a9d9ab731516a9fbd9b77541164f31a6d740f61544ca366` |
| 75 | `instance` | [instIsComplete](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/instiscomplete.md) | 320 | `declaration-track:c3ae938305a05987b297a2ec07b7c877e969bc37b46c87662eea76fafcafdab8` |
| 76 | `theorem` | [lim_eq_lim_im_add_lim_re](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/lim-eq-lim-im-add-lim-re.md) | 325 | `result-track:4d75bd971d60a053238ef9b094092b3e43227fb3d7013ed6b3da4baee2c94d0c` |
| 77 | `theorem` | [lim_re](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/lim-re.md) | 335 | `result-track:8ff19d639e28a7948a9c11bc183eb9cd661ff364e5c5b082e204e8cb9bd4401e` |
| 78 | `theorem` | [lim_im](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/lim-im.md) | 338 | `result-track:8e03e6db2c87c4b298ed3ca58157e4f42a6df749ecb5bee1d5e267ad3e765eae` |
| 79 | `theorem` | [isCauSeq_conj](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/iscauseq-conj.md) | 341 | `result-track:6afb5a5ace2c2a4f5773e4a4e8800d5b8cf51d2e5227820c6be6eee6a21139e8` |
| 80 | `def` | [cauSeqConj](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/causeqconj.md) | 348 | `declaration-track:ee25022f75ecd01b49e9f3577021b3777bc68a23c5a37418bff22bf1deb447ed` |
| 81 | `theorem` | [lim_conj](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/lim-conj.md) | 352 | `result-track:2bb8396201b719387278fdfd2322081fb15b9d9b82892836f45bfd1a46be73e7` |
| 82 | `def` | [cauSeqNorm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/causeqnorm.md) | 357 | `declaration-track:16ae9df368c64de63556e96d08144ecd0a50e5c652f35cd3fcaf5db2dcaf8bdd` |
| 83 | `theorem` | [lim_norm](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/lim-norm.md) | 360 | `result-track:971af907a3f6f752bcca290c296e961b24ab9dbf1bedba3539e3f54d00626edf` |
| 84 | `lemma` | [ne_zero_of_re_pos](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/ne-zero-of-re-pos.md) | 365 | `result-track:b9299b15b83e6cc092f801a56f73e555fbe0465ceb8777afece357651dc5ec6e` |
| 85 | `lemma` | [ne_zero_of_one_lt_re](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/ne-zero-of-one-lt-re.md) | 368 | `result-track:e96d8db47212b36882dc2095d011444f573dde5f4f6cf930b541967cd314873e` |
| 86 | `lemma` | [re_neg_ne_zero_of_re_pos](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/re-neg-ne-zero-of-re-pos.md) | 371 | `result-track:65b7d932cfcb6bcbe305c0b8cf8ec8bb5fc27ac83311308561aa31bcc3160077` |
| 87 | `lemma` | [re_neg_ne_zero_of_one_lt_re](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/re-neg-ne-zero-of-one-lt-re.md) | 374 | `result-track:356c1ff971a63c6633658f76ca82095b25530929275a8fa69c15350ceb799e80` |
| 88 | `lemma` | [norm_sub_one_sq_eq_of_norm_eq_one](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-sub-one-sq-eq-of-norm-eq-one.md) | 377 | `result-track:d67e6e11d4b5355e1eabdbc63a7485a78d9733c32a78facaf57fef919826dc02` |
| 89 | `lemma` | [norm_sub_one_sq_eqOn_sphere](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/norm-sub-one-sq-eqon-sphere.md) | 386 | `result-track:8be6c9177322da5e57c3869eaf7c4b3fa3e212b1493053b3b390acad52dd9d4d` |
| 90 | `lemma` | [normSq_ofReal_add_I_mul_sqrt_one_sub](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/normsq-ofreal-add-i-mul-sqrt-one-sub.md) | 390 | `result-track:cd3b1f7926bb2da9da897971570b9132047a1a4e31fb7732cd176f5e8a5aeecc` |
| 91 | `lemma` | [normSq_ofReal_sub_I_mul_sqrt_one_sub](../../../../FunctionsOfAComplexVariable/AnalysisComplexNormNamespacedPublic.lean/declarations/normsq-ofreal-sub-i-mul-sqrt-one-sub.md) | 395 | `result-track:a8740c430745a9347ffdbb455c2642d269147356c058babcc38da74d688b323f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4f9090486ebac9aab41f351c3bec7b0a16a0f32e83cc3c9c9913ff247034bf6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Norm/Variant2f0908710c863c76917626b6951031d208183358ff716d68eb76b117a5b76ea8.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Norm/Variant2f0908710c863c76917626b6951031d208183358ff716d68eb76b117a5b76ea8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
