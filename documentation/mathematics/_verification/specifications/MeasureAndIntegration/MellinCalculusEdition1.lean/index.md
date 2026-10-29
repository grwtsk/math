# Verification target: Mellin Calculus Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f22ae8e17fe1f5fd42d4e9f74d3ba017d20468c5",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f22ae8e17fe1f5fd42d4e9f74d3ba017d20468c5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MellinCalculus/Variant0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lemma` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegrableOn` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Auxiliary` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MeasureTheory.setIntegral_integral_swap](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/measuretheory-setintegral-integral-swap.md) | 15 | `result-track:a1d8806c4299b6ed00c93ab5414d483c73cd3bc24e61b92812cd116076632802` |
| 2 | `lemma` | [MeasureTheory.integral_comp_mul_right_I0i_haar](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/measuretheory-integral-comp-mul-right-i0i-haar.md) | 34 | `result-track:aae9b0da4982a95096b6855d882721632c8cbd5416137f4963bb69fd35072e1f` |
| 3 | `lemma` | [MeasureTheory.integral_comp_mul_right_I0i_haar_real](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/measuretheory-integral-comp-mul-right-i0i-haar-real.md) | 46 | `result-track:51ba4c8cc3e8f35c92c3a8c5bca95c709ccae0bef9fee5481e21d438a55387cd` |
| 4 | `lemma` | [MeasureTheory.integral_comp_mul_left_I0i_haar](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/measuretheory-integral-comp-mul-left-i0i-haar.md) | 51 | `result-track:5de37aa907a20978df83d24a8d1bbbd901ce74c29131424f2883996ca3ad1134` |
| 5 | `lemma` | [MeasureTheory.integral_comp_rpow_I0i_haar_real](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/measuretheory-integral-comp-rpow-i0i-haar-real.md) | 57 | `result-track:ddc2eba8c003652926a6e5fd0939dfb41e7576b5cb53c376749436433caa4933` |
| 6 | `lemma` | [MeasureTheory.integral_comp_inv_I0i_haar](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/measuretheory-integral-comp-inv-i0i-haar.md) | 65 | `result-track:4fa6848d93280df5e2a098d65212fbe75f717d1aca76e20057bcf54911909eac` |
| 7 | `lemma` | [MeasureTheory.integral_comp_div_I0i_haar](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/measuretheory-integral-comp-div-i0i-haar.md) | 76 | `result-track:f62b94940493d552b6beea302e4e62fabd087a19516be373b6835a0e8040db23` |
| 8 | `theorem` | [Complex.ofReal_rpow](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/complex-ofreal-rpow.md) | 86 | `result-track:2d2873076f00bca6fea2980df520d49869fb15d17f7d4327da9798506f03ba37` |
| 9 | `lemma` | [Function.support_abs](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/function-support-abs.md) | 93 | `result-track:96d948e705bc21afc66058ddc27636f78495459f05b56f94ff9c874ae75d3b27` |
| 10 | `lemma` | [Function.support_ofReal](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/function-support-ofreal.md) | 98 | `result-track:24cc2ca18b966ff0f3935379c855fc1cbb76d11896751b43f083b814e5df33cd` |
| 11 | `lemma` | [Function.support_mul_subset_of_subset](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/function-support-mul-subset-of-subset.md) | 102 | `result-track:e8f83fd4406f4f2b22f84597958a5f0fdd5b43424de6bacaf8779f191b778470` |
| 12 | `lemma` | [Function.support_of_along_fiber_subset_subset](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/function-support-of-along-fiber-subset-subset.md) | 106 | `result-track:2e56d236183d82313303eb2241dfcea51fed57b528616b2b675988a5110bcd15` |
| 13 | `lemma` | [Function.support_deriv_subset_Icc](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/function-support-deriv-subset-icc.md) | 116 | `result-track:5e585984229c86b1c88e4ca6bf1052722471262220568da63c20c934dd8f79fd` |
| 14 | `lemma` | [IntervalIntegral.integral_eq_integral_of_support_subset_Icc](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/intervalintegral-integral-eq-integral-of-support-subset-icc.md) | 124 | `result-track:1a9fed69cdf601c7715dd59f41f433a9acd4c90519bda845c0914c3b67a55f81` |
| 15 | `lemma` | [SetIntegral.integral_eq_integral_inter_of_support_subset](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/setintegral-integral-eq-integral-inter-of-support-subset.md) | 141 | `result-track:edf9bf4a35f0c1841ef98bee4d0061a0034f2e5988881e6697ca4fd7aab29861` |
| 16 | `lemma` | [SetIntegral.integral_eq_integral_inter_of_support_subset_Icc](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/setintegral-integral-eq-integral-inter-of-support-subset-icc.md) | 147 | `result-track:db156cfa2628174c25e6a98cb83339c54e5c904a97707a4f5b3af5649ea533be` |
| 17 | `lemma` | [intervalIntegral.norm_integral_le_of_norm_le_const'](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/intervalintegral-norm-integral-le-of-norm-le-const.md) | 154 | `result-track:34f7b2fe855734782fcb24172668d2f61f7bfb0d26e259e2b30c65ff4cd43ea8` |
| 18 | `lemma` | [Filter.TendstoAtZero_of_support_in_Icc](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/filter-tendstoatzero-of-support-in-icc.md) | 161 | `result-track:794a8f08d10e4afb7399b3e229af97ce374f66a394e8a190dd4ec3ebd6649421` |
| 19 | `lemma` | [Filter.TendstoAtTop_of_support_in_Icc](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/filter-tendstoattop-of-support-in-icc.md) | 169 | `result-track:dc68b2925198b46ac56651d8ac5fe3a129ba2df202f3fdbf9ae44c4e28f8031f` |
| 20 | `lemma` | [Filter.BigO_zero_atZero_of_support_in_Icc](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/filter-bigo-zero-atzero-of-support-in-icc.md) | 177 | `result-track:8fb35605bac87d840a1bf40a28c95caf031144d5958965eec68884325e9c444c` |
| 21 | `lemma` | [Filter.BigO_zero_atTop_of_support_in_Icc](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/filter-bigo-zero-attop-of-support-in-icc.md) | 185 | `result-track:fc80b721276bf817f78e256991438531d91ae7251d74b26dae9a1fe58047a8b0` |
| 22 | `lemma` | [deriv.ofReal_comp'](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/deriv-ofreal-comp.md) | 193 | `result-track:125ac60c04958172f9cc19ac813092c011f5ca1edab12e9e88f2f6a10ae538e5` |
| 23 | `lemma` | [deriv.comp_ofReal'](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/deriv-comp-ofreal.md) | 197 | `result-track:8d2d93431a6775230eb115edbdd67ad08cd836664301b7e4fbef4fdfa9891536` |
| 24 | `lemma` | [PartialIntegration](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/partialintegration.md) | 215 | `result-track:d1078b1771c4fac074cd082dfce63719c8e563e8549d28b375ec6d5150cb5f3b` |
| 25 | `lemma` | [PartialIntegration_of_support_in_Icc](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/partialintegration-of-support-in-icc.md) | 229 | `result-track:9d7628eff82500cc12b21532f584416de7b58ed875ea5f1616158a1ba7c288e9` |
| 26 | `def` | [MellinConvolution](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/mellinconvolution.md) | 287 | `declaration-track:20fd6a984ed8710404ba5a5bf1c691f0134729cf0da17d417a27ca96f827353d` |
| 27 | `lemma` | [MellinConvolutionSymmetric](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/mellinconvolutionsymmetric.md) | 315 | `result-track:6de8cf3bc271dbe6e6e4d7da42697a0c5c9330a610d9e1b851147fbefb1c1111` |
| 28 | `lemma` | [support_MellinConvolution_subsets](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/support-mellinconvolution-subsets.md) | 327 | `result-track:f1fe75cc34b5cbe61ef3d0583392e1ed89cc638d0c986d0ef1255f617d20a7fb` |
| 29 | `lemma` | [support_MellinConvolution](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/support-mellinconvolution.md) | 349 | `result-track:694fa6e1881fab309cbc26418ca2d025e0422e0d4c3b93568d81df55e259d5a2` |
| 30 | `lemma` | [MellinConvolutionTransform](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/mellinconvolutiontransform.md) | 392 | `result-track:3847fc71af3250ed703b9c443dd582a6c57ca9bbbe91520128d5470c2512647e` |
| 31 | `lemma` | [mem_within_strip](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/mem-within-strip.md) | 436 | `result-track:ce287454cb08864c1edf9f9203d937df3f831ae98370f12e48daddcd6b3a4510` |
| 32 | `lemma` | [MellinOfPsi_aux](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/mellinofpsi-aux.md) | 442 | `result-track:ad724738636d25afb0725a1e94dcd19af39b06419d6b8d6ed1325d13d769acf0` |
| 33 | `lemma` | [MellinOfPsi](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/mellinofpsi.md) | 514 | `result-track:9a7012f48a5302906dbeea21e8821492051d7bd30ff900b5d72f613aecff8887` |
| 34 | `def` | [DeltaSpike](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/deltaspike.md) | 583 | `declaration-track:727fbf46407f8c704984727011a4658d5b338f3a849fef0f459679bc88af04ef` |
| 35 | `lemma` | [DeltaSpikeMass](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/deltaspikemass.md) | 601 | `result-track:05059413d54976c55a7f6fa41ebfb1d3f50a0f28290d8ccb4bc416834c8434f3` |
| 36 | `lemma` | [DeltaSpikeSupport_aux](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/deltaspikesupport-aux.md) | 621 | `result-track:6ae466ec9f1737d16f93bb674ff86280e0102f4fe87ff6c0ce0fcd810713edbf` |
| 37 | `lemma` | [DeltaSpikeSupport'](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/deltaspikesupport.md) | 635 | `result-track:7c48cdcd3ce9577bb3669c4a362e3e8b29a90d60b44605a6d9e8b6e03c2fc32f` |
| 38 | `lemma` | [DeltaSpikeSupport](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/deltaspikesupport-source-edition-2.md) | 644 | `result-track:f4ffe1cc36803d616ba68fc56c8b16fa46eeb3b4e74462a4862d231992f4acd2` |
| 39 | `lemma` | [DeltaSpikeContinuous](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/deltaspikecontinuous.md) | 650 | `result-track:a68e8017a027a0b515cca136b990be2801c519bb974f626d6fdea1c1d16cc56a` |
| 40 | `lemma` | [DeltaSpikeOfRealContinuous](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/deltaspikeofrealcontinuous.md) | 655 | `result-track:08c5d6795afff6e23a3f02811f8ae0e7356a2ef0e8ab095eaa1a968df5e87839` |
| 41 | `theorem` | [MellinOfDeltaSpike](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/mellinofdeltaspike.md) | 670 | `result-track:ff5ded73fcfc7698d79aa8006486de201448b38ec3fa4e0a1e3472b6baf62a06` |
| 42 | `lemma` | [MellinOfDeltaSpikeAt1](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/mellinofdeltaspikeat1.md) | 694 | `result-track:0ae1f0c3456d32c4d393ef8a8f5b15b6155136660c8fac24a761c56bb9d704ba` |
| 43 | `lemma` | [MellinOfDeltaSpikeAt1_asymp](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/mellinofdeltaspikeat1-asymp.md) | 735 | `result-track:eda97dfb148d27bfcafc5c9fd4dbe214e194e35f8e267b915c845429db1a4c8a` |
| 44 | `lemma` | [MellinOf1](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/mellinof1.md) | 777 | `result-track:70b8f70b4e15c18691fefecc20fa733ea317019293ec0fe3c99e131b90ec86bf` |
| 45 | `def` | [Smooth1](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/smooth1.md) | 808 | `declaration-track:d1dd530919fea7225a49d1dc579342597a7dc48df72ba41affd3c5e8d1755367` |
| 46 | `lemma` | [Smooth1_def_ite](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/smooth1-def-ite.md) | 813 | `result-track:5f7684c0b9b63f475b9130e4334c6e9f74cd85c47843e31a8b0831183f6baaa0` |
| 47 | `lemma` | [Smooth1Properties_estimate](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/smooth1properties-estimate.md) | 837 | `result-track:aa5d2737f75321708520638f4c4d70f8eac86bd425dc0d02a95f6ef67a2c7e2c` |
| 48 | `lemma` | [Smooth1Properties_below_aux](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/smooth1properties-below-aux.md) | 871 | `result-track:7e867a1d2d00bc5185b5eebaf3df22f1fbddc2cd35240d942ed136b385a842d6` |
| 49 | `lemma` | [Smooth1Properties_below](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/smooth1properties-below.md) | 922 | `result-track:4a7b3450e2b376395909d4fbd2762fd56dbfde9025e14cf5f7c4a33a1d6df0b0` |
| 50 | `lemma` | [Smooth1Properties_above_aux](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/smooth1properties-above-aux.md) | 954 | `result-track:3f04d625a880640cdd4f41e045a18407f894317c5eb1ab6d1d8c1891fc951d66` |
| 51 | `lemma` | [Smooth1Properties_above_aux2](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/smooth1properties-above-aux2.md) | 981 | `result-track:a927b1ecac2b8b9b8139d5a858295ff03b7bb6e1af9a308434000b280f3a6665` |
| 52 | `lemma` | [Smooth1Properties_above](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/smooth1properties-above.md) | 1032 | `result-track:e2dea630589e86204bc2de8d2ca8b2a504a8a3dbc9c1e7955e151042fad7e81b` |
| 53 | `lemma` | [DeltaSpikeNonNeg_of_NonNeg](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/deltaspikenonneg-of-nonneg.md) | 1069 | `result-track:55884a8810868176c7299c3ef17a5fb3f23589af5803adcf0dc8ef9cb7add975` |
| 54 | `lemma` | [MellinConvNonNeg_of_NonNeg](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/mellinconvnonneg-of-nonneg.md) | 1077 | `result-track:f65f752ef27d7f8dbe484be90df980e11dc41b96e638c721c199463267449688` |
| 55 | `lemma` | [Smooth1Nonneg](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/smooth1nonneg.md) | 1104 | `result-track:b416932d761cda06a1a567d793f1c9679d25b73943ad733a3aecd83018ba745c` |
| 56 | `lemma` | [Smooth1LeOne_aux](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/smooth1leone-aux.md) | 1112 | `result-track:6f8eacfdb9dd029e3f39298290d5b45feafeaa784f94a54769a8fccaf682d0fc` |
| 57 | `lemma` | [Smooth1LeOne](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/smooth1leone.md) | 1152 | `result-track:acbb159242576d00ce7e5f33abc7bd733f6c65e90c6629f0e3febb768d1b83e7` |
| 58 | `lemma` | [MellinOfSmooth1a](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/mellinofsmooth1a.md) | 1243 | `result-track:de22bf55e729c3a778af63d3e93e6a63fd092ad2bbf7f6ed43520449e17b2d29` |
| 59 | `lemma` | [MellinOfSmooth1b](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/mellinofsmooth1b.md) | 1326 | `result-track:ecca34f28236c9f089a34bc80f5e391a6aa67fc58841d7198c967b71bba0a4f1` |
| 60 | `lemma` | [MellinOfSmooth1c](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/mellinofsmooth1c.md) | 1366 | `result-track:333ac7100b0e6eeba683c0e37d1d9390213bf4568170edb93d5290bcbff84316` |
| 61 | `lemma` | [Smooth1ContinuousAt](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/smooth1continuousat.md) | 1395 | `result-track:dbf6fbb1bd95730fcd941666b79cd317478604509be4aa3b7a2e6bffc6b07794` |
| 62 | `lemma` | [Smooth1MellinConvergent](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/smooth1mellinconvergent.md) | 1482 | `result-track:cae85b48ff3c7c83b1460c3c10518724f82fef0a88256270dfbfd4319ff1c215` |
| 63 | `lemma` | [Smooth1MellinDifferentiable](../../../../MeasureAndIntegration/MellinCalculusEdition1.lean/declarations/smooth1mellindifferentiable.md) | 1505 | `result-track:d0c20feec5802b6e6d0b9e4ac2849026bbe07d067faecc8d5c1cc1f745d62278` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0825772f1f07774dcd4e36867fef7a5383499b31a8a0885093b2312b386d619 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/MellinCalculus/Variant0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
