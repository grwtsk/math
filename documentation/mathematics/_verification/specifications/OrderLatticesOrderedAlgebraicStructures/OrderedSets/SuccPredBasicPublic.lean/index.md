# Verification target: Succ Pred Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "579dab7a4a7f5879e253555c02a4b61709c03f24",
  "lexical_observation_count": 122,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `579dab7a4a7f5879e253555c02a4b61709c03f24`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean.json)

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
| 1 | `class` | [SuccOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succorder.md) | 50 | `declaration-track:d3ca6ecec68b52a82f369296e5537b53c58a51fd513eed579e83ae9835c8c9da` |
| 2 | `class` | [PredOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/predorder.md) | 62 | `declaration-track:f20db49251627246c438e2cac94bd8630f8cd99506bd4b4ad4f2fd0365ff5b14` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/instance-source-edition-4.md) | 73 | `declaration-track:bc5a3212e138f77366dbf55cd2950ce482ec1b082d6010e4a83b0e9456f9bbeb` |
| 4 | `def` | [SuccOrder.ofSuccLeIff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succorder-ofsuccleiff.md) | 86 | `declaration-track:84748bbd1c565cd1bdeea9736d21a65605286d31c4b86fa958d9a433075d952e` |
| 5 | `def` | [SuccOrder.ofCore](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succorder-ofcore.md) | 102 | `declaration-track:51cfa1cbe706875a0dc4249bf22b29b3f79aff9e43ba052518ca2507adca0627` |
| 6 | `def` | [SuccOrder.ofLinearWellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succorder-oflinearwellfoundedlt.md) | 116 | `declaration-track:f5a214f34008fe40642bfe009657ffb25a8b504c8e215b1c099a97484ff7868c` |
| 7 | `def` | [succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ.md) | 138 | `declaration-track:4ff643ee33160a66fb64ce27f156ecd58a2e5754a2c9a219385d702c0a7214b9` |
| 8 | `theorem` | [le_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/le-succ.md) | 142 | `result-track:5ac73fea089417cb012e27d37f9c446128a931902a7b54ba856393d098fb3e24` |
| 9 | `theorem` | [max_of_succ_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/max-of-succ-le.md) | 146 | `result-track:da31626324710fb6890946d6ac2e2e1ce2c4371cfb370684112f26fa13b235b3` |
| 10 | `theorem` | [succ_le_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-le-of-lt.md) | 150 | `result-track:4c6d3a0b0c2e8ef03281eafc4bea1449a4e1a7bb55b0218d608a16155e60d2f5` |
| 11 | `theorem` | [succ_le_iff_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-le-iff-ismax.md) | 157 | `result-track:415f183a985b3df5a60ff97fc8b5fcf0fab126b7473ae6828628c85a42a1e87a` |
| 12 | `theorem` | [lt_succ_iff_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/lt-succ-iff-not-ismax.md) | 166 | `result-track:d0cb8658f910a91b6ddafa12fa75d31ed001eef69ed2b0a391d5ab5ce85192a5` |
| 13 | `theorem` | [wcovBy_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/wcovby-succ.md) | 173 | `result-track:3710979379f01869157c2cafae6c8727664b86bfd12eca50c690b91406613dbe` |
| 14 | `theorem` | [covBy_succ_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/covby-succ-of-not-ismax.md) | 177 | `result-track:0af80695ee3c7fd1c4edb4d1572534ab92d56e98c162a417b1ad25e6b2179f52` |
| 15 | `theorem` | [lt_succ_of_le_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/lt-succ-of-le-of-not-ismax.md) | 181 | `result-track:9a7e5268f9430c8ec4506e85eff6c81d64bd925cef2c0e40e664bc8e219f9c52` |
| 16 | `theorem` | [succ_le_iff_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-le-iff-of-not-ismax.md) | 185 | `result-track:5b6772124f396dc82a1f7bb37a6985a6885abfa9352bd18192641e0407108612` |
| 17 | `theorem` | [succ_le_iff_of_not_isMax'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-le-iff-of-not-ismax-source-edition-2.md) | 189 | `result-track:64668bb33f24d8cc8a4d1392c30fd0d89e4bb78af5fa64145f6ddd611fed3f88` |
| 18 | `lemma` | [succ_lt_succ_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-lt-succ-of-not-ismax.md) | 195 | `result-track:c968d0fde4ebdba69e171346947fbf2815f6a886850519e76935fb3af3a83607` |
| 19 | `theorem` | [succ_le_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-le-succ.md) | 199 | `result-track:757a32af9169fa0abfb743c4fe4fd48ca8d43c0c44ccceb84aba4de710ad15cd` |
| 20 | `theorem` | [succ_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-mono.md) | 208 | `result-track:b4262758bae5c5ff14a098e3f43ce3567702eb1b27e51eca2b4696c09c3d473d` |
| 21 | `lemma` | [le_succ_of_wcovBy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/le-succ-of-wcovby.md) | 212 | `result-track:7151a8b4cb0dbdaf29994eccfa6352f2cdee8cdc6e8b2972b75ef86383b77c94` |
| 22 | `theorem` | [le_succ_iterate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/le-succ-iterate.md) | 222 | `result-track:34955cab60d7f59f7d2a9815ef2fcca9b7801570369766c5c63917e4977a43aa` |
| 23 | `theorem` | [isMax_iterate_succ_of_eq_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ismax-iterate-succ-of-eq-of-lt.md) | 226 | `result-track:8fded5a0703fbcde139663a4970a11d1d15fcb4cf7c86936203ba536cafa011e` |
| 24 | `theorem` | [isMax_iterate_succ_of_eq_of_ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ismax-iterate-succ-of-eq-of-ne.md) | 233 | `result-track:ef4875802e95c155c7800e9bcf5cac7606f75fa682663572dbbee34ff734cb9c` |
| 25 | `theorem` | [Iic_subset_Iio_succ_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/iic-subset-iio-succ-of-not-ismax.md) | 242 | `result-track:2ff14082c4fa3131e1a7c167239ef7e86d9d27260e4f214e5182fbca5f2ebbce` |
| 26 | `theorem` | [Ici_succ_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ici-succ-of-not-ismax.md) | 247 | `result-track:b2995ae1aceab1abf4c8a936fe7a221dc0d0b65aca33f032f56712e1b6464118` |
| 27 | `theorem` | [Icc_subset_Ico_succ_right_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/icc-subset-ico-succ-right-of-not-ismax.md) | 251 | `result-track:eae2df9609830a4e15205ab8dba0997ef33a9af9b03d0c3f84f01ff5dd268c6e` |
| 28 | `theorem` | [Ioc_subset_Ioo_succ_right_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ioc-subset-ioo-succ-right-of-not-ismax.md) | 256 | `result-track:e7fada03cfd2c97c49f381e69791492dd0187d51ffb40de4a9291f611bd042ed` |
| 29 | `theorem` | [Icc_succ_left_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/icc-succ-left-of-not-ismax.md) | 261 | `result-track:edc9719e738dfda9454d0e18d417d1fc3375d838ea13f482093a5192a199c3dc` |
| 30 | `theorem` | [Ico_succ_left_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ico-succ-left-of-not-ismax.md) | 265 | `result-track:12274d0b39587dd9bfa6038b523f706a334cb9acacfc4361b6eb52c407ca23d6` |
| 31 | `theorem` | [lt_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/lt-succ.md) | 273 | `result-track:9a4a2140606bcf3c086c5c7bfc9122e226e3f535bcc0138d1ca3d205a6a33ad0` |
| 32 | `theorem` | [lt_succ_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/lt-succ-of-le.md) | 277 | `result-track:6d56e8e459a0c326d315163559ed5a797074b1afce6ae25e9341b58abc6b4635` |
| 33 | `theorem` | [succ_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-le-iff.md) | 281 | `result-track:a73c6084cd3756cfb8611b5f7eb4118463e408c09b2d916c70c9ea7098ca91c1` |
| 34 | `theorem` | [succ_lt_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-lt-succ.md) | 285 | `result-track:607be0ea2dd481a245f00156fe1c11176e5eae58753342e03101cd15b5568a5c` |
| 35 | `theorem` | [succ_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-strictmono.md) | 288 | `result-track:466fbbc28e37b05d50d88c51ea7503923d6ff440d0859f0bf339aadb5332b55f` |
| 36 | `theorem` | [covBy_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/covby-succ.md) | 291 | `result-track:cf418c5786fb11bafaa0caf444b331c190cc5ccd2a008ba623ef677d1f2919e9` |
| 37 | `theorem` | [Iic_subset_Iio_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/iic-subset-iio-succ.md) | 295 | `result-track:ce83373647c762c9bbd1e5505a5d078d4f65405a5aedc2c014303c37f075920d` |
| 38 | `theorem` | [Ici_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ici-succ.md) | 298 | `result-track:88b9eaa40c82df3328c089653ed476a832c67748de60b95e43ef403cdf61ce81` |
| 39 | `theorem` | [Icc_subset_Ico_succ_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/icc-subset-ico-succ-right.md) | 302 | `result-track:76730205d25f04d9af799fe1883de27b575d6f736fa2ca338c8f6112c2c9f009` |
| 40 | `theorem` | [Ioc_subset_Ioo_succ_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ioc-subset-ioo-succ-right.md) | 306 | `result-track:01ad701f006bf5a7d5f114403bee2a22c62d6547fed4aec4d9fcefef37f9f23d` |
| 41 | `theorem` | [Icc_succ_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/icc-succ-left.md) | 310 | `result-track:63b96abf1cfe8215c472d5ee50bb83b6071b5cd284edec0d669f4e8e53cd594c` |
| 42 | `theorem` | [Ico_succ_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ico-succ-left.md) | 314 | `result-track:c8ba6bb854f46774b4296724eff20ba3e77c48a9f72e8dc49e7a4800da9ad648` |
| 43 | `theorem` | [succ_eq_iff_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-eq-iff-ismax.md) | 326 | `result-track:af577710c0a50c8d6e35aa6c52560db0cdfe503ee21c16b2fbf220aa8fa92e57` |
| 44 | `lemma` | [le_iff_eq_or_succ_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/le-iff-eq-or-succ-le.md) | 333 | `result-track:658d5bbfc8b978d78aac104c3e58778195d4a4a3b080f8087cf38ce2776b4992` |
| 45 | `lemma` | [le_iff_eq_or_succ_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/le-iff-eq-or-succ-le-source-edition-2.md) | 339 | `result-track:a88aec19cab512e3e6ecc5a32fbb83f6ad622a87aaa0f0566b140a73e8d396ba` |
| 46 | `theorem` | [le_and_le_succ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/le-and-le-succ-iff.md) | 344 | `result-track:7aa90fb51497d37386356b45ec527d75d3564afbd0e2c61e963ffd73f964c7ea` |
| 47 | `theorem` | [le_succ_and_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/le-succ-and-le-iff.md) | 352 | `result-track:831f6349a12dfd4a42722d51bd5167281135c5a386ce9f837c9580769260b14e` |
| 48 | `lemma` | [succ_eq_of_covBy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-eq-of-covby.md) | 358 | `result-track:af612acb644a27e94b6556d01e4349a4e158948ffe6db660ea355197ee5d3654` |
| 49 | `theorem` | [_root_.OrderIso.map_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/root-orderiso-map-succ.md) | 364 | `result-track:6a6f634816c5cd350359df2e115559d8592b6cba0ddeb333579c2c3e75bea04f` |
| 50 | `theorem` | [succ_eq_iff_covBy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-eq-iff-covby.md) | 375 | `result-track:e517902a8d779d7602dd76e26c477cffae53742c847c9df5840dd5ddf81d31bf` |
| 51 | `theorem` | [succ_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-top.md) | 385 | `result-track:83e8c913d9dad321f5b0bc912cd041688fb8a4c3bca90c6e59817ba54be87251` |
| 52 | `theorem` | [succ_le_iff_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-le-iff-eq-top.md) | 389 | `result-track:1a313ae88400227f648d422dd09c0e6efb56362699975915302edff149a27052` |
| 53 | `theorem` | [lt_succ_iff_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/lt-succ-iff-ne-top.md) | 393 | `result-track:d5e1f9e34a6d3046ea39f42ad7add9e6e52ca893693225ea809238c8bd851245` |
| 54 | `theorem` | [bot_lt_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/bot-lt-succ.md) | 403 | `result-track:03ee05263080a55927f292ac0b7294f1e28404dfabadc061e3cbd1dbe95a0f09` |
| 55 | `theorem` | [succ_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-ne-bot.md) | 407 | `result-track:cfb482b3a7c869e7eac9ca4a0f59d2d8c8a9699ae73cfc0a28b759a03ce895ca` |
| 56 | `lemma` | [succ_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-max.md) | 418 | `result-track:c0382ff200c0c6629e4f0f5bd53766092cea971c10e3d87708ba24656af5b5dc` |
| 57 | `lemma` | [succ_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-min.md) | 419 | `result-track:e2f3a606fe287fcd6965e084f730664e929b9120cd3ce8b5c85ca2385c94f986` |
| 58 | `theorem` | [le_of_lt_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/le-of-lt-succ.md) | 422 | `result-track:362ea886cd67f3d0b8a2db5fc22cc1dd34286c101e6f2db38dffe8d9695e0e84` |
| 59 | `theorem` | [lt_succ_iff_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/lt-succ-iff-of-not-ismax.md) | 427 | `result-track:6329e8e01fc003470b97891c3884892250c7ca44b8c8b1a742277cdf784d0a44` |
| 60 | `theorem` | [lt_succ_iff_of_not_isMax'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/lt-succ-iff-of-not-ismax-source-edition-2.md) | 432 | `result-track:e90bdf891cf92cddaa73b04355254429790bcab65b7ca40e6f9042f833554a23` |
| 61 | `theorem` | [succ_lt_succ_iff_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-lt-succ-iff-of-not-ismax.md) | 437 | `result-track:1226c1a4d340f15edc472c15be124b76b4c5068baa0376e8034fccaf5d30bc0b` |
| 62 | `theorem` | [succ_le_succ_iff_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-le-succ-iff-of-not-ismax.md) | 442 | `result-track:859a4fea2220dfcebd032803fbc1b6a63efca5fd39ed5df8e1eecc82cb107bd0` |
| 63 | `theorem` | [Iio_succ_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/iio-succ-of-not-ismax.md) | 447 | `result-track:daaaff3876aab3b3fc7a46137bd774950c0a9342d5cac4e0a9e1b98a8d7740dc` |
| 64 | `theorem` | [Ico_succ_right_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ico-succ-right-of-not-ismax.md) | 451 | `result-track:508d1e5ef82e353951b2cd65828a9d6a9c616db6f7f492e6741260c8d4aa71a8` |
| 65 | `theorem` | [Ioo_succ_right_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ioo-succ-right-of-not-ismax.md) | 455 | `result-track:66142fa0182d54058728da5df1bcb0c4ae11ca3f71a6e1df5ab3076ac1c59136` |
| 66 | `theorem` | [succ_eq_succ_iff_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-eq-succ-iff-of-not-ismax.md) | 459 | `result-track:3296e60e081854d4173ea241d29e478f2c19fbc3b1279cb27f763e78017586fd` |
| 67 | `theorem` | [le_succ_iff_eq_or_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/le-succ-iff-eq-or-le.md) | 465 | `result-track:32c01ebefde7f48a8a28197eba7a64adca0d0019f9973637adb15512d9d34d31` |
| 68 | `theorem` | [lt_succ_iff_eq_or_lt_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/lt-succ-iff-eq-or-lt-of-not-ismax.md) | 471 | `result-track:1063c538eb0d59f34b521aa2ad0d5b0277a4548c3bb84926143bf3c4bce4db2a` |
| 69 | `theorem` | [not_isMin_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/not-ismin-succ.md) | 475 | `result-track:2f3e927a9e861e48e3c3a3a7b227698a9199d766544778ab21aabafaeb73aa7e` |
| 70 | `theorem` | [Iic_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/iic-succ.md) | 481 | `result-track:fe7501231c4e0235ce58c815c2b2338a5803e3be9b368ffbf0aa977c9f5366c9` |
| 71 | `theorem` | [Icc_succ_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/icc-succ-right.md) | 485 | `result-track:75eb7cea0ed829248d2c21cf1dc3ee35cfaec10c555d420126fb70bd3a798e42` |
| 72 | `theorem` | [Ioc_succ_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ioc-succ-right.md) | 489 | `result-track:5ec679c444985e4357a68db00fcdeb1d6e615ba60dd943f0feacd05462fcdcbe` |
| 73 | `theorem` | [Iio_succ_eq_insert_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/iio-succ-eq-insert-of-not-ismax.md) | 493 | `result-track:8e23bc252989593d11f3df4ba522d8f4c6915b10cea3a66f4c2ab4da24f41768` |
| 74 | `theorem` | [Ico_succ_right_eq_insert_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ico-succ-right-eq-insert-of-not-ismax.md) | 497 | `result-track:01897332a9ac9a78d01c96d6031ddd8a4bd0aed6dfbf42730130b38c4c22252a` |
| 75 | `theorem` | [Ioo_succ_right_eq_insert_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ioo-succ-right-eq-insert-of-not-ismax.md) | 502 | `result-track:7c4846145a791b30ee3b087ad7f708387cb3aeb93d23c99d0870f720cd0918d5` |
| 76 | `theorem` | [lt_succ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/lt-succ-iff.md) | 511 | `result-track:9f78c21d0c9b69f5a8bba3645b55a0ba77716ad13d99ed56dbcdb373617abe0d` |
| 77 | `theorem` | [succ_le_succ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-le-succ-iff.md) | 514 | `result-track:25bc4becbe2c14c44f3592f75c081f58687886e963d0f57cb1b2d7c3085fcc78` |
| 78 | `theorem` | [succ_lt_succ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-lt-succ-iff.md) | 515 | `result-track:a942382562a49538a8d87850336f28c5de9b47bf57d3c83943140425bae370be` |
| 79 | `theorem` | [Iio_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/iio-succ.md) | 522 | `result-track:acdb39d3af13b5a79457448439b7127706e4c84f26f280c0fcd726aafbf21166` |
| 80 | `theorem` | [Ico_succ_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ico-succ-right.md) | 526 | `result-track:f7ff67288e76f3489fd6940a984e8508d25701f3bfdc72eb0c6b1a9e10d34878` |
| 81 | `theorem` | [Ioo_succ_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ioo-succ-right.md) | 531 | `result-track:68c7db86d6379a42a6dae1de938ee4c58bfa51a57167da428c1c0f38125082b0` |
| 82 | `theorem` | [succ_eq_succ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-eq-succ-iff.md) | 535 | `result-track:d84ec34a67a40afd54af343440711b840365eb87d90acb4af38efb27f2968b58` |
| 83 | `theorem` | [succ_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-injective.md) | 539 | `result-track:7dfc6f5c075522712a48f5081e606fe65d40eace544651f1180478c0410a34c1` |
| 84 | `theorem` | [succ_ne_succ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-ne-succ-iff.md) | 542 | `result-track:3e81259a0c248359bc0d5f11f41d4a1d64475e9d15254ad0eac661ab751e4d7c` |
| 85 | `theorem` | [lt_succ_iff_eq_or_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/lt-succ-iff-eq-or-lt.md) | 549 | `result-track:9278a3c28288ba536b84635c2c205586f10f5b4b0610396919560e1471f54624` |
| 86 | `theorem` | [lt_succ_iff_eq_or_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/lt-succ-iff-eq-or-gt.md) | 553 | `result-track:bad55ee8ffa2e7318cc2a2fc5e077078cdc8830fd0c23b9e6891485e8f73619f` |
| 87 | `theorem` | [Iio_succ_eq_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/iio-succ-eq-insert.md) | 557 | `result-track:5df47794b0795f5e163e3f624475f9a9a454e96ba3a4b26dd7dc0107c187695d` |
| 88 | `theorem` | [Ico_succ_right_eq_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ico-succ-right-eq-insert.md) | 561 | `result-track:d8913baa5014882cfde4fca27ebf7d4125fc827770221889db705b9a0de8b86b` |
| 89 | `theorem` | [Ioo_succ_right_eq_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ioo-succ-right-eq-insert.md) | 567 | `result-track:8338a0a9a03555778f09e06a4c6d1aae2e728f22f1e0d6a87d68bf389bcbf38c` |
| 90 | `theorem` | [Ioo_eq_empty_iff_le_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ioo-eq-empty-iff-le-succ.md) | 573 | `result-track:92187037f44cc0ac5b9308e6f68db3baddd53656330d8e3dc31fcbb3430b3e5e` |
| 91 | `theorem` | [lt_succ_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/lt-succ-bot-iff.md) | 588 | `result-track:9bec60d96bc7379c78aa6d6d3dcce6c7afed2d1f5c71b40ad0e55d724eae1d28` |
| 92 | `theorem` | [le_succ_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/le-succ-bot-iff.md) | 591 | `result-track:a8181bcec1e0040349ad42b74e7c64f23b209c5bb034b7ac98b7237183bb9788` |
| 93 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/instance.md) | 601 | `declaration-track:237a942763e5e3232f972607300ee1554fc19adc5eeeba55a0b754d68ba583f1` |
| 94 | `theorem` | [succ_eq_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-eq-sinf.md) | 610 | `result-track:cddb511aa8ee6d9be907906ce385b89403528d6f956e90459c8211e37ee142de` |
| 95 | `theorem` | [succ_eq_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-eq-iinf.md) | 619 | `result-track:c016ff734f640c5df8dccce54d9a16e55ea31023182341b9e8ba326c1519d91e` |
| 96 | `theorem` | [succ_eq_csInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-eq-csinf.md) | 623 | `result-track:7b53eec05d8e0845b379d6df26f5fbd376fcd327342fa2707d31e48e0a71822c` |
| 97 | `theorem` | [isMin_iterate_pred_of_eq_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ismin-iterate-pred-of-eq-of-lt.md) | 635 | `result-track:667ee175c1bdb2aa3fb44d51f350d3e1eb534a62d98b8ecf107ea366c16edddb` |
| 98 | `theorem` | [isMin_iterate_pred_of_eq_of_ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ismin-iterate-pred-of-eq-of-ne.md) | 640 | `result-track:e4fc9e627d9de99f7ac5d083b2603cc24286e6d41cd3588918dece14b5a191c0` |
| 99 | `lemma` | [le_succ_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/le-succ-pred.md) | 653 | `result-track:95cb426762e4116914bec67061a71a0162be982f5f393fe58e1583cb59b68a03` |
| 100 | `lemma` | [pred_le_iff_le_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/pred-le-iff-le-succ.md) | 656 | `result-track:5f57d27857e971a8f2f01b9e880744943908ba02d7a4218afc48430af90372eb` |
| 101 | `lemma` | [gc_pred_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/gc-pred-succ.md) | 660 | `result-track:1e87bcbf8821d63388bbb34f9db07d1545c4cdf457844038cb3cc05179e6af28` |
| 102 | `theorem` | [succ_pred_of_not_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-pred-of-not-ismin.md) | 667 | `result-track:067d18a67df18548c2d1cc6c233c7a18f79de2f80990d9554af4b2ebf11127cf` |
| 103 | `theorem` | [succ_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-pred.md) | 671 | `result-track:8e62e3d46a9d271c66efe104ebe517f9065a5f077a511987171dd2a099e0e74a` |
| 104 | `theorem` | [pred_succ_iterate_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/pred-succ-iterate-of-not-ismax.md) | 675 | `result-track:7796b1d8e38867ea599f0dce7d6c06d58bef0332ebf115010a3dd4f33df5de94` |
| 105 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/instance-source-edition-2.md) | 722 | `declaration-track:3f091b6f6d36ae1e3a2d2d29bbf74a76dececfb0883e9d1d377837ee3fe827ca` |
| 106 | `theorem` | [succ_coe_of_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-coe-of-ismax.md) | 754 | `result-track:e60cc595ea60864404adeb18c22d0eb7f1d7d9212f1c1d7f281ffada95675433` |
| 107 | `theorem` | [succ_coe_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-coe-of-not-ismax.md) | 758 | `result-track:8f5323eb8c9dcd8a6ef21aac12d51fc5b9b1640f65558499b8c06c01a92fe022` |
| 108 | `theorem` | [succ_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-coe.md) | 762 | `result-track:19cea8dcaca13433b9f67db0a0ec298c26f2c57b7840d36dfa81ed853ff5d9e7` |
| 109 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/instance-source-edition-3.md) | 772 | `declaration-track:662533a6a00fbff9c16c445a9a6ffc9a15f50681a9d21244f3eba70a3910390b` |
| 110 | `lemma` | [orderPred_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/orderpred-top.md) | 792 | `result-track:8cdb49a654666ecb5af9e12deb05cc30edea33a6291d21e206a16dfa026f9955` |
| 111 | `lemma` | [orderPred_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/orderpred-coe.md) | 795 | `result-track:ab42edd28b46aedc2386823a62ef1231e72911615972b53fa661c636ba892c44` |
| 112 | `theorem` | [pred_untop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/pred-untop.md) | 798 | `result-track:bee5aa876e00a15fcda6c68f303e4ab91ef07ed28de21c0c0bef04d68ad6bc5e` |
| 113 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/instance-source-edition-5.md) | 811 | `declaration-track:e62057126f0b737fc3d4fa82b4b5bc127bf479babc548ee8f0fe10d4a9ff37b4` |
| 114 | `abbrev` | [SuccOrder.ofOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succorder-oforderiso.md) | 833 | `declaration-track:7f6de7610b63ddc876db0bc83d0b37364420faab7ef8e1c03ea5d00d8479c528` |
| 115 | `instance` | [Set.OrdConnected.predOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/set-ordconnected-predorder.md) | 849 | `declaration-track:8c4d6dfbb0212103b1e4e60271d72ae136c22eaa648d54ced4bd0242780b626b` |
| 116 | `lemma` | [coe_pred_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/coe-pred-of-mem.md) | 874 | `result-track:a3a1440fec4072553ce248a7657248c80e94311e1e8bbd3ac28604823de7e02b` |
| 117 | `lemma` | [isMin_of_pred_notMem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ismin-of-pred-notmem.md) | 879 | `result-track:7841c45ce9572c112dc97e92fc66c726e22515f39b472ea9efae0e0bc87514aa` |
| 118 | `lemma` | [pred_notMem_iff_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/pred-notmem-iff-ismin.md) | 884 | `result-track:512740210d1f624e4e9e3cb5f8e40aae1cb16f569d8f87f1f2d53faba503deeb` |
| 119 | `instance` | [Set.OrdConnected.succOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/set-ordconnected-succorder.md) | 892 | `declaration-track:78a485ebdf51b5f68f01ad2959b36f8e79cde39391574f0da35c9ac55905db6c` |
| 120 | `lemma` | [coe_succ_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/coe-succ-of-mem.md) | 899 | `result-track:5c7dc08135bf5b20ba6b3abf30361048692983aff7ac1abfcd5b6ff41a2e5222` |
| 121 | `lemma` | [isMax_of_succ_notMem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/ismax-of-succ-notmem.md) | 905 | `result-track:035a83dd6ef52c647189150dce4007111c62c490542f9551dccf340f791382b3` |
| 122 | `lemma` | [succ_notMem_iff_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/declarations/succ-notmem-iff-ismax.md) | 911 | `result-track:3d86a2bfd888b60359fed6ce1a672c13ba85af0dd332b04f7b2fe20448587877` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb095d253ac08708143dec92023ce17854db0586aebb41f39a7b343a8377c132 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
