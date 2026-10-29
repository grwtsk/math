# Verification target: Bochner Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "231f6160cc10a85ea9f0f54834862b6657c8c993",
  "lexical_observation_count": 131,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `231f6160cc10a85ea9f0f54834862b6657c8c993`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.MeasurableEquiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.L1` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegrableOn` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.OpenPos` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Real` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-eq.md) | 193 | `result-track:f56b3da3ed0c8ad964fef9baa199330637a9d1239a724dd8f036210ae8c93065` |
| 2 | `theorem` | [integral_eq_setToFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-eq-settofun.md) | 196 | `result-track:473d9378531baa7409c17ec37f9343218ecce68888e5e5987ad91662f011130a` |
| 3 | `theorem` | [L1.integral_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/l1-integral-eq-integral.md) | 200 | `result-track:0547f8151c20a6d04373ad3c71cf5e36b39b8e6089d0494df200aca7cd21155f` |
| 4 | `theorem` | [integral_undef](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-undef.md) | 204 | `result-track:db40c5fa9e2163f880a558bc4b96aedde56a47ac4f3c4bd19870722c0da03e65` |
| 5 | `theorem` | [Integrable.of_integral_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integrable-of-integral-ne-zero.md) | 209 | `result-track:78cd548ce6f15c8d25397f9bc284735e8f39811f84429c0d4af781dfad81759e` |
| 6 | `theorem` | [integral_non_aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-non-aestronglymeasurable.md) | 212 | `result-track:53932eb371bf8dce5a2a16670997b0747103d241e62d1d147b133612f43043fa` |
| 7 | `theorem` | [integral_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-zero-source-edition-2.md) | 219 | `result-track:4e095f9502a612e7224875db12f1a48183f38df7058eb007d12f76da3ad74cf6` |
| 8 | `theorem` | [integral_zero'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-zero.md) | 226 | `result-track:228ed1a71e897cdc6d0d3d66b5a15583e79a15357453d93d1ee992fc06b62aad` |
| 9 | `lemma` | [integral_indicator₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-indicator.md) | 229 | `result-track:e349b550a489afa43f82b379b2da03e8b7025a9a86c06dff8c0d4361a572674c` |
| 10 | `theorem` | [integrable_of_integral_eq_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integrable-of-integral-eq-one.md) | 235 | `result-track:f324179259c0ab92d341000b429be6578d506874d054cf86aa22b4e93fdaeb06` |
| 11 | `theorem` | [integral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-add.md) | 238 | `result-track:6a7ae907b5975b89442e4ebc59be38ec287da65c1c871472850dfdd842393735` |
| 12 | `theorem` | [integral_add'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-add-source-edition-2.md) | 245 | `result-track:7922b16ad04c6642366b079ba33ae9ffce7504b15ea6785324524ddeea960e0b` |
| 13 | `theorem` | [integral_finset_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-finset-sum.md) | 249 | `result-track:d0cb6cb63c76b4bf17a867fe308441078f11b3504fc8cf19667fbe75563a6caf` |
| 14 | `theorem` | [integral_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-neg-source-edition-2.md) | 257 | `result-track:c9206db856d3eff3a83f9c952cad0c53b5a3b16247b6039e722d185ed824e21b` |
| 15 | `theorem` | [integral_neg'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-neg.md) | 263 | `result-track:73a39b25e49aa48b662eae66b5875b468a673e621a5aa5cdf251e2f9e951a716` |
| 16 | `theorem` | [integral_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-sub-source-edition-2.md) | 266 | `result-track:7c7c9b43897b4f502d4a59fc7db80bce72bb8974f4e972a43ca1a631cd9dbafc` |
| 17 | `theorem` | [integral_sub'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-sub.md) | 273 | `result-track:6fc4596415e88e3f3b2421135e08dc09f99b72950c620c47d4e3e6c96d5d6b1d` |
| 18 | `theorem` | [integral_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-smul.md) | 282 | `result-track:3d04d4a6a07898215bf880cacf81e5a6ae3904674e13e67da5a3efc8bf835a55` |
| 19 | `theorem` | [Integrable.integral_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integrable-integral-smul.md) | 289 | `result-track:69d4f0989bc4b387c4a6a6cbd8e4f40285759cf85acd0b2e2bce6d3b4a26a596` |
| 20 | `theorem` | [integral_const_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-const-mul.md) | 297 | `result-track:b316a9aaa2b36ba628bcfc7e1382d324a9582070488b668176fee826a875b41b` |
| 21 | `theorem` | [integral_mul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-mul-const.md) | 304 | `result-track:1af82698040f029fc46ea26d6be72c8fa8eda5dd7cf226dd6fc266594053dc40` |
| 22 | `theorem` | [integral_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-div.md) | 310 | `result-track:704a211002349a6c93080dccfa4104e6808e8ccbed4dd6513b63410ac6a455d6` |
| 23 | `theorem` | [integral_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-congr-ae-source-edition-2.md) | 314 | `result-track:e4685299f79655459e48a114f220aacdb8d9e9cb10e7a9434c27b975f7fede84` |
| 24 | `lemma` | [integral_congr_ae₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-congr-ae.md) | 320 | `result-track:c887a249266acf85373a96aa197c10f894d395a1d8e5be6ad4770dbc47baf0f5` |
| 25 | `theorem` | [L1.integral_of_fun_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/l1-integral-of-fun-eq-integral.md) | 330 | `result-track:831f40726839f6c878015d7189353be75918c925add8de89944edaaccf167e79` |
| 26 | `theorem` | [continuous_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/continuous-integral.md) | 338 | `result-track:a0eea9c04d50cd1d96dc5d42e5af7039ebce13b4251ab3858558df71d2c8327d` |
| 27 | `theorem` | [norm_integral_le_lintegral_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/norm-integral-le-lintegral-norm.md) | 344 | `result-track:440ace841940db0a7314b6d7a66b9f3b5799763083e0ade26164f5b5181fcce4` |
| 28 | `theorem` | [enorm_integral_le_lintegral_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/enorm-integral-le-lintegral-enorm.md) | 353 | `result-track:3b6a42697e2a06087b3e143d282642e0b4f58585b67ccc78b3a7baeb4b291c23` |
| 29 | `theorem` | [integral_eq_zero_of_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-eq-zero-of-ae.md) | 361 | `result-track:b3df26aeb36575a91f52c9deac5f66b0d8a66fc0705d27fab89f1ad252ed330e` |
| 30 | `theorem` | [HasFiniteIntegral.tendsto_setIntegral_nhds_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/hasfiniteintegral-tendsto-setintegral-nhds-zero.md) | 366 | `result-track:996dddbebe9ebcb8c46c15b12210fbd02440c72dc19a808a36108fdc4934d0f1` |
| 31 | `theorem` | [Integrable.tendsto_setIntegral_nhds_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integrable-tendsto-setintegral-nhds-zero.md) | 378 | `result-track:49d40bfda4da690ec6459b903fcf431337b165fdc00fee6f08caf480fbb15cb1` |
| 32 | `theorem` | [tendsto_integral_of_L1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/tendsto-integral-of-l1-source-edition-2.md) | 384 | `result-track:d46c92ca6b353ff3ccf1cbabdccac11a1aa12fa42dd0e55da76a4aef11292c23` |
| 33 | `lemma` | [tendsto_integral_of_L1'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/tendsto-integral-of-l1.md) | 394 | `result-track:7c39470237c7a4ac8e7c07abeca7aa0efaaca541f03a43bca88cf1e6d8713d64` |
| 34 | `lemma` | [tendsto_setIntegral_of_L1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/tendsto-setintegral-of-l1.md) | 402 | `result-track:9b1954c83e3985d6b4e515f67586d8548d16620a521b90df98f4fb712dafec5c` |
| 35 | `lemma` | [tendsto_setIntegral_of_L1'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/tendsto-setintegral-of-l1-source-edition-2.md) | 414 | `result-track:efbcfc464787a6db79ef750726dea4b3b71988d3dc0f31c7de83dd9d78335a21` |
| 36 | `theorem` | [continuousWithinAt_of_dominated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/continuouswithinat-of-dominated.md) | 425 | `result-track:96a8ce6e1fb384f0d17c2d784043601111838fe98ead02384e79624a60dc18a4` |
| 37 | `theorem` | [continuousAt_of_dominated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/continuousat-of-dominated.md) | 436 | `result-track:9ae66f9899ff61831d4dc8347c2e2e0961921e7065ede5a6ef0d71b51a60e7ba` |
| 38 | `theorem` | [continuousOn_of_dominated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/continuouson-of-dominated.md) | 447 | `result-track:6cba4f947dad63f0d21729748f10a3307bbf4af750f02bc07ee67f4c6184644e` |
| 39 | `theorem` | [continuous_of_dominated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/continuous-of-dominated.md) | 458 | `result-track:b4f24aa16a3280045ecf93527dc8163977d97f7a3bef745de4deeb605d659aef` |
| 40 | `theorem` | [integral_eq_lintegral_pos_part_sub_lintegral_neg_part](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-eq-lintegral-pos-part-sub-lintegral-neg-part.md) | 470 | `result-track:1823a0d54d30eaa9bc4eb5f627407f95ee99fde39ac161f289560aee628c3ce8` |
| 41 | `theorem` | [integral_eq_lintegral_of_nonneg_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-eq-lintegral-of-nonneg-ae.md) | 499 | `result-track:77e36e3e2e9fa4aa4184e921dae76116ee8bffddcd66abce1f2d373488e48fad` |
| 42 | `theorem` | [integral_norm_eq_lintegral_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-norm-eq-lintegral-enorm.md) | 521 | `result-track:c0c1eef500a5dda6d142aa74122ec926892646a50cad77e70977903900a93de4` |
| 43 | `theorem` | [ofReal_integral_norm_eq_lintegral_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/ofreal-integral-norm-eq-lintegral-enorm.md) | 530 | `result-track:a027005fc6b7e1e965d67533113405f323ad211d6d5c9fb5655f218db8bc66d1` |
| 44 | `theorem` | [SimpleFunc.integral_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/simplefunc-integral-eq-integral.md) | 538 | `result-track:5316dcd916aa7bf8fe98072577c41f2129aeb2190bd0a3aedc2621bb28ebbf22` |
| 45 | `theorem` | [SimpleFunc.integral_eq_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/simplefunc-integral-eq-sum.md) | 544 | `result-track:5075cfb6771b490f0280697dffde4ea55f8d0df7ea9df4dfdc43af7814b4b090` |
| 46 | `theorem` | [tendsto_integral_approxOn_of_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/tendsto-integral-approxon-of-measurable.md) | 548 | `result-track:7750e7ead9c666def7f5aaed3bfe8632f086475a7a44b8ea3cb85f8421642809` |
| 47 | `theorem` | [tendsto_integral_approxOn_of_measurable_of_range_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/tendsto-integral-approxon-of-measurable-of-range-subset.md) | 558 | `result-track:b74a6a3c1c67bd24a2dc834b17b1532116b60b021df2481a3ce5bbb76107ff93` |
| 48 | `theorem` | [tendsto_integral_norm_approxOn_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/tendsto-integral-norm-approxon-sub.md) | 568 | `result-track:01cbb602584a1b571371dfa712ee97695ed6cd01d36cac022f8af08165919646` |
| 49 | `theorem` | [integral_eq_integral_pos_part_sub_integral_neg_part](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-eq-integral-pos-part-sub-integral-neg-part.md) | 580 | `result-track:44010e8ef04906bc2528e0d7a729adf0027d1880acc7b966f2a096c0fa674745` |
| 50 | `lemma` | [integral_nonneg_of_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-nonneg-of-ae.md) | 591 | `result-track:c30c0d2138fbdf6075ef72bb1ba0099b87881a90727fb62deb86645112d382e4` |
| 51 | `lemma` | [integral_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-nonneg.md) | 596 | `result-track:40f3b79e8a8f1ecac21bf97dee4e4a759de22174a9690356090acbb2de08535d` |
| 52 | `lemma` | [integral_nonpos_of_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-nonpos-of-ae.md) | 600 | `result-track:d23f6bdca4f3a14cfb2e401bdf529ccc0221c03b4d6aa752ef6711bf9cfeba9f` |
| 53 | `lemma` | [integral_nonpos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-nonpos.md) | 607 | `result-track:2e9782f5bbadbbaf20fd802b78dde1260aaa03951174edbe85f14facb4e55a72` |
| 54 | `lemma` | [integral_mono_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-mono-ae.md) | 611 | `result-track:27d13e8b7b05324b5971851166f83c46cb7795907292f0d0ef539f4584131071` |
| 55 | `lemma` | [integral_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-mono.md) | 619 | `result-track:369baf21a9e83e3f910159686a4e53456d9c524a7fb9b0dbd1b03fe26b44237b` |
| 56 | `lemma` | [integral_mono_of_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-mono-of-nonneg.md) | 623 | `result-track:3a2e93b8b1b190bb958bcd051498e37e596c908523401c25706eec5c20a8b119` |
| 57 | `lemma` | [integral_mono_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-mono-measure.md) | 629 | `result-track:c986b8ca7d6bbfcf2ba138a01f5f7ac9741b16066c28833324654c83b4d5e119` |
| 58 | `lemma` | [integral_monotoneOn_of_integrand_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-monotoneon-of-integrand-ae.md) | 645 | `result-track:c6a5662505a8a7c43d397278eaa5827cf68cb9b98a80a5a91a451ee850068839` |
| 59 | `lemma` | [integral_antitoneOn_of_integrand_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-antitoneon-of-integrand-ae.md) | 653 | `result-track:f871c9577406b9f96702fd8ff872373162909931299acac67b12deca49d81de8` |
| 60 | `lemma` | [integral_convexOn_of_integrand_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-convexon-of-integrand-ae.md) | 661 | `result-track:f9a579c33fa76882e039740e1778d88386c5d156565549a4e327e73f1ae3fedc` |
| 61 | `lemma` | [integral_concaveOn_of_integrand_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-concaveon-of-integrand-ae.md) | 682 | `result-track:c4ce62a5db914f9ac1a51b7715effdf1cac36457bfa200f40e472349a0084c8a` |
| 62 | `theorem` | [lintegral_coe_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/lintegral-coe-eq-integral.md) | 692 | `result-track:e808e1c463c5d54b3bdd1b2808fbf9a6d2795f2bf58646efb3d41722951b3d68` |
| 63 | `theorem` | [ofReal_integral_eq_lintegral_ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/ofreal-integral-eq-lintegral-ofreal.md) | 700 | `result-track:d99635a64ddd30d707a386d9dc03c55b0854d0a58187c1e8f1192ae236815b8a` |
| 64 | `theorem` | [integral_toReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-toreal.md) | 707 | `result-track:4c68d1f1bbb48a5d803de12450654534accd8564f37ef5979e124a9fe330d3c1` |
| 65 | `theorem` | [lintegral_coe_le_coe_iff_integral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/lintegral-coe-le-coe-iff-integral-le.md) | 713 | `result-track:7f3d330b8b893acc9d2b30a5f341749d96901e2de0f78c0f061ddde48864081b` |
| 66 | `theorem` | [integral_coe_le_of_lintegral_coe_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-coe-le-of-lintegral-coe-le.md) | 718 | `result-track:5c88c8cf4c9eb55a1ab64b21cd8b158424a8199d1a4f3d700b1d9e43663fd196` |
| 67 | `theorem` | [integral_eq_zero_iff_of_nonneg_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-eq-zero-iff-of-nonneg-ae.md) | 724 | `result-track:9a6d02c6d5651242c919b2d1562edb126666e3dcc70a597c7b96bc6ea062d16c` |
| 68 | `theorem` | [integral_eq_zero_iff_of_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-eq-zero-iff-of-nonneg.md) | 733 | `result-track:1a1e22e1b89ef46883cfd894890735cc98bc6c5c45db33914308e42a958010c7` |
| 69 | `lemma` | [integral_eq_iff_of_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-eq-iff-of-ae-le.md) | 737 | `result-track:831cd1421ffca2b2f58b91a91dbda0c02fe95d991cf4c10ad05318ae0c48ce6d` |
| 70 | `theorem` | [integral_pos_iff_support_of_nonneg_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-pos-iff-support-of-nonneg-ae.md) | 745 | `result-track:6545f1fc9d3e4404b794280b0024a204cdbd75591a0abb496db7cfa38928c6e2` |
| 71 | `theorem` | [integral_pos_iff_support_of_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-pos-iff-support-of-nonneg.md) | 751 | `result-track:2a6966c2624ef4db46e0810beb1c6596c87693cb4b635a55a295ccf2e1c1d08e` |
| 72 | `lemma` | [integral_exp_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-exp-pos.md) | 755 | `result-track:b831dfa3110939daa9469978216016e75948cb206895d484dcbb7e2f13d71e26` |
| 73 | `lemma` | [integral_tendsto_of_tendsto_of_monotone](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-tendsto-of-tendsto-of-monotone.md) | 764 | `result-track:3e99359c1fe604c03b2b4513764c7b43af3e55089cab0bfed6ccc34ca03d17a0` |
| 74 | `lemma` | [integral_tendsto_of_tendsto_of_antitone](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-tendsto-of-tendsto-of-antitone.md) | 803 | `result-track:59d3c0d928f0fdae8bf9c97aa32df0b11bf8cdf689f1645acf64345a52a45137` |
| 75 | `lemma` | [tendsto_of_integral_tendsto_of_monotone](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/tendsto-of-integral-tendsto-of-monotone.md) | 818 | `result-track:cff72dfad3b573725449639abd9a83b2112680d50dbcc8c1a3fb456725e50d36` |
| 76 | `lemma` | [tendsto_of_integral_tendsto_of_antitone](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/tendsto-of-integral-tendsto-of-antitone.md) | 876 | `result-track:27d524b5aa03bb92a6403c9205f5420b48b46371345e0a74d96128e9321259f8` |
| 77 | `theorem` | [L1.norm_eq_integral_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/l1-norm-eq-integral-norm.md) | 902 | `result-track:341f973e2968df73778de2ca0a7162d8628009cf78178faa92089f69b1c2affd` |
| 78 | `theorem` | [L1.dist_eq_integral_dist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/l1-dist-eq-integral-dist.md) | 909 | `result-track:af52289bc9c475d6f3b8f7ae5085bbd5cebf0578c4b4575d9269e62c352ab1bc` |
| 79 | `theorem` | [L1.norm_of_fun_eq_integral_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/l1-norm-of-fun-eq-integral-norm.md) | 913 | `result-track:3ff4d40f88df36f870600118e5f191673b2e2ef8551e0764e35acd3feea1941e` |
| 80 | `theorem` | [MemLp.eLpNorm_eq_integral_rpow_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/memlp-elpnorm-eq-integral-rpow-norm.md) | 918 | `result-track:104d25015efe34855a7a112a73b9f954661ffb67c9943d988359fea20d16d451` |
| 81 | `theorem` | [norm_integral_le_integral_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/norm-integral-le-integral-norm.md) | 935 | `result-track:dcde5a8819320aaebd910ebbcd6eec77c6d506cdf29aeffe30d4173ad0693529` |
| 82 | `lemma` | [abs_integral_le_integral_abs](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/abs-integral-le-integral-abs.md) | 945 | `result-track:1f4f5bdaa0d3e8330d98c8b2930366f849cb89ae7e3a12fc05be9d4554118ae8` |
| 83 | `theorem` | [norm_integral_le_of_norm_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/norm-integral-le-of-norm-le.md) | 948 | `result-track:35acce500873df1109081b9136af3c1227902c0f8d9a9bb173a8fc919bdaef3a` |
| 84 | `theorem` | [integral_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-const.md) | 955 | `result-track:77f9bd810c2cd6d2077402387c5cac83071d55795555500838fef47e34a4d33d` |
| 85 | `lemma` | [integral_eq_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-eq-const.md) | 964 | `result-track:832953b3576e74899c55f1bafafcc10d20cb28dbad14a3d37b4dd8aa71090ed7` |
| 86 | `theorem` | [norm_integral_le_of_norm_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/norm-integral-le-of-norm-le-const.md) | 967 | `result-track:df43620eaf214ff72b3712035f284909e87d06ae884a79cf198ca9931aac02e0` |
| 87 | `theorem` | [integral_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-add-measure.md) | 975 | `result-track:e6f32e1e5806f462a6232c1f16c1c163a79067ea219c11146c36ea4b04a6b24a` |
| 88 | `theorem` | [integral_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-zero-measure.md) | 996 | `result-track:40def4d4a33e9e8e6b9e01b5955b1ea0faf98690245ceee171c09f32b0841134` |
| 89 | `theorem` | [setIntegral_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/setintegral-zero-measure.md) | 1004 | `result-track:f9790ef8403772f14bac6d6525eb2ea1250a901e171444bd9ce9d9e9538ae03e` |
| 90 | `lemma` | [integral_of_isEmpty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-of-isempty.md) | 1007 | `result-track:91818eab59a703526329fad113914e2a6a9eed71135a4e2dbf469d51601331e5` |
| 91 | `theorem` | [integral_finset_sum_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-finset-sum-measure.md) | 1010 | `result-track:fa24ac09fedd0dcd8e4c7d5a5909d62cee37b02e21b5248cb54945e5e0eff1a0` |
| 92 | `theorem` | [nndist_integral_add_measure_le_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/nndist-integral-add-measure-le-lintegral.md) | 1020 | `result-track:944e0d9a28e4a2e6a11de08af89373c0be73adcde76f6bab44336e531a9a3fb3` |
| 93 | `theorem` | [hasSum_integral_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/hassum-integral-measure.md) | 1026 | `result-track:ecef2ea6283cb635264353e230b301cfc4f2f37768c27d89178a2ceb36c92ec2` |
| 94 | `theorem` | [integral_sum_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-sum-measure.md) | 1047 | `result-track:905576ed9fbd37ffb1fdb2eb0fd447f1ce4dfaa2dbd6e8732637c11397b06511` |
| 95 | `theorem` | [integral_smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-smul-measure.md) | 1052 | `result-track:b967d553f9c68c472d5a8404bad2dcfbdc7a1b2ce98c90f1a99527f11357a074` |
| 96 | `theorem` | [integral_smul_nnreal_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-smul-nnreal-measure.md) | 1068 | `result-track:7d4ae17e44de92e6ae6a791aa23608ffbc6f118efaff90d4eb1828b8f635b4a6` |
| 97 | `theorem` | [integral_map_of_stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-map-of-stronglymeasurable.md) | 1072 | `result-track:6ddddf137434fc707ec77103d193975b7c8ca40c92f118b2b2ed014b2b6a4534` |
| 98 | `theorem` | [integral_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-map.md) | 1094 | `result-track:336a2bd6f63840cc0a14a2d908be74c263bcb8c8b45608cebc372e1de36998ed` |
| 99 | `theorem` | [Bochner Basic Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-map-source-line-1106-occurrence-2.md) | 1106 | `result-track:58b87a708c8c5571d99e8932d761298b691729361d3ba2cdbb640edf8ce927cd` |
| 100 | `theorem` | [Bochner Basic Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-map-source-line-1113-occurrence-2.md) | 1113 | `result-track:8ce4f7d6f26231b430076432726e2ccf9eb3a5601ec9461e342c4deb59f1ff98` |
| 101 | `theorem` | [integral_map_equiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-map-equiv.md) | 1118 | `result-track:be4fcce02ccd921ae8a3de3ed8359c1df82b2c3abe7e26e49e50270d0757956e` |
| 102 | `lemma` | [integral_domSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-domsmul.md) | 1123 | `result-track:19f1a09d4157e0263d9a6b7d0a8397824166db6a7b7066a7063d3a17de42dd11` |
| 103 | `theorem` | [MeasurePreserving.integral_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/measurepreserving-integral-comp-source-edition-2.md) | 1128 | `result-track:ed8b70fbd8e804717b4a771356b4a45972398ee41bf70801b537dde44225b40b` |
| 104 | `theorem` | [MeasurePreserving.integral_comp'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/measurepreserving-integral-comp.md) | 1133 | `result-track:07f7dd4ff860ac5aa9458eaee270201e46e3b35b1dc97f6ffb196e0973e208ae` |
| 105 | `theorem` | [integral_subtype_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-subtype-comap.md) | 1137 | `result-track:b87a599fde126be065e85c028444d52476aa3238eb6a933aa433c2ad24e5d676` |
| 106 | `theorem` | [integral_subtype](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-subtype.md) | 1144 | `result-track:3291ffd4755a22259de61239c0573c3701872d211881ef60f5a8b98dacece9d5` |
| 107 | `theorem` | [integral_dirac'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-dirac-source-edition-2.md) | 1148 | `result-track:b79fef6a9b0cd4d54960dbc266406ecb024a061018f5bbfb7236d1710c35d5d5` |
| 108 | `theorem` | [integral_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-dirac.md) | 1157 | `result-track:2e2597ab1c8541e6951f57a876420c7049c18888635033b2a1375cde22ff6454` |
| 109 | `theorem` | [setIntegral_dirac'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/setintegral-dirac.md) | 1163 | `result-track:003f6d78a9ed08def488c0b7658bad4ee9ce41415654b57cf444487e616832f1` |
| 110 | `theorem` | [setIntegral_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/setintegral-dirac-source-edition-2.md) | 1171 | `result-track:30bd8a5f60ba5f22342079342a1077a11209e556eefc35d3016d2ed6b7c0ae78` |
| 111 | `theorem` | [mul_meas_ge_le_integral_of_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/mul-meas-ge-le-integral-of-nonneg.md) | 1180 | `result-track:9319c00da77ec6341bed1696d0d83c13595e7b5448e8ffe353af3b6e34ef6dcc` |
| 112 | `theorem` | [integral_mul_norm_le_Lp_mul_Lq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-mul-norm-le-lp-mul-lq.md) | 1195 | `result-track:1511144f73ab646e392555f6fcaa1c1a7aa3dc047abe00ca75d3f35426c1cdb9` |
| 113 | `theorem` | [integral_mul_le_Lp_mul_Lq_of_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-mul-le-lp-mul-lq-of-nonneg.md) | 1242 | `result-track:972b3b0e4c7b813c588c4c023a62681c522c814b11fad6508ee4674d4ea30b57` |
| 114 | `theorem` | [integral_countable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-countable.md) | 1261 | `result-track:2e785b78d4f78f71da5fbdf24bcfdc775e6afbeffdcef785d9e0e97badef449e` |
| 115 | `theorem` | [integral_singleton'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-singleton-source-edition-2.md) | 1269 | `result-track:fa5ccc6a1fa461edbfe9a6c8961d0e2a4d70d2de8fc520367de54c15ba99c584` |
| 116 | `theorem` | [integral_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-singleton.md) | 1274 | `result-track:f38204474bc5a60164f925a834a29c5f2086782c4a7b9cbd938fee2808c74340` |
| 117 | `theorem` | [integral_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-countable-source-edition-2.md) | 1278 | `result-track:d2fcadb987a9ac19d3e2f81bc03a9ffc2b659fbf8813a522adc10548a1f5bbc5` |
| 118 | `theorem` | [integral_finset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-finset.md) | 1295 | `result-track:8a479ed7449a4c5806964a3883bb73ae055e46e008b12cb105e33ed332825419` |
| 119 | `theorem` | [integral_fintype](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-fintype.md) | 1300 | `result-track:70af33e8a2294bdb9e4f56be886459ed41227b0d72593e105a47c8e59b0c7956` |
| 120 | `theorem` | [integral_unique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-unique.md) | 1307 | `result-track:0804f1e1da0fd57ace47087cec2b0536388158b5fa9328c84db195038ff60ee1` |
| 121 | `theorem` | [integral_pos_of_integrable_nonneg_nonzero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-pos-of-integrable-nonneg-nonzero.md) | 1312 | `result-track:b2398c8b4ad7587a91fe1fbb24a9f94d285d7c8c042fd9806c379a90b6b4f925` |
| 122 | `lemma` | [integral_count](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-count.md) | 1318 | `result-track:c811177559f8e6a447d487e66d13e58fcd955560276638ea8ba16656ee52c4ea` |
| 123 | `def` | [SimpleFunc.toLargerSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/simplefunc-tolargerspace.md) | 1328 | `declaration-track:4b1780facc9e63cab1f82133ef0576f099e96461a6b34838036e30858cc32f53` |
| 124 | `theorem` | [SimpleFunc.coe_toLargerSpace_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/simplefunc-coe-tolargerspace-eq.md) | 1332 | `result-track:3810d928f9fec722fd5d23f5676612bc07db2d4fe907d2c6724bd64eae9b53b2` |
| 125 | `theorem` | [integral_simpleFunc_larger_space](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-simplefunc-larger-space.md) | 1335 | `result-track:1facc6dc0fc3ef7c9ad373b479a7942a8313adc1d87a041bfd15f4514df422f7` |
| 126 | `theorem` | [integral_trim_simpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-trim-simplefunc.md) | 1343 | `result-track:d594437f9deb6c3176a174cf7f301729ff418404a84f253d29da9a5d6b555f0f` |
| 127 | `theorem` | [integral_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-trim.md) | 1354 | `result-track:a7656bb6194d4e6433d7f6013e73ebaf39606614d160c9133c3dc170b1c175d2` |
| 128 | `theorem` | [integral_trim_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/integral-trim-ae.md) | 1385 | `result-track:9217d51feb475e0396ac82a45c59a479ad2bba2b98f90d434c113bfecbdd8234` |
| 129 | `theorem` | [eLpNorm_one_le_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/elpnorm-one-le-of-le.md) | 1396 | `result-track:60f271bf3bdf5e537c2aef1ac66ae597834acda583a3cef5efc4536859dadab4` |
| 130 | `theorem` | [eLpNorm_one_le_of_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/elpnorm-one-le-of-le-source-edition-2.md) | 1440 | `result-track:e38b067646040eae6e612b9a0145d27da8d3c9d0bb334e47cf757d928caea870` |
| 131 | `def` | [evalIntegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerBasicNamespaced.lean/declarations/evalintegral.md) | 1460 | `declaration-track:e0cb73afebed424a15c1aa04a32e16f740287793225f3ed9cb4a7aafb6049599` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0d519c4b371350a620fb52f351aef8cbffe592e9357da67b76b1151a24256d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
