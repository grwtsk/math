# Verification target: Diffeomorph

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "580997ba3ae378113e1ed2f2cf5d817c247fd0be",
  "lexical_observation_count": 102,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variantdc73e09e3c104d9971b1da03868c8cc193b955f6c4e7d758b77f43ec9c9de6ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/Diffeomorph.lean/index.md) · [Full source](../../../../DifferentialGeometry/Diffeomorph.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `580997ba3ae378113e1ed2f2cf5d817c247fd0be`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variantdc73e09e3c104d9971b1da03868c8cc193b955f6c4e7d758b77f43ec9c9de6ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Diffeomorph/Variantdc73e09e3c104d9971b1da03868c8cc193b955f6c4e7d758b77f43ec9c9de6ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiffMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.UniqueDifferential` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Diffeomorph](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/diffeomorph.md) | 77 | `declaration-track:138a96753dae8051c8ad7516a4084dc71ccd69a6a87eae950740a133ada5905a` |
| 2 | `theorem` | [toEquiv_injective](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/toequiv-injective.md) | 97 | `result-track:6e8d0134f82339a2bdadbfa8fa7d5ccad0ff4b4c5e2c0c95c87b3d539cbc8620` |
| 3 | `instance` | [(anonymous)](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/instance.md) | 100 | `declaration-track:3e717107d753466807664cddd9e3d0a5890129e702f4401315976ddb48cd3d1a` |
| 4 | `def` | [toContMDiffMap](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/tocontmdiffmap.md) | 109 | `declaration-track:652678adf464c6879748bf1ee5acad799184811044464a4a2309b2113e699ba6` |
| 5 | `instance` | [(anonymous)](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/instance-source-edition-2.md) | 112 | `declaration-track:b6670c9a8486df98b96dcd6a0994d1eb2944bc869717de23ec3b185cdeb94dfb` |
| 6 | `theorem` | [continuous](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/continuous.md) | 116 | `result-track:fa4a73ddbf99453b365669f5a952ffb54dd6ba4085f10847ce46bfc6e6447b8a` |
| 7 | `theorem` | [contMDiff](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiff.md) | 119 | `result-track:d12736f79c9ef57ab152f68b3c00e98769e26a7dcaf893e32aadabb4d9d5c99d` |
| 8 | `theorem` | [contMDiffAt](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiffat.md) | 122 | `result-track:368c96922995eacc227c25ea3a2e3af06ef9f30bbf8e97e3d6c2191c91984807` |
| 9 | `theorem` | [contMDiffWithinAt](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiffwithinat.md) | 125 | `result-track:af44472074072cd5fe9f150f68925a86c4c820d95df240d4759e1a108be76cc5` |
| 10 | `theorem` | [contDiff](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contdiff.md) | 129 | `result-track:52cd8fe5b848cd02a890657a88ec763343fad11714787e7f6bac943a46110367` |
| 11 | `theorem` | [mdifferentiable](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/mdifferentiable.md) | 134 | `result-track:5df36fa51659d5ef880225b79fe369fa6488362f8e54d8c4df32228972fcc4ec` |
| 12 | `theorem` | [mdifferentiableOn](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/mdifferentiableon.md) | 137 | `result-track:bd059ac9ae2fe4e785e837be41c5986b982138b7f07569b9e77746276dcc8772` |
| 13 | `theorem` | [coe_toEquiv](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coe-toequiv.md) | 142 | `result-track:7402ca286304cf012eb42462dd3baa04ea00169b00cca0a9a817a266018e130d` |
| 14 | `theorem` | [coe_coe](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coe-coe.md) | 146 | `result-track:11f9b935390b5f4e3606a06ccc64657eaf87d825674cf19192469b9405984741` |
| 15 | `theorem` | [toEquiv_inj](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/toequiv-inj.md) | 150 | `result-track:87c9b499baedb64768bf0c32e5955c2d6d7aaa02791cc1d68a2ce57e0d9d491e` |
| 16 | `theorem` | [coeFn_injective](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coefn-injective.md) | 154 | `result-track:6aa74ec0a58e53f451ccb4ad86f2cc7954d87c3d1b768311f25fa8db96000ddd` |
| 17 | `theorem` | [ext](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/ext.md) | 158 | `result-track:690c96517f15341feb655aa8013993f9d227e2f24de5edc63f64d6bd64b965f1` |
| 18 | `instance` | [(anonymous)](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/instance-source-edition-3.md) | 161 | `declaration-track:b74dd8d18ba27b65bd4b2cfbf3b3d0ccb6e7b58f53b7c68bf9b441abd6da8ed0` |
| 19 | `def` | [refl](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/refl.md) | 169 | `declaration-track:ade80ddd6985e2465eabf90c3968dd6fa3214034afe00607ed265e721b892ce1` |
| 20 | `theorem` | [refl_toEquiv](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/refl-toequiv.md) | 175 | `result-track:5e5cb0743cf1944f1646ab45e67e4cb27c66a05896d06b5d6be4750d529f405e` |
| 21 | `theorem` | [coe_refl](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coe-refl.md) | 179 | `result-track:b4c14192a0b28ec318828df1571650f86f1a233eb69b428b8d132c59c663038c` |
| 22 | `def` | [trans](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/trans.md) | 186 | `declaration-track:e83766f6c87d516da5af759ed8e07c7e7dde93611d75bc8954692aca61bc053f` |
| 23 | `theorem` | [trans_refl](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/trans-refl.md) | 192 | `result-track:236e3f947b935036366b596d19c776a08f0d6cb67f47cbdc3cb02246a7f1142d` |
| 24 | `theorem` | [refl_trans](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/refl-trans.md) | 196 | `result-track:e9305aa3585218c134b73a0ec27beb84e9e433dd635fb4436e6d28daa60a0e7e` |
| 25 | `theorem` | [coe_trans](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coe-trans.md) | 200 | `result-track:23c95b6191359e0ae346c77ba0a3b874282b2646f969d406cfe583de51f3a6a2` |
| 26 | `def` | [symm](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/symm.md) | 205 | `declaration-track:16b9b84f3e548e4ff00be81a2e214a42c54f956a3f82fffd24debc8df5c85f29` |
| 27 | `theorem` | [apply_symm_apply](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/apply-symm-apply.md) | 211 | `result-track:eb8486484f0b00e6ac825d812ab3d2767bf716fa6d612b616a1c0992c72427c5` |
| 28 | `theorem` | [symm_apply_apply](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/symm-apply-apply.md) | 215 | `result-track:e508b3a5171e40236cf282682cf38a5521474730919ec0b31b08489708e6fb13` |
| 29 | `theorem` | [symm_refl](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/symm-refl.md) | 219 | `result-track:41926a7dc5761528505cdacece19402feb5107e1f4f20e4e7c528673529aa6d2` |
| 30 | `theorem` | [self_trans_symm](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/self-trans-symm.md) | 223 | `result-track:d04b22c765a4363ca9c76e532d947e5c96621479bdf1a5435e2f2a2e9e292102` |
| 31 | `theorem` | [symm_trans_self](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/symm-trans-self.md) | 227 | `result-track:7502ac8eb53586443a278a7a49e3d3ac3709f8ac0872d3913ed691ef090342ca` |
| 32 | `theorem` | [symm_trans'](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/symm-trans.md) | 231 | `result-track:955340b2cbc674596fec9f6ff4152157678113227aeb5b9b7aaa25847ae661e4` |
| 33 | `theorem` | [symm_toEquiv](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/symm-toequiv.md) | 236 | `result-track:f45d3037e7572616791d672f442a0e8e37db0d658f7bd86690282309d8714e80` |
| 34 | `theorem` | [toEquiv_coe_symm](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/toequiv-coe-symm.md) | 240 | `result-track:ca2398b54bf103c64183305de8206d2f6ae77c5d0c3fe0e60e7ec02885aa03d8` |
| 35 | `theorem` | [image_eq_preimage](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/image-eq-preimage.md) | 243 | `result-track:282d037f66c2041693f1edbd8c9295b3264d464447422aa7ea1a916f00a68b68` |
| 36 | `theorem` | [symm_image_eq_preimage](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/symm-image-eq-preimage.md) | 246 | `result-track:4ab30e97ea6cc9267e4d2be6fc99cac6ede23785065f7ea0de412c51df5b9881` |
| 37 | `theorem` | [range_comp](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/range-comp.md) | 250 | `result-track:1253d72c8a272fc2b4623f16bbd83f28a1e6d82a19a8f5b4aba257bd38f01b02` |
| 38 | `theorem` | [image_symm_image](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/image-symm-image.md) | 255 | `result-track:18730ab6a7251d1af5ef8a0a699305f30c6fcab0aeaaac3c8046d1d88296091a` |
| 39 | `theorem` | [symm_image_image](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/symm-image-image.md) | 259 | `result-track:6a5df0b319b15c54e126ab0e1cccb1d4a351904547d0fef69548368518ac6483` |
| 40 | `def` | [toHomeomorph](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/tohomeomorph.md) | 263 | `declaration-track:95f6c1283a503c5e27b568000059be83986e07f1b932c7f63062c7c2b2c6060d` |
| 41 | `theorem` | [toHomeomorph_toEquiv](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/tohomeomorph-toequiv.md) | 267 | `result-track:7abb3cb60c2b7d81b5a39b48aa092eb141095c991f806ab574cbdf70bb2bf24d` |
| 42 | `theorem` | [symm_toHomeomorph](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/symm-tohomeomorph.md) | 271 | `result-track:27b6474a1e2d0cf47404dd514d9f8bebe1152301e802d80e09a6bf07f25c146e` |
| 43 | `theorem` | [coe_toHomeomorph](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coe-tohomeomorph.md) | 275 | `result-track:f05bd7f06611428986d8c1c7091616428260109236f8941ee771145c26a40a17` |
| 44 | `theorem` | [coe_toHomeomorph_symm](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coe-tohomeomorph-symm.md) | 279 | `result-track:9b0145c960a705d43b12c544ff864b3004c245ab0a02d4ed01f2509c58218f5d` |
| 45 | `theorem` | [contMDiffWithinAt_comp_diffeomorph_iff](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiffwithinat-comp-diffeomorph-iff.md) | 283 | `result-track:03d660ad01bfffcceeb2070858f97c94d1d128931076d0e9ac45f00ad7cee82a` |
| 46 | `theorem` | [contMDiffOn_comp_diffeomorph_iff](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiffon-comp-diffeomorph-iff.md) | 295 | `result-track:302fa86ef0e2a8de24f5ef2d3ac1461d4042c7242371d9411094a71c70ae37a6` |
| 47 | `theorem` | [contMDiffAt_comp_diffeomorph_iff](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiffat-comp-diffeomorph-iff.md) | 302 | `result-track:15e90595f18a25e378ab6854ccc6764a098d2baf6f1cea4b9488d844a63e9497` |
| 48 | `theorem` | [contMDiff_comp_diffeomorph_iff](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiff-comp-diffeomorph-iff.md) | 307 | `result-track:412c0728b16ec572142a6b0f763d5d37ddb5c868c5b66156d903a58b3be4f202` |
| 49 | `theorem` | [contMDiffWithinAt_diffeomorph_comp_iff](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiffwithinat-diffeomorph-comp-iff.md) | 312 | `result-track:61fc0ef7765dc2d94c58689b5560632dac077e9e36ff856466d1675b57faa385` |
| 50 | `theorem` | [contMDiffAt_diffeomorph_comp_iff](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiffat-diffeomorph-comp-iff.md) | 320 | `result-track:6ac814197b7c432bf69735a0d8434cd9d9fcd46cfdc53d318eb912774fbc3649` |
| 51 | `theorem` | [contMDiffOn_diffeomorph_comp_iff](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiffon-diffeomorph-comp-iff.md) | 325 | `result-track:c5d7cc4e93c184eb7a143248cf83dac0cb295c512884fe3d638f023ca9965241` |
| 52 | `theorem` | [contMDiff_diffeomorph_comp_iff](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiff-diffeomorph-comp-iff.md) | 330 | `result-track:1cb469da45bd1145d7f1bff4d509ae42c2dcaba0cda0676fccb72e3b42e5faf0` |
| 53 | `theorem` | [toPartialHomeomorph_mdifferentiable](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/topartialhomeomorph-mdifferentiable.md) | 334 | `result-track:240ce1613d07096f4603e59e4a944c8960eb249a5eb48507da73368bd4e4312a` |
| 54 | `theorem` | [uniqueMDiffOn_image_aux](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/uniquemdiffon-image-aux.md) | 338 | `result-track:343d4fa8d97ddc915b0615a24b9c2202a2340991de08a17a1e282c4412d7d4b7` |
| 55 | `theorem` | [uniqueMDiffOn_image](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/uniquemdiffon-image.md) | 344 | `result-track:a8c995c3c638180823e56fae0d71c1ac9cadbd18f746bffd1249ff1655c61a4f` |
| 56 | `theorem` | [uniqueMDiffOn_preimage](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/uniquemdiffon-preimage.md) | 350 | `result-track:5546727edb0d915cf516876ec262df71d330bcd34db9d3599190f0cfd2666b06` |
| 57 | `theorem` | [uniqueDiffOn_image](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/uniquediffon-image.md) | 356 | `result-track:a110812bdabf9d538e7530504ddf8d744aaabaa011181e5cdea7ce595d937bea` |
| 58 | `theorem` | [uniqueDiffOn_preimage](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/uniquediffon-preimage.md) | 362 | `result-track:6a0c94a6e7517d0af978f33e26258039c53d3e9f8c5391394754ebd7513e0ea5` |
| 59 | `def` | [toDiffeomorph](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/todiffeomorph.md) | 373 | `declaration-track:072cded1333146106cdb09e49d8d003c39ea25d8cf2cc269e57f31e770220f8b` |
| 60 | `theorem` | [coe_toDiffeomorph](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coe-todiffeomorph.md) | 379 | `result-track:35d9105bc181ba6d45845ac3544bc28511009d9b1020bce976953754b62b20d6` |
| 61 | `theorem` | [symm_toDiffeomorph](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/symm-todiffeomorph.md) | 383 | `result-track:0291d5a66d1e9724699c2370fbfdaf476ffdbcca2407d35ee1f1286c3a186f7a` |
| 62 | `theorem` | [coe_toDiffeomorph_symm](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coe-todiffeomorph-symm.md) | 387 | `result-track:972b8716c62cb90ce82441f0da3e8b419959bae22f3cd8c30bb509051f7272b7` |
| 63 | `def` | [transDiffeomorph](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/transdiffeomorph.md) | 397 | `declaration-track:d9226900a6c0d38d30dc10831484c48588fc2970765f001f72ae9c995bd81a30` |
| 64 | `theorem` | [coe_transDiffeomorph](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coe-transdiffeomorph.md) | 416 | `result-track:3e078b81242278de9121106ef78083bf686b18c031092f706bff8b201fa6ab88` |
| 65 | `theorem` | [coe_transDiffeomorph_symm](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coe-transdiffeomorph-symm.md) | 420 | `result-track:5c40edae2276ac7a4990ccf79d0eae30742d08a714a39f56d10fb07cb315618b` |
| 66 | `theorem` | [transDiffeomorph_range](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/transdiffeomorph-range.md) | 423 | `result-track:a37b0a7cb76ea3b5b40b5feeee5deea947994d59808464413c28443a50799db6` |
| 67 | `theorem` | [coe_extChartAt_transDiffeomorph](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coe-extchartat-transdiffeomorph.md) | 426 | `result-track:3fce1e57194cd90eeadf44b0d8872b4848b5c7cadb0cc4a8159af7a7a98bbae1` |
| 68 | `theorem` | [coe_extChartAt_transDiffeomorph_symm](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coe-extchartat-transdiffeomorph-symm.md) | 430 | `result-track:3f09580ddf15449d73daa930494a8c59ab6e8d8ca257ccd4a453b77cf90367f3` |
| 69 | `theorem` | [extChartAt_transDiffeomorph_target](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/extchartat-transdiffeomorph-target.md) | 434 | `result-track:18bea22577c7d489485040ff72a44e2bfeb1b5b4d5365381a931f51eedb8f8cf` |
| 70 | `instance` | [instIsManifoldTransDiffeomorph](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/instismanifoldtransdiffeomorph.md) | 446 | `declaration-track:a6b10fccfdb5a4fceaa6efbb77be4cd6ffc70b3732969f4c5ff4ebc009ef0675` |
| 71 | `def` | [toTransDiffeomorph](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/totransdiffeomorph.md) | 458 | `declaration-track:ca3d7a077b6a2b2ed7567fbd3b6e10ba201f51be16d32b83a55043bd3593935e` |
| 72 | `theorem` | [contMDiffWithinAt_transDiffeomorph_right](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiffwithinat-transdiffeomorph-right.md) | 479 | `result-track:b492cfca447bcd2f06f68a2982316d2cd8c6f176cca741dbb78c7c1c33cd6713` |
| 73 | `theorem` | [contMDiffAt_transDiffeomorph_right](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiffat-transdiffeomorph-right.md) | 484 | `result-track:b0bb8cb9d42efcd3e5db03aa5e426c3c02d85a1fff575a989f0c781329d6193d` |
| 74 | `theorem` | [contMDiffOn_transDiffeomorph_right](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiffon-transdiffeomorph-right.md) | 489 | `result-track:2f84339e61862791e983516c845f3bb283b967daa9083ab4275b93d724db106b` |
| 75 | `theorem` | [contMDiff_transDiffeomorph_right](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiff-transdiffeomorph-right.md) | 494 | `result-track:8eb633c8f500c94b881b1d851842be67f82a3661cbed6cd54c7f415d6505ac0d` |
| 76 | `theorem` | [contMDiffWithinAt_transDiffeomorph_left](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiffwithinat-transdiffeomorph-left.md) | 502 | `result-track:0d1b7d55c06f4518afb1a258d5e9073131c448dd736b104609efd20e0f8de9a6` |
| 77 | `theorem` | [contMDiffAt_transDiffeomorph_left](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiffat-transdiffeomorph-left.md) | 507 | `result-track:040b919215b3e5fe725619eb78560fc46b8e4106716c1f6db4ad968a9b2e6e58` |
| 78 | `theorem` | [contMDiffOn_transDiffeomorph_left](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiffon-transdiffeomorph-left.md) | 512 | `result-track:9f4730d345a87e17c05d9a663bea90eb3d70e5300432aa08539bbc7f8caba2c4` |
| 79 | `theorem` | [contMDiff_transDiffeomorph_left](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/contmdiff-transdiffeomorph-left.md) | 517 | `result-track:bdbdb0aca8b9d140dd2c960133eadbac82d11c2a1d9a0528ee29d927fc2db2a8` |
| 80 | `def` | [prodCongr](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/prodcongr.md) | 531 | `declaration-track:d6757ee5775f980dd236c600a02c7c572a03b041868ac8f942a83ab59da9586f` |
| 81 | `theorem` | [prodCongr_symm](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/prodcongr-symm.md) | 539 | `result-track:c320c89c0b3f601d0a9a82990a30e4b6988c34d3f4adc09fcd2dfc76b5ded489` |
| 82 | `theorem` | [coe_prodCongr](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coe-prodcongr.md) | 544 | `result-track:732071c1c7da916459d6d13c718c166eaf7f3a5881dc68e116969548c51e92fb` |
| 83 | `def` | [prodComm](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/prodcomm.md) | 553 | `declaration-track:dc343cd7c66d4c6b85770961d0fc7781077c5355b45b994f2b8f8cf5b490d0fb` |
| 84 | `theorem` | [prodComm_symm](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/prodcomm-symm.md) | 559 | `result-track:2f6c9b8dfbbb5f141f0f1ceb7f45cc1876a1fb366bec82b892ce8295230252ab` |
| 85 | `theorem` | [coe_prodComm](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/coe-prodcomm.md) | 563 | `result-track:75560e9836e310afa20866069c60dd79ef7a809161c86aa346262f13a9cd1f3d` |
| 86 | `def` | [prodAssoc](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/prodassoc.md) | 567 | `declaration-track:0ecd66636cd30efbbb60909edc50bfa8a96076aa16b1f74c0a80f4156881e841` |
| 87 | `def` | [sumCongr](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumcongr.md) | 588 | `declaration-track:ff064d85bc068e96362203b747a70e6a159ae5eabd74df5fdb26afd9bb86d67d` |
| 88 | `lemma` | [sumCongr_symm_symm](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumcongr-symm-symm.md) | 594 | `result-track:be9d5a9f2c1e1db1be30e4cd6fd8be6f2c4d4bc0582ca50e7f24fd52e49689d0` |
| 89 | `lemma` | [sumCongr_coe](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumcongr-coe.md) | 598 | `result-track:2facfe8b1168a4b77119bb514a7498d884c5b4e20ab956daff2a6bd4838ff2b9` |
| 90 | `lemma` | [sumCongr_inl](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumcongr-inl.md) | 601 | `result-track:d9bd4a6c1dc9be9dfd812233f80398fa86b476f7680cc41ff8f2edda0ac2f914` |
| 91 | `lemma` | [sumCongr_inr](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumcongr-inr.md) | 604 | `result-track:41d330421e4b51fa4ea114d105fe5cf7e70ab6ecfa21b4233645b5ec158ac457` |
| 92 | `def` | [sumComm](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumcomm.md) | 609 | `declaration-track:65617618c49d04d2c177e49b38e85126b967eb94f8e5644d9cbffa1ff04e7a14` |
| 93 | `theorem` | [sumComm_coe](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumcomm-coe.md) | 615 | `result-track:acf7ca0dc302904a3adafebfd1373473da05038735dcc7ee00a7d718e68435d0` |
| 94 | `theorem` | [sumComm_symm](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumcomm-symm.md) | 618 | `result-track:61ca6b41c04d0360454bec3f536f5caf09280b21e73d00dde565e19642a78836` |
| 95 | `lemma` | [sumComm_inl](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumcomm-inl.md) | 621 | `result-track:f8bcf53a0416bcfde71ff5087fbffd40d27fbc2a958a552adbf1b0f509f51e5d` |
| 96 | `lemma` | [sumComm_inr](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumcomm-inr.md) | 626 | `result-track:9677a6f4a9a8dbda9f1bc4af6deafdf2a43770b97d5d62aa8c99d55a47574d7d` |
| 97 | `def` | [sumAssoc](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumassoc.md) | 632 | `declaration-track:a4d22673fb9dda6f644ad4992d2a7f864ea5724057f0a84610e1ef06a6cf9ab5` |
| 98 | `theorem` | [sumAssoc_coe](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumassoc-coe.md) | 644 | `result-track:64436804e3ab65eeb708a4001ae94f23f0e10a86e14ef462e285661aaf9fed1d` |
| 99 | `def` | [sumEmpty](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumempty.md) | 649 | `declaration-track:cc2ef04f5cb93049636bed1b1e666c4dc500df682e0bb7726b59b9d7d8169b1a` |
| 100 | `theorem` | [sumEmpty_toEquiv](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumempty-toequiv.md) | 655 | `result-track:c7bc795ac23e436dbc7937ec1273142dddfae392fb7f55468060c84557781180` |
| 101 | `lemma` | [sumEmpty_apply_inl](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/sumempty-apply-inl.md) | 658 | `result-track:3a84e4a0d00148f3c4930b0736ff38bc9800969a25dcfa9f5264d4a2b312452b` |
| 102 | `def` | [empty](../../../../DifferentialGeometry/Diffeomorph.lean/declarations/empty.md) | 661 | `declaration-track:1f9454a347359939736f914da3a0fdd32edcbd355044b86cf351940f12dc3016` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50c2445ef87efce333dba5f6f605192d1e99228649e8bc514b03e935dbc0b2bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variantdc73e09e3c104d9971b1da03868c8cc193b955f6c4e7d758b77f43ec9c9de6ad.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Diffeomorph/Variantdc73e09e3c104d9971b1da03868c8cc193b955f6c4e7d758b77f43ec9c9de6ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
