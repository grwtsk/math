# Verification target: Convex Basic Convex Singleton

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a964161885568ef80cb9dddaf3692cf307531e74",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant1f55a21cb3c8829f4b3ad07c258031c314886ce332e5c234ef5db4889bd03240.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a964161885568ef80cb9dddaf3692cf307531e74`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant1f55a21cb3c8829f4b3ad07c258031c314886ce332e5c234ef5db4889bd03240.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Basic/Variant1f55a21cb3c8829f4b3ad07c258031c314886ce332e5c234ef5db4889bd03240.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Star` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-source-edition-2.md) | 51 | `declaration-track:8259e06455ff6f6958152b88dbaa4563d6e3117185a0280026ae404b61d71425` |
| 2 | `theorem` | [Convex.starConvex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-starconvex.md) | 57 | `result-track:292bf012946030ae94334a2e143f1b478c2551b0189fa01ebfbdd5be713c9320` |
| 3 | `theorem` | [convex_iff_segment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-iff-segment-subset.md) | 61 | `result-track:ca32688565a56f93e7735d5503b1e6cff990bae8791bf22fadfeb2c156b26918` |
| 4 | `theorem` | [Convex.segment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-segment-subset.md) | 65 | `result-track:607f07cd6983b1457a3efc8cc58092609886ad4686e4b9aeab22bbd35fb4db47` |
| 5 | `theorem` | [Convex.openSegment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-opensegment-subset.md) | 70 | `result-track:959e771065789b6fb159353037329c6031179a87b7df4fcd77590d46ed7948ae` |
| 6 | `theorem` | [convex_iff_pointwise_add_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-iff-pointwise-add-subset.md) | 76 | `result-track:e48b3983830359907cfc319108c0e7c20f4ba2ed184ced5bb0bdc17b64cc12d7` |
| 7 | `theorem` | [convex_empty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-empty.md) | 88 | `result-track:8b52010196a27b2ce3cc32ec1d08ee554263cf8632531ad6e7315e40132a064c` |
| 8 | `theorem` | [convex_univ](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-univ.md) | 91 | `result-track:8361425009d4813b9eaf89fd5831ccd7ed1c8dcbd52159ff64f376067a424a82` |
| 9 | `theorem` | [Convex.inter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-inter.md) | 94 | `result-track:3731dab7904beb53b23a304804e02ca838014d3b27a2f7992f88de0eca4b335a` |
| 10 | `theorem` | [convex_sInter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-sinter.md) | 98 | `result-track:92a917eada50c78177370a5e4423c66fc32daa6b7a0aa19d88e33bdea81ca725` |
| 11 | `theorem` | [convex_iInter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-iinter-source-edition-2.md) | 102 | `result-track:fbe133e4a99a86d26664ff4f7e007ae440f1b9ee7e36113f97f5922499573d85` |
| 12 | `theorem` | [convex_iInter₂](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-iinter.md) | 107 | `result-track:18ade694a427256af6bd06fb915890b55cb54b75bdd0a8b7bc9e745bac53027b` |
| 13 | `theorem` | [Convex.prod](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-prod.md) | 112 | `result-track:d9f152016281b449ffbd550532b3da59738cecda48d07631742b59abe40561bb` |
| 14 | `theorem` | [convex_pi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-pi.md) | 116 | `result-track:e4e721265d99809231d5c15af0db8de572f7c97bf6580c8c6c328ef23a05d570` |
| 15 | `theorem` | [Directed.convex_iUnion](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/directed-convex-iunion.md) | 121 | `result-track:6c686f1dbba19db9a32b53917c06e1214bb01dbd5a3178e5ffb9c5a1daee08df` |
| 16 | `theorem` | [DirectedOn.convex_sUnion](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/directedon-convex-sunion.md) | 131 | `result-track:54894013f37e33f7e75ca3e446745d41a80637b456d280f5f9a72829dc8a7fc5` |
| 17 | `theorem` | [convex_iff_openSegment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-iff-opensegment-subset.md) | 143 | `result-track:d3b129d93a69a79c798feb71368ccf2f24b0352c8a7e55dd509413712e9ff9e6` |
| 18 | `theorem` | [convex_iff_forall_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-iff-forall-pos.md) | 148 | `result-track:2af29f58811bc3e3b24957dce2e2a532b203eb4290f0b34e191a58d43c05dc60` |
| 19 | `theorem` | [convex_iff_pairwise_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-iff-pairwise-pos.md) | 154 | `result-track:2f1601ef0b7d223b27d2e7cfe05bee8784948ce3320eb5eb0591ce27a149315f` |
| 20 | `theorem` | [Convex.starConvex_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-starconvex-iff.md) | 163 | `result-track:91013be032ac060cddf4681b95cb1705aa912fb7958fb2714d45a1c278ee8af4` |
| 21 | `theorem` | [Set.Subsingleton.convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/set-subsingleton-convex.md) | 167 | `result-track:23e31b10297e92c8f7aa6edaa85a4c880b8d6439a769cb971815fc205fad5768` |
| 22 | `theorem` | [convex_singleton](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-singleton.md) | 171 | `result-track:5caf4632cba4aba36af55e12bf56453db4110dd184d9fa1c4b9067c6c0140aa1` |
| 23 | `theorem` | [convex_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-zero.md) | 175 | `result-track:6b13730fdc5e30250b639c73c6de084729fcea2081154fb62ba6c9a4f6d14f4a` |
| 24 | `theorem` | [convex_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-segment.md) | 179 | `result-track:440edc12528383ed59e7a0e83cf76cb1f56d6f63e885f789ca5053f62760f666` |
| 25 | `theorem` | [Convex.linear_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-linear-image.md) | 189 | `result-track:05af1458cc490aceb74d206cc582ecac1367c31456e32954ad9b35df5cbe33c6` |
| 26 | `theorem` | [Convex.is_linear_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-is-linear-image.md) | 196 | `result-track:457029011005e0e8721769ac1e06b88413ecdc8a56192685b205ebb56afc58f7` |
| 27 | `theorem` | [Convex.linear_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-linear-preimage.md) | 201 | `result-track:cfc518523285b88b566e085dd1ebd968fe258d90883289c70a66e5310574c5d2` |
| 28 | `theorem` | [Convex.is_linear_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-is-linear-preimage.md) | 208 | `result-track:2cec889c412a9039c76890d1f112fe21b01e3ae0723ac69cca0f3398a4193252` |
| 29 | `theorem` | [Convex.add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-add.md) | 213 | `result-track:712c4bcbe16e51a376abcf018e6b21cacc484789dbcd82159c70a30539dd1c35` |
| 30 | `def` | [convexAddSubmonoid](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convexaddsubmonoid.md) | 221 | `declaration-track:5c5379dfaa9e9b6f29ebc24a2df515a803abe85daf49642943b6350e80651e14` |
| 31 | `theorem` | [coe_convexAddSubmonoid](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/coe-convexaddsubmonoid.md) | 228 | `result-track:1b800ecebd78885f7a967feb00eaa11145918d87c7a284052c9ff00bf8722785` |
| 32 | `theorem` | [mem_convexAddSubmonoid](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/mem-convexaddsubmonoid.md) | 235 | `result-track:92652b20e23b38ee30874e0ebdbede730dd08f5fb9c734346a7c81dc00d39abf` |
| 33 | `theorem` | [convex_list_sum](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-list-sum.md) | 239 | `result-track:60ed7adc4d59cc7f58840137d24e8a11debf054b9891114395c97c684e287d3d` |
| 34 | `theorem` | [convex_multiset_sum](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-multiset-sum.md) | 243 | `result-track:96eb8bbe26b272f06fcc8fc12ca63c2f64802bb9960b86416f36873ad2c48a63` |
| 35 | `theorem` | [convex_sum](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-sum.md) | 247 | `result-track:c18f4cbc3b73d3a42891de41969058a919b262454b0013bd498b8d9a5e495c4c` |
| 36 | `theorem` | [Convex.vadd](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-vadd.md) | 252 | `result-track:1704a7b58a5e9bab10749b1bea63e5dca0d4d5b4f7e3c15b49b59d3a9064f0ac` |
| 37 | `theorem` | [Convex.translate](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-translate.md) | 257 | `result-track:6399f2ebdd9297229aab9f3d0868ac406fec8059f6730010884a14ec17e1ac18` |
| 38 | `theorem` | [Convex.translate_preimage_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-translate-preimage-right.md) | 262 | `result-track:c2e280d271784257fdbaa4196bbfec7b889f76ada538ddacaa1b28ad33bed331` |
| 39 | `theorem` | [Convex.translate_preimage_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-translate-preimage-left.md) | 270 | `result-track:c47c190a4e105619944f9cb17afead273ebd5011de194b272ad31295cb39acb1` |
| 40 | `theorem` | [convex_Iic](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-iic.md) | 279 | `result-track:f0a79fb522e129b010373942bf5fde9fd9a1c3e8ea545fb65ae0a73f6f55c667` |
| 41 | `theorem` | [convex_Ici](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-ici.md) | 286 | `result-track:18d70ea90098170e5750730d08e0cc76554bae80fb5699b90b6dc57d61c592a9` |
| 42 | `theorem` | [convex_Icc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-icc.md) | 290 | `result-track:9e4a626a1e84d2d0d869d161ed6638fb193294c1f181605aa12aa1d673d20d25` |
| 43 | `theorem` | [convex_halfspace_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-halfspace-le.md) | 294 | `result-track:6f7a327133c095b08730f67c5e3c47de14517977ca9b6e9af8a18c206cba3685` |
| 44 | `theorem` | [convex_halfspace_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-halfspace-ge.md) | 298 | `result-track:2bbcd05969afb929b21f96bbcbc0b7d133866e0f39397e166a837e8aa2d2f484` |
| 45 | `theorem` | [convex_hyperplane](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-hyperplane.md) | 302 | `result-track:bc89d9eaace84285bbd2f542dbe60e83a95ec6ef815b97016f50a87e924cb804` |
| 46 | `theorem` | [convex_Iio](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-iio.md) | 313 | `result-track:825a89dfdfb4246b09eb4921ed5efc9ca129e880499f7d4dc3650df14260e545` |
| 47 | `theorem` | [convex_Ioi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-ioi.md) | 325 | `result-track:729c55df9b18802d9f0db9986aff0758c9cc41effe1c13cab11cad739c9c9352` |
| 48 | `theorem` | [convex_Ioo](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-ioo.md) | 329 | `result-track:f7785664db1fcf59c019a5982cf26666d18b3f665ff8b6da682c4b5742138e7d` |
| 49 | `theorem` | [convex_Ico](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-ico.md) | 333 | `result-track:1b863ba93d90c41d469cf42da18841195a1db48e439f4817a98455aaeb9f9643` |
| 50 | `theorem` | [convex_Ioc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-ioc.md) | 337 | `result-track:cb665535b05f2193fcf5c3559b57fc6d4f9ea5d89acb1e9924ed75da96f1b22c` |
| 51 | `theorem` | [convex_halfspace_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-halfspace-lt.md) | 341 | `result-track:e248db1e7ea5992eb24aa1d269ab7f8e2c5b592254174cc6c21f2c4b4658b4f0` |
| 52 | `theorem` | [convex_halfspace_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-halfspace-gt.md) | 345 | `result-track:fcdf14cab6ddb4b2e638b234334116f39354acfeda0a514a0176cc83a6eb704e` |
| 53 | `theorem` | [convex_uIcc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-uicc.md) | 355 | `result-track:07ef5df586e004959cd8d59aee1aba9b4f00505bbe32cb5e58f1b81e5fa7f5cb` |
| 54 | `theorem` | [MonotoneOn.convex_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/monotoneon-convex-le.md) | 370 | `result-track:39a4e31f747386b6c45aecc18d65c99df5e767b41994762f2cefe3f28aafc457` |
| 55 | `theorem` | [MonotoneOn.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/monotoneon-convex-lt.md) | 377 | `result-track:debc9668722c8e1d136d348a399e151413fc153d6fdde0139db41eab35cae665` |
| 56 | `theorem` | [MonotoneOn.convex_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/monotoneon-convex-ge.md) | 385 | `result-track:7944a50c1d3e96b0fc85188dd5debf43b7a87c5d7be328d6bd52f42952d97cad` |
| 57 | `theorem` | [MonotoneOn.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/monotoneon-convex-gt.md) | 390 | `result-track:77d1ccdb75db78d069e4c1fe798fee502f348f0928c673c0736ab780175d4e07` |
| 58 | `theorem` | [AntitoneOn.convex_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/antitoneon-convex-le.md) | 395 | `result-track:3a39e30d701b41360d409c92e2fc6e362dcceb49f9a19b018be176fe487ded8e` |
| 59 | `theorem` | [AntitoneOn.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/antitoneon-convex-lt.md) | 400 | `result-track:dc1aab6c2f469e406b7cdca890a27b8204f41731abc0ffeb1350ff6ae3e03a05` |
| 60 | `theorem` | [AntitoneOn.convex_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/antitoneon-convex-ge.md) | 405 | `result-track:b2eb5f1a4cf31b5e9f4c160bf1816b748a9d42ad48fc5216b56c351c3147763a` |
| 61 | `theorem` | [AntitoneOn.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/antitoneon-convex-gt.md) | 410 | `result-track:5bc5cafeead42f3df942b760c0f31c67a3c45df96f84061ea9f7f1458a86bf92` |
| 62 | `theorem` | [Monotone.convex_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/monotone-convex-le.md) | 415 | `result-track:5139a0b73a6f725c6bc9ad3a3a667827999357467c5005e1a2703080cb6a2795` |
| 63 | `theorem` | [Monotone.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/monotone-convex-lt.md) | 419 | `result-track:4b696d4c8f8ad9933898d555a8a10d7639b6ea7fc660eb6030092df83a446db1` |
| 64 | `theorem` | [Monotone.convex_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/monotone-convex-ge.md) | 423 | `result-track:2f8625c7d967c941206d876c10c5c3eb43eff51f8feef4ee5d461c49b2afe012` |
| 65 | `theorem` | [Monotone.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/monotone-convex-gt.md) | 427 | `result-track:53a8e9154e77c8c7cd138afef2d3207c4fb651f3618a755ded5a689adbff6d4c` |
| 66 | `theorem` | [Antitone.convex_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/antitone-convex-le.md) | 431 | `result-track:5f17896cdc1fc313205f04728fea1be2e4583fada9b16c221f377e7deab1a9a0` |
| 67 | `theorem` | [Antitone.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/antitone-convex-lt.md) | 435 | `result-track:99ce49e6f23b27c402494930e094588335ca8032f56c221c5016a82a24b84b3d` |
| 68 | `theorem` | [Antitone.convex_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/antitone-convex-ge.md) | 439 | `result-track:3180bf59d1e4f18f4ce824e078295e985b4906ce62856fd0cd40756160a8822c` |
| 69 | `theorem` | [Antitone.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/antitone-convex-gt.md) | 443 | `result-track:a3bcc32a139cf34f569d060d55ae50b0bf98db1154efb8d9d11d75ee82e4eede` |
| 70 | `theorem` | [Convex.smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-smul.md) | 459 | `result-track:78c0932d3fc1c061f05adfc1e53758f250c801d21c06f1d0c7a0f8b82aef3587` |
| 71 | `theorem` | [Convex.smul_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-smul-preimage.md) | 463 | `result-track:2da767100af068ecbfc401bf016807eabc56c3be5c2600624197160c659e07c1` |
| 72 | `theorem` | [Convex.affinity](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-affinity.md) | 467 | `result-track:7a5858fd3e52b5ad08f26dc21aaeb31618435c594794b002caf4e90b490604af` |
| 73 | `theorem` | [convex_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-opensegment.md) | 479 | `result-track:b360717f982798880e56d519fcef68d4aa479de3aef788fcf9eda7a4c83d792b` |
| 74 | `theorem` | [Convex.add_smul_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-add-smul-mem.md) | 497 | `result-track:546fd007a53fbc5dc403a38535eeb9fcac5b3accb234ff516b9679d5b626836d` |
| 75 | `theorem` | [Convex.smul_mem_of_zero_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-smul-mem-of-zero-mem.md) | 505 | `result-track:a6889f0f7e80470b8fd002dc6a6f5b388274643d66c77e3f51066acc1270fdf2` |
| 76 | `theorem` | [Convex.mapsTo_lineMap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-mapsto-linemap.md) | 510 | `result-track:db2cf7d5cc51e959b2f3fd73920151621fd2c936b9caa0e45acef9e9d24c18a9` |
| 77 | `theorem` | [Convex.lineMap_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-linemap-mem.md) | 514 | `result-track:755fe604c5a0411cdd378d043f56b81e1f722ea8cfd599bc5d5ec4199f90842c` |
| 78 | `theorem` | [Convex.add_smul_sub_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-add-smul-sub-mem.md) | 518 | `result-track:987f2da1a4a33077d0a9604f822550d009d4dbdd342a3d6a501b08da510b0f15` |
| 79 | `theorem` | [AffineSubspace.convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/affinesubspace-convex.md) | 525 | `result-track:f0066b388721120ae829d5ebf212775da3c5619bf5bb302d60d489faa52df524` |
| 80 | `theorem` | [Convex.affine_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-affine-preimage.md) | 532 | `result-track:8a64e089e27b5623cea74d82bea11d7188421af573f6dc893493ae9f521d7968` |
| 81 | `theorem` | [Convex.affine_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-affine-image.md) | 537 | `result-track:1cc053d1f1ef7b125181ad5b2bcbf197cf05b19d468156262bd82d2873da6bba` |
| 82 | `theorem` | [Convex.neg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-neg.md) | 542 | `result-track:d76a50d8b595e4046bb663d3970f1d6bbe6fc539d758e2b0ba3e18e55225ca6b` |
| 83 | `theorem` | [Convex.sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-sub.md) | 546 | `result-track:d9e9a195723bc1580e9c6bc8a7c71cee3b67921eff81ef4bd40f7c76667705bb` |
| 84 | `theorem` | [convex_iff_div](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-iff-div.md) | 564 | `result-track:42dc82e3ec2c785586a1e2cf19c79d50a452af18b59a778aaf153e0f632161e9` |
| 85 | `theorem` | [Convex.mem_smul_of_zero_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-mem-smul-of-zero-mem.md) | 570 | `result-track:31caa31b072dd7638d29a978e8d47855dcabd3fceacbf5e9b6c365e350c026a8` |
| 86 | `theorem` | [Convex.exists_mem_add_smul_eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-exists-mem-add-smul-eq.md) | 576 | `result-track:c6adb6f9069efee5e3ec298d0a3ba3f3e6d99db84922bda082ba56ba1a9c5b02` |
| 87 | `theorem` | [Convex.add_smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-add-smul.md) | 585 | `result-track:b886462df7e49f606872d4dede5c1f1f93f63aed0608af4473cd224d6940a96c` |
| 88 | `theorem` | [Set.OrdConnected.convex_of_chain](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/set-ordconnected-convex-of-chain.md) | 603 | `result-track:2047c3099c67feb8fc369684f1fe0e8c5f1376d0e7dce729a6f4387de8d85ee6` |
| 89 | `theorem` | [Set.OrdConnected.convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/set-ordconnected-convex.md) | 612 | `result-track:68d0624be0414e12fe1108ad880eac0a42de098a9268418617b51d00e4be7602` |
| 90 | `theorem` | [convex_iff_ordConnected](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-iff-ordconnected.md) | 617 | `result-track:342761f15350c3a9abea9138c9e17f458d7e9389cfe8030f9b0282823930304b` |
| 91 | `theorem` | [convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex.md) | 633 | `result-track:1cecbc640fc18e7b66ab0e35c7b9e826e40c233bd5dfa660b7a9a657fd0996b2` |
| 92 | `theorem` | [starConvex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/starconvex.md) | 638 | `result-track:1ad3431466dbf731cf30e6688bbf78026f7ff126b9a82d199a09235cefc0c759` |
| 93 | `def` | [stdSimplex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/stdsimplex.md) | 653 | `declaration-track:bc9003c22018baadc91c3e00c2b7d127d9855e88aea69a4108bb8b75fe315384` |
| 94 | `theorem` | [stdSimplex_eq_inter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/stdsimplex-eq-inter.md) | 657 | `result-track:8de49dc5479e50384443570abe84669ab7c81a1d2b7fe89909c99b1376490fec` |
| 95 | `theorem` | [convex_stdSimplex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/convex-stdsimplex.md) | 662 | `result-track:e878ac377b1cc9686e207fc55139621e5e1767a8a8740ee22feccb10d6fc7dda` |
| 96 | `theorem` | [ite_eq_mem_stdSimplex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicConvexSingleton.lean/declarations/ite-eq-mem-stdsimplex.md) | 674 | `result-track:e7feaf54bc4754b67d0321c699c3a4e327c980b2159c8822cb38ffa1e05cef37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce44c02edc25888bbff2ad23da01301020ac8424cab6683efbef4ce60e9fcf31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant1f55a21cb3c8829f4b3ad07c258031c314886ce332e5c234ef5db4889bd03240.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Basic/Variant1f55a21cb3c8829f4b3ad07c258031c314886ce332e5c234ef5db4889bd03240.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
