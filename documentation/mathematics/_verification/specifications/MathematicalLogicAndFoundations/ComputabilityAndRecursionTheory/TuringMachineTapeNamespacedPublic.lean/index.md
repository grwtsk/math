# Verification target: Turing Machine Tape Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2bcf74c500c7697abb1fb74ac0723d5693e9f89",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2bcf74c500c7697abb1fb74ac0723d5693e9f89`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean.json)

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
| 1 | `def` | [BlankExtends](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/blankextends.md) | 51 | `declaration-track:13cde2ca89799743e93e4ce7cee4d801b7cfb1d294104c7b65172ace3c81ac6a` |
| 2 | `theorem` | [BlankExtends.refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/blankextends-refl.md) | 55 | `result-track:c8f766bc4a8938ba08e173425450ad1cb4576599a86a0b5098926d1d499e01f3` |
| 3 | `theorem` | [BlankExtends.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/blankextends-trans.md) | 59 | `result-track:0af385f5cfa3fbdf076ce5d993ac1d58da14a9d102ca8f842974f305114df661` |
| 4 | `theorem` | [BlankExtends.below_of_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/blankextends-below-of-le.md) | 64 | `result-track:a1be0b8836c9e1ed97cd1dcfa7abf6f1a428828fe307deb705dc0f5a6150f758` |
| 5 | `def` | [BlankExtends.above](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/blankextends-above.md) | 72 | `declaration-track:e0d794a3e23c3e8f7823104bd21d745dc9262f815689a2470f54d52bc00df795` |
| 6 | `theorem` | [BlankExtends.above_of_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/blankextends-above-of-le.md) | 77 | `result-track:6e64d167b2ee90102c62adb4fbde768583f41e353d8da02e4c6eddd752bb2f37` |
| 7 | `def` | [BlankRel](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/blankrel.md) | 88 | `declaration-track:029bd0b3fd020b6c90d96cf8cf500919987356196dd8533fe43b24bc24226da9` |
| 8 | `theorem` | [BlankRel.refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/blankrel-refl.md) | 92 | `result-track:beb380c8a52716cd982950276e6115d538a0209247d67964efbf090245253d1e` |
| 9 | `theorem` | [BlankRel.symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/blankrel-symm.md) | 96 | `result-track:765ac02602a7e06d3bd1679f3b18820f2b87929dfb3b9b907469a3b20c5d7f52` |
| 10 | `theorem` | [BlankRel.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/blankrel-trans.md) | 100 | `result-track:b6e61dd2fd01aa10549fdc77943cd2671ebb008414a073bfda98f279bb2aad1c` |
| 11 | `def` | [BlankRel.above](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/blankrel-above.md) | 105 | `declaration-track:3782d1382dbc4a4167599bad93c8c5f956f4006366963fb6cf2f33180a4881db` |
| 12 | `def` | [BlankRel.below](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/blankrel-below.md) | 114 | `declaration-track:2d3136e6b73c4d5a59c695ffbc1ecc45e860a54bfc1f576022d1ebda60bac8f9` |
| 13 | `theorem` | [BlankRel.equivalence](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/blankrel-equivalence.md) | 122 | `result-track:bcc11bc74a0fefdec5c9ab0602b077c21d54dcae72bb11c900d8349e727e41ae` |
| 14 | `def` | [BlankRel.setoid](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/blankrel-setoid.md) | 127 | `declaration-track:c47f88841656bce50ea8ef8d4e5adbb5c425aca37619be33188b195494c9df7b` |
| 15 | `def` | [ListBlank](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank.md) | 133 | `declaration-track:343ceda3e45155a1a52cf113eb511e45b0c5511ed064238be20913402e6c38e8` |
| 16 | `instance` | [ListBlank.inhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-inhabited.md) | 136 | `declaration-track:527e0ae02564daff2acd31bb14fd620897837bbc0d72bd4c1e712f1e07990cde` |
| 17 | `instance` | [ListBlank.hasEmptyc](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-hasemptyc.md) | 139 | `declaration-track:e74576d2f9766c65fcb860e5631820fdbd14cb45513a5cc4c88fc5570049218c` |
| 18 | `abbrev` | [ListBlank.liftOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-lifton.md) | 144 | `declaration-track:3b3b56e9a0dff6f10f7708af857d3f7fa3c43f78125a6158c0ee58ffd665bbfd` |
| 19 | `def` | [ListBlank.mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-mk.md) | 149 | `declaration-track:8c0185aaf4f60fbfae3f1c7eebb59185c41583f9c13c714937c3152cc9d915a7` |
| 20 | `theorem` | [ListBlank.induction_on](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-induction-on.md) | 153 | `result-track:94af4fc8b82ce86574007248618e8642b4974494adcc69f5844fca74ce0e2569` |
| 21 | `def` | [ListBlank.head](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-head.md) | 158 | `declaration-track:0c505dd308d01c624c788ee1d491ca9ed67903e32fc498192c4afe23e64cffd6` |
| 22 | `theorem` | [ListBlank.head_mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-head-mk.md) | 166 | `result-track:464f0eeaa309880bbe72ceeecfaabd182ec0df7c075a8afff38fd0ea6dd8e016` |
| 23 | `def` | [ListBlank.tail](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-tail.md) | 171 | `declaration-track:81504784311d372d84289006f1446004a419daa943f08aa4440073ada990a3b9` |
| 24 | `theorem` | [ListBlank.tail_mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-tail-mk.md) | 180 | `result-track:28036d0c57f1582152136ae75c9456f86c110c741bff2bda22d82bd19960a767` |
| 25 | `def` | [ListBlank.cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-cons.md) | 185 | `declaration-track:47638beebed7216a5593f7e9ab26a1964d18b39a9bf06998dc1513444b13c38e` |
| 26 | `theorem` | [ListBlank.cons_mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-cons-mk.md) | 191 | `result-track:7a9590d6321a262f7dbdb3d9a338019a97840c10e52d58fb2c7db71d27a6fa51` |
| 27 | `theorem` | [ListBlank.head_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-head-cons.md) | 196 | `result-track:3d2b00d897dad8700bde195eb7a88cbeeb50b3e293ef75b63cba8c59b1de28ee` |
| 28 | `theorem` | [ListBlank.tail_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-tail-cons.md) | 200 | `result-track:c494909544bd0d2568f2ecbb5a025cbe51e746c3aba91f340e273ca1cca255c8` |
| 29 | `theorem` | [ListBlank.cons_head_tail](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-cons-head-tail.md) | 206 | `result-track:b93e13602dc4f847baad5162c7a332b8e7a5237d407d6645bafb9b43544ce8fa` |
| 30 | `theorem` | [ListBlank.exists_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-exists-cons.md) | 215 | `result-track:0876e6daff98a4b8638eb1d6266db0e53f7ad797815636825334cfd6d791a306` |
| 31 | `def` | [ListBlank.nth](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-nth.md) | 220 | `declaration-track:54be58cf86f71deda3cecfe7c75fa88268d69609dd3b0033b0fea56b0c199acc` |
| 32 | `theorem` | [ListBlank.nth_mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-nth-mk.md) | 231 | `result-track:41c1ec9ebe8c2e3586841d62d6a6725a2f92b57f36c4c4709d228ec5ab197514` |
| 33 | `theorem` | [ListBlank.nth_zero](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-nth-zero.md) | 236 | `result-track:07a86f53cd80b984f80a998b3ad643b4d3082e5afa35c9070edc468eda575e86` |
| 34 | `theorem` | [ListBlank.nth_succ](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-nth-succ.md) | 242 | `result-track:75c6249c25c2c0711fea46b3ba4ed33b0c9b36d16aceab78ee4e5eb7cdbbcae3` |
| 35 | `theorem` | [ListBlank.ext](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-ext.md) | 249 | `result-track:0f8d58d3d63a2b9c3375b59a8e3d40e697e9d190b3df273c0a1fe40759089c45` |
| 36 | `def` | [ListBlank.modifyNth](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-modifynth.md) | 267 | `declaration-track:f22dbfd066d01101b293ee89cd51508193b479d99cfe6029940ccbac95a4c156` |
| 37 | `theorem` | [ListBlank.nth_modifyNth](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-nth-modifynth.md) | 271 | `result-track:ae724a9ea8ec8708cab7a2243d44b035d800e33988f2db979de885b031a0eebf` |
| 38 | `structure` | [PointedMap.](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/pointedmap.md) | 284 | `declaration-track:19fd0fb03487cde0f9170ec331be4c75c72d06e6b245936091475e80b9e8b16d` |
| 39 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/instance.md) | 290 | `declaration-track:6ba14b0bbe4dadd7e444773852b601e5fe23cbc0df06beb7fecc1060ea7d49a6` |
| 40 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 293 | `declaration-track:a65178720c16276709cffb06fb4f0031b635353892db31dda78471de0ffdad90` |
| 41 | `theorem` | [PointedMap.mk_val](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/pointedmap-mk-val.md) | 296 | `result-track:b358785b39ab1f536929f9a432a4c9fc3930256caf6a28cbbaf2bcd3a6468404` |
| 42 | `theorem` | [PointedMap.map_pt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/pointedmap-map-pt.md) | 301 | `result-track:e24069e9325bf68fa664b3fbd382b24c21e9cd81f0a34adb078fa10f630e741b` |
| 43 | `theorem` | [PointedMap.headI_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/pointedmap-headi-map.md) | 306 | `result-track:e84f61e59a73de4ad2fc74d52b9a29775e5401ed2b01f34a34c1c0d557dfe8d1` |
| 44 | `def` | [ListBlank.map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-map.md) | 312 | `declaration-track:c58450d6508174e647e2421b1f679c4c752ce114e90df393e3eb36301af846dd` |
| 45 | `theorem` | [ListBlank.map_mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-map-mk.md) | 319 | `result-track:2ef6100fb617afeba868b9e84f3e70110588a3341ab54f06b5a51741645a41d3` |
| 46 | `theorem` | [ListBlank.head_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-head-map.md) | 324 | `result-track:940f4e49646d2f693e0487e6b5f873762c35ab22cb435585c3cabbe8acc2b554` |
| 47 | `theorem` | [ListBlank.tail_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-tail-map.md) | 331 | `result-track:6903da84d0910fa6e308c071eb4ecf8ab11429e794edacfb805fb881cbe5a679` |
| 48 | `theorem` | [ListBlank.map_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-map-cons.md) | 338 | `result-track:eb4a7d3e602f26a665e8d9893d20cdee7241fba600f058c98f3c13196f9109ed` |
| 49 | `theorem` | [ListBlank.nth_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-nth-map.md) | 344 | `result-track:59346629f8accbc4a439613a0644d2e1920ce29cdb06297b902650c6b951e0c0` |
| 50 | `def` | [proj](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/proj.md) | 352 | `declaration-track:435f7cfb7e20b9ff083f5890c592424de13095c9df3a7dd88469f7a634706944` |
| 51 | `theorem` | [proj_map_nth](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/proj-map-nth.md) | 356 | `result-track:765fb2ccf1b5a11e99453fdd115ad91810d8c549d984f03b5a07964254427c65` |
| 52 | `theorem` | [ListBlank.map_modifyNth](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-map-modifynth.md) | 360 | `result-track:9e00798bc2a39373d9fd512e54f0948a4aa172a8cd71b7549a3af8700db81851` |
| 53 | `def` | [ListBlank.append](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-append.md) | 368 | `declaration-track:4902b039693702dead06bcee2e6bd7581402963bde5bdfd1b993cb2f4e8a74f9` |
| 54 | `theorem` | [ListBlank.append_mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-append-mk.md) | 373 | `result-track:27937e1eab98895c0c4eea9254392dcaebdd091f34d2a6ca2df71ea94bb4860d` |
| 55 | `theorem` | [ListBlank.append_assoc](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-append-assoc.md) | 378 | `result-track:93b6d4cf9b2cffaf4bac95040e717fe394402c219750527bc73a06546e548410` |
| 56 | `def` | [ListBlank.flatMap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-flatmap.md) | 385 | `declaration-track:ce667199bda5d4fd16f7f4279261d0b7e4b45862fd7707cb17838b1a1979cd84` |
| 57 | `theorem` | [ListBlank.flatMap_mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-flatmap-mk.md) | 397 | `result-track:bd4ff0b57d165679f48cbeef30e1f7c8573d11ca50a5044d633a22fa0a25bf9b` |
| 58 | `theorem` | [ListBlank.cons_flatMap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/listblank-cons-flatmap.md) | 403 | `result-track:dc6226de93743d5e75bd70875e5e574320dec73ebf7142a9489c0bc361ab6d9d` |
| 59 | `structure` | [Tape](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape.md) | 416 | `declaration-track:62b7328c8ed05e65bec40526ac56f91115784f20c87bddf359a659aa3af224bd` |
| 60 | `instance` | [Tape.inhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-inhabited.md) | 424 | `declaration-track:a372e1b1b86fc29bcd38dff1838013f7e768c4731b8d578ba46f379275e3b419` |
| 61 | `inductive` | [Dir](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/dir.md) | 429 | `declaration-track:09a0a20406bc88c86691f37599293a9ca6d6ec55351c7ce303b199800d23ca04` |
| 62 | `def` | [Tape.left₀](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-left.md) | 435 | `declaration-track:fce8a80cfaa492d629c73d467720dabd52d7238b73e1bc82a4940a8bb9d3eb97` |
| 63 | `def` | [Tape.right₀](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-right.md) | 439 | `declaration-track:c497fcf02586718747aee899ac3ce0ebc4813a0248d7d5e6909876be0e32f6de` |
| 64 | `def` | [Tape.move](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-move.md) | 444 | `declaration-track:0eb22e0799ed692641115cce0f1153c0f1e4d07cc653193a81fe9cc147e6dcd2` |
| 65 | `theorem` | [Tape.move_left_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-move-left-right.md) | 449 | `result-track:44fe379a85da60463c9aef75f572b6787f4d5f5a5884677e0f2e2b9223fd8bfa` |
| 66 | `theorem` | [Tape.move_right_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-move-right-left.md) | 454 | `result-track:aab8e1b96d726537ef2fa3b82f0d8aaa3a5f85c4cf4cdea14a6964d9ce0064d6` |
| 67 | `def` | [Tape.mk'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-mk-source-edition-3.md) | 459 | `declaration-track:e65e6f2f8d37aaefaf5f1661f8e9e066725c6e46aeb9399bc4a2f7f28f6c625b` |
| 68 | `theorem` | [Tape.mk'_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-mk-left.md) | 463 | `result-track:1317457ea53022cbcbd2cbb57aea03365192de184f908ef2c939af520c1024f0` |
| 69 | `theorem` | [Tape.mk'_head](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-mk-head.md) | 467 | `result-track:7d65813f85dc0ad2899be038be46b761acc058c3979850357b35cb6041ceb9f0` |
| 70 | `theorem` | [Tape.mk'_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-mk-right.md) | 471 | `result-track:08541f0d698313ac0f152ac113255b2917b034181e9682b9bd71152c01371b61` |
| 71 | `theorem` | [Tape.mk'_right₀](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-mk-right-source-edition-2.md) | 475 | `result-track:cdf421cc698e791e5129523e6ea17a5e11f3c0432e12d5f137dfaf5aab369148` |
| 72 | `theorem` | [Tape.mk'_left_right₀](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-mk-left-right.md) | 479 | `result-track:d73298a87e39db0c2e49207d3752962f280e7b6e8f3f01ae8ca7becb5c353ae3` |
| 73 | `theorem` | [Tape.exists_mk'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-exists-mk.md) | 482 | `result-track:d01914e0f0ec3ceb1de648e6ab5a96f37a2da5b2c80436a88be2c79d7ab1f1a3` |
| 74 | `theorem` | [Tape.move_left_mk'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-move-left-mk.md) | 486 | `result-track:9e786438e10996fbc10d94ab548c41608b94135f427825de139b46aaefad64b8` |
| 75 | `theorem` | [Tape.move_right_mk'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-move-right-mk.md) | 492 | `result-track:e02d91c7afc887a5d1d712068600987725ec713dcb2a13073dc10b453906a28f` |
| 76 | `def` | [Tape.mk₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-mk-source-edition-2.md) | 497 | `declaration-track:e11c42e6672c499c4b79def8eb9ccaae7f3779b3cb477d632ebc3377a835f7e5` |
| 77 | `def` | [Tape.mk₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-mk.md) | 502 | `declaration-track:2ea94bee93c452a67831727746d8e3b181fca38e376501e7f17495c2774eb473` |
| 78 | `def` | [Tape.nth](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-nth.md) | 507 | `declaration-track:7df3e8dc781e36f64ff634491c081c20eed580da6c4ccc60097f76958a36732b` |
| 79 | `theorem` | [Tape.nth_zero](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-nth-zero.md) | 513 | `result-track:f6dece3f78bae59be202d64cb8ad984cf892a52c6cca62df37ac659346f97fcd` |
| 80 | `theorem` | [Tape.right₀_nth](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-right-nth.md) | 516 | `result-track:5799c9702d5513a602bf7096726470df4c03f58eba680fdb2ecf42be125f599e` |
| 81 | `theorem` | [Tape.mk'_nth_nat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-mk-nth-nat.md) | 521 | `result-track:5a64e5389debebbf36a964f3ef11ff0466c592199a7a90f458b9a1b37b3b3ff2` |
| 82 | `theorem` | [Tape.move_left_nth](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-move-left-nth.md) | 526 | `result-track:86d604a8e6dea906762337833ce5003ee80fd06e54bfc4f09a6faf46098a1294` |
| 83 | `theorem` | [Tape.move_right_nth](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-move-right-nth.md) | 537 | `result-track:e6d1381d00d96ca231ae64fb7e27ea7d69614c613a277621a50e8a32ccb62e6c` |
| 84 | `theorem` | [Tape.move_right_n_head](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-move-right-n-head.md) | 543 | `result-track:25c75c3d2cd8b0cbbce60d8e0b599190a0666e42acdfff1e2547effa9ce4b483` |
| 85 | `def` | [Tape.write](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-write.md) | 550 | `declaration-track:eba38203c1538fcbcfdb177470bf2238874e230549f38ec340855f1c1c5c4d8a` |
| 86 | `theorem` | [Tape.write_self](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-write-self.md) | 554 | `result-track:709dfb04ff58bdf8de7b5e4667873acc4aba24aa5a1753d42a9c8438ada852fe` |
| 87 | `theorem` | [Tape.write_nth](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-write-nth.md) | 558 | `result-track:b518405aa686ad7ff11ce10208463457542b4e230fbea5c25612252dfa1ba7d1` |
| 88 | `theorem` | [Tape.write_mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-write-mk.md) | 565 | `result-track:cacef093f4846311739321b29c7a885a417ad57170fd6efe40d19a3d9022fef5` |
| 89 | `theorem` | [Tape.write_mk'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-write-mk-source-edition-2.md) | 569 | `result-track:e5a634c9cb0ba4864e6c1761350450f63d663ef8b79a2960d9232bc4e5c7b4d0` |
| 90 | `def` | [Tape.map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-map.md) | 573 | `declaration-track:f3d2d136c4a64884a0ba5833110823040c7fabfb0e79aa2cf312acf5762f60a1` |
| 91 | `theorem` | [Tape.map_fst](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-map-fst.md) | 577 | `result-track:5861f18fe3b753a429cdd869229ba55d8f74aa55130bceadc78f87a0113da7e7` |
| 92 | `theorem` | [Tape.map_write](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-map-write.md) | 582 | `result-track:c538c9ee5ddfbfb9fc1ef9e5352f8708a80b056dbd54ed893f44051a2865ad1d` |
| 93 | `theorem` | [Tape.write_move_right_n](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-write-move-right-n.md) | 587 | `result-track:453140348240caea3ffe02197f97ebf81e35250e51b8562e9af696fa38397482` |
| 94 | `theorem` | [Tape.map_move](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-map-move.md) | 592 | `result-track:2ad58db1c9206b91075d45f8d8e4c0999ce905a80ff7c814e297021d7b0e4440` |
| 95 | `theorem` | [Tape.map_mk'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-map-mk-source-edition-3.md) | 598 | `result-track:de6766413806359d9c31712be9225e676770766b371a76ea2b085e31af15053c` |
| 96 | `theorem` | [Tape.map_mk₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-map-mk-source-edition-2.md) | 603 | `result-track:c1104d2334691ad87f6db6127085cc3677aeb8d391576f1e84e8d83a334d087a` |
| 97 | `theorem` | [Tape.map_mk₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineTapeNamespacedPublic.lean/declarations/tape-map-mk.md) | 607 | `result-track:b0e69be44779e844d3754f2ec290dde9e653cba3cab66b7eeab624e16ab16196` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f3cb33b2b9980c7f26ee2bda73d2b94c7fdac4ad3347e77ce107a8462480793 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
