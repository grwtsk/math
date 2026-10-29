# Verification target: Equiv Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5115ebd8cc13e0c5aadce48c6d8b11a5bcc72b9d",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantdc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/EquivPublic.lean/index.md) · [Full source](../../../../RealFunctions/EquivPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5115ebd8cc13e0c5aadce48c6d8b11a5bcc72b9d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantdc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantdc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean.json)

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
| 1 | `theorem` | [hasStrictFDerivAt](../../../../RealFunctions/EquivPublic.lean/declarations/hasstrictfderivat-source-edition-2.md) | 50 | `result-track:f396993a690c985bbc98024d043c771b0e334468e463f7c6dcb686e7fcff95f8` |
| 2 | `theorem` | [hasFDerivWithinAt](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivwithinat-source-edition-2.md) | 54 | `result-track:5efa49574ebac2cfa73162108f0e8f07a96e0e974cfffb15cac48dec7b750cba` |
| 3 | `theorem` | [hasFDerivAt](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivat.md) | 58 | `result-track:20a329ce8c7f41735d71903c4e0942fc92cfb1fce7cb6931dbeb7a9b94d9e3f6` |
| 4 | `theorem` | [differentiableAt](../../../../RealFunctions/EquivPublic.lean/declarations/differentiableat.md) | 62 | `result-track:331132489b4a8f57e447ce98fec89ed4ec64ac7a9a632d9f7e6fffe429316325` |
| 5 | `theorem` | [differentiableWithinAt](../../../../RealFunctions/EquivPublic.lean/declarations/differentiablewithinat-source-edition-2.md) | 66 | `result-track:f8398d0b5d16a2cd46be255158392e4f082e8bfb49624d150ff544472f135a16` |
| 6 | `theorem` | [fderiv](../../../../RealFunctions/EquivPublic.lean/declarations/fderiv.md) | 69 | `result-track:493d06c6349b6004b8ae9b8fa470a2f6f50bb75db8b5950412b06ae272103e71` |
| 7 | `theorem` | [fderivWithin](../../../../RealFunctions/EquivPublic.lean/declarations/fderivwithin-source-edition-2.md) | 72 | `result-track:5e9f69eb85b9e3332db8a26558569c4a52e5544684940f903cde57f6ab4dd526` |
| 8 | `theorem` | [differentiable](../../../../RealFunctions/EquivPublic.lean/declarations/differentiable.md) | 76 | `result-track:4a4d67db1f2b3beb90d742ca7045de7ca697695fde6e3b02a48f0e9eefad5986` |
| 9 | `theorem` | [differentiableOn](../../../../RealFunctions/EquivPublic.lean/declarations/differentiableon-source-edition-2.md) | 79 | `result-track:d886c574a9057be53061ebf9b48df3fafdd355aaebe4ba414cf5384f702955ed` |
| 10 | `theorem` | [comp_differentiableWithinAt_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-differentiablewithinat-iff.md) | 82 | `result-track:7e4b65155887d296a8200b80044b7ff446788574a640e4ebd14bdf2ec8afcfc7` |
| 11 | `theorem` | [comp_differentiableAt_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-differentiableat-iff-source-edition-2.md) | 89 | `result-track:c093a4236f0db7b0076e26350980080f884ee99f4942506a1b080ba8eea639b7` |
| 12 | `theorem` | [comp_differentiableOn_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-differentiableon-iff.md) | 94 | `result-track:276c974e70294c32889a1e9e7a873d4801f2cd7c2dae5e1a4b4df3482f843d98` |
| 13 | `theorem` | [comp_differentiable_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-differentiable-iff-source-edition-2.md) | 99 | `result-track:87c48aeb5371b4de429ecf22179a3d4d6765ff4056fe1061498117dfdd808e4c` |
| 14 | `theorem` | [comp_hasFDerivWithinAt_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-hasfderivwithinat-iff-source-edition-4.md) | 103 | `result-track:f00c7b7c5d1d73a8845080f34c53bc47693ae765bbba951afde37f45b71f71a1` |
| 15 | `theorem` | [comp_hasStrictFDerivAt_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-hasstrictfderivat-iff.md) | 109 | `result-track:06aca03cd40bf1e5bfc94cf89db6363bf1812c629b840185a559ea210362eab8` |
| 16 | `theorem` | [comp_hasFDerivAt_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-hasfderivat-iff.md) | 115 | `result-track:1aa3616cb71bc05bda4a67838c5b44cb05b3814e4908b00a083cf7cba76d6646` |
| 17 | `theorem` | [comp_hasFDerivWithinAt_iff'](../../../../RealFunctions/EquivPublic.lean/declarations/comp-hasfderivwithinat-iff-source-edition-3.md) | 119 | `result-track:9262f31372af52e696ad01bb768f069ff702d3df9c57157b00dcf9dcec3c80bd` |
| 18 | `theorem` | [comp_hasFDerivAt_iff'](../../../../RealFunctions/EquivPublic.lean/declarations/comp-hasfderivat-iff-source-edition-4.md) | 125 | `result-track:cc9acd07177f17707a3fdf27c74a7e5bd6a3ce3fd44ec68bfd355631feb45763` |
| 19 | `theorem` | [comp_fderivWithin](../../../../RealFunctions/EquivPublic.lean/declarations/comp-fderivwithin-source-edition-2.md) | 129 | `result-track:b1aaf8f1b2e31c9181f35fd778ef7061366739fa01c3fad53e3ee69588dc9dfa` |
| 20 | `theorem` | [comp_fderiv](../../../../RealFunctions/EquivPublic.lean/declarations/comp-fderiv-source-edition-3.md) | 137 | `result-track:e00437dc3dd30a109261ff66e32da9d76b4d51a1cd0da700b14ca876479b08d3` |
| 21 | `lemma` | [_root_.fderivWithin_continuousLinearEquiv_comp](../../../../RealFunctions/EquivPublic.lean/declarations/root-fderivwithin-continuouslinearequiv-comp.md) | 142 | `result-track:e0ef9deec5474f8157009e37884f33d104c964315111230a94790e1b1ecbcd0a` |
| 22 | `lemma` | [_root_.fderiv_continuousLinearEquiv_comp](../../../../RealFunctions/EquivPublic.lean/declarations/root-fderiv-continuouslinearequiv-comp-source-edition-2.md) | 149 | `result-track:06aaaf5ed91eff472c8b19a91117f65bc332552b624d16c538686f0b5f59d725` |
| 23 | `lemma` | [_root_.fderiv_continuousLinearEquiv_comp'](../../../../RealFunctions/EquivPublic.lean/declarations/root-fderiv-continuouslinearequiv-comp.md) | 155 | `result-track:01bcefd636b7c2e8365d42b00a02d82b09c5b421182d3c06b23a0a9a61a06adf` |
| 24 | `theorem` | [comp_right_differentiableWithinAt_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-right-differentiablewithinat-iff.md) | 161 | `result-track:f7101911773bf3f313594fdedc99c99490135def72603cc90483f22c71d747c6` |
| 25 | `theorem` | [comp_right_differentiableAt_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-right-differentiableat-iff.md) | 171 | `result-track:5d1614338c5aa50f4ea10c8e69d61b92659866c646fb74c6f0c5ac130b73aead` |
| 26 | `theorem` | [comp_right_differentiableOn_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-right-differentiableon-iff.md) | 176 | `result-track:b022bce379a4dc8432c2cc87d79499cd673078378c9834329a932b7c6c5fc608` |
| 27 | `theorem` | [comp_right_differentiable_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-right-differentiable-iff.md) | 183 | `result-track:7d8b403caab8883e77b26687699cf9bf3631446250617c8baafa7f192dead4a8` |
| 28 | `theorem` | [comp_right_hasFDerivWithinAt_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-right-hasfderivwithinat-iff-source-edition-2.md) | 187 | `result-track:b6c016412f8f2f820964443e41257a731a0302c57c5dd34172455916fefbb76b` |
| 29 | `theorem` | [comp_right_hasFDerivAt_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-right-hasfderivat-iff.md) | 202 | `result-track:325598ee2feda45f8c2e1386ff4fbb16d7f5858e9b43c764b38f25d587531348` |
| 30 | `theorem` | [comp_right_hasFDerivWithinAt_iff'](../../../../RealFunctions/EquivPublic.lean/declarations/comp-right-hasfderivwithinat-iff.md) | 206 | `result-track:3a01aba3e389831f68d86105140e2d842bd0a07e9dd8933e6c3193fce5feb813` |
| 31 | `theorem` | [comp_right_hasFDerivAt_iff'](../../../../RealFunctions/EquivPublic.lean/declarations/comp-right-hasfderivat-iff-source-edition-2.md) | 212 | `result-track:5d3d11c1448c44bf64b92c6694b7a9deb132169ad72f2b586b87a101e80abbe5` |
| 32 | `theorem` | [comp_right_fderivWithin](../../../../RealFunctions/EquivPublic.lean/declarations/comp-right-fderivwithin.md) | 216 | `result-track:d49d4811425ca1415d42f8caf08ea2147728748c872b65df2e96e8869a0c360d` |
| 33 | `theorem` | [comp_right_fderiv](../../../../RealFunctions/EquivPublic.lean/declarations/comp-right-fderiv.md) | 228 | `result-track:a8c69efc4c040f00c82eb8984b8fee0c260178384e7661d2ca38933805f9c74b` |
| 34 | `theorem` | [hasStrictFDerivAt](../../../../RealFunctions/EquivPublic.lean/declarations/hasstrictfderivat.md) | 243 | `result-track:cf6e3bf06efcb7d06065332a5b7b9eaeccd31f539314cca8a8ae3dcb99781ebc` |
| 35 | `theorem` | [hasFDerivWithinAt](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivwithinat.md) | 247 | `result-track:00e5c4922ff0d3e154e1a9f7cc7888aeba64f47e2d0fb4404bd47e0f19063c3e` |
| 36 | `theorem` | [hasFDerivAt](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivat-source-edition-2.md) | 251 | `result-track:be2d03c81afee66722a61314a1bf0032a5fc62eaeeb107e3a640d06f92b450cb` |
| 37 | `theorem` | [differentiableAt](../../../../RealFunctions/EquivPublic.lean/declarations/differentiableat-source-edition-2.md) | 255 | `result-track:5214bffe9bb2b439357a567092ea36cae436334d0f20f8475039cd320f4c2718` |
| 38 | `theorem` | [differentiableWithinAt](../../../../RealFunctions/EquivPublic.lean/declarations/differentiablewithinat.md) | 259 | `result-track:90137bcd428d9de66a29d861552ee61b3d4638fd0969b700751451b2ed8bf777` |
| 39 | `theorem` | [fderiv](../../../../RealFunctions/EquivPublic.lean/declarations/fderiv-source-edition-2.md) | 262 | `result-track:4c60c030bef0083c6aee39c5ee21f0b84008987f283ca183249b5284f96a81af` |
| 40 | `theorem` | [fderivWithin](../../../../RealFunctions/EquivPublic.lean/declarations/fderivwithin.md) | 265 | `result-track:519db63f307a20c55d467b797d5300320c231c6da6daf7f9dd73a5589efa57be` |
| 41 | `theorem` | [differentiable](../../../../RealFunctions/EquivPublic.lean/declarations/differentiable-source-edition-2.md) | 269 | `result-track:caab0ccbb2de74232238c4d9568ed22082debcec6b745b0be7824477da8b9bf5` |
| 42 | `theorem` | [differentiableOn](../../../../RealFunctions/EquivPublic.lean/declarations/differentiableon.md) | 272 | `result-track:0897411e6182d7041a3c2fc83a5b9838cd66a4b5bf4525a93da25d8a5845dbeb` |
| 43 | `theorem` | [comp_differentiableWithinAt_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-differentiablewithinat-iff-source-edition-2.md) | 275 | `result-track:bc8ee0f7f0d3e15036a4a8295655df9e2bce8c22f3b79c327456b3ffe2c66826` |
| 44 | `theorem` | [comp_differentiableAt_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-differentiableat-iff.md) | 279 | `result-track:35ba6546781287a128606ba7da4440d60d42f0ea0a48373ab23a9a11044e8141` |
| 45 | `theorem` | [comp_differentiableOn_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-differentiableon-iff-source-edition-2.md) | 283 | `result-track:4efc499778d4742d91ba07a4a8adfc7c37c4fcbb33690075eb676dbb18422a74` |
| 46 | `theorem` | [comp_differentiable_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-differentiable-iff.md) | 287 | `result-track:537169d15115f1a573afe599cf512c3b6c41e77b5398be209fec4b8e21cbf32b` |
| 47 | `theorem` | [comp_hasFDerivWithinAt_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-hasfderivwithinat-iff.md) | 290 | `result-track:0bf45745059641cbe65455be253dca244bc32a04089eb872c9b1f54effb2a8cd` |
| 48 | `theorem` | [comp_hasStrictFDerivAt_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-hasstrictfderivat-iff-source-edition-2.md) | 294 | `result-track:ef2be04dcbd84d10d99fd39f041acf0526c24663dbcd8a04438f8674478dc9b5` |
| 49 | `theorem` | [comp_hasFDerivAt_iff](../../../../RealFunctions/EquivPublic.lean/declarations/comp-hasfderivat-iff-source-edition-3.md) | 298 | `result-track:ac296b7dff82ff17163bf219641323b5158d190a167ac743b5a4465df419aca0` |
| 50 | `theorem` | [comp_hasFDerivWithinAt_iff'](../../../../RealFunctions/EquivPublic.lean/declarations/comp-hasfderivwithinat-iff-source-edition-2.md) | 302 | `result-track:7a8eb09d23651be34ceb1ab7a9a821ff162bcd2835ff68a70501b4e8369a5e73` |
| 51 | `theorem` | [comp_hasFDerivAt_iff'](../../../../RealFunctions/EquivPublic.lean/declarations/comp-hasfderivat-iff-source-edition-2.md) | 306 | `result-track:5cbff889415bdd4637dbb55a5b05c13ee32979c56f2694d529db97d23077729c` |
| 52 | `theorem` | [comp_fderivWithin](../../../../RealFunctions/EquivPublic.lean/declarations/comp-fderivwithin.md) | 310 | `result-track:420cf3c6a86275cbc0010e37d1699f8b86b6742094439a3ef91eacf1ab06735b` |
| 53 | `theorem` | [comp_fderiv](../../../../RealFunctions/EquivPublic.lean/declarations/comp-fderiv.md) | 314 | `result-track:5ded6a60078be73cec7c64d394c27fb2e6a9f7a59c3dbb081b1b9dd1bc4d7db0` |
| 54 | `theorem` | [comp_fderiv'](../../../../RealFunctions/EquivPublic.lean/declarations/comp-fderiv-source-edition-2.md) | 318 | `result-track:9c13fb067b5b3d03712296364fe7c407d75103089672917349a577d275289d72` |
| 55 | `theorem` | [HasFDerivWithinAt.tendsto_nhdsWithin_nhdsNE](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivwithinat-tendsto-nhdswithin-nhdsne.md) | 325 | `result-track:64bfe46dd9234ddb14bd571e1b0e5a3ae72eef8819e6123f5f8b5cbabe71e237` |
| 56 | `theorem` | [HasFDerivWithinAt.eventually_ne](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivwithinat-eventually-ne.md) | 339 | `result-track:28bf36ebf04c876be9e07bcec2b01d7fabb97ef09a89a9e0968408ddfddf08f9` |
| 57 | `theorem` | [HasFDerivWithinAt.eventually_notMem](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivwithinat-eventually-notmem.md) | 347 | `result-track:4efbd4f4599beb97db7b7c871d8d05de057e4f93971aed313424e0e1d7ba918f` |
| 58 | `theorem` | [HasFDerivAt.tendsto_nhdsNE](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivat-tendsto-nhdsne.md) | 353 | `result-track:b2e1a029e359a1a3703466417b433028c76b3b2d74335d67c0868c91543761a4` |
| 59 | `theorem` | [HasFDerivAt.eventually_ne](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivat-eventually-ne.md) | 357 | `result-track:1e4fde6dfbccc59a68e14bc6b311b4c3bdf0d3a26d38611fe587a186df455290` |
| 60 | `theorem` | [HasFDerivAt.eventually_notMem](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivat-eventually-notmem.md) | 361 | `result-track:b6481074ffcb262c711b9ce45d80ba4a1ac5ff462d84dc40b6005d72e8e36adb` |
| 61 | `theorem` | [has_fderiv_at_filter_real_equiv](../../../../RealFunctions/EquivPublic.lean/declarations/has-fderiv-at-filter-real-equiv.md) | 378 | `result-track:3f09f6eddabad6e1075bc8b06eccf43a25e111283f2ae76dcc1c3f0541879bfc` |
| 62 | `theorem` | [HasFDerivAt.lim_real](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivat-lim-real.md) | 386 | `result-track:0a0e127189e2a456a8bc33551b4dfffa9e006a777c2c7b76dd6073cb318ebda2` |
| 63 | `theorem` | [HasFDerivWithinAt.mapsTo_tangent_cone](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivwithinat-mapsto-tangent-cone.md) | 404 | `result-track:97c7d9f6b47935860ad69a787acbd2b49aa91768b8ebfec6b9481fa4369d18ea` |
| 64 | `theorem` | [HasFDerivWithinAt.uniqueDiffWithinAt](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivwithinat-uniquediffwithinat.md) | 418 | `result-track:dd23b2644bad7814bc440b0211589a81e03cbd4197039b083d175ceca4558e57` |
| 65 | `theorem` | [UniqueDiffOn.image](../../../../RealFunctions/EquivPublic.lean/declarations/uniquediffon-image.md) | 427 | `result-track:4426c60bb292ca5bdb1b4b5478c919f46b0e9cadf0634b9d1998089545877f1a` |
| 66 | `theorem` | [HasFDerivWithinAt.uniqueDiffWithinAt_of_continuousLinearEquiv](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivwithinat-uniquediffwithinat-of-continuouslinearequiv.md) | 432 | `result-track:2ca8a490fcce52e37c98a76506ab5f92278f964456c64a691440b9cf7404702e` |
| 67 | `theorem` | [ContinuousLinearEquiv.uniqueDiffOn_image](../../../../RealFunctions/EquivPublic.lean/declarations/continuouslinearequiv-uniquediffon-image.md) | 437 | `result-track:5c228a8f294731f13b031f82be32eb531cef3db37b8221022a20ad5e13fa95b2` |
| 68 | `theorem` | [ContinuousLinearEquiv.uniqueDiffOn_image_iff](../../../../RealFunctions/EquivPublic.lean/declarations/continuouslinearequiv-uniquediffon-image-iff.md) | 442 | `result-track:91ae1fc77fe1d13cb2b91f2ffe40dcd2f8e4f611634bf40338977ea6c9c6114a` |
| 69 | `theorem` | [ContinuousLinearEquiv.uniqueDiffOn_preimage_iff](../../../../RealFunctions/EquivPublic.lean/declarations/continuouslinearequiv-uniquediffon-preimage-iff.md) | 447 | `result-track:f341b2c61b60f1fd274892ecb130d9b564c64783054d2207320cf0ebb0ecc793` |
| 70 | `theorem` | [UniqueDiffWithinAt.smul](../../../../RealFunctions/EquivPublic.lean/declarations/uniquediffwithinat-smul.md) | 451 | `result-track:7de70fe213eea9a630b4d75f33c0e7580d70883ed64bbfb4bf22838c52d568e8` |
| 71 | `theorem` | [UniqueDiffWithinAt.smul_iff](../../../../RealFunctions/EquivPublic.lean/declarations/uniquediffwithinat-smul-iff.md) | 458 | `result-track:25dc684f483e82b9a291f7a15aa8d8ccb4aa56069943c1d1aafc7b5006435d74` |
| 72 | `theorem` | [hasFDerivWithinAt_comp_smul_smul_iff](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivwithinat-comp-smul-smul-iff.md) | 472 | `result-track:697826e799a15108c75580c5304b07e069ac74fef5211ca49565bbb92e62e414` |
| 73 | `theorem` | [hasFDerivWithinAt_comp_smul_iff_smul](../../../../RealFunctions/EquivPublic.lean/declarations/hasfderivwithinat-comp-smul-iff-smul.md) | 483 | `result-track:4883b760b3c3a5b7ee8bb0587dd8f481c7c66f644bed3b3dd5e615257af0f62a` |
| 74 | `theorem` | [fderivWithin_comp_smul_eq_fderivWithin_smul](../../../../RealFunctions/EquivPublic.lean/declarations/fderivwithin-comp-smul-eq-fderivwithin-smul.md) | 490 | `result-track:d208d1165429aa80d3a67e465fa05c7195749f8e08ca3432ec2a3e9b4f0cce9b` |
| 75 | `theorem` | [fderivWithin_comp_smul](../../../../RealFunctions/EquivPublic.lean/declarations/fderivwithin-comp-smul.md) | 497 | `result-track:07f6c9f0bb706cfcac3225bc97599a8485cc9ecd458d5da59733ace417f7b8f7` |
| 76 | `theorem` | [fderiv_comp_smul](../../../../RealFunctions/EquivPublic.lean/declarations/fderiv-comp-smul.md) | 504 | `result-track:be86fd11247db984821f1be2b57cf78fb26821a07320ad83d280fd24587d40bb` |
| 77 | `theorem` | [fderivWithin_comp_neg](../../../../RealFunctions/EquivPublic.lean/declarations/fderivwithin-comp-neg.md) | 508 | `result-track:fff4977c9868693d239424cb0b21106e4152363f752dfa56ee092c35163de914` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=273883b98f7873b37ebf19027732af4662a35e8325fced656affadb8ee26908b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantdc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantdc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
