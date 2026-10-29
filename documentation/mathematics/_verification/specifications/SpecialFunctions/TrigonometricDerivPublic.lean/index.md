# Verification target: Trigonometric Deriv Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42ad385577a44c06e07a77e4d835b9a384345f1a",
  "lexical_observation_count": 144,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc44a764cdb0db89c4c0fcfcc385bb904d2f4081ae5bd018785b84dbeb8d7744f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42ad385577a44c06e07a77e4d835b9a384345f1a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc44a764cdb0db89c4c0fcfcc385bb904d2f4081ae5bd018785b84dbeb8d7744f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc44a764cdb0db89c4c0fcfcc385bb904d2f4081ae5bd018785b84dbeb8d7744f.lean.json)

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
| 1 | `theorem` | [hasStrictDerivAt_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasstrictderivat-sin.md) | 34 | `result-track:226a9666c886abbd01df2f8566eb4401608674e193820eb0927b49899b58384b` |
| 2 | `theorem` | [hasDerivAt_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasderivat-sin-source-edition-3.md) | 46 | `result-track:eb6403e18f53c1f6beb7b1fbccd5897f1235f5ae2b4ec28dad6452574e64e14d` |
| 3 | `theorem` | [isEquivalent_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/isequivalent-sin-source-edition-2.md) | 49 | `result-track:e697f52b7d4820067cd84d093893ca120d92b652c5f80fbeebc58d0274395c0b` |
| 4 | `theorem` | [contDiff_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiff-sin-source-edition-3.md) | 52 | `result-track:ba471dc494d7afa220a9ed4f24feb5eab08fd3ba43b36f037b2472411bff08b1` |
| 5 | `theorem` | [differentiable_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiable-sin.md) | 57 | `result-track:00730a7f088035c2a6bade668bb062763cc89d287c9ad25484499c91c420babc` |
| 6 | `theorem` | [differentiableAt_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiableat-sin.md) | 60 | `result-track:40951d8a1230894273445ecd8a06f09999cdb430733f344ef9783b3cb75376e3` |
| 7 | `lemma` | [analyticAt_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticat-sin-source-edition-2.md) | 65 | `result-track:d02bfe1088aec123c86fa1e51577679ccb8662b57762fcf76d6d4f8ead8a9696` |
| 8 | `lemma` | [analyticWithinAt_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticwithinat-sin.md) | 69 | `result-track:4d53af015ae9de45eb78098b4d8980f182edb309edb9efb75669ae756e306a5b` |
| 9 | `theorem` | [analyticOnNhd_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticonnhd-sin-source-edition-2.md) | 74 | `result-track:685a93bb16571bd4c0e646a26ea1fce168f196aadba2601cbafa62d0eab0b7e4` |
| 10 | `lemma` | [analyticOn_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticon-sin-source-edition-2.md) | 78 | `result-track:fdeddb5615d3c5853dd9d6438ef8125645cc5e49ffb3c78a66cf65c661572d10` |
| 11 | `theorem` | [deriv_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/deriv-sin-source-edition-2.md) | 82 | `result-track:7ddd887d42b9fce90ffb9c47dc290afdd413fb915ed3e6b1c1d9864feebe5797` |
| 12 | `theorem` | [hasStrictDerivAt_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasstrictderivat-cos-source-edition-3.md) | 87 | `result-track:6c36773283e3f119163b3135e675a0b24a63fe386a76155ef588a3d0b399a146` |
| 13 | `theorem` | [hasDerivAt_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasderivat-cos-source-edition-3.md) | 97 | `result-track:cc4fbceb0f3087c927a245f83ddc5fba7a818a56a6c4ce5e3175fb819e219ab2` |
| 14 | `theorem` | [contDiff_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiff-cos.md) | 101 | `result-track:787c1d28bb48fe65079a9fdde1aae481ffc39892ca337b7ce63304ed45281830` |
| 15 | `theorem` | [differentiable_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiable-cos-source-edition-3.md) | 105 | `result-track:f9226d3d0c931cc46ad39c685b9b44f78aa729645efcf8115161066ff667de55` |
| 16 | `theorem` | [differentiableAt_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiableat-cos-source-edition-2.md) | 108 | `result-track:aab096063ac528a4d6c52648170f038f5f8eb39550b83804ff31089ace4d607c` |
| 17 | `lemma` | [analyticAt_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticat-cos.md) | 113 | `result-track:2bfc77e5206c0a14c9db6b81da95041f4404881890fce325cca2d5122cd66f7e` |
| 18 | `lemma` | [analyticWithinAt_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticwithinat-cos.md) | 117 | `result-track:350c97eb295ae8cc9b9669cca42a3fe915de1f893a93f7921f1f6896b5a24b8c` |
| 19 | `theorem` | [analyticOnNhd_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticonnhd-cos.md) | 122 | `result-track:2be2283dbf5ad9d244c6b9e6012db05941c0232fbb2d5d6a19f3ba66fd539235` |
| 20 | `lemma` | [analyticOn_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticon-cos.md) | 126 | `result-track:0e302f01e71dab36724ad849081412c20326bb86332f35dfa4adbf0843341ff7` |
| 21 | `theorem` | [deriv_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/deriv-cos-source-edition-5.md) | 129 | `result-track:6dc8fc50f18d05eeb53da84e2869e1cbe8c1c090c1b4c407022d9db6a5985354` |
| 22 | `theorem` | [deriv_cos'](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/deriv-cos-source-edition-3.md) | 133 | `result-track:41c713770917333172c218b32c851ec2971fa55d6d8bad63f0883fac3d2e962a` |
| 23 | `theorem` | [HasStrictDerivAt.ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasstrictderivat-ccos.md) | 148 | `result-track:74d2e28b56b5bf959b996c2b9031df297a9762a4be97d4c56ac84e0c8b48f271` |
| 24 | `theorem` | [HasDerivAt.ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasderivat-ccos.md) | 152 | `result-track:b223875c17adc7f3f8be983fccbfe7ce54320fa1aaba30b5c480a8cc2039d747` |
| 25 | `theorem` | [HasDerivWithinAt.ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasderivwithinat-ccos.md) | 156 | `result-track:32a81cf2dd8be477f2ec8b6a8450a2df639a2e723fbd8523c1ca560a1b6c3d61` |
| 26 | `theorem` | [derivWithin_ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/derivwithin-ccos.md) | 160 | `result-track:90361a2986723c2460801efbe22573b916056c91c9dbf1b01496e5c6d0ce44aa` |
| 27 | `theorem` | [deriv_ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/deriv-ccos.md) | 165 | `result-track:7da83dab99f5b446dfad8944ec4298f95326f075a1328f476183d28aa6d1bc07` |
| 28 | `theorem` | [HasStrictDerivAt.csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasstrictderivat-csin.md) | 172 | `result-track:ca9a6715a0b6042f132417e7a8f007147140999df982d615532bba8f58a8627e` |
| 29 | `theorem` | [HasDerivAt.csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasderivat-csin.md) | 176 | `result-track:bb00f41c5ad42a19a1893ca1b5ba01911e60137934afa90c87f633a75b5688f9` |
| 30 | `theorem` | [HasDerivWithinAt.csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasderivwithinat-csin.md) | 180 | `result-track:b051d166876e2bf6d91d2a27a9f868300254291844ae189f8eaff2833c7d8264` |
| 31 | `theorem` | [derivWithin_csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/derivwithin-csin.md) | 184 | `result-track:c27e97e4c87d04a9554a19455c50ec1750296e1c9f0647b287755cac501bbd69` |
| 32 | `theorem` | [deriv_csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/deriv-csin.md) | 189 | `result-track:3976d060276877b32c0695eaf4610b89522b128c5e2dffa6ccae942d6b73f21d` |
| 33 | `theorem` | [HasStrictFDerivAt.ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasstrictfderivat-ccos.md) | 206 | `result-track:e7716975f544590342030deba81a28ec2a484e4456b4519c48861c147748ae8a` |
| 34 | `theorem` | [HasFDerivAt.ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasfderivat-ccos.md) | 210 | `result-track:25cf1a3da3bc9a4aee2af7bf8e5b4f82f4385ae6aac4c90d60cb8e68ed881c35` |
| 35 | `theorem` | [HasFDerivWithinAt.ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasfderivwithinat-ccos.md) | 214 | `result-track:7bdaef9e38032813ec3fd93fab7e663d8ce6e5e39707f1830f1b00cc1e237f2e` |
| 36 | `theorem` | [DifferentiableWithinAt.ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiablewithinat-ccos.md) | 218 | `result-track:754a150e4876383999b20b7266d4912ea1700b83cf8b248d9b5ed47ae13ed4aa` |
| 37 | `theorem` | [DifferentiableAt.ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiableat-ccos.md) | 223 | `result-track:5d3503dfe329e679d0f0ed3ce2d39d813a2553b56a237b1037a66663793a6043` |
| 38 | `theorem` | [DifferentiableOn.ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiableon-ccos.md) | 227 | `result-track:9e756b36b1e55e3c1e65e6003f9c15ff409203e2b0b4dee8d13f77e25cac445c` |
| 39 | `theorem` | [Differentiable.ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiable-ccos.md) | 231 | `result-track:75f37883d18d60990f96a73e97d76937e031f91e2903c9b6ff94e53c2afc89d1` |
| 40 | `theorem` | [fderivWithin_ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/fderivwithin-ccos.md) | 234 | `result-track:5ce6d5fba92a616f1f823b45286a106127a857817b9395ea7e6cd4e0b832ba31` |
| 41 | `theorem` | [fderiv_ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/fderiv-ccos.md) | 239 | `result-track:c5f2c12b3aae6383305110f1f9b70922549459bb6aff000495771afaded9849d` |
| 42 | `theorem` | [ContDiff.ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiff-ccos.md) | 243 | `result-track:ee37a7aab6f1ff5ae77546e1aad13275832317c8d7ed309f3cf3e0c2dc5f95d0` |
| 43 | `theorem` | [ContDiffAt.ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiffat-ccos.md) | 246 | `result-track:c7371a5b8a43af8ca4837d1313a41efd0cb987f9e5776093228671936b9d35af` |
| 44 | `theorem` | [ContDiffOn.ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiffon-ccos.md) | 250 | `result-track:633e791ea3197fc1385c87713b233979e2fb51d42e07f83cd9508bdefe3fc430` |
| 45 | `theorem` | [ContDiffWithinAt.ccos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiffwithinat-ccos.md) | 254 | `result-track:920beee579d5541750c22eac9d599b4f0f8bd911824f8af3281b25a1fefc7c76` |
| 46 | `theorem` | [HasStrictFDerivAt.csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasstrictfderivat-csin.md) | 261 | `result-track:0410e76c7bf24486f239fed7a2a818c1195c408c7dd0ac28f5f5dfe1130b9204` |
| 47 | `theorem` | [HasFDerivAt.csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasfderivat-csin.md) | 265 | `result-track:4a1e6f9d3900162f9fcd8a42e4a44d318320e68976510c0e40ee4cb1fbe31cf5` |
| 48 | `theorem` | [HasFDerivWithinAt.csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasfderivwithinat-csin.md) | 269 | `result-track:229cd5ee38da91bf6eb69c1bfdb5a285b296dffe5b390884e18bf750d361d229` |
| 49 | `theorem` | [DifferentiableWithinAt.csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiablewithinat-csin.md) | 273 | `result-track:d052dc5f01165c04b4dace41fc3fd3797a555d2312e0b311bc0420dd8637af88` |
| 50 | `theorem` | [DifferentiableAt.csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiableat-csin.md) | 278 | `result-track:9b6c9021b7e93d0048e2babf8c1f3bcedc7705d90a8d5ac0bbf879e9c2682889` |
| 51 | `theorem` | [DifferentiableOn.csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiableon-csin.md) | 282 | `result-track:19020064416ba33cbb8b195064837620758b14dd06a99ce944161d57c7151b15` |
| 52 | `theorem` | [Differentiable.csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiable-csin.md) | 286 | `result-track:0133bd777819ae7c703db8d7c0a8164e50cb7cc057311ab7458a5976935e4196` |
| 53 | `theorem` | [fderivWithin_csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/fderivwithin-csin.md) | 289 | `result-track:3953c3e5b1c6b13e5d65f29d62699fe52e64ca5549003a29e10d68c9ad5485ee` |
| 54 | `theorem` | [fderiv_csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/fderiv-csin.md) | 294 | `result-track:f0e5d4f54ec7210da29a24817078c8972dc92fd6168588f79b9434697aac6886` |
| 55 | `theorem` | [ContDiff.csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiff-csin.md) | 298 | `result-track:71b8221a67d4c734a2a22dad2d9133793e5571bf56df21f5f5d2b81c8654a2a6` |
| 56 | `theorem` | [ContDiffAt.csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiffat-csin.md) | 301 | `result-track:df5d595305c5355324458ae2f20e236a243e086dc812f61208ed7a4e0648baf4` |
| 57 | `theorem` | [ContDiffOn.csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiffon-csin.md) | 305 | `result-track:51a60a48d70b04b032d5d114613c06cdb3fc961ac0efdf1f26183ef78ae99cf3` |
| 58 | `theorem` | [ContDiffWithinAt.csin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiffwithinat-csin.md) | 309 | `result-track:edd357fe9f0ed7dfc686a89a71bf6b204faee60554dfcc9bcb3ded25a7b0b97f` |
| 59 | `theorem` | [hasStrictDerivAt_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasstrictderivat-sin-source-edition-3.md) | 319 | `result-track:8c199b36bc94ca46490d08cdd485e217f5c36e119c7f9eec5da7380e17ef63d1` |
| 60 | `theorem` | [hasDerivAt_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasderivat-sin.md) | 322 | `result-track:69e638ae8bf97b7cc003d13a0e31e6051d6f55fa91f2d5db8c656c4efcfe7e1c` |
| 61 | `theorem` | [isEquivalent_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/isequivalent-sin.md) | 325 | `result-track:b1b5e69947b7ce390900e35634e15fea0c4a0c16759d526a3456590aaf889f1d` |
| 62 | `theorem` | [contDiff_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiff-sin.md) | 328 | `result-track:2ce1eafd4cfdee380e91fbf4bb9c3329a6ddb1e60a6dfae725a664a224bde57c` |
| 63 | `theorem` | [differentiable_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiable-sin-source-edition-2.md) | 332 | `result-track:a2ad2decbc767b9f393859cb213b2372f1223c2bd4781313d0cde9169f4ef11a` |
| 64 | `theorem` | [differentiableAt_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiableat-sin-source-edition-3.md) | 335 | `result-track:ec79eda655709c21d45f07f0a1bd60ff32dac1f3b789eb7a975cc18afca99cc9` |
| 65 | `lemma` | [analyticAt_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticat-sin.md) | 340 | `result-track:cc42975a29edf2d21adc4b132e30fdb2baa43f934f092de6e73e5e3e12807b65` |
| 66 | `lemma` | [analyticWithinAt_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticwithinat-sin-source-edition-2.md) | 344 | `result-track:e0e5bac3d5e22202950c7e7d82079cae4cd829b273a8fc17dc6a05d7057572f9` |
| 67 | `theorem` | [analyticOnNhd_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticonnhd-sin.md) | 349 | `result-track:4bce41d783c4a67efbccd191d6b0bc2f4c8e010fa401dceb841fc57f6396874b` |
| 68 | `lemma` | [analyticOn_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticon-sin.md) | 353 | `result-track:44d8572578c52709d9843aa627135c8532164a8ec38616ce214f9f23fb27f0d3` |
| 69 | `theorem` | [deriv_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/deriv-sin-source-edition-3.md) | 357 | `result-track:c0277790712ecb5db2b8bd364cc2b54dc503a23c2abc2c40ac209ffc9e1c232e` |
| 70 | `theorem` | [hasStrictDerivAt_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasstrictderivat-cos-source-edition-2.md) | 360 | `result-track:426d110854bbb3f610e01e5b6950e33ed3a7520268b27dbdf45c0bca8259847d` |
| 71 | `theorem` | [hasDerivAt_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasderivat-cos.md) | 363 | `result-track:4041f39b6c72da965f228c60c515180db8276810d060f86e7b3b226eca47cfa4` |
| 72 | `theorem` | [contDiff_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiff-cos-source-edition-2.md) | 367 | `result-track:d80fb2fe4ae8a18f30ef769e11e6a106d35fd0de40ca96e30272bd35a638029c` |
| 73 | `theorem` | [differentiable_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiable-cos.md) | 371 | `result-track:2539ebce79de752658fba7a62facdd68d8c0975e9c5c4fbdf5972594572baaba` |
| 74 | `theorem` | [differentiableAt_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiableat-cos.md) | 374 | `result-track:7cb16307cb3b96422ce130aa5b6fd6cf96a4f26b85e8f8e2459a2ea9d76860a2` |
| 75 | `lemma` | [analyticAt_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticat-cos-source-edition-2.md) | 379 | `result-track:66885433daee544a1a7c2d527a0361214041051290b3dca3adc882820af22458` |
| 76 | `lemma` | [analyticWithinAt_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticwithinat-cos-source-edition-2.md) | 383 | `result-track:50702af7df22150d226626063cdf9d678dfea932bf63b18e7570766ea90806ea` |
| 77 | `theorem` | [analyticOnNhd_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticonnhd-cos-source-edition-2.md) | 388 | `result-track:e670c4dab2ef34e15aeebe9a83bdfded6c9349039f6155139e8e0efdd86c856f` |
| 78 | `lemma` | [analyticOn_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/analyticon-cos-source-edition-2.md) | 392 | `result-track:580236575addf74a1f5bdac909e16e6b5d9663f8cac00cb8dad63a1bdc88745c` |
| 79 | `theorem` | [deriv_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/deriv-cos.md) | 395 | `result-track:134af3b1377e3b95c535b6984582167133427b056dc405ff933f5c8f528b7526` |
| 80 | `theorem` | [deriv_cos'](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/deriv-cos-source-edition-2.md) | 399 | `result-track:1b379c923c662ec09cc70bfb27e5074acc003da6905dd2a1c88c9f9d1f9c6d19` |
| 81 | `theorem` | [iteratedDeriv_add_one_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderiv-add-one-sin.md) | 411 | `result-track:bd7c262097680cc7dbea0a6abcd19feb3ee42f96455e13c2c9fef6dbee5ef05c` |
| 82 | `theorem` | [iteratedDeriv_add_one_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderiv-add-one-cos-source-edition-2.md) | 419 | `result-track:e603e11936081dd257e4313df38a50add052eb7fda0da133020591bb50effeb0` |
| 83 | `theorem` | [iteratedDeriv_even_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderiv-even-sin-source-edition-2.md) | 429 | `result-track:7b43261d87ebef9c08ea7dff3e2e358578c287c215defe03b2b35a849540ee5e` |
| 84 | `theorem` | [iteratedDeriv_even_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderiv-even-cos.md) | 436 | `result-track:06e09005d1e4fe4a9c63e302f9600baea6b74bfba3b68f50f6bfe1bd0ba3d908` |
| 85 | `theorem` | [iteratedDeriv_odd_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderiv-odd-sin-source-edition-2.md) | 442 | `result-track:cc32fd98340e3ea73d4a9b9002099aa63cdd116a89e71e3212f7662fa0e221c7` |
| 86 | `theorem` | [iteratedDeriv_odd_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderiv-odd-cos-source-edition-2.md) | 445 | `result-track:8a57147d4a61ad504b742b1a05bc7f1fc67c9b9b009d6a196c72d31a93e4a8a3` |
| 87 | `theorem` | [differentiable_iteratedDeriv_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiable-iteratedderiv-sin-source-edition-2.md) | 448 | `result-track:6f15fa7a2ba365a1a683e10fb6377854bc491b01f4e0db227ca18ee5a8340416` |
| 88 | `theorem` | [differentiable_iteratedDeriv_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiable-iteratedderiv-cos.md) | 455 | `result-track:2b4cdbc6bf56c2fe1094f30e61d5f524c4f7415fa93bef26503de04e4aad3458` |
| 89 | `theorem` | [iteratedDeriv_add_one_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderiv-add-one-sin-source-edition-2.md) | 467 | `result-track:c3f55c34656422ead9a7d0e9bc96ead04328b2ccc34a9b760a0bbd8d80de89ca` |
| 90 | `theorem` | [iteratedDeriv_add_one_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderiv-add-one-cos.md) | 475 | `result-track:e0ac46a57870964f946bb9363436662d0d7e156662bdf40d78293dd2a7551d7d` |
| 91 | `theorem` | [iteratedDeriv_even_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderiv-even-sin.md) | 485 | `result-track:3643045fbb2d9d886c2a5bdf993fd58d0cd70a90064b750b48f9678c0f38360e` |
| 92 | `theorem` | [iteratedDeriv_even_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderiv-even-cos-source-edition-2.md) | 492 | `result-track:09dd2388c9de703178d64bd476fe00aa1ebb2287840904faf4c3ea9f3f156cde` |
| 93 | `theorem` | [iteratedDeriv_odd_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderiv-odd-sin.md) | 498 | `result-track:58fa2b81f1a489d21629b4833238a492c8f7965b13a1d23ae8e0f2d042d52c31` |
| 94 | `theorem` | [iteratedDeriv_odd_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderiv-odd-cos.md) | 501 | `result-track:3dc2f962d7a96534c3109296ba667852dc27a93653e987923e0ec1376d5478c6` |
| 95 | `theorem` | [differentiable_iteratedDeriv_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiable-iteratedderiv-sin.md) | 504 | `result-track:340ae66dcdcfd3a3fd44446a57ad33fd9c56757a8670194a5a5c26d9d1eec469` |
| 96 | `theorem` | [differentiable_iteratedDeriv_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiable-iteratedderiv-cos-source-edition-2.md) | 511 | `result-track:e617d1b7c12263f3313e24d162241d39fe0f7f08c1dc0db7f919a2db7f6a7008` |
| 97 | `theorem` | [abs_iteratedDeriv_sin_le_one](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/abs-iteratedderiv-sin-le-one.md) | 518 | `result-track:1f95049398ab120431273dadde71e044778d90a90bee46166ace0eeb7050e906` |
| 98 | `theorem` | [abs_iteratedDeriv_cos_le_one](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/abs-iteratedderiv-cos-le-one.md) | 525 | `result-track:de332be327f845b05895bb4c318263e9d407ca08a9ef69d544c7c0dc32bf5bab` |
| 99 | `theorem` | [iteratedDerivWithin_sin_Icc](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderivwithin-sin-icc.md) | 533 | `result-track:5afadf9bf3d21a37d23c104357e908475e6a7251947229f27d2a6774341f546b` |
| 100 | `theorem` | [iteratedDerivWithin_cos_Icc](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderivwithin-cos-icc.md) | 538 | `result-track:c81c1641d827f0b3da89a29477ad09daca854c26dd44f73d8c72b486db0a50c8` |
| 101 | `theorem` | [iteratedDerivWithin_sin_Ioo](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderivwithin-sin-ioo.md) | 543 | `result-track:3383bba40d2eca6eb3123cab9f53aa4a85629079c593d2a1fef02a30d924d886` |
| 102 | `theorem` | [iteratedDerivWithin_cos_Ioo](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/iteratedderivwithin-cos-ioo.md) | 548 | `result-track:e4318bae6b1d4746946e18c400a4b696c727e37b3ae23b7ec087025fa601c7a8` |
| 103 | `theorem` | [HasStrictDerivAt.cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasstrictderivat-cos.md) | 566 | `result-track:3aa60e261f6996edf925782aba815a3ffe0e0bc1c5c00993e969cf0f30e87064` |
| 104 | `theorem` | [HasDerivAt.cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasderivat-cos-source-edition-2.md) | 570 | `result-track:816504315df0eeb75648985e4bd7e0f600c5674a8a6f9a1f546a96fca31c4c17` |
| 105 | `theorem` | [HasDerivWithinAt.cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasderivwithinat-cos.md) | 574 | `result-track:8f917cdc5926e23e10bba61f41720ac55c1d154f3e73354e36ca527493deb558` |
| 106 | `theorem` | [derivWithin_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/derivwithin-cos.md) | 578 | `result-track:75b67c308b02ecf3b053f76722cd88857f886ea3333920ca6cfeecd4ef598a27` |
| 107 | `theorem` | [deriv_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/deriv-cos-source-edition-4.md) | 583 | `result-track:567915748e98fbfe8a3a41c3f445613f3ceb2caa66b7994c390a0b11fd580df3` |
| 108 | `theorem` | [HasStrictDerivAt.sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasstrictderivat-sin-source-edition-2.md) | 590 | `result-track:692536eed084aabd6b018cd5f3e9a239d8b8bfe5b8106d416caf63eb456c7707` |
| 109 | `theorem` | [HasDerivAt.sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasderivat-sin-source-edition-2.md) | 594 | `result-track:e10ba80daff2b76d5c85ba002dbb1ff8bf6b102db5f2b0876a171cc23c1ecde3` |
| 110 | `theorem` | [HasDerivWithinAt.sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasderivwithinat-sin.md) | 598 | `result-track:06634dffec5d2fc31006956a95e270b55ab05af288fcab0ebd19972edce446ac` |
| 111 | `theorem` | [derivWithin_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/derivwithin-sin.md) | 602 | `result-track:534bb6f5c8b817774ac11cdea089fe00318f2a98e12657b576450a0f6b58dbe0` |
| 112 | `theorem` | [deriv_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/deriv-sin.md) | 607 | `result-track:2d9a098d6b3a295d3c2f3009cff2f9b080324c03cd7fc3f670370255ce45ed89` |
| 113 | `theorem` | [HasStrictFDerivAt.cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasstrictfderivat-cos.md) | 624 | `result-track:a7e9a2d773a919e236ca46241883e5f178ebfbfea3f8143e13c06c934029dbc9` |
| 114 | `theorem` | [HasFDerivAt.cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasfderivat-cos.md) | 628 | `result-track:6f94f0897dafe2f66b4391a05ffffd50f6a8c0f0da522252ff99612aabfcec39` |
| 115 | `theorem` | [HasFDerivWithinAt.cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasfderivwithinat-cos.md) | 632 | `result-track:334340b7f644a687bbe58b560ef4a2727a6ed343a4359d378d3e8bd8d649d264` |
| 116 | `theorem` | [DifferentiableWithinAt.cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiablewithinat-cos.md) | 636 | `result-track:4b53651a79e85f3ea142de186e0f20e04078d76c8293e49b15b9ba11639c1f40` |
| 117 | `theorem` | [DifferentiableAt.cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiableat-cos-source-edition-3.md) | 641 | `result-track:d3818dfa817a0c1855c9f3dece893d65585c80307fbadbfc71d6e1bc7164ddf4` |
| 118 | `theorem` | [DifferentiableOn.cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiableon-cos.md) | 645 | `result-track:aaa3a27b2669424a4f4c6cc67b09f1fcd10681d6190def1879ec05837433b6b0` |
| 119 | `theorem` | [Differentiable.cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiable-cos-source-edition-2.md) | 649 | `result-track:cd7dd045f5cc88a5130e581d83e161d9bdf6a6696cc1f9f1dae88e9b5f8800f7` |
| 120 | `theorem` | [fderivWithin_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/fderivwithin-cos.md) | 652 | `result-track:d8d572c950e1fb3e2c92a3fbcfba79fe709aa51b5e638d9961acf9cdd6988cc1` |
| 121 | `theorem` | [fderiv_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/fderiv-cos.md) | 657 | `result-track:39dd0463f4e477d599d82097c3c24d93f3a84062bff5dcf86a246f3d81d66464` |
| 122 | `theorem` | [ContDiff.cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiff-cos-source-edition-3.md) | 661 | `result-track:f7fd51fba59655e142acdb058fc8d57feea0220e8acb15d510b9891437d2f2e0` |
| 123 | `theorem` | [ContDiffAt.cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiffat-cos.md) | 664 | `result-track:c5ece4de267f454c8584964d9254b680430b6b442fed82f3f59ac59cd7eb98a8` |
| 124 | `theorem` | [ContDiffOn.cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiffon-cos.md) | 667 | `result-track:bd4f1ffe0edc877874dfd09d7c6c0268f818e88a8887d2953328c96b61ca0641` |
| 125 | `theorem` | [ContDiffWithinAt.cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiffwithinat-cos.md) | 670 | `result-track:49fd509a674e7b0342f7b016557f8773701c55e02757cbc3b997ad08932600ae` |
| 126 | `theorem` | [HasStrictFDerivAt.sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasstrictfderivat-sin.md) | 677 | `result-track:8fbe95e00222984d61cf2d41cf7bddfb02826da2a2ce0c8e192e446abeac1627` |
| 127 | `theorem` | [HasFDerivAt.sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasfderivat-sin.md) | 681 | `result-track:42e16ccf77e3d5c033ff137224bb2a8afa388cf1f4c8226f56c226189e89766d` |
| 128 | `theorem` | [HasFDerivWithinAt.sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/hasfderivwithinat-sin.md) | 685 | `result-track:f13404f84da368bdcf897c96fa1aadbedfa373a8fdd14a19bb2694e1bd516871` |
| 129 | `theorem` | [DifferentiableWithinAt.sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiablewithinat-sin.md) | 689 | `result-track:010036d0c3634301597c8a1a86a1d1af82ca1efac501554d24bf160176e08cb1` |
| 130 | `theorem` | [DifferentiableAt.sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiableat-sin-source-edition-2.md) | 694 | `result-track:4ef3fbbee10b119fe9aac0350eb228d0cd3c8ab91c52092d2afa362e33ddf8f5` |
| 131 | `theorem` | [DifferentiableOn.sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiableon-sin.md) | 698 | `result-track:694a423f438c17fde5e01ddbd07d63e5843ca620c3f3a832601a159446882b61` |
| 132 | `theorem` | [Differentiable.sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/differentiable-sin-source-edition-3.md) | 702 | `result-track:f1d07110ccb5108bd8a0f2f368ad190c5725405eb8c0566b76855a9b44bea07b` |
| 133 | `theorem` | [fderivWithin_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/fderivwithin-sin.md) | 705 | `result-track:d00b5ff32c1b4893ee615e5e3d7673f22e297746b4c516772a3b183f69ed56d5` |
| 134 | `theorem` | [fderiv_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/fderiv-sin.md) | 710 | `result-track:60ab9e84b065ec78ddec2f8abb0e839ed5462015de481e87a8893b66b03d623d` |
| 135 | `theorem` | [ContDiff.sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiff-sin-source-edition-2.md) | 714 | `result-track:b5c6fd4ff681f1f815b9092383d53a953ab48d5211833ec433796bece8a871d0` |
| 136 | `theorem` | [ContDiffAt.sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiffat-sin.md) | 717 | `result-track:334d302f1d9be5c7635453c7ca88989f9acb69463bcab5c8cdbd94d3e4a5f1ec` |
| 137 | `theorem` | [ContDiffOn.sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiffon-sin.md) | 720 | `result-track:9571858075a7aead55e797326de713e103cc011b4a6e8f448f5813347669ba8b` |
| 138 | `theorem` | [ContDiffWithinAt.sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/contdiffwithinat-sin.md) | 723 | `result-track:10ca12e48dbbfafa7fee9ca35d4530e53659a3257e4fdb46441cd99e7b141fae` |
| 139 | `theorem` | [Complex.logDeriv_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/complex-logderiv-sin.md) | 730 | `result-track:801fbd5957386ffd2d1365ab279cd2d8a2b3faa10e4a7bdc375ed0b275eb53c7` |
| 140 | `theorem` | [Real.logDeriv_sin](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/real-logderiv-sin.md) | 735 | `result-track:8440fcdc9d7149dc2e2b838c79097fa68f6f5dd4009ae9ea0ab8c21eea8cc460` |
| 141 | `theorem` | [Complex.logDeriv_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/complex-logderiv-cos.md) | 740 | `result-track:ec2c6ee5bd1817e87e80eda72601bddeed20987ba3a4ca89673ee5522074c28b` |
| 142 | `theorem` | [Real.logDeriv_cos](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/real-logderiv-cos.md) | 745 | `result-track:c76a8c99a7668b4b6647b69156f51dbbfbfb73e486cf09b4b64d46d0cb0f8422` |
| 143 | `theorem` | [Complex.logDeriv_exp](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/complex-logderiv-exp.md) | 750 | `result-track:eb6e80ba7415c41cf64ed0d9d483cf99e5ff71dfd4e07a32d4b4d65a945a6a69` |
| 144 | `theorem` | [Real.logDeriv_exp](../../../../SpecialFunctions/TrigonometricDerivPublic.lean/declarations/real-logderiv-exp.md) | 755 | `result-track:f1533f00d4885cd413d83a9cf0dfce89d4fa335efd06bcfd973b47b406c98c3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e06be730ceb0d1c6715becce021a3ddf613769758d79ea133d6ddf576b2e3380 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc44a764cdb0db89c4c0fcfcc385bb904d2f4081ae5bd018785b84dbeb8d7744f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc44a764cdb0db89c4c0fcfcc385bb904d2f4081ae5bd018785b84dbeb8d7744f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
