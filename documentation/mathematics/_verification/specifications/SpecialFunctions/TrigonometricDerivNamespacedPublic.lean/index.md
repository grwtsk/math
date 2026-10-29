# Verification target: Trigonometric Deriv Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09f21613a3b25fbdcfee0951384e2af31962cb91",
  "lexical_observation_count": 144,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0f33ae955587826e4e0c890aee59fb5a00a7e5962827ad424554453776a79de3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09f21613a3b25fbdcfee0951384e2af31962cb91`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0f33ae955587826e4e0c890aee59fb5a00a7e5962827ad424554453776a79de3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0f33ae955587826e4e0c890aee59fb5a00a7e5962827ad424554453776a79de3.lean.json)

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
| 1 | `theorem` | [hasStrictDerivAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasstrictderivat-sin.md) | 42 | `result-track:220454e748bdc753424ce281510fa063c845f4ae750f38dea2baf895f4b1eca5` |
| 2 | `theorem` | [hasDerivAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasderivat-sin-source-edition-3.md) | 54 | `result-track:e9a7d0e351703257718eeb1b4d962189aa6352e50495ea5c6b26fb071997b416` |
| 3 | `theorem` | [isEquivalent_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/isequivalent-sin.md) | 57 | `result-track:c927fd128c1144e3a540eaa73bb61558486f215e7332efba558e392a4944a231` |
| 4 | `theorem` | [contDiff_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiff-sin-source-edition-2.md) | 60 | `result-track:6d2bb31364ad3971aca8f830ef2469d4a0dc963b020b8e0699b345430b70f9bf` |
| 5 | `theorem` | [differentiable_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiable-sin-source-edition-3.md) | 65 | `result-track:f6a0e56119a9cbe44718dd6713b28016ea8495c5aac1b59308e7c35980c6d9f2` |
| 6 | `theorem` | [differentiableAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiableat-sin.md) | 68 | `result-track:3465fc58215437107874fe47771ff9a6a4003cb1de6e6a502a86a10064fc0c31` |
| 7 | `lemma` | [analyticAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticat-sin-source-edition-2.md) | 73 | `result-track:a49f3cc16bae1401809b47e052519e970a662e097deaf77c2bb5044e7f086b2a` |
| 8 | `lemma` | [analyticWithinAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticwithinat-sin.md) | 77 | `result-track:3d5647769c7b4e43b44a877911b3605bcaad4335e33ccdf339ec28726d6b5658` |
| 9 | `theorem` | [analyticOnNhd_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticonnhd-sin.md) | 82 | `result-track:a38f1b5e8a6021f3d5e657aebbec9fcf2003bc5f210f39cd810760571894ce49` |
| 10 | `lemma` | [analyticOn_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticon-sin-source-edition-2.md) | 86 | `result-track:ee8e251bd2983397927e1026977b3fd1ae0744b3d44b0eaa880a4de8815e5c71` |
| 11 | `theorem` | [deriv_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/deriv-sin.md) | 90 | `result-track:38a755fa8ed7168367b2a4da453924fedfbbb76eee0a9c8da57ca1ec5c70d950` |
| 12 | `theorem` | [hasStrictDerivAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasstrictderivat-cos-source-edition-3.md) | 95 | `result-track:bef6615d264c45305ab2d130d767eb0547f808495e08fdb79fb4a0aed2478b94` |
| 13 | `theorem` | [hasDerivAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasderivat-cos-source-edition-2.md) | 105 | `result-track:b015ee9ae1d48a296ef54b1ed7b65eda872e65d22733a811d84a8335ade83879` |
| 14 | `theorem` | [contDiff_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiff-cos-source-edition-2.md) | 109 | `result-track:a43d5c6dfa6d3abdb70931c27e00c1b3992cf5fbb24b369e03b5b483fc96ee18` |
| 15 | `theorem` | [differentiable_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiable-cos-source-edition-3.md) | 113 | `result-track:f857b182fdcd03edcf657357b6ede2af8d7a2185ff3df1bdb3df659a40fb4c28` |
| 16 | `theorem` | [differentiableAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiableat-cos.md) | 116 | `result-track:45198da49b27cafcc9d125b05df8c81a247635181e23beba665aeb409bbc44b6` |
| 17 | `lemma` | [analyticAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticat-cos.md) | 121 | `result-track:c69d55333201d2f11d3b8c71a07f1fd284782d3f021a809b5b93b0e3fb0f4529` |
| 18 | `lemma` | [analyticWithinAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticwithinat-cos-source-edition-2.md) | 125 | `result-track:bcea50a12812d0e5959bab5e5268027a63c5ddef425e768d3d3a34539dbf157e` |
| 19 | `theorem` | [analyticOnNhd_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticonnhd-cos-source-edition-2.md) | 130 | `result-track:9afce0a116abeb6586c59f841df996eb8ad9a44f11c06f2a3773ed1b6cfe486f` |
| 20 | `lemma` | [analyticOn_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticon-cos-source-edition-2.md) | 134 | `result-track:83e76f119209134b60818256b5c6dd37e92823e2fe78d77599572c9924f11fdc` |
| 21 | `theorem` | [deriv_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/deriv-cos-source-edition-2.md) | 137 | `result-track:89ac99cc786d867c677e2f0c32aeabfbbb2b8193df68c40f574d017f0a05a17d` |
| 22 | `theorem` | [deriv_cos'](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/deriv-cos-source-edition-3.md) | 141 | `result-track:952dced02fe453001cf76f27a79b8587e52aa1537337f387f47ef94e64e06d05` |
| 23 | `theorem` | [HasStrictDerivAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasstrictderivat-ccos.md) | 156 | `result-track:77a3060c6c972f65f4e287694b70d76d8c5739ef9ff6bb35f5993ba67172a054` |
| 24 | `theorem` | [HasDerivAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasderivat-ccos.md) | 160 | `result-track:68dd4f50462ea161f77ff8352bf654f0b407a82433355cdafa655260ea8ea98b` |
| 25 | `theorem` | [HasDerivWithinAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasderivwithinat-ccos.md) | 164 | `result-track:ace8cda98b3dfefc8f6300a3abea95ceb7ac71362e7afd2fd3f24ee3192c5988` |
| 26 | `theorem` | [derivWithin_ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/derivwithin-ccos.md) | 168 | `result-track:7fb0731d33e9ed4dc988824d6516cbe82a1897fc6bc429098ad2fb6322a0ccb8` |
| 27 | `theorem` | [deriv_ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/deriv-ccos.md) | 173 | `result-track:59626a58b8d4603aa69305f005e21ab379cc3408b7c542c20d52cb0a40fe36d8` |
| 28 | `theorem` | [HasStrictDerivAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasstrictderivat-csin.md) | 180 | `result-track:6352cefd30fdbde097d591a3898eb7368e20fa97780fc4080d658dd2eb533e03` |
| 29 | `theorem` | [HasDerivAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasderivat-csin.md) | 184 | `result-track:3028a9a7444ec398e959399069c4e1ecbd39b43b4d0f520a8df24d4e3bad4ba8` |
| 30 | `theorem` | [HasDerivWithinAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasderivwithinat-csin.md) | 188 | `result-track:89196632c223578eb25382084058c23a028895eb444dc6af58b50327d9134516` |
| 31 | `theorem` | [derivWithin_csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/derivwithin-csin.md) | 192 | `result-track:d6de0efea289390bf69560c6965d38bf603f22d58828a9b88a9d2b98612330c2` |
| 32 | `theorem` | [deriv_csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/deriv-csin.md) | 197 | `result-track:34969206bd2ce7a53e2388f9d5dda3a15f43f1ad37f2f0827134924703efc24d` |
| 33 | `theorem` | [HasStrictFDerivAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasstrictfderivat-ccos.md) | 214 | `result-track:69173634a1f0c617d91818e9c559d3fba57020f3f2b5f750a8ef16119fb8ad99` |
| 34 | `theorem` | [HasFDerivAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasfderivat-ccos.md) | 218 | `result-track:a291a2cef577b8684b2b8d34a1f2f9b208b80f800867844ffe647b7139d47d35` |
| 35 | `theorem` | [HasFDerivWithinAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasfderivwithinat-ccos.md) | 222 | `result-track:b93e3ecd2867dffd7c7a94aaead7c0b5cdd0bc860fc07df4b37dd2bd640a3d62` |
| 36 | `theorem` | [DifferentiableWithinAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiablewithinat-ccos.md) | 226 | `result-track:cdce21a75ddf224c6ae97c20b684b6f5dd0216a3d2f0cae81bd089a0b0d79bb1` |
| 37 | `theorem` | [DifferentiableAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiableat-ccos.md) | 231 | `result-track:2633c426fe46acddbecc0bb1133854e93993343beb372b20e17b301abe2a7daa` |
| 38 | `theorem` | [DifferentiableOn.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiableon-ccos.md) | 235 | `result-track:e0e11c1a392d102fe3e75d9c99cecc9ad8a0b474d532b3e7bade68a4d4165a02` |
| 39 | `theorem` | [Differentiable.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiable-ccos.md) | 239 | `result-track:4942e91b78df8039cd60fb006566510f79aca5e501a3b11c8238b120c4217fc3` |
| 40 | `theorem` | [fderivWithin_ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/fderivwithin-ccos.md) | 242 | `result-track:af393f22827139dc1eda0bef1dbcb40b144554077dabdd3d1a44ba36931bb3d5` |
| 41 | `theorem` | [fderiv_ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/fderiv-ccos.md) | 247 | `result-track:34ca1b0e15f7932cb13398e8167ab10ef64939b9b4cfd3059327ac59141b0cf3` |
| 42 | `theorem` | [ContDiff.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiff-ccos.md) | 251 | `result-track:4fafec0651bf1f41a1bdacc9df6c55a89203c2083efdeaf78de10f8caa73bd62` |
| 43 | `theorem` | [ContDiffAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiffat-ccos.md) | 254 | `result-track:9feaf147bc72c620fc42f38daf533a3a3ff80f6155670690f7b401a960ab78ac` |
| 44 | `theorem` | [ContDiffOn.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiffon-ccos.md) | 258 | `result-track:0affeb827db4b64c48db75d853fab735042ec7d86f7b0059ea5163b3ee3e8480` |
| 45 | `theorem` | [ContDiffWithinAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiffwithinat-ccos.md) | 262 | `result-track:c5351a814772818e084711f37f4133e583b52b17b926d90b9b007baa5d1031fa` |
| 46 | `theorem` | [HasStrictFDerivAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasstrictfderivat-csin.md) | 269 | `result-track:6e4d25d486afa44be3d57dcdb96f165721cd7bb77bd4709a21900bf5d4a96384` |
| 47 | `theorem` | [HasFDerivAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasfderivat-csin.md) | 273 | `result-track:14cc999528b620e141513164d2e52c97dcbc0c2459f8e79cd3c5ee9a11813a77` |
| 48 | `theorem` | [HasFDerivWithinAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasfderivwithinat-csin.md) | 277 | `result-track:c440612ace55fc13aa82c95f98d6722b923d2af74adec785edc8b39b75d69c04` |
| 49 | `theorem` | [DifferentiableWithinAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiablewithinat-csin.md) | 281 | `result-track:d507df8334c5c569ae2b64de6fbb0f01e01f24eb58ec02476b11f9786ebd3d84` |
| 50 | `theorem` | [DifferentiableAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiableat-csin.md) | 286 | `result-track:20e2d11ddc5d24f47f4aa0600644bb94be645d4545064e53e337cbfa0163822b` |
| 51 | `theorem` | [DifferentiableOn.csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiableon-csin.md) | 290 | `result-track:660762826b89886dd9fbd68ca505ba19949d849ed51dc38a7f336edb42cd4575` |
| 52 | `theorem` | [Differentiable.csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiable-csin.md) | 294 | `result-track:8f8d1e86dc42ffa92adb757ce19e1c498c49b48292b252e8c96d397d682fd3cf` |
| 53 | `theorem` | [fderivWithin_csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/fderivwithin-csin.md) | 297 | `result-track:920e5f55df418c4e06ab3ac928c7f7e5088c66f3a32955389af9f0c0faf5167a` |
| 54 | `theorem` | [fderiv_csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/fderiv-csin.md) | 302 | `result-track:7e0ff16e317b055700718f6b7ee2275300485f9389af65581a55b978bbada573` |
| 55 | `theorem` | [ContDiff.csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiff-csin.md) | 306 | `result-track:3e9b02a9e948f2ffca3b7832c360c51ccf9889d1d274c5635d1cce53077d712f` |
| 56 | `theorem` | [ContDiffAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiffat-csin.md) | 309 | `result-track:e31a4a028f19f6b359949ffffb81041fb26fb8cc4cbba490568d5a1a30a44aab` |
| 57 | `theorem` | [ContDiffOn.csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiffon-csin.md) | 313 | `result-track:d92e1161e9fa9bfc70ff33e3d3e12a36da7e8a0d570b7d6e3e6c183e496a2b76` |
| 58 | `theorem` | [ContDiffWithinAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiffwithinat-csin.md) | 317 | `result-track:1936e97432e937004e5de3abd222682be9d7c03ff0c807e9e75e63e97256c486` |
| 59 | `theorem` | [hasStrictDerivAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasstrictderivat-sin-source-edition-3.md) | 327 | `result-track:f7826002ff0eb02a0a73bb4fd39fe8ea40fc188838b64bc0fb7963c8d8d77ae9` |
| 60 | `theorem` | [hasDerivAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasderivat-sin-source-edition-2.md) | 330 | `result-track:e3f83540e3005b4ce81f6120f55e7a0b4522485d392b0f26ace8e6bc80a6088a` |
| 61 | `theorem` | [isEquivalent_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/isequivalent-sin-source-edition-2.md) | 333 | `result-track:f47b82536f138ed13ded5a6f313fdd0ae170345b51cdbf96b7940d884d1e4a10` |
| 62 | `theorem` | [contDiff_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiff-sin.md) | 336 | `result-track:4c14fb7e5c918df3ec7040200ba25264cc5808c5d4002c5835bbadf0b9e201a9` |
| 63 | `theorem` | [differentiable_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiable-sin-source-edition-2.md) | 340 | `result-track:b56f8dc76ac3f847f2d7df4e55f694187984df01b12882affffeeae7f5609bec` |
| 64 | `theorem` | [differentiableAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiableat-sin-source-edition-2.md) | 343 | `result-track:b57309035b1c098847459807c55dda5b118e32351a61ec63b7ceac0d41b84e57` |
| 65 | `lemma` | [analyticAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticat-sin.md) | 348 | `result-track:55d69b2142c4aaaa1dcf2a18702f5f2ed92c66b0b4965131be084a8b800e7e00` |
| 66 | `lemma` | [analyticWithinAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticwithinat-sin-source-edition-2.md) | 352 | `result-track:4f4f341aaa5e6d74b2077a033dab677527b02372d4102eb8e8e889f465bb2eec` |
| 67 | `theorem` | [analyticOnNhd_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticonnhd-sin-source-edition-2.md) | 357 | `result-track:e64c58594ca5a33486c06ba8420e5ff38d695f92800344fcceb29d51168949bc` |
| 68 | `lemma` | [analyticOn_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticon-sin.md) | 361 | `result-track:61cbc68d0c80b0690c7b5e79605b4ba3794d9cc0a08546d5cdee28e1ea0a6011` |
| 69 | `theorem` | [deriv_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/deriv-sin-source-edition-2.md) | 365 | `result-track:9e3a7b60577c197da30643cbc2a1a3af4d5dc9ca82fc173896bdc6d02882541a` |
| 70 | `theorem` | [hasStrictDerivAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasstrictderivat-cos.md) | 368 | `result-track:1189f0f584bb113833c198b24eab03978048facb222e5c703ef79e6df6d24aaa` |
| 71 | `theorem` | [hasDerivAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasderivat-cos.md) | 371 | `result-track:754c73a095d9b2a19e9f258cd5a11a2a050da071ce2e5031d9ef9bb202b27cf7` |
| 72 | `theorem` | [contDiff_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiff-cos.md) | 375 | `result-track:1552a98c0539ca226697e14f88a5da441cbb09df74d0d5ef08232d0fa023332c` |
| 73 | `theorem` | [differentiable_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiable-cos.md) | 379 | `result-track:5a5bbfaf7a2b0b78e3d3f6dfa2d39ed56cfe3ea734757b7146e10141435ca621` |
| 74 | `theorem` | [differentiableAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiableat-cos-source-edition-3.md) | 382 | `result-track:bb76a4937ebc08992c1744a5ef65f3db46f783108f76a9c06a33b3d482423793` |
| 75 | `lemma` | [analyticAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticat-cos-source-edition-2.md) | 387 | `result-track:da64742876409abeab9c1f53047ed34b6b553c3faf4fee1eb7db39fe8dc4ea80` |
| 76 | `lemma` | [analyticWithinAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticwithinat-cos.md) | 391 | `result-track:034cabf5af6b62814d35a6021ae17657834de90fe69b6a1e2b8de6c3bc8dbbb0` |
| 77 | `theorem` | [analyticOnNhd_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticonnhd-cos.md) | 396 | `result-track:17ed77a23d60deb624d5c0572ef8a1b8829a89dc1e43ee449cc184538c713695` |
| 78 | `lemma` | [analyticOn_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/analyticon-cos.md) | 400 | `result-track:303960a690d8213313448181c5e3f62d68a5e78863ef2d46a811ff9e23b03260` |
| 79 | `theorem` | [deriv_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/deriv-cos-source-edition-5.md) | 403 | `result-track:d7d91967c037d2778a91d250e92ff835c796f46a7b991f69dcb9c38e3d463fb3` |
| 80 | `theorem` | [deriv_cos'](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/deriv-cos-source-edition-4.md) | 407 | `result-track:d65d6d33ec6d8132ebe0749a7e7179e4c7ff5ce21dcb7390b9fc2fcf2c41366a` |
| 81 | `theorem` | [iteratedDeriv_add_one_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderiv-add-one-sin.md) | 419 | `result-track:6f0b5e856f9a74c2e410446c5c22e7b6c7a4a1a4b08346a3bafc1dbb48a543ab` |
| 82 | `theorem` | [iteratedDeriv_add_one_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderiv-add-one-cos.md) | 427 | `result-track:1896ab3633ea20d38920809fa8df051060a51060e1a857292357260894d05e56` |
| 83 | `theorem` | [iteratedDeriv_even_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderiv-even-sin.md) | 437 | `result-track:42ad884dc262cf7e6ce4cebb2471b47f8127314bdfa7b652881141b4d2936393` |
| 84 | `theorem` | [iteratedDeriv_even_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderiv-even-cos.md) | 444 | `result-track:307a8d0ac98ca843aaf25a7d26aa4d95b6cb0a1c34f76d2d005eb673e6e20447` |
| 85 | `theorem` | [iteratedDeriv_odd_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderiv-odd-sin.md) | 450 | `result-track:a9794e9b5fd01130190230cea070ec5ba79441d70ab2e3dc6c6d8bc34efeb360` |
| 86 | `theorem` | [iteratedDeriv_odd_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderiv-odd-cos.md) | 453 | `result-track:4e7b278122ce0f7a1a9ebb9d72a684179ff4293233c9f65398f27bff5635d9fa` |
| 87 | `theorem` | [differentiable_iteratedDeriv_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiable-iteratedderiv-sin.md) | 456 | `result-track:b94c103be4384d3845c360aacb965c7522e167ba4a1e7466d035b4e34327c1d0` |
| 88 | `theorem` | [differentiable_iteratedDeriv_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiable-iteratedderiv-cos-source-edition-2.md) | 463 | `result-track:6998d587cc562e5d43889d90b805172317f61da00fd9847e59a5b870e12b8865` |
| 89 | `theorem` | [iteratedDeriv_add_one_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderiv-add-one-sin-source-edition-2.md) | 475 | `result-track:7f0ca02bfccf71217465bcd5b7c9cad59746e0f5dc39deed3efc54aee13526f3` |
| 90 | `theorem` | [iteratedDeriv_add_one_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderiv-add-one-cos-source-edition-2.md) | 483 | `result-track:444d2463a864b1a99ded96755054e3503a23c230c436fcb4441655aad161d1a6` |
| 91 | `theorem` | [iteratedDeriv_even_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderiv-even-sin-source-edition-2.md) | 493 | `result-track:f3f72ef5933f1181e5dab3e7bb262240a4647597787fa8a75b22a8c7f8d95130` |
| 92 | `theorem` | [iteratedDeriv_even_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderiv-even-cos-source-edition-2.md) | 500 | `result-track:63cc2c426fce3f60c1f3cc7655f5c65832004643891b6dff5e23b535a43768a1` |
| 93 | `theorem` | [iteratedDeriv_odd_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderiv-odd-sin-source-edition-2.md) | 506 | `result-track:d1ad70433dcb5933f5a1f27a6281e079b3d856447da3c1c1a86fb9fbfda8d201` |
| 94 | `theorem` | [iteratedDeriv_odd_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderiv-odd-cos-source-edition-2.md) | 509 | `result-track:85c1e5ae2399dfd59e5f23e76d730e917be2ddd3634ea46cb97fc18ff31270cd` |
| 95 | `theorem` | [differentiable_iteratedDeriv_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiable-iteratedderiv-sin-source-edition-2.md) | 512 | `result-track:e0445c40e60df78c8c7b4b1e217b6a1bce4b2c2595d3cc35a2afae48629663aa` |
| 96 | `theorem` | [differentiable_iteratedDeriv_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiable-iteratedderiv-cos.md) | 519 | `result-track:349122505c68d7257f10415f9ebe5dc124ad2eab45ee9546c1ce8d5b5f41595e` |
| 97 | `theorem` | [abs_iteratedDeriv_sin_le_one](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/abs-iteratedderiv-sin-le-one.md) | 526 | `result-track:221462a47ff1b8e77818c9efdab994c4624c45e200bf6a84df9ce7749fb41164` |
| 98 | `theorem` | [abs_iteratedDeriv_cos_le_one](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/abs-iteratedderiv-cos-le-one.md) | 533 | `result-track:e69a4510e935fbe357a194c9166aed5c27dd47a898ca7483812149170c21441b` |
| 99 | `theorem` | [iteratedDerivWithin_sin_Icc](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderivwithin-sin-icc.md) | 541 | `result-track:7a6ee2e48369b5165f1603e8030c5c75824a32b4bd19270de31680f9bb68cc41` |
| 100 | `theorem` | [iteratedDerivWithin_cos_Icc](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderivwithin-cos-icc.md) | 546 | `result-track:9caf746d09772db8b1bb0696ba6d37d42d36f461eb1dc6361cb9a160cb947b85` |
| 101 | `theorem` | [iteratedDerivWithin_sin_Ioo](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderivwithin-sin-ioo.md) | 551 | `result-track:839e00f7030957c32876a923637abff824dd0137a90f18149c145173bf771820` |
| 102 | `theorem` | [iteratedDerivWithin_cos_Ioo](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/iteratedderivwithin-cos-ioo.md) | 556 | `result-track:a7eace8df4302edb5af7987dd2f408288bf4f197df09e72fe2b276fc25b43fe5` |
| 103 | `theorem` | [HasStrictDerivAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasstrictderivat-cos-source-edition-2.md) | 574 | `result-track:6c5260bc8235d2f7365ce97b0619bb271b27faba958da199cdf0717b438eea10` |
| 104 | `theorem` | [HasDerivAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasderivat-cos-source-edition-3.md) | 578 | `result-track:eefba43aa3b1bad57e3f123ae25f71e942ae9169cdbcef660e1e0c7241bb0c6d` |
| 105 | `theorem` | [HasDerivWithinAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasderivwithinat-cos.md) | 582 | `result-track:0deadec32e26dbed783e7cd37067df817672063f4b1e99f0582b5b2d3e5a2853` |
| 106 | `theorem` | [derivWithin_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/derivwithin-cos.md) | 586 | `result-track:04621758c92ca8ef8680e19e6fe0f02ddeff49fd6cbd626f3bd21ff41e95205f` |
| 107 | `theorem` | [deriv_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/deriv-cos.md) | 591 | `result-track:1b7784f6d2f0c6f197c52dbbd123edb0459ce5f1a4c77d281229e4ea0f6c2802` |
| 108 | `theorem` | [HasStrictDerivAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasstrictderivat-sin-source-edition-2.md) | 598 | `result-track:e68f84f3dfa651f7d0dc32bbf6073f9ccfe686db896dbc9605c2c7b74dadba55` |
| 109 | `theorem` | [HasDerivAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasderivat-sin.md) | 602 | `result-track:d0f15331926c75e15b404d8d1c559052ecf94c07dbc0357645082741fdf9bceb` |
| 110 | `theorem` | [HasDerivWithinAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasderivwithinat-sin.md) | 606 | `result-track:cc29e0e09bf1bea3cc6cf618a12d74f743dd9dfdb827e976e578e74e72fffcea` |
| 111 | `theorem` | [derivWithin_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/derivwithin-sin.md) | 610 | `result-track:80c6f25b05fd456a87628c19369bfea2c43cc3a28ef35ed2c82b680424a3d106` |
| 112 | `theorem` | [deriv_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/deriv-sin-source-edition-3.md) | 615 | `result-track:e8c032877a209a6f6fcb7e8e2422b425ac3df43f557e98885b30605074b9c6a2` |
| 113 | `theorem` | [HasStrictFDerivAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasstrictfderivat-cos.md) | 632 | `result-track:60e76263427dfebc628eee0007103769e74c235c38f6b43ed2bbd99455b24729` |
| 114 | `theorem` | [HasFDerivAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasfderivat-cos.md) | 636 | `result-track:a001c83ad0de3d846caec4fe8b4e3a832af71ed8c4c185f2671c7d87eb27dde2` |
| 115 | `theorem` | [HasFDerivWithinAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasfderivwithinat-cos.md) | 640 | `result-track:d93e7bfdc5c73644eea0a43595b9406a3e547523d968501e1de31fbe937fe8f0` |
| 116 | `theorem` | [DifferentiableWithinAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiablewithinat-cos.md) | 644 | `result-track:e0d05649054aad2b98d18455ef9ca193fccf61183a480f890d6340e6429bea3c` |
| 117 | `theorem` | [DifferentiableAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiableat-cos-source-edition-2.md) | 649 | `result-track:858661cfdc8540abb7723016796e4932edaa9548486977e083b2a22f1101fc1d` |
| 118 | `theorem` | [DifferentiableOn.cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiableon-cos.md) | 653 | `result-track:40b820723ac8cee2448dbff8befa25c31586daa8a50ff5b8c7469478cab65d9b` |
| 119 | `theorem` | [Differentiable.cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiable-cos-source-edition-2.md) | 657 | `result-track:a3810a65a7c57df8e8ea100da2839607b6dd16277dc993736a992450c9aa2172` |
| 120 | `theorem` | [fderivWithin_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/fderivwithin-cos.md) | 660 | `result-track:2ca62b5ca8b66d4c9ec7d47cd6c628b10234809c46e92e1d411f01dfd020d3bc` |
| 121 | `theorem` | [fderiv_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/fderiv-cos.md) | 665 | `result-track:775990d899e7288bcfc56303c5fc3f45ddbcb75d9ee398d0eabf4e47cb25ea9f` |
| 122 | `theorem` | [ContDiff.cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiff-cos-source-edition-3.md) | 669 | `result-track:af57b93a9bc249f61b3405e82a5e640d12d6d0ec754dfc02b55a6e0500927ad4` |
| 123 | `theorem` | [ContDiffAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiffat-cos.md) | 672 | `result-track:bb579c45e2addbb84898f076155a0f4151fef0094e59315e87ec909db17f97a3` |
| 124 | `theorem` | [ContDiffOn.cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiffon-cos.md) | 675 | `result-track:3ed12511ca333c1957e7224f9d713c7afb7b09d22be6c294179a2e33984338b0` |
| 125 | `theorem` | [ContDiffWithinAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiffwithinat-cos.md) | 678 | `result-track:56326cfaccf7cda37d91ba04d49bd3c49054428331689c2ce9162c9a9363b9b4` |
| 126 | `theorem` | [HasStrictFDerivAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasstrictfderivat-sin.md) | 685 | `result-track:7faa41c269ed77df405e6987db7eb0b47a224b29f0e472c16ba8f2ec67e5a8c5` |
| 127 | `theorem` | [HasFDerivAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasfderivat-sin.md) | 689 | `result-track:86bde3df479d7a1c01e73bfb968369094177df35dceb8548c57363c95bf1acab` |
| 128 | `theorem` | [HasFDerivWithinAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/hasfderivwithinat-sin.md) | 693 | `result-track:6dd79032cc72772cecee8cdde9e0f12d6da1f2c51c6ee1a6edbfa66c8dfa5aad` |
| 129 | `theorem` | [DifferentiableWithinAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiablewithinat-sin.md) | 697 | `result-track:d155dbb404e38c7e589ef2afa1ba39dad5d2380047004183c7e7ccdea12d6394` |
| 130 | `theorem` | [DifferentiableAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiableat-sin-source-edition-3.md) | 702 | `result-track:daaac9b7ec494eef4dc3b350b57e69e3cf4839141c925d57c6016e0fcc0cc5c1` |
| 131 | `theorem` | [DifferentiableOn.sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiableon-sin.md) | 706 | `result-track:1907f6852892ca096e84dcdd72f5bfb3b167b1d8299b9eb6405aaa214d865fce` |
| 132 | `theorem` | [Differentiable.sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/differentiable-sin.md) | 710 | `result-track:b33529c774d802fbfbc661c97cfca3ed74ffcf3da2250c1c7819ddf599065d94` |
| 133 | `theorem` | [fderivWithin_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/fderivwithin-sin.md) | 713 | `result-track:9c1f1b0a7c3a47d5be2aa3e8ab6231e962f86f14df4e2738672de35508dc44cc` |
| 134 | `theorem` | [fderiv_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/fderiv-sin.md) | 718 | `result-track:b2f9d18bdd0921b4c69891baf4bcce12e7fe523c0698266557dbf6132c294f3b` |
| 135 | `theorem` | [ContDiff.sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiff-sin-source-edition-3.md) | 722 | `result-track:b69ae1bdb8944e9301d76d64664894692965ecd71b611485e4cd1f5c9331b787` |
| 136 | `theorem` | [ContDiffAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiffat-sin.md) | 725 | `result-track:8cc7580077b211256221b8c43452ff0f6bd0b594940ef7478af352b7f2c0399d` |
| 137 | `theorem` | [ContDiffOn.sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiffon-sin.md) | 728 | `result-track:32862093d7fd0483c066d7f336c26d086e8eb12a949df5f0731862bf54249589` |
| 138 | `theorem` | [ContDiffWithinAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/contdiffwithinat-sin.md) | 731 | `result-track:eb3cdd4329933fc51f1541db178afa86bdb7707ef8cd9ec4d4d383193dbc011c` |
| 139 | `theorem` | [Complex.logDeriv_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/complex-logderiv-sin.md) | 738 | `result-track:74d8bed3f8c23d8a6ea659fa6268cd16462acfc59cff2763e89e1526cb5f65ec` |
| 140 | `theorem` | [Real.logDeriv_sin](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/real-logderiv-sin.md) | 743 | `result-track:74672143d4ac3eff0fec2c6c0a9437463da0b29f7be73744a6719ba225eb3970` |
| 141 | `theorem` | [Complex.logDeriv_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/complex-logderiv-cos.md) | 748 | `result-track:b765610f894ac4b71738904faeeb8ea862abc49123ee0cc1c0128913584786ca` |
| 142 | `theorem` | [Real.logDeriv_cos](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/real-logderiv-cos.md) | 753 | `result-track:d1524822540732c8b7ff98d0a1d3538b8c1d2c868537bede381ce5b303522b93` |
| 143 | `theorem` | [Complex.logDeriv_exp](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/complex-logderiv-exp.md) | 758 | `result-track:6614bd99d73af0d7fbe39b98a5b85117356a9e47f043841fafe35bb66f57fc03` |
| 144 | `theorem` | [Real.logDeriv_exp](../../../../SpecialFunctions/TrigonometricDerivNamespacedPublic.lean/declarations/real-logderiv-exp.md) | 763 | `result-track:5938b5c6539531f286e786fc85d76ffb0fd714b02102de1ac7257836585fbf0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d249b7337e0353f2ded266e864a7c839b8454b2336b51f6ca2a16f999962510 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0f33ae955587826e4e0c890aee59fb5a00a7e5962827ad424554453776a79de3.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0f33ae955587826e4e0c890aee59fb5a00a7e5962827ad424554453776a79de3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
