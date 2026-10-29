# Verification target: Pseudo Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1302b6c82c9cd028793f6cad50230b5fbe3a5b7",
  "lexical_observation_count": 236,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variantde9a7bc68d2ff7033e2f5946ff8d28edb26e2eb2a6ca2c54eda13df1dfabb43e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1302b6c82c9cd028793f6cad50230b5fbe3a5b7`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variantde9a7bc68d2ff7033e2f5946ff8d28edb26e2eb2a6ca2c54eda13df1dfabb43e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Defs/Variantde9a7bc68d2ff7033e2f5946ff8d28edb26e2eb2a6ca2c54eda13df1dfabb43e.lean.json)

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
| 1 | `theorem` | [UniformSpace.ofDist_aux](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformspace-ofdist-aux.md) | 79 | `result-track:77c45d6a05c30fc0c1477ac7382445a6df247174a9e7fd10ad661c23319fb82d` |
| 2 | `def` | [UniformSpace.ofDist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformspace-ofdist.md) | 84 | `declaration-track:4d3b8316d279d5e5d6b5b520809b33ef264ba528fa0c8005693372ba2ba76816` |
| 3 | `abbrev` | [Bornology.ofDist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/bornology-ofdist.md) | 90 | `declaration-track:787afc4bce1d3d6371f3de4e1f25781690b20c01f247ed555843cf688cce4dae` |
| 4 | `class` | [Dist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist.md) | 112 | `declaration-track:4dbaaabae1af3eeacc918fac582a82f512c92cd3d228840996d594f553b81445` |
| 5 | `theorem` | [dist_nonneg'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-nonneg-source-edition-2.md) | 122 | `result-track:b6c5b081135d16119e9c73766d033ed84f2cf72785bf6db85d8d6e30ec1be9f2` |
| 6 | `class` | [PseudoMetricSpace](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/pseudometricspace.md) | 149 | `declaration-track:07267f0f016c33595447875a8a4199d87afcdd5e4e466fcc8567a4c3447c4097` |
| 7 | `theorem` | [PseudoMetricSpace.ext](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/pseudometricspace-ext.md) | 165 | `result-track:2dd5bbe5ec169d52527528511e2c3de1ce97463c68bf43e313e5ade38219a911` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 185 | `declaration-track:e8afe98dbfe2ee81a77d32a1ebae4a17ec4699380251fdcbd8640175da3f7296` |
| 9 | `def` | [PseudoMetricSpace.ofDistTopology](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/pseudometricspace-ofdisttopology.md) | 192 | `declaration-track:a2fa9311c046d7d3cd9eb2e97f68f54358c6fd767a2a40378aa3e666eeedf74b` |
| 10 | `theorem` | [dist_self](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-self.md) | 211 | `result-track:be6640ed7a8d8eabb547db5f40b71d2e40186bf1d2d68c90d14228185dd44806` |
| 11 | `theorem` | [dist_comm](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-comm.md) | 214 | `result-track:fe7c19c59d30433f6efcd5860718abd28bfe3dd0ea5c28e3be43dec8b3ea8a59` |
| 12 | `theorem` | [edist_dist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/edist-dist.md) | 217 | `result-track:c26d0437f1e7df92d4f5c6bc753447eedcf401b8d0a1dd8b02cc6bc46ff1cfc3` |
| 13 | `theorem` | [dist_triangle](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-triangle.md) | 221 | `result-track:b98a683c05ccaa5839307bd523ba928272d6cfb8fd3774337e0cb47fe4730dbb` |
| 14 | `theorem` | [dist_triangle_left](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-triangle-left.md) | 224 | `result-track:55d7409284cd6a956d38a653698ade70d934e84890703da0a2f1fabd7cd809e2` |
| 15 | `theorem` | [dist_triangle_right](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-triangle-right.md) | 227 | `result-track:fdff46e44948f7116c903cb79efa5d3804e64a6e5776fa4ae5f17151144e9744` |
| 16 | `theorem` | [dist_triangle4](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-triangle4.md) | 230 | `result-track:85d6aa2c104aa2dea0149116fda7941ab3fb98a0bf66e47d25f09c1fb687c3b3` |
| 17 | `theorem` | [dist_triangle4_left](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-triangle4-left.md) | 235 | `result-track:f142e0f5a22afa9f6bacf47a60cff40de8ac4671ecf83f9de311888468059bdb` |
| 18 | `theorem` | [dist_triangle4_right](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-triangle4-right.md) | 240 | `result-track:6da9ffd3848a261b387a0b3990f89e99321f6ce185c913bd964d61511970882a` |
| 19 | `theorem` | [dist_triangle8](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-triangle8.md) | 245 | `result-track:de0bcafc6a899ff52796a54a866e75d8915a7245bd80db69617d1a94b81bf5b6` |
| 20 | `theorem` | [swap_dist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/swap-dist.md) | 253 | `result-track:67db66319d3cb47f139e655d3217013600141b52d2d8857c6ee947f7d9aebda7` |
| 21 | `theorem` | [abs_dist_sub_le](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/abs-dist-sub-le.md) | 255 | `result-track:bc0fbe9744d582cb1c2c50e18cb70ce61b52ddcb942eae7feeb32dafceb01f3a` |
| 22 | `theorem` | [dist_nonneg](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-nonneg.md) | 260 | `result-track:b690ac8370e77125a18890f646cacc843bfad0679a6a587f0b436820b54cca7a` |
| 23 | `def` | [evalDist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/evaldist.md) | 269 | `declaration-track:ad5d73fff89855eb4a2baffacfeff7967b97b1849a4fc8155885798880be36e2` |
| 24 | `example` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/example.md) | 280 | `declaration-track:21a47c90cb94cb44bfd22c26ba63ccf7feb8e4881ebbc09f2130934d80f97ff0` |
| 25 | `theorem` | [abs_dist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/abs-dist.md) | 282 | `result-track:1ccb35bfdde399e8a2d0211795422c860a30b6bbeee80ef7693e49b12eb34434` |
| 26 | `class` | [NNDist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nndist.md) | 285 | `declaration-track:ffedfba7e1c602dace75a0b6ef8f9e5fece82aceca30e189558bf6fe0a116cde` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 293 | `declaration-track:f268367227fb507dc5dc5d5ab61e33b09c86b437474044fa1e10efcd61e03f92` |
| 28 | `theorem` | [dist_nndist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-nndist.md) | 297 | `result-track:699a158ea2e9eea7c8d3f5107bd741d8a86faa68b94cd9e71ba5e87b972ae4b7` |
| 29 | `theorem` | [coe_nndist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/coe-nndist.md) | 300 | `result-track:7597747b89f164dfb316772ceb0b54bd347c77f2d0a5f8668f7da83a61698b42` |
| 30 | `theorem` | [edist_nndist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/edist-nndist.md) | 303 | `result-track:e5454d348274ddc602e9e857614cf582214851ae15e8e12f3e81b03b50895999` |
| 31 | `theorem` | [nndist_edist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nndist-edist.md) | 307 | `result-track:7b6b23faf55cbd19aa736ecb71604e2bf75ae6ab1f7529b825d16115c3ce6959` |
| 32 | `theorem` | [coe_nnreal_ennreal_nndist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/coe-nnreal-ennreal-nndist.md) | 311 | `result-track:111f772359a6c4524e1a1b69303972a8e59833aba38ad31deead0d0b4fb8e60e` |
| 33 | `theorem` | [edist_lt_coe](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/edist-lt-coe.md) | 315 | `result-track:336234de48df93504386b4abdf74ddb98b695cb7e0a16706b4b5c5db048c33d5` |
| 34 | `theorem` | [edist_le_coe](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/edist-le-coe.md) | 319 | `result-track:c6b9d099ec1b4979f7a879d442a5e6a948e4be8da6bd94c0e54d8b1d3fdb0d95` |
| 35 | `theorem` | [edist_lt_top](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/edist-lt-top.md) | 323 | `result-track:9a40e0b8969f261a4d7b152e1444b02420dfaf9b77465eff4c6b28e4748ad554` |
| 36 | `theorem` | [edist_ne_top](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/edist-ne-top.md) | 328 | `result-track:18fb3ddde5753db235ec1e8ed1c7c3ef8b66f01b94c484bc5187ad31b627155f` |
| 37 | `theorem` | [nndist_self](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nndist-self.md) | 332 | `result-track:024032220b7f830f704df5c7152252aaa4169200b5118d761d97c38a018f5e57` |
| 38 | `theorem` | [dist_lt_coe](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-lt-coe.md) | 335 | `result-track:3fc296330ea0b92cab47b1030e5e10d63f880655b4363b288f3e450727f0e259` |
| 39 | `theorem` | [dist_le_coe](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-le-coe.md) | 339 | `result-track:0ded1dae48c5a035884fa5100103b5b666487ca7e74f57992c8aa7922ac6c8f1` |
| 40 | `theorem` | [edist_lt_ofReal](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/edist-lt-ofreal.md) | 343 | `result-track:ccdaa6d9101d87edafd642934adc8dd61f6141e6da3ee4e5ccc1a21d0d735170` |
| 41 | `theorem` | [edist_le_ofReal](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/edist-le-ofreal.md) | 347 | `result-track:191e2be83d64816d72b4a8e8105214fc7de2780766cbeb442ea76b67bb098a65` |
| 42 | `theorem` | [nndist_dist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nndist-dist.md) | 352 | `result-track:f5c1f8de4527b8e8502f3a84a3e66c21d983d5ede52deaf9e40a0f2f065c6438` |
| 43 | `theorem` | [nndist_comm](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nndist-comm.md) | 355 | `result-track:491e9c0cfd81a5fa4b575e497a658d3d1313220a3d5fb79cccc6b19c48cfa0da` |
| 44 | `theorem` | [nndist_triangle](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nndist-triangle.md) | 358 | `result-track:e712d0a66c97c549cbf5b92b6d5e359595f6bec23b4bc9dab3889fc8a08ddf5e` |
| 45 | `theorem` | [nndist_triangle_left](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nndist-triangle-left.md) | 361 | `result-track:e6a47b035048f4014893ed2331901db1ff2a15f1c7aed876aa2d43da93ff2d62` |
| 46 | `theorem` | [nndist_triangle_right](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nndist-triangle-right.md) | 364 | `result-track:62605c9c69615a2859cdc53d9eded6e9d3d876e7ea318e9010aca3861d74da6d` |
| 47 | `theorem` | [dist_edist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-edist.md) | 368 | `result-track:574d3a1ba867dd2e887b560629f6a329be2f639a0927aac2b0bb7bbdf3c488d1` |
| 48 | `def` | [ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball.md) | 378 | `declaration-track:c50fc3dd63aee30661c070ea5e62d4137991e8715ed5283be2582f6ea5e03683` |
| 49 | `theorem` | [mem_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-ball-source-edition-2.md) | 382 | `result-track:fe92c7f72b67296934ae6930a51bfa12d5bd6ce0c1484091be9788551fc26237` |
| 50 | `theorem` | [mem_ball'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-ball.md) | 385 | `result-track:3d9cd20192f4381f79c8eaffc0f3d3d577d4ba52df41f6d743dcc3522fcdcc1d` |
| 51 | `theorem` | [pos_of_mem_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/pos-of-mem-ball.md) | 387 | `result-track:41a49469c2afd8cc061733f5c2e93b3d428ee024be1944918c7ec12aa4ea3dc8` |
| 52 | `theorem` | [mem_ball_self](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-ball-self.md) | 390 | `result-track:547b5659d024c75469b77042e3951230faf863446b5f7ed600d9d7768d9a4a57` |
| 53 | `theorem` | [nonempty_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nonempty-ball.md) | 394 | `result-track:77b8409d069184f801677d13f6e50819ebd28118eb0d591d53ed5f2af694254d` |
| 54 | `theorem` | [ball_eq_empty](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-eq-empty.md) | 398 | `result-track:36fec18b031d81fe5263b825c981e6bc4756eb902f64e4e1d18a958b381b7e71` |
| 55 | `theorem` | [ball_zero](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-zero.md) | 402 | `result-track:e27862ec8ea624f51b55ad8e1ada45750d69104f2e0465330f7c34861889a5ba` |
| 56 | `theorem` | [exists_lt_mem_ball_of_mem_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/exists-lt-mem-ball-of-mem-ball.md) | 408 | `result-track:707cbbdcbd15be1b4549c0220cb985cf71aa54214c9612397096bbea46da7112` |
| 57 | `theorem` | [ball_eq_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-eq-ball.md) | 411 | `result-track:80a17880b8262ed50fb595d3d47bd4a4e48ff0faeadd1df1d81891fd09146a0d` |
| 58 | `theorem` | [ball_eq_ball'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-eq-ball-source-edition-2.md) | 415 | `result-track:e212a1ab9b69996292b3d1a8bccd5b84355a9c8b8bee7bbb9e009c3814eed7c3` |
| 59 | `theorem` | [iUnion_ball_nat](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/iunion-ball-nat.md) | 421 | `result-track:b1f52f6ccff67e4f99c4aec75e0615789483311d2f2017891754ac31d8cc597d` |
| 60 | `theorem` | [iUnion_ball_nat_succ](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/iunion-ball-nat-succ.md) | 425 | `result-track:c8ed29946bc8d0342e422ba42c2a970857361a35998f1858ac0fded9ea05dc5a` |
| 61 | `def` | [closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball.md) | 429 | `declaration-track:818201686c8359fc841c2d5532a22945d209b3cdb51d376c0900559ba7dd64e5` |
| 62 | `theorem` | [mem_closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-closedball-source-edition-2.md) | 432 | `result-track:ab6434a1f499884cd783ca04859c1671a9c2e1d46be9cb19c0f4f22f3330a57a` |
| 63 | `theorem` | [mem_closedBall'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-closedball.md) | 434 | `result-track:067a482a69f2de15be96da9ee9520f1ec0c2a9296d138ad7fae745841396e569` |
| 64 | `theorem` | [nonneg_of_mem_closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nonneg-of-mem-closedball.md) | 436 | `result-track:679dd766f81a764671909da66cf371b57de4188a3039ec5ed2f6e38eb9009971` |
| 65 | `def` | [sphere](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/sphere.md) | 440 | `declaration-track:74255a0aca45153e745d415d6c5ea9437f14714619853dcb3564e0b7afd5fbf2` |
| 66 | `theorem` | [mem_sphere](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-sphere.md) | 442 | `result-track:270db61c05ce8ba4f579bab917f5af5b89886d7bb29215cd65401f7e58519cd6` |
| 67 | `theorem` | [mem_sphere'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-sphere-source-edition-2.md) | 444 | `result-track:71dc37d3728d03979cc83110dc82597859f8790d6e9a8d2e01924a60171bd62c` |
| 68 | `theorem` | [ne_of_mem_sphere](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ne-of-mem-sphere.md) | 446 | `result-track:a35b9bd6b7404c03fa18c942b324bafc1dcd0b5d6d8dd79a8785a5cc79f19d80` |
| 69 | `theorem` | [nonneg_of_mem_sphere](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nonneg-of-mem-sphere.md) | 449 | `result-track:2554ca195713b5d8e61748233b41a4a5bb2aecd2fc5e01da0f4976a7da8d7d08` |
| 70 | `theorem` | [sphere_eq_empty_of_neg](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/sphere-eq-empty-of-neg.md) | 453 | `result-track:6d1c4a8acd179c4739797f996e119d45828c9b4d0822d16c2008ce3968effb62` |
| 71 | `theorem` | [sphere_eq_empty_of_subsingleton](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/sphere-eq-empty-of-subsingleton.md) | 456 | `result-track:f5a52a322aaae0c2a23f14f19a6e4ca58369a1e2f0e632657141ea4ba56dcba3` |
| 72 | `instance` | [sphere_isEmpty_of_subsingleton](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/sphere-isempty-of-subsingleton.md) | 459 | `declaration-track:16414088a158692c8dfc89bd4f92f7e33ccd9875306465492bfb51b72817313d` |
| 73 | `theorem` | [closedBall_eq_singleton_of_subsingleton](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball-eq-singleton-of-subsingleton.md) | 462 | `result-track:9b170fa578d2dd0928146e67947b9dfed84695729b4ba614b90a6fdafe4187ec` |
| 74 | `theorem` | [ball_eq_singleton_of_subsingleton](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-eq-singleton-of-subsingleton.md) | 467 | `result-track:5c8748bb4216934be3014c3323804069e33b740425aca330347c139527925eea` |
| 75 | `theorem` | [mem_closedBall_self](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-closedball-self.md) | 471 | `result-track:8318c5892e3c7ce1ec24fa8d1542806fb8f3cf105256be2b2fa5181f1c3b0286` |
| 76 | `theorem` | [nonempty_closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nonempty-closedball.md) | 475 | `result-track:ec15c891632e7522d641863dc9ef25c4ce8e400069078ef20da74d931ce4348a` |
| 77 | `theorem` | [closedBall_eq_empty](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball-eq-empty.md) | 479 | `result-track:57cd9a0fc86a8218ee012a53a283a725fc238a1e39e72fc7c72736bf3a80f202` |
| 78 | `theorem` | [closedBall_eq_sphere_of_nonpos](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball-eq-sphere-of-nonpos.md) | 485 | `result-track:5953a435fada316ad97d2a35794a6f9b1bdfb10a05d24db6a6ef7aaff379f776` |
| 79 | `theorem` | [ball_subset_closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-subset-closedball.md) | 488 | `result-track:009c667e83fe9105e4eeaf8b9eb3decda33c446579a0828f940bde1b58878fd1` |
| 80 | `theorem` | [sphere_subset_closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/sphere-subset-closedball.md) | 491 | `result-track:5a71299f2e326c640109fc6c61b39e9dfd11f19e054cfa0ce9ffbcfb8fd521a1` |
| 81 | `lemma` | [sphere_subset_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/sphere-subset-ball.md) | 493 | `result-track:e7eb0c6ad9994aa3cbe66426f9dc5d9b5ad6ceabc04d258e6682fa63f24453e1` |
| 82 | `theorem` | [closedBall_disjoint_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball-disjoint-ball.md) | 496 | `result-track:6ea5ce8504ec046bb05d2a5fab99c44b2f6568d41db0b7cda635f1e4d19cb086` |
| 83 | `theorem` | [ball_disjoint_closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-disjoint-closedball.md) | 500 | `result-track:ab341e8647f84ee745bb83458a8212ba49a3b1020df49f50013ce5cc1117adbe` |
| 84 | `theorem` | [ball_disjoint_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-disjoint-ball.md) | 503 | `result-track:9e79603bfac946453cafb2e2af8499cc07f52f3224710bdd7e4384e84d00f3b4` |
| 85 | `theorem` | [closedBall_disjoint_closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball-disjoint-closedball.md) | 506 | `result-track:26d8974438ad26bd598657c8cf98c8aba46b842c152decc4894e3b7514a3d551` |
| 86 | `theorem` | [sphere_disjoint_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/sphere-disjoint-ball.md) | 511 | `result-track:a75981eddc2c641a89c4b4677d9ae7cf88e5afd5c7e40f1f777710a5ede82d79` |
| 87 | `theorem` | [ball_union_sphere](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-union-sphere.md) | 515 | `result-track:a3461c4dddd35fb994dda8b4e6093ec1d1415bc63dd4e561b90f918d8b616086` |
| 88 | `theorem` | [sphere_union_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/sphere-union-ball.md) | 519 | `result-track:af15ff4ecc5acdbfe425cf25cb5a740f1182b7384fc6087b8eb2dd6e4eeb12f2` |
| 89 | `theorem` | [closedBall_sdiff_sphere](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball-sdiff-sphere.md) | 523 | `result-track:22a53fee5ee2ca20988db4df04ed72d55e2e9749af6ab78f9ba36c7b34bddfb0` |
| 90 | `theorem` | [closedBall_sdiff_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball-sdiff-ball.md) | 529 | `result-track:0ed82f12f9e956949be3157b0efe9b395c185a54b8d3511704d2d0bb1b5d65d7` |
| 91 | `theorem` | [mem_ball_comm](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-ball-comm.md) | 534 | `result-track:1c390f32ab116c796c28e1379d4239684e8cbf82bcefc52295d97cceee15c955` |
| 92 | `theorem` | [mem_closedBall_comm](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-closedball-comm.md) | 536 | `result-track:616012e35548680dc58f3da8064685c014981dfc63af5b14708a8461c308b0b8` |
| 93 | `theorem` | [mem_sphere_comm](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-sphere-comm.md) | 539 | `result-track:1e214ff579dc76a48ec9c906ed037f69c863d487cf49b9ac6e1020caa33cddb5` |
| 94 | `theorem` | [ball_subset_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-subset-ball-source-edition-2.md) | 542 | `result-track:9b18df129c3c0eeacba0e4b8f1d5eafabd4d1c93c501d0baab3d875d4b8b7583` |
| 95 | `theorem` | [closedBall_eq_bInter_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball-eq-binter-ball.md) | 545 | `result-track:9931c4f07a0217f25b6e7d46eaf38204554ec8a98696d01f2c9a29a53f4ea7f3` |
| 96 | `theorem` | [ball_subset_ball'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-subset-ball.md) | 548 | `result-track:1591ab934e09b38ab5326eef10909a9765b82f34c69790143bd1633fa9bda5f2` |
| 97 | `theorem` | [closedBall_subset_closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball-subset-closedball-source-edition-2.md) | 555 | `result-track:eb7054135bce3173798ec4ddbe1051e33d9f472f1e5f26bee7d08be7857c8056` |
| 98 | `theorem` | [closedBall_subset_closedBall'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball-subset-closedball.md) | 558 | `result-track:3db9fdae1477b5de6a8a43a3760d2302e37d3c03c65a796905f81b13f09d0a4a` |
| 99 | `theorem` | [closedBall_subset_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball-subset-ball.md) | 565 | `result-track:3ba46472c353b0d7d38fa84347d10af8bc135bd61dfa8f4d5a369758ad084090` |
| 100 | `theorem` | [closedBall_subset_ball'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball-subset-ball-source-edition-2.md) | 568 | `result-track:e05fdb6786d6f960d6c0fb26bc7e2d088b14a512db856228bf83bbe96c5a31d0` |
| 101 | `theorem` | [dist_le_add_of_nonempty_closedBall_inter_closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-le-add-of-nonempty-closedball-inter-closedball.md) | 575 | `result-track:da5ec5622ffce2bd03058ae4ce4394ec0f93e0e6b71737e90eda9c48b69e057c` |
| 102 | `theorem` | [dist_lt_add_of_nonempty_closedBall_inter_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-lt-add-of-nonempty-closedball-inter-ball.md) | 582 | `result-track:32dabd7d17aa27892243ac386136531992d4366282b6aa4007facf29aaba7673` |
| 103 | `theorem` | [dist_lt_add_of_nonempty_ball_inter_closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-lt-add-of-nonempty-ball-inter-closedball.md) | 589 | `result-track:b001d06615d0363162bf2b815f2f8f2a04d4e9ef2a997600c8adf8a35714c0b4` |
| 104 | `theorem` | [dist_lt_add_of_nonempty_ball_inter_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-lt-add-of-nonempty-ball-inter-ball.md) | 595 | `result-track:042f8f82ffa5fbad4177ff91da1976457d1a3be2a29bb6fffa089b10c793f3a8` |
| 105 | `theorem` | [iUnion_closedBall_nat](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/iunion-closedball-nat.md) | 601 | `result-track:9d341129d792a3477463b0a1c2f9779c78640308a814508799033db1685c0100` |
| 106 | `theorem` | [iUnion_inter_closedBall_nat](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/iunion-inter-closedball-nat.md) | 604 | `result-track:893902af26b02a2ab6937e59fc5b6d4a2edafb6efc5e9f276478a4b4a0bc9182` |
| 107 | `theorem` | [ball_subset](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-subset.md) | 607 | `result-track:3360fd2b42b3fb1da8bd38ac568a50d7ef5af1ce4de3224b878608045c98925e` |
| 108 | `theorem` | [ball_half_subset](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-half-subset.md) | 611 | `result-track:19d8de0beb8d5cf5e648c8a58f8511ecdd733bc737078c0acad0fe7163024d7e` |
| 109 | `theorem` | [exists_ball_subset_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/exists-ball-subset-ball.md) | 614 | `result-track:f4129db0e01bf7b63a9cf125bdc6b9f37a07fc2ac3c44050e32032b179e40e8f` |
| 110 | `theorem` | [forall_of_forall_mem_closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/forall-of-forall-mem-closedball.md) | 619 | `result-track:1654fff9f9c64c05dec3a743ff2878d49e5aaf5c701309ddd3291eeab3266f37` |
| 111 | `theorem` | [forall_of_forall_mem_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/forall-of-forall-mem-ball.md) | 627 | `result-track:63966a0902d355029c23acc23bcbfa9ae0e278d0481fc639908685e09d891952` |
| 112 | `theorem` | [isBounded_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/isbounded-iff.md) | 633 | `result-track:857284f58de0480427b5f9b19754caca69f37f4e58d49707479fbc3d18c01fe9` |
| 113 | `lemma` | [boundedSpace_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/boundedspace-iff.md) | 638 | `result-track:07b914464ee7a99fc4c929eb6a014900282436fd48cbeb8133d62fc026ec94f0` |
| 114 | `theorem` | [isBounded_iff_eventually](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/isbounded-iff-eventually.md) | 642 | `result-track:9e9466c610168049b1c53a40355a0d737a38cf245705fde4d9a06a15142f469a` |
| 115 | `theorem` | [isBounded_iff_exists_ge](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/isbounded-iff-exists-ge.md) | 648 | `result-track:156c455bd69bae1d8dc78fd50d5b2594f3813f602054620bc351c075fafa17d3` |
| 116 | `theorem` | [isBounded_iff_nndist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/isbounded-iff-nndist.md) | 653 | `result-track:0e83f96eab5faca21813952c3ed0cc57c0649bd6faf9f479532c5c929ea007fc` |
| 117 | `lemma` | [boundedSpace_iff_nndist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/boundedspace-iff-nndist.md) | 658 | `result-track:57f82dfe176e428235854647bb91fe69db9b38fdcaa10676a422edb37dab1548` |
| 118 | `lemma` | [boundedSpace_iff_edist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/boundedspace-iff-edist.md) | 662 | `result-track:2219c6dc73a8d5390f5f03822c7d7098d42dffb42366b77ea095b04650d4881b` |
| 119 | `theorem` | [toUniformSpace_eq](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/touniformspace-eq.md) | 665 | `result-track:c41b2741e3c6cb179ce92f8f905ebd6b2890eb424318b078e1af21e1e7945008` |
| 120 | `theorem` | [uniformity_basis_dist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformity-basis-dist.md) | 669 | `result-track:22a5f9810693fc53788f43e98dc376a92573d58233c9e6f059eec414a2c0be2b` |
| 121 | `theorem` | [mk_uniformity_basis](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mk-uniformity-basis.md) | 679 | `result-track:990ca65eedc76a7098becac0de269d0be5d42cea7787e8f01f1f6ef013ca11d0` |
| 122 | `theorem` | [uniformity_basis_dist_rat](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformity-basis-dist-rat.md) | 689 | `result-track:f95bdb5d744b0e0176ac14750aa368cdc90b0710c291c160083fc480f225138e` |
| 123 | `theorem` | [uniformity_basis_dist_inv_nat_succ](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformity-basis-dist-inv-nat-succ.md) | 695 | `result-track:841524c6a6f57f3de38b238694578d1080326c69fef908ceb61614a221d6f6de` |
| 124 | `theorem` | [uniformity_basis_dist_inv_nat_pos](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformity-basis-dist-inv-nat-pos.md) | 700 | `result-track:e01c5f27035e643ea99ecd05336231fa9cfaeda2f155a2a561099c8ca61cfd01` |
| 125 | `theorem` | [uniformity_basis_dist_pow](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformity-basis-dist-pow.md) | 706 | `result-track:477ac184de294c0c13e368fae7621312522c2b4a2871480ec23def271b295515` |
| 126 | `theorem` | [uniformity_basis_dist_lt](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformity-basis-dist-lt.md) | 712 | `result-track:68d9f3fc33044afffb0f8b7a069e905730f7086048811dd2cad46dfa8ab69cab` |
| 127 | `theorem` | [mk_uniformity_basis_le](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mk-uniformity-basis-le.md) | 724 | `result-track:0a4c8f30450ed2d3705daa8d50fb2e6199f0f78cbc27b35c6697195040967c1d` |
| 128 | `theorem` | [uniformity_basis_dist_le](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformity-basis-dist-le.md) | 737 | `result-track:880e6a182afda26362c211fc324d1db788b99da1c664f10f2a9fc148f7f96210` |
| 129 | `theorem` | [uniformity_basis_dist_le_inv_nat_succ](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformity-basis-dist-le-inv-nat-succ.md) | 741 | `result-track:885bfd43fa951387dfea6b3898d3f9a0d0c87a1fef2f7b0f5634bb2688a33347` |
| 130 | `theorem` | [uniformity_basis_dist_le_inv_nat_pos](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformity-basis-dist-le-inv-nat-pos.md) | 746 | `result-track:ed273083c44a5b785e5d8a882357487a645e7ad5ec36538febad785eb53d7b6e` |
| 131 | `theorem` | [uniformity_basis_dist_le_pow](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformity-basis-dist-le-pow.md) | 752 | `result-track:0c4d4896d6a1ea1733fa5e2733738b9ddd34a77dabdf4561578bb1dcf977ecac` |
| 132 | `theorem` | [mem_uniformity_dist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-uniformity-dist.md) | 758 | `result-track:013edc135191c902e35ec6cbd3faa7b690bd797003d2f8bc2756ec2167e0707b` |
| 133 | `theorem` | [dist_mem_uniformity](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-mem-uniformity.md) | 763 | `result-track:4dc13477330fcf37885ffbb911e3c95f492be49f410fe65a4d813d66685d46cd` |
| 134 | `theorem` | [uniformContinuous_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformcontinuous-iff.md) | 766 | `result-track:a4ba8be58ce12786ea625e7e5559e284bf4561596e6df1a05ccf630fff5c3cec` |
| 135 | `theorem` | [uniformContinuousOn_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformcontinuouson-iff.md) | 770 | `result-track:5608afb19f9829d8c046f7b02c851a7880726a34ed109a2656fa3dfd2239826e` |
| 136 | `theorem` | [uniformContinuous_iff_le](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformcontinuous-iff-le.md) | 775 | `result-track:9eb2f3b515e0df1c362012ab0a55a391f804f39ec76910fcf0c612a441725a75` |
| 137 | `theorem` | [uniformContinuousOn_iff_le](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformcontinuouson-iff-le.md) | 779 | `result-track:c56f245948d9539ac555b73e2bdf1a78206da9ffe6430faaf09f64a94bb9491b` |
| 138 | `theorem` | [nhds_basis_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nhds-basis-ball.md) | 784 | `result-track:e7c8130e039377232933c9f508ee76ae0e1d24810fe6b65a268765a8f5a2fcf7` |
| 139 | `theorem` | [mem_nhds_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-nhds-iff.md) | 787 | `result-track:22ad82b9b4c74cb175a12bf0ae05ef12ad1063e071bd59072cb8b804ed03a271` |
| 140 | `theorem` | [eventually_nhds_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/eventually-nhds-iff.md) | 790 | `result-track:88c7807d24ede06621fb226d4637c71427da07ba04a6e2ad8a5fecd001c060ec` |
| 141 | `theorem` | [eventually_nhds_iff_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/eventually-nhds-iff-ball.md) | 794 | `result-track:487ce78d41b7a5cfb2a8ac34e3dfc7c9a4a7d0b3f6a8c507ca36a12b89bdf01e` |
| 142 | `theorem` | [eventually_nhds_prod_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/eventually-nhds-prod-iff.md) | 800 | `result-track:c6e0bbeb8c8358b9a761e9f91997a1d1f27c54361d862002a53a6ef90a35b4ca` |
| 143 | `theorem` | [eventually_prod_nhds_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/eventually-prod-nhds-iff.md) | 809 | `result-track:0f75618842555988908250aa357b90e39bd0eca4d8e10bb1f9f57e091a2243f4` |
| 144 | `theorem` | [nhds_basis_closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nhds-basis-closedball.md) | 817 | `result-track:eac66fb15e78103c800e00dced35b4c9e4678bd451e066737abb65af5168084d` |
| 145 | `theorem` | [nhds_basis_ball_inv_nat_succ](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nhds-basis-ball-inv-nat-succ.md) | 820 | `result-track:ed899479d84f75fdf66a9e6399f5031f264bbfd5a22d30b17147803391282be5` |
| 146 | `theorem` | [nhds_basis_ball_inv_nat_pos](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nhds-basis-ball-inv-nat-pos.md) | 824 | `result-track:b2010ff5cdc804124a5871a6e40bb3b5a1479d715592f1a991218c29bff248f2` |
| 147 | `theorem` | [nhds_basis_closedBall_inv_nat_succ](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nhds-basis-closedball-inv-nat-succ.md) | 828 | `result-track:c8d9815c0d23dec43ccc2687713b5cf1cedbf1f4f2f419e41e0985287db7399d` |
| 148 | `theorem` | [nhds_basis_closedBall_inv_nat_pos](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nhds-basis-closedball-inv-nat-pos.md) | 832 | `result-track:12bc3ee3c01d364acab3611866cdfc3a3a5bad1b8ddd1476303686a7a844cbcd` |
| 149 | `theorem` | [nhds_basis_ball_pow](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nhds-basis-ball-pow.md) | 836 | `result-track:aef774e366b4e18b3f7000eb4e75667a27ca738ef152db33e0b69bb4f5a49db5` |
| 150 | `theorem` | [nhds_basis_closedBall_pow](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nhds-basis-closedball-pow.md) | 840 | `result-track:7278436109b4e52f8207538291a5b38e49acf9f7075882659aaa725479f47fa6` |
| 151 | `theorem` | [isOpen_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/isopen-iff.md) | 844 | `result-track:ca42341951d4b9aeedff0b2854ce789322ca6e7c74b223f97f5f12bb2b62ca86` |
| 152 | `theorem` | [isOpen_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/isopen-ball.md) | 847 | `result-track:477c7b568e1d83bd1f9ae52f1c3dcc05232e28c96434ac1c9b90fc332909911e` |
| 153 | `theorem` | [ball_mem_nhds](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-mem-nhds.md) | 850 | `result-track:bca1f4ad7a04e7edd538d9b859297d5e1bd02c2d9467be4aab64ef055be789ee` |
| 154 | `theorem` | [closedBall_mem_nhds](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball-mem-nhds.md) | 853 | `result-track:6802a7bea385c2fa0068a54fc4ce70cfa92cb77be63283bff5ec41f5a7985c19` |
| 155 | `theorem` | [closedBall_mem_nhds_of_mem](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/closedball-mem-nhds-of-mem.md) | 856 | `result-track:3a8ff4fbbb327115181154454d951cf778e6ea10c2c8044ac3cd50f6961ed46b` |
| 156 | `theorem` | [nhdsWithin_basis_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nhdswithin-basis-ball.md) | 859 | `result-track:2f9268259d2a6989e0a9b72ad2492447de9f1998608c509db860405abbfc139a` |
| 157 | `theorem` | [mem_nhdsWithin_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-nhdswithin-iff.md) | 863 | `result-track:fe331d79e6ad5fd7873729ef45de846c683165697fa4a6b1a0fc810e27c68207` |
| 158 | `theorem` | [tendsto_nhdsWithin_nhdsWithin](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/tendsto-nhdswithin-nhdswithin.md) | 866 | `result-track:5579bb29b3a0944c8818ca3952dab7e075690f233a3b9ab5a4e9d57e4ed67c84` |
| 159 | `theorem` | [tendsto_nhdsWithin_nhds](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/tendsto-nhdswithin-nhds.md) | 872 | `result-track:b73a4fac1a68778a3c1f06e45eff321d0f656a483515e219c6b5acfd16e9f532` |
| 160 | `theorem` | [tendsto_nhds_nhds](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/tendsto-nhds-nhds.md) | 878 | `result-track:88e2d2c038eb16e480958ba9d3950ffb2288828f0182e119f337293a2aedf1ee` |
| 161 | `theorem` | [continuousAt_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/continuousat-iff-source-edition-2.md) | 882 | `result-track:d8de3e83ece46b54287772094834c445306751859ca5eb0e07e64324aa081774` |
| 162 | `theorem` | [continuousWithinAt_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/continuouswithinat-iff-source-edition-2.md) | 886 | `result-track:ceb673f8e486069ba05a6d87a38a8c08624f63638bec4918bfd43bd16ef3ab7e` |
| 163 | `theorem` | [continuousOn_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/continuouson-iff-source-edition-2.md) | 891 | `result-track:8a40ea161cbe6ce9fead4c751d5492f66f68076a694ac71b418a87d0375143fd` |
| 164 | `theorem` | [continuous_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/continuous-iff.md) | 895 | `result-track:06195ea2c7249f141f69ae89437a66f52e90e9c309caf615bb66b2cce0cd5edc` |
| 165 | `theorem` | [tendsto_nhds](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/tendsto-nhds.md) | 899 | `result-track:388e65f4439cf9b6af9be8acd0c2d544548642e35518a2e32283422c71007d36` |
| 166 | `theorem` | [continuousAt_iff'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/continuousat-iff.md) | 903 | `result-track:1b9cc17c13feb95bdadc6b0b6f1e0cd5d5a51885b065dae46bc7a8b448bbfedc` |
| 167 | `theorem` | [continuousWithinAt_iff'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/continuouswithinat-iff.md) | 907 | `result-track:70d977aeac508e571636e70aeb7377e3289ae02e178fc143082f4035d2a03254` |
| 168 | `theorem` | [continuousOn_iff'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/continuouson-iff.md) | 911 | `result-track:3a00f7bdd2a90c4ffebae376117d16c6edbaa0fc23ca33fba9ee64673744bfec` |
| 169 | `theorem` | [continuous_iff'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/continuous-iff-source-edition-2.md) | 915 | `result-track:5a66a9ba8a458713a126683eb3ae79ab0704266ce2895d4c0967ac045d7887d7` |
| 170 | `theorem` | [tendsto_atTop](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/tendsto-attop.md) | 919 | `result-track:04b70900769f00a68d4cb3f43f118d648aada9b8312b7ea4ddd27a1a1484adab` |
| 171 | `theorem` | [tendsto_atTop'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/tendsto-attop-source-edition-2.md) | 927 | `result-track:a97ed1aa9e8cb6ed909b6f689aa7fcee947fa7ea2537e15dc7061f4aacef3937` |
| 172 | `theorem` | [isOpen_singleton_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/isopen-singleton-iff.md) | 932 | `result-track:3f2f6f4dd6afb465df57be30326bc6c57302a67dd71d1a09ee532c78aedbf62c` |
| 173 | `theorem` | [Pseudo Defs Namespaced Public](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/exists-dist-lt-source-line-936-occurrence-2.md) | 936 | `result-track:cd9e2a1a47cde48cbaf5be85b657782e6762176cb8502b9620bfbe554ee613f3` |
| 174 | `theorem` | [Pseudo Defs Namespaced Public](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/exists-dist-lt.md) | 941 | `result-track:907fc0db9f7b02fa2fdf5531fd879205f3055556ddf0e50c111384cd938463be` |
| 175 | `lemma` | [uniformSpace_eq_bot](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/uniformspace-eq-bot.md) | 947 | `result-track:50415c2ce19566e783d511c2841f3fe7b00ab92403042de8ba96f9cc0c14fe8d` |
| 176 | `lemma` | [DiscreteTopology.of_forall_le_dist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/discretetopology-of-forall-le-dist.md) | 958 | `result-track:b7baa6924214e80d6825a50c2e47930266caa0a2973229a2b23c5621c9a3d1b8` |
| 177 | `theorem` | [Metric.uniformity_edist_aux](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/metric-uniformity-edist-aux.md) | 966 | `result-track:d3f3c5a1e166c9352030d33432d97778459666dd44fa8c7339ec75afb8788122` |
| 178 | `theorem` | [Metric.uniformity_edist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/metric-uniformity-edist.md) | 978 | `result-track:5cd7b4070a1ba276ed429fe5352955d8fa0f269610ba3a05cf76e135309ceee4` |
| 179 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 984 | `declaration-track:d19df6704d47bdad0d7c8f65adb576f4dd8c082b2c41cf2c3969f3fe57363534` |
| 180 | `theorem` | [Metric.eball_top_eq_univ](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/metric-eball-top-eq-univ.md) | 996 | `result-track:326d4d1de542243f466afdf1afa0d6f8ba0dbd602434d229bed13f937b1fe684` |
| 181 | `theorem` | [Metric.eball_ofReal](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/metric-eball-ofreal.md) | 1001 | `result-track:87177ecd2e20e306527d50cc64f9399ce22bab19f1a72db3ad618b316ceb8361` |
| 182 | `theorem` | [Metric.eball_coe](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/metric-eball-coe.md) | 1008 | `result-track:66febd2d288da2dcd97d9b8b1beea7cd0058e1af89b6e9e3181135e07bc093a0` |
| 183 | `theorem` | [Metric.closedEBall_ofReal](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/metric-closedeball-ofreal.md) | 1013 | `result-track:e8ccf81385b04338ddf7cd586d0fa855db0604ab6db7d9c7df0d5d27f16fa478` |
| 184 | `theorem` | [Metric.closedEBall_coe](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/metric-closedeball-coe.md) | 1019 | `result-track:43521793ccf22c591cb30065191f6f5e711f2e95e7690674640f66457230e0d5` |
| 185 | `theorem` | [Metric.eball_top](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/metric-eball-top.md) | 1024 | `result-track:94a43ff7850a93618af2508329328a244c4b0ea95af05b816859e690ad99ffc6` |
| 186 | `abbrev` | [PseudoMetricSpace.replaceUniformity](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/pseudometricspace-replaceuniformity.md) | 1032 | `declaration-track:422b77749d170ea21ece79e512f672f396953fe8e77b688d45e512da0188c59f` |
| 187 | `theorem` | [PseudoMetricSpace.replaceUniformity_eq](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/pseudometricspace-replaceuniformity-eq.md) | 1038 | `result-track:0779d6daffc15379d076fafcc9b31c677dd3455ffb97aa6b07d4aedc3936179b` |
| 188 | `example` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/example-source-edition-3.md) | 1044 | `declaration-track:91be3e113f0f30ce2ca08383601842a657294f1a403875a3ab6cd33d8647f874` |
| 189 | `abbrev` | [PseudoMetricSpace.replaceTopology](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/pseudometricspace-replacetopology.md) | 1054 | `declaration-track:d60ece242d2addddb40f494190a8f8699f2b1cb27dc8a7afec8d9e744b4f9d12` |
| 190 | `theorem` | [PseudoMetricSpace.replaceTopology_eq](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/pseudometricspace-replacetopology-eq.md) | 1058 | `result-track:75ae40b2757faeaec7e503498ed6217584934dc8df733e52ede1c27711a9e8aa` |
| 191 | `abbrev` | [PseudoEMetricSpace.toPseudoMetricSpaceOfDist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/pseudoemetricspace-topseudometricspaceofdist.md) | 1068 | `declaration-track:37fdd0e5332593c612d29ea4958c0de91a1cc528cb65322fa67b43c980851fbb` |
| 192 | `abbrev` | [PseudoEMetricSpace.toPseudoMetricSpace](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/pseudoemetricspace-topseudometricspace.md) | 1088 | `declaration-track:615cb2040e9ac5b835392f570a1da35fb4c7e76240e3d104b781983b5a281164` |
| 193 | `abbrev` | [PseudoMetricSpace.replaceBornology](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/pseudometricspace-replacebornology.md) | 1097 | `declaration-track:370131258039bd47986f19c9761fb761be733a7129f3788bd2184303b7e5d720` |
| 194 | `theorem` | [PseudoMetricSpace.replaceBornology_eq](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/pseudometricspace-replacebornology-eq.md) | 1105 | `result-track:fc9db1c63833bfce6f1f6a740dfc321853fedb0022a2dab8d677d317fb9e00b9` |
| 195 | `example` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/example-source-edition-2.md) | 1112 | `declaration-track:89f50402154061aa04d3979f215f7b25e5b6b848f2c3ebc724cae61212d80d6b` |
| 196 | `instance` | [Real.pseudoMetricSpace](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/real-pseudometricspace.md) | 1120 | `declaration-track:44a8c8707e809f826b1a9a58b6e62625b165c9531e4ad63115c88945b29699fa` |
| 197 | `theorem` | [Real.dist_eq](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/real-dist-eq.md) | 1126 | `result-track:13894713a34cd81b40d7e74a5d3a06a4023dea8e6c737dd6d130bbdb60db3538` |
| 198 | `theorem` | [Real.nndist_eq](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/real-nndist-eq-source-edition-2.md) | 1128 | `result-track:f24147fc5e8860b6858a92ca5547377150b14493b501d31bcf28e3de3362e108` |
| 199 | `theorem` | [Real.nndist_eq'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/real-nndist-eq.md) | 1130 | `result-track:67e237e792b69cdbab317f68568058fadf6a76f44a429bdd8927ba690a869a63` |
| 200 | `theorem` | [Real.dist_0_eq_abs](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/real-dist-0-eq-abs.md) | 1133 | `result-track:b4fd74ddee6e76d857ac20fdc7551d6cd5027b6c44e0f2c14ab992233a5a4ce6` |
| 201 | `theorem` | [Real.sub_le_dist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/real-sub-le-dist.md) | 1135 | `result-track:52ff496f75e33504cc774547b7889c46017b8c0d950b214ab0a993e025c690a5` |
| 202 | `theorem` | [Real.ball_eq_Ioo](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/real-ball-eq-ioo.md) | 1139 | `result-track:df02b163ff7057eb8a5e13ab8abb2ff626e035ea635fa42197503cef0bdbe8dd` |
| 203 | `theorem` | [Real.ball_zero_eq_Ioo](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/real-ball-zero-eq-ioo.md) | 1144 | `result-track:58383698c505691c3f188490db2d8a744d2656d27b31784b3af3339e879cd400` |
| 204 | `theorem` | [Real.closedBall_eq_Icc](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/real-closedball-eq-icc.md) | 1147 | `result-track:0e96fbd227d2b85ccb8bef367e00fb144ea85e60b7b7785f097938596133d034` |
| 205 | `theorem` | [Real.closedBall_zero_eq_Icc](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/real-closedball-zero-eq-icc.md) | 1152 | `result-track:e2f1e485ec9c121f7f51fad87fc1b372eee9e1a0fe9ad5c629c1bde8dd895b7a` |
| 206 | `theorem` | [Real.Ioo_eq_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/real-ioo-eq-ball.md) | 1155 | `result-track:b1652c1da2d0c824f065c1881b50f40a3eb5e3e81d642e8027c440ac4b297c30` |
| 207 | `theorem` | [Real.Icc_eq_closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/real-icc-eq-closedball.md) | 1159 | `result-track:8833a7edd5c1593f166cef89d6c529584d0e41a7b68efff19a18a0f6482497f1` |
| 208 | `lemma` | [Real.sphere_eq_pair](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/real-sphere-eq-pair.md) | 1163 | `result-track:6afecde4b63d217f7960662e70c936b11fe8f4ccbbb1b8a3dadcdecd68f921bc` |
| 209 | `theorem` | [Metric.uniformity_eq_comap_nhds_zero](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/metric-uniformity-eq-comap-nhds-zero.md) | 1166 | `result-track:f402c7143fdf9b46dc6d3b9a32ee378d2d7102a790432fa055f1c4192d4afe71` |
| 210 | `theorem` | [tendsto_uniformity_iff_dist_tendsto_zero](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/tendsto-uniformity-iff-dist-tendsto-zero.md) | 1172 | `result-track:d6538f17c0c5db3ef67330a17a3df7a8295b279e698e40f7d73367523bdf5a93` |
| 211 | `theorem` | [Filter.Tendsto.congr_dist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/filter-tendsto-congr-dist.md) | 1176 | `result-track:804be082b1306ed608f0f95bbfb05375b42748faac0835fc48956dad7b43ca2a` |
| 212 | `theorem` | [tendsto_iff_of_dist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/tendsto-iff-of-dist.md) | 1183 | `result-track:cbbbd1391e323c5a379a05821fda98b61378d66a0d6db30f7f57610c2cf809d4` |
| 213 | `theorem` | [PseudoMetricSpace.dist_eq_of_dist_zero](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/pseudometricspace-dist-eq-of-dist-zero.md) | 1189 | `result-track:0224f7bbcb7156bc6978628b56bdecd61f6e213e22b5de5f41b542e14d3b8fd8` |
| 214 | `theorem` | [dist_dist_dist_le_left](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-dist-dist-le-left.md) | 1193 | `result-track:a30c281c8652ea0e7eb58c1fdc91535fe4b25f673fb9c984887c54288f33d7bb` |
| 215 | `theorem` | [dist_dist_dist_le_right](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-dist-dist-le-right.md) | 1196 | `result-track:f165ceb17391e9bb755fbd31ccbbf8ff5e04d6ae31ac1a59a8efe21a93347515` |
| 216 | `theorem` | [dist_dist_dist_le](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dist-dist-dist-le.md) | 1199 | `result-track:9bacdaa2c6f4c331f3bea2b1759ce1fa0621be958f40c83135505a2d4d083cf9` |
| 217 | `theorem` | [nhds_comap_dist](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nhds-comap-dist.md) | 1203 | `result-track:488cf4df6882fb2930d53f7f0c718def0666ec1cddaba474dcd21fe4632e1b5d` |
| 218 | `theorem` | [tendsto_iff_dist_tendsto_zero](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/tendsto-iff-dist-tendsto-zero.md) | 1207 | `result-track:52df81bb3231e99d119096c9683defd8acbf448169cdbef4fdfcbe2dba121625` |
| 219 | `lemma` | [mk_uniformity_basis_of_tendsto](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mk-uniformity-basis-of-tendsto.md) | 1217 | `result-track:ecf009d5e33c8c036e533d33fd79a079dc59beb8dda04555ceb503ac60c39123` |
| 220 | `theorem` | [ball_subset_interior_closedBall](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/ball-subset-interior-closedball.md) | 1227 | `result-track:50ba8d0c0448c594ff93ce2a12ccd90c64a0c745d758bacee7683949cf9b3abe` |
| 221 | `theorem` | [mem_closure_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-closure-iff.md) | 1231 | `result-track:a98f216834d2a65afd1bb0a7306deb2c79c57ca1c5fa3b836e483320872b5d8a` |
| 222 | `theorem` | [mem_closure_range_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-closure-range-iff.md) | 1234 | `result-track:69a9d7be58da7bfcefe6947727b62f5471e3d1c0489b16b34a35de1201884d14` |
| 223 | `theorem` | [mem_closure_range_iff_nat](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-closure-range-iff-nat.md) | 1238 | `result-track:046521ced70030d615497af75653f24e58784d440a6844a4f923bef896648250` |
| 224 | `theorem` | [mem_of_closed'](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/mem-of-closed.md) | 1243 | `result-track:70ffcb8717fd4e79c6e931649e4705f69b139f2cc99258fa745e5ddd88840365` |
| 225 | `theorem` | [dense_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dense-iff.md) | 1247 | `result-track:229e451f31e7bbb1222d7b1aeab024839f62b1caab1e440bd1752ffed73b8837` |
| 226 | `theorem` | [dense_iff_iUnion_ball](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/dense-iff-iunion-ball.md) | 1251 | `result-track:5184455c6404e2f3e31b7209af83aebf0f01ea1bae0f2bc58a3b05c726b42df8` |
| 227 | `theorem` | [denseRange_iff](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/denserange-iff.md) | 1255 | `result-track:98dbd900a762948fca0a60cb29785ca4c7b5a30e76e697fe1b3063357cd2c03c` |
| 228 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/instance.md) | 1262 | `declaration-track:3799e698d22cb27770288faf65be9d2b0b92ecdafe98ef6857b51cdd20ea542c` |
| 229 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 1263 | `declaration-track:c2d87aaf1617e1128d212e11c335ee9618d32159bd3e56b5a2c36531fcb840c3` |
| 230 | `theorem` | [nndist_ofMul](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nndist-ofmul.md) | 1269 | `result-track:354f6b4d707db523b85f121776fe57051ec306fa5ed965dc078615ce67199bb5` |
| 231 | `theorem` | [nndist_ofAdd](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nndist-ofadd.md) | 1271 | `result-track:67aeec3f98a2d65e7d1ec750682d1f8c62f70c2212324499d6632de3c10e239d` |
| 232 | `theorem` | [nndist_toMul](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nndist-tomul.md) | 1273 | `result-track:69ee61b8f3ef8cc2ab08fc323705e1142a82ea9dd47d7ab43a080a29294a3d30` |
| 233 | `theorem` | [nndist_toAdd](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nndist-toadd.md) | 1276 | `result-track:7a291a0521b9f9caeb629fb3e0c4b68a5ec1c371624e4f2e1c63c3a7a009aea3` |
| 234 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 1282 | `declaration-track:6563832cf6f64d24c59aed1ab61542cf44031579456fb3ef54960666d70506f4` |
| 235 | `theorem` | [nndist_toDual](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nndist-todual.md) | 1288 | `result-track:6974d13c4823ef57fd7380d163a0630a15dae1165609be115fe35c855ca6b684` |
| 236 | `theorem` | [nndist_ofDual](../../../../GeneralTopology/PseudoDefsNamespacedPublic.lean/declarations/nndist-ofdual.md) | 1290 | `result-track:f4bc3db6b4a1f150446dc432e6e8c6f56a0ab32200f5a022f4a5e41a6414cdf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6039d90f80301d361c48e9697f5bb879df37ac55bea17c407ef1aba29778df00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variantde9a7bc68d2ff7033e2f5946ff8d28edb26e2eb2a6ca2c54eda13df1dfabb43e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Defs/Variantde9a7bc68d2ff7033e2f5946ff8d28edb26e2eb2a6ca2c54eda13df1dfabb43e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
