# Verification target: Diffeomorph Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c257b2570657633197939c06452f7a4e7b1dd120",
  "lexical_observation_count": 102,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variant077bc7d6ffed47ed4daf67615380238ffa4652bbfe7a5ccb7d9aa9e31bdc7be6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/DiffeomorphPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/DiffeomorphPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c257b2570657633197939c06452f7a4e7b1dd120`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variant077bc7d6ffed47ed4daf67615380238ffa4652bbfe7a5ccb7d9aa9e31bdc7be6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Diffeomorph/Variant077bc7d6ffed47ed4daf67615380238ffa4652bbfe7a5ccb7d9aa9e31bdc7be6.lean.json)

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
| 1 | `structure` | [Diffeomorph](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/diffeomorph.md) | 82 | `declaration-track:ea67248062a5ea39b6c22ba5c186732e5ba42d15cb0003f98505577b4d8b2b7c` |
| 2 | `theorem` | [toEquiv_injective](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/toequiv-injective.md) | 104 | `result-track:52c98e6b819e7ec4148cafaccf7864bce2acd65dc9335518b9af2ceb79814195` |
| 3 | `instance` | [(anonymous)](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/instance.md) | 108 | `declaration-track:0a64907eb6197806052e19c63cf0f90b673d7b6416407b0ecb2a7e73032a7c20` |
| 4 | `def` | [toContMDiffMap](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/tocontmdiffmap.md) | 117 | `declaration-track:a9566b3b32bf35f8d7c582f032747fdb9db39f36f823cae0f248c2e051baace7` |
| 5 | `instance` | [(anonymous)](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/instance-source-edition-3.md) | 120 | `declaration-track:3e3cd2d61afbd6f84a7154f9a2be939eb249100a091499bce55429fa6188a28f` |
| 6 | `theorem` | [continuous](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/continuous.md) | 124 | `result-track:247f2c49fb2c598672ef0cfd66a1800c41399dd6d997ed639af585d9aec2c6b8` |
| 7 | `theorem` | [contMDiff](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiff.md) | 127 | `result-track:59b03b0787b413fcb152832578818f0166a52f92166aa9a3ee8dc9a5a1812b97` |
| 8 | `theorem` | [contMDiffAt](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiffat.md) | 130 | `result-track:7ec3db845ea623ebe6ad2225de7443dbe5f2472e6f2c8cacf1317f8db576dd73` |
| 9 | `theorem` | [contMDiffWithinAt](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiffwithinat.md) | 133 | `result-track:7ec1db9111f85b5bceb6b85e5b76cdfeee1e4b85924dbca4f65217452197b5d5` |
| 10 | `theorem` | [contDiff](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contdiff.md) | 136 | `result-track:89c50d2836c20d34a082a2d5c88be89a41421b7b5b780e9fa56b0b8070a37c48` |
| 11 | `theorem` | [mdifferentiable](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/mdifferentiable.md) | 139 | `result-track:6043c64b6e860362263d104bc248ea79027ef581872253f498380052fea80048` |
| 12 | `theorem` | [mdifferentiableOn](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/mdifferentiableon.md) | 142 | `result-track:24ef90ae874de40d092e21d99959c73c9ceb57050b83306c1e834a41bad58cb2` |
| 13 | `theorem` | [coe_toEquiv](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coe-toequiv.md) | 146 | `result-track:49d2b0464a34b0e1ac3a4abbec55d1d81804b29b1327b6ff35b0b3a8f8b5ef79` |
| 14 | `theorem` | [coe_coe](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coe-coe.md) | 150 | `result-track:5f30fc87a91a861a7c183e40c066379535a7717fa9fffe4f79d9a75956be8660` |
| 15 | `theorem` | [toEquiv_inj](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/toequiv-inj.md) | 154 | `result-track:7f2c6f12fb5b1994114885c326e1c336e2a0a3cbaaf65e7affd27bed50e6cf81` |
| 16 | `theorem` | [coeFn_injective](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coefn-injective.md) | 158 | `result-track:13a104516f64e5458bfc9f0818dad9de82fabedd7cfda6aefd0491cae3e094bf` |
| 17 | `theorem` | [ext](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/ext.md) | 162 | `result-track:17ded18feb1b7173d55d20b8722f7316f78782b2cf4c674d006e1661720e0f36` |
| 18 | `instance` | [(anonymous)](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/instance-source-edition-2.md) | 165 | `declaration-track:32c66d44fa940c3fbfc27e02d1e6979b0b9bbb5e86ed5eac72887a025aa7a2a4` |
| 19 | `def` | [refl](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/refl.md) | 173 | `declaration-track:31ff91d5812a11ebe2137975b3b9c8b581ef41333d4655145f8cffd9a4aed355` |
| 20 | `theorem` | [refl_toEquiv](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/refl-toequiv.md) | 179 | `result-track:4a84175603135192e94609c0fe95cf8f949e12cbaf714892fc8f385030956570` |
| 21 | `theorem` | [coe_refl](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coe-refl.md) | 183 | `result-track:df0e25b45623000c3dcfc2a1de3a5e73c7b2940724a969a02c8ce01bcefca390` |
| 22 | `def` | [trans](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/trans.md) | 190 | `declaration-track:fc9f642c95516e632235da02cbf1dd32afa19ab36d87193275740b5d9ab4f294` |
| 23 | `theorem` | [trans_refl](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/trans-refl.md) | 196 | `result-track:28eefef4f9f7978a502004e238e37cb13f263222a5d080ffcfe28ad5ebaa8a94` |
| 24 | `theorem` | [refl_trans](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/refl-trans.md) | 200 | `result-track:3c8c6f3a1c56056e72325c2b47ebbccbb40ee302a5814c1aa6abeca7cd977c92` |
| 25 | `theorem` | [coe_trans](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coe-trans.md) | 204 | `result-track:a0611ffada6c506a0b83e9a18fb55048eb5d60828448b4880be7483297119ee0` |
| 26 | `def` | [symm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/symm.md) | 209 | `declaration-track:a6f125cc33b30c0791727ff2db9a593bfe2d2cf3ffc632452eb19124ff8cab9e` |
| 27 | `theorem` | [apply_symm_apply](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/apply-symm-apply.md) | 215 | `result-track:39d64209fd04c2ab7e57e86d88b31707ebe0a23d3f5a2564e5b03567a94d7e26` |
| 28 | `theorem` | [symm_apply_apply](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/symm-apply-apply.md) | 219 | `result-track:50844b27f9bfcee4fa2c9a1efbf5347354442f0109f74ae0e70a9f9b9e5098a9` |
| 29 | `theorem` | [symm_refl](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/symm-refl.md) | 223 | `result-track:ab829fa3d54490dbbda43d79fbf2fff0d5d7d0ab318b46690b3a9f9c61205852` |
| 30 | `theorem` | [self_trans_symm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/self-trans-symm.md) | 227 | `result-track:efc951ec24254a861eeb7d3080f69c3c9cf789ff9b5576be7e92664c4c5f1f45` |
| 31 | `theorem` | [symm_trans_self](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/symm-trans-self.md) | 231 | `result-track:d50d3e6a5b1a60c4c9550442e3561acf1ec61c483e553e4ad380b189f51c3d7b` |
| 32 | `theorem` | [symm_trans'](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/symm-trans.md) | 235 | `result-track:7f5f97050a766aa053392c829a3670af66d5c0e620e1181e0b2cb2b8cdd89ef1` |
| 33 | `theorem` | [symm_toEquiv](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/symm-toequiv.md) | 240 | `result-track:b8cc80f03e7ab84317fb90d8705379bc848450cf57ff7c2e4c059d200478bdb4` |
| 34 | `theorem` | [toEquiv_coe_symm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/toequiv-coe-symm.md) | 244 | `result-track:7a84bc2286a4781a05760d66a0e73b31d64fc0034c02dc90a67bbeaae5baf50f` |
| 35 | `theorem` | [image_eq_preimage_symm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/image-eq-preimage-symm.md) | 247 | `result-track:8cf2862fbe3b5d70b68ed244ebf6b497ff332f0c3be936c607fc0a856a25178e` |
| 36 | `theorem` | [symm_image_eq_preimage](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/symm-image-eq-preimage.md) | 250 | `result-track:9dd567007b9ec70005e0210f7bf5c133e924cd31be2f8cd690cbc036263029e9` |
| 37 | `theorem` | [range_comp](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/range-comp.md) | 254 | `result-track:08fb29c76f8decb3376c07b56adbb4972afcae3c2bbf692ed681abd5520010bc` |
| 38 | `theorem` | [image_symm_image](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/image-symm-image.md) | 259 | `result-track:9faabc55ab082cad4306c30dc7b45cfa00c432a13f971edf3a8955e09a221f3e` |
| 39 | `theorem` | [symm_image_image](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/symm-image-image.md) | 263 | `result-track:f94e4c61e95e7c64f6715af5246ef8ff10657f205876eddc0605f5fc9e844a4f` |
| 40 | `def` | [toHomeomorph](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/tohomeomorph.md) | 267 | `declaration-track:cd9b2f71d85ea838355a9eaba2cba0dfb8a5e4d08730a9e84ed4b4ed6cbd990e` |
| 41 | `theorem` | [toHomeomorph_toEquiv](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/tohomeomorph-toequiv.md) | 271 | `result-track:6f45a45dbb5f93cdc6f4ed24d2bda06daabb586d61fc94f97adc4e516b936d1c` |
| 42 | `theorem` | [symm_toHomeomorph](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/symm-tohomeomorph.md) | 275 | `result-track:a0a7bf499e93b8179224b45cf6622463865c281ab7a009611c199c61030fdf9e` |
| 43 | `theorem` | [coe_toHomeomorph](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coe-tohomeomorph.md) | 279 | `result-track:7709a4a0ae4a27c4892b740e5e3529cbbb3cc7f9a480584ea7d63dfea6bfff34` |
| 44 | `theorem` | [coe_toHomeomorph_symm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coe-tohomeomorph-symm.md) | 283 | `result-track:5c4c88f0e1c573a36f63de13837280ef5a9daef2b0df5df5ed5062d6ed157c38` |
| 45 | `theorem` | [contMDiffWithinAt_comp_diffeomorph_iff](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiffwithinat-comp-diffeomorph-iff.md) | 287 | `result-track:0886924053be514b0a95e186a8280d5c6a70df2ee1e7f9edeeb9157897e561dc` |
| 46 | `theorem` | [contMDiffOn_comp_diffeomorph_iff](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiffon-comp-diffeomorph-iff.md) | 299 | `result-track:75e11a3bcb60cd36302ce56cb137fe460d86817f655ad1bafd232566850e0272` |
| 47 | `theorem` | [contMDiffAt_comp_diffeomorph_iff](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiffat-comp-diffeomorph-iff.md) | 306 | `result-track:7d18325ae40f65f6c383575ddfdbfc8d24c7cb98338eb87270e95fb2cc77f5a6` |
| 48 | `theorem` | [contMDiff_comp_diffeomorph_iff](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiff-comp-diffeomorph-iff.md) | 311 | `result-track:2f424a624431ceb9d4372cdb88b4418dd459658882a478e15f1fefa5f13e1c8d` |
| 49 | `theorem` | [contMDiffWithinAt_diffeomorph_comp_iff](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiffwithinat-diffeomorph-comp-iff.md) | 316 | `result-track:faf7ed526af1b95ea53ececd277bf93d99f8a798be89b4376ac5ddcb837964e2` |
| 50 | `theorem` | [contMDiffAt_diffeomorph_comp_iff](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiffat-diffeomorph-comp-iff.md) | 324 | `result-track:1a4e63da3a9f01d91f1db0fb100e43db2dbb297afc94a7e49db3065a6069d2a3` |
| 51 | `theorem` | [contMDiffOn_diffeomorph_comp_iff](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiffon-diffeomorph-comp-iff.md) | 329 | `result-track:ebbdb3befd3c68b93124cc8395bd02659161728eb563d0a420d2a98643e4da95` |
| 52 | `theorem` | [contMDiff_diffeomorph_comp_iff](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiff-diffeomorph-comp-iff.md) | 334 | `result-track:de94180e51b035aab672c7610404a63177802213c86145706bee456e1655902a` |
| 53 | `theorem` | [toOpenPartialHomeomorph_mdifferentiable](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/toopenpartialhomeomorph-mdifferentiable.md) | 338 | `result-track:a34aa7c0ea18287ac356ec0f73758f6864838aad9aaa27034c44beda1252b771` |
| 54 | `theorem` | [uniqueMDiffOn_image_aux](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/uniquemdiffon-image-aux.md) | 342 | `result-track:626905b54dcb4d159f95c292e0900e6ada72b26ab0dfcd101772f6aca29fb982` |
| 55 | `theorem` | [uniqueMDiffOn_image](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/uniquemdiffon-image.md) | 348 | `result-track:7f7c601884ca5b69eba2a460fd7adf3c417705b3ae60ea8afdabe3a95e4c8412` |
| 56 | `theorem` | [uniqueMDiffOn_preimage](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/uniquemdiffon-preimage.md) | 354 | `result-track:508363e217db29d56ab2f50ae87c5c3130018c5ddab41087f76b719582ac360a` |
| 57 | `theorem` | [uniqueDiffOn_image](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/uniquediffon-image.md) | 359 | `result-track:81e060d352405b800da63ab852efb218471559e817de3dcfcb111952fe040ed5` |
| 58 | `theorem` | [uniqueDiffOn_preimage](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/uniquediffon-preimage.md) | 364 | `result-track:7529c251f6afc3b89ee69da2b438b06b2e09b2b280ee34f2c6bdf913435f56cc` |
| 59 | `def` | [toDiffeomorph](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/todiffeomorph.md) | 375 | `declaration-track:28a6ca8ea5ad7e0060241f45ef3eb23098047e071a4763bc49890e20499a7ae0` |
| 60 | `theorem` | [coe_toDiffeomorph](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coe-todiffeomorph.md) | 381 | `result-track:f32cdfe75791a6a4589f226827ee7eaca7d964867b3138ac4ed66736111c2bb3` |
| 61 | `theorem` | [symm_toDiffeomorph](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/symm-todiffeomorph.md) | 385 | `result-track:074660e8d557abe21d1e0802690631997e8603f6125650b0e715edae6ba923ae` |
| 62 | `theorem` | [coe_toDiffeomorph_symm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coe-todiffeomorph-symm.md) | 389 | `result-track:758aeb36a27f1fb1fd12a017af41b1347005947521214feff059bb55a5799497` |
| 63 | `def` | [transContinuousLinearEquiv](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/transcontinuouslinearequiv.md) | 399 | `declaration-track:04dedd1d853bb474cebef912682d8b160cb8ff580755f7c5857552f7986b0d3c` |
| 64 | `theorem` | [coe_transContinuousLinearEquiv](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coe-transcontinuouslinearequiv.md) | 425 | `result-track:ebcefbf916146c87f6e2c3813c4e738693402963778997a4c3bea080451fed1e` |
| 65 | `theorem` | [coe_transContinuousLinearEquiv_symm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coe-transcontinuouslinearequiv-symm.md) | 429 | `result-track:5992d08ba702e9985c037d696f8cdab26c544bd80bce010fde3da9a8b0082315` |
| 66 | `theorem` | [transContinuousLinearEquiv_range](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/transcontinuouslinearequiv-range.md) | 432 | `result-track:c306108bac0945026662e582ded50ceaecb42da046b9b0fff8cd5c5e86db6982` |
| 67 | `theorem` | [coe_extChartAt_transContinuousLinearEquiv](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coe-extchartat-transcontinuouslinearequiv.md) | 435 | `result-track:4df85eb519cddc1d1cf7dfc5e27ac32422fa1a0fbe78290aad4fc1761fc27a22` |
| 68 | `theorem` | [coe_extChartAt_transContinuousLinearEquiv_symm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coe-extchartat-transcontinuouslinearequiv-symm.md) | 439 | `result-track:b1b842171039ad85861d5d1bd5641892b7cca3370619d0a02b364505db5aed17` |
| 69 | `theorem` | [extChartAt_transContinuousLinearEquiv_target](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/extchartat-transcontinuouslinearequiv-target.md) | 443 | `result-track:93fa59a67e09c3aebfe9a399e114193fbea276c9da119ada66009b8102d66d19` |
| 70 | `instance` | [instIsManifoldtransContinuousLinearEquiv](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/instismanifoldtranscontinuouslinearequiv.md) | 455 | `declaration-track:3a9121124d76adb6085af7f2784ff10019ce872269105927ae072c9063df0d5b` |
| 71 | `def` | [toTransContinuousLinearEquiv](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/totranscontinuouslinearequiv.md) | 467 | `declaration-track:53f937985c527d37daa8afc414987e595ad19f1fa2e1c573ad79eb1aedef766a` |
| 72 | `theorem` | [contMDiffWithinAt_transContinuousLinearEquiv_right](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiffwithinat-transcontinuouslinearequiv-right.md) | 488 | `result-track:6c9ef3464eb1cd81398a14c65de19842f1913460eb99c573708d5a369d79398a` |
| 73 | `theorem` | [contMDiffAt_transContinuousLinearEquiv_right](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiffat-transcontinuouslinearequiv-right.md) | 494 | `result-track:c4ab9f4e4633d958a0e0932b5205c3602bbc1acfe0428164171fb309bedcc97d` |
| 74 | `theorem` | [contMDiffOn_transContinuousLinearEquiv_right](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiffon-transcontinuouslinearequiv-right.md) | 499 | `result-track:f01c469b2fa265aa586a6f4280de180034f48897ad4b58aa55528ac3f1d82068` |
| 75 | `theorem` | [contMDiff_transContinuousLinearEquiv_right](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiff-transcontinuouslinearequiv-right.md) | 504 | `result-track:29ec9aa6a4f250312fc74514d2ae576de0ca53f00ad2984ac986ac48bfa05586` |
| 76 | `theorem` | [contMDiffWithinAt_transContinuousLinearEquiv_left](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiffwithinat-transcontinuouslinearequiv-left.md) | 509 | `result-track:07580bb610dc01a999ece86b23d2e9ab26bc76774b121d842e3b28f5385a7696` |
| 77 | `theorem` | [contMDiffAt_transContinuousLinearEquiv_left](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiffat-transcontinuouslinearequiv-left.md) | 514 | `result-track:7ed825726a56ac65b4a22088d32fa373ac6d57c3fe667507a0301de385961cfe` |
| 78 | `theorem` | [contMDiffOn_transContinuousLinearEquiv_left](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiffon-transcontinuouslinearequiv-left.md) | 519 | `result-track:4e622f134f2b67db014210b069d9f8f9162b4b491ba13eb74c4a30e833341227` |
| 79 | `theorem` | [contMDiff_transContinuousLinearEquiv_left](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/contmdiff-transcontinuouslinearequiv-left.md) | 524 | `result-track:794426a7a25b095c674c9045b55bdb6a92a424aa62e49582b52c558b0b059707` |
| 80 | `def` | [prodCongr](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/prodcongr.md) | 537 | `declaration-track:dbb6bd11d7548c74795fd06948d27ecd3263a802ca0c0fab24df421c67fc2cd5` |
| 81 | `theorem` | [prodCongr_symm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/prodcongr-symm.md) | 545 | `result-track:04d67dbf8dcad2d44fa2837471d8277253ed711a8dc230abf1e35ffc6a278960` |
| 82 | `theorem` | [coe_prodCongr](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coe-prodcongr.md) | 550 | `result-track:9c4e77f6014975edab00d27b783c221a03f104b86636ccd610e9051d39e0e6a9` |
| 83 | `def` | [prodComm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/prodcomm.md) | 559 | `declaration-track:ddd3c34d272ea7316fb96b507f47f92df140844529d13ea1949e51205d05764a` |
| 84 | `theorem` | [prodComm_symm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/prodcomm-symm.md) | 565 | `result-track:570cf376749c200be3ac3290b80a5bd3a2a42b3b3617d04e2644446438cc0b72` |
| 85 | `theorem` | [coe_prodComm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/coe-prodcomm.md) | 569 | `result-track:5733d7bd26aee6a69e7d0b69ecf8802d3a92c4b85a126d6f0056f0827340635c` |
| 86 | `def` | [prodAssoc](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/prodassoc.md) | 573 | `declaration-track:2c1334ac8b73ef35e262f75d256e76dcd9bf23970d1befc4ea11de4acdf2e079` |
| 87 | `def` | [sumCongr](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumcongr.md) | 594 | `declaration-track:a2d9c46823921dfcdea33d9022331143b807b3132bc89a330475c446721e9700` |
| 88 | `lemma` | [sumCongr_symm_symm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumcongr-symm-symm.md) | 600 | `result-track:a21853b448fd1081391f14b9b6f0902c547c782ffc01dadd6d0da4147f2e2fd4` |
| 89 | `lemma` | [sumCongr_coe](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumcongr-coe.md) | 604 | `result-track:94040089c8f5ce49989f32f5d09d288bdd69a1cbc7ea8bc83aa41e657898d59e` |
| 90 | `lemma` | [sumCongr_inl](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumcongr-inl.md) | 607 | `result-track:30c5e7e965a2da6a0aa320c76264c4bbc921d2cd7bf446f2e3dbaff7515e18ed` |
| 91 | `lemma` | [sumCongr_inr](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumcongr-inr.md) | 610 | `result-track:439cddefd5f747da5f18dfe5db7f049321dfe24cf79be6a94d695a27ab986fb2` |
| 92 | `def` | [sumComm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumcomm.md) | 615 | `declaration-track:45be86294ae3999fd2c964c4b6cc0fafe661f2e40e0183825547df7e1f081d8c` |
| 93 | `theorem` | [sumComm_coe](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumcomm-coe.md) | 621 | `result-track:a5a10255d3884b663050f7024e57da9634a84c27f986835513d4b054eb114e8e` |
| 94 | `theorem` | [sumComm_symm](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumcomm-symm.md) | 624 | `result-track:6f09eaa49ca2955089347284a27d717569253f17864349dd0221c9d92f20686a` |
| 95 | `lemma` | [sumComm_inl](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumcomm-inl.md) | 627 | `result-track:d96f97553e621db755cf4111d665f033623f2382d2ec8948c23845d781b94f0a` |
| 96 | `lemma` | [sumComm_inr](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumcomm-inr.md) | 632 | `result-track:059b7e98507468e150655c0f824575bc51ca5435020ea1aba4889eb3134ae800` |
| 97 | `def` | [sumAssoc](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumassoc.md) | 638 | `declaration-track:62ba3d470d0b79cf749a0c6da3eb474a5b98d790179d086049ebe446721c3ac5` |
| 98 | `theorem` | [sumAssoc_coe](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumassoc-coe.md) | 650 | `result-track:fc2ba58640df3ca952421b602f07b474b814ed1d37585d2e4351758f7927d95d` |
| 99 | `def` | [sumEmpty](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumempty.md) | 655 | `declaration-track:5ee77924274a9385079875c0ab32caecce5ec38e36bcdd9629257369e99b4d4b` |
| 100 | `theorem` | [sumEmpty_toEquiv](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumempty-toequiv.md) | 661 | `result-track:9d6152f0180528cc648ff7289c8f5769609d75c3a2b9fe391b031eef87d648d6` |
| 101 | `lemma` | [sumEmpty_apply_inl](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/sumempty-apply-inl.md) | 664 | `result-track:82e9772253f1e19e769c8d4f653ddca37f3c9dafc4efa70b507c949af4d980dc` |
| 102 | `def` | [empty](../../../../DifferentialGeometry/DiffeomorphPublic.lean/declarations/empty.md) | 667 | `declaration-track:8f88ef7ee7bbe2d623730689cb2e4230854e2a34a1470d07fded6418d6f8c00c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ebc3a55eed1a8a90b9713c6992be7ba095785870ba14a7a68da46e305d834d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variant077bc7d6ffed47ed4daf67615380238ffa4652bbfe7a5ccb7d9aa9e31bdc7be6.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Diffeomorph/Variant077bc7d6ffed47ed4daf67615380238ffa4652bbfe7a5ccb7d9aa9e31bdc7be6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
