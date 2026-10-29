# Verification target: Bochner L1 L1 Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "983362255ba0f61e8e71fa655f81c2cf5c5a0d13",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `983362255ba0f61e8e71fa655f81c2cf5c5a0d13`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean.json)

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
| 1 | `def` | [weightedSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/weightedsmul.md) | 77 | `declaration-track:619093f6a0b1906cfdcf1f0ec8097159cf1966f1b250dbdfb84e16b93e6a0036` |
| 2 | `theorem` | [weightedSMul_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/weightedsmul-apply.md) | 80 | `result-track:a2cc5bf191d25504ee4c2d94079775f04b171d6ca1adfaacb38d50f87c06dbdd` |
| 3 | `theorem` | [weightedSMul_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/weightedsmul-zero-measure.md) | 84 | `result-track:2e4cfd3b3811f1869c5980587c56672b54b12431dc4b962c9b0f1b874c7bca74` |
| 4 | `theorem` | [weightedSMul_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/weightedsmul-empty.md) | 88 | `result-track:2ba7df7de410b7746eceb3870558c27d9d4d8679a6207419e28468a645e40af5` |
| 5 | `theorem` | [weightedSMul_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/weightedsmul-add-measure.md) | 91 | `result-track:5f9fb3a2b1a535091898dbd68cff8fee3f91a22445d4b7406e425365423b3a21` |
| 6 | `theorem` | [weightedSMul_smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/weightedsmul-smul-measure.md) | 99 | `result-track:fe9a2423e0561e01d25e78a333fef4f7b6fb86968ee37a1310edbfd9a274ae6e` |
| 7 | `theorem` | [weightedSMul_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/weightedsmul-congr.md) | 104 | `result-track:7dbf89f8633c97619ff11e64a1f8092b73811115480cb018975304176f878dfd` |
| 8 | `theorem` | [weightedSMul_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/weightedsmul-null.md) | 108 | `result-track:7cfe7d4cc9eae2fd89faeb826a288d38c4f0d66c72c0f4c680cd26ffe36a5135` |
| 9 | `theorem` | [weightedSMul_union'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/weightedsmul-union.md) | 111 | `result-track:af001cddd1e78fbb83bd587d057f8d30bc39ad286bfe21d26d938eded9426d62` |
| 10 | `theorem` | [weightedSMul_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/weightedsmul-union-source-edition-2.md) | 118 | `result-track:f4addd43ce11c0e325469aa6e39c3775a7d971b85f423fadbf30baf5efc26f9e` |
| 11 | `theorem` | [weightedSMul_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/weightedsmul-smul.md) | 123 | `result-track:b4f2e9be688b2955d5df43ea30ea48be39f65714c1299bcc1f28cd8ee8b3fc15` |
| 12 | `theorem` | [norm_weightedSMul_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/norm-weightedsmul-le.md) | 127 | `result-track:8808f16ebccff326ac1c1e5cba9620fdeba10c034da858d62adb9a8125e37bb5` |
| 13 | `theorem` | [dominatedFinMeasAdditive_weightedSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/dominatedfinmeasadditive-weightedsmul.md) | 136 | `result-track:80bad7290eaedf1f52be4835f10d8ce95747f9dc221e915c92f35cfb8874f626` |
| 14 | `theorem` | [weightedSMul_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/weightedsmul-nonneg.md) | 140 | `result-track:b9012809b2ff7644a36431c3af24bb87cc2eccb4f2416aaf10b2b1f003a7d01f` |
| 15 | `def` | [posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/pospart-source-edition-2.md) | 156 | `declaration-track:8d235a655d81dee00139bea7add54d2d7a39b108e461553f1599f310dd72c39e` |
| 16 | `def` | [negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/negpart-source-edition-2.md) | 160 | `declaration-track:86ee0cdffcee67eeccfac4ac98e94441858ce9e9d9b07eaa6a2b49e62b2dabf2` |
| 17 | `theorem` | [posPart_map_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/pospart-map-norm.md) | 163 | `result-track:644052ced0c45b4fe043e06d809e019a0e9a85dbf2e6d83f448556054b8c55a2` |
| 18 | `theorem` | [negPart_map_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/negpart-map-norm.md) | 166 | `result-track:4fec720373a74b326850b0f5aed5273e476caf61f94c80c835b120a63692d2bc` |
| 19 | `theorem` | [posPart_sub_negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/pospart-sub-negpart.md) | 169 | `result-track:caa6234979b926eb85c8aeaf5dac4a375b8dcae83cebc79f247c11a6bc213518` |
| 20 | `def` | [integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-source-edition-2.md) | 194 | `declaration-track:8c5fd1bc4ba1e667ac8c6ac0acde541b808793626e5de8b4df84bc4636d4cfa0` |
| 21 | `theorem` | [integral_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-def.md) | 197 | `result-track:b0526b841f673426f4b2d53314f03e005dd03e40cb966df508aac34097cf0eda` |
| 22 | `theorem` | [integral_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-eq.md) | 200 | `result-track:3308baae046b79060698dfacbe7ff39aafcb6a66ea5da9b5fc7dd5d5bef18b53` |
| 23 | `theorem` | [integral_eq_sum_filter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-eq-sum-filter.md) | 204 | `result-track:5ba220472fa1cf729d51f9b07e85e0dca8722cbce9a80555989f178b67d580ad` |
| 24 | `theorem` | [integral_eq_sum_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-eq-sum-of-subset.md) | 210 | `result-track:5f7c22b775be3a0a4cb7a9e6d74a6cbdea8613fa8eb739e8f3fa7a7444401c80` |
| 25 | `theorem` | [integral_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-const.md) | 221 | `result-track:e8ce052da1fea227dcca89fe0cd0a447be8cedeef95d68032f406c37944a995a` |
| 26 | `theorem` | [integral_piecewise_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-piecewise-zero.md) | 231 | `result-track:1aa454fac23aa65dfab8c993f146c73a12928f371569ac4a848867dca7d20bc3` |
| 27 | `theorem` | [map_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/map-integral.md) | 248 | `result-track:197d1b7c3c10f376af928da836a264d76e20f22c60974f8dd4a278aa7c0383af` |
| 28 | `theorem` | [integral_eq_lintegral'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-eq-lintegral-source-edition-2.md) | 255 | `result-track:3c3cdf98cafd34bcd082bec5583353fb5a026b97d47f505771fb26ca92e50747` |
| 29 | `theorem` | [integral_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-congr.md) | 271 | `result-track:13d04e0fd8a48498417c689d7565e7f5b44092e83ed218ebad7ce813273dead7` |
| 30 | `theorem` | [integral_eq_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-eq-lintegral-source-edition-3.md) | 277 | `result-track:e49ed6519b34128471da02c6e40684e7c2a1d33b3d04eecc50061d79993fe524` |
| 31 | `theorem` | [integral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-add-source-edition-2.md) | 284 | `result-track:42f95c0e57904cf0d87bf05235ae5da2ef7bf76b3684bc0b4c76fed11c780a9d` |
| 32 | `theorem` | [integral_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-neg.md) | 288 | `result-track:5e2269f3434741e23092b6300af4ffea008e1006a81faeb8d2321f347767ebe4` |
| 33 | `theorem` | [integral_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-sub.md) | 291 | `result-track:96236e40a25b8f1395645ac5b692f07ead43d9d65f14a937b0ca4d17fd0a7fb3` |
| 34 | `theorem` | [integral_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-smul.md) | 295 | `result-track:019298c9a5ec70c80d16df2a28fcf4099698f5fe4cb94187ef866f46b60f9be6` |
| 35 | `theorem` | [norm_setToSimpleFunc_le_integral_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/norm-settosimplefunc-le-integral-norm.md) | 300 | `result-track:511e732af44fba7adc2a64f27a0708c6ab93fb512177a6ce5dd8589d659b1709` |
| 36 | `theorem` | [norm_integral_le_integral_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/norm-integral-le-integral-norm.md) | 309 | `result-track:c0093a6d643d9f37c12a37819dde14cda3d3ec3c7bcc8edf781f25c06cb823b7` |
| 37 | `theorem` | [integral_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-add-measure.md) | 314 | `result-track:5e722477bff57df0eaf264363a8146c6f7e65f81beffa1be030ac6a6f766245e` |
| 38 | `lemma` | [integral_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-nonneg.md) | 326 | `result-track:4de89cd03d478a29f821fbd123def4b221d99610fbeee49d4b722b0aea28267c` |
| 39 | `lemma` | [integral_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-mono.md) | 340 | `result-track:6a1c11f1065c837b2d64a801def5ae5aa5505153808ab287fc3372c3503c3e7c` |
| 40 | `lemma` | [integral_mono_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-mono-measure.md) | 346 | `result-track:e67be78fa016e9327f74c8944a9ac9c47ed4e7efead85f23da065fdc39f5dc97` |
| 41 | `theorem` | [norm_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/norm-eq-integral.md) | 379 | `result-track:a27accf9dc400b73befdae3a57c2aca14e6b289ea7745d0e1780af531313978d` |
| 42 | `def` | [posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/pospart.md) | 386 | `declaration-track:641553af231cbf3a45008bd020cb8a82cf8de4d8c7c62cf4150feab64dc76494` |
| 43 | `def` | [negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/negpart.md) | 394 | `declaration-track:78e9af16918d4b1488c6967efe865209c48bea79672dd11148366560f85edfff` |
| 44 | `theorem` | [coe_posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/coe-pospart.md) | 398 | `result-track:f1ba94cfbaba28a5a623f42e0b2960042fa8ce425e46459dc051073a77494722` |
| 45 | `theorem` | [coe_negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/coe-negpart.md) | 401 | `result-track:d8d1401308a3ca6bfb2ce96f0422c3ff218194c5d114d28b8c445494feec9ff9` |
| 46 | `def` | [integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral.md) | 418 | `declaration-track:0fe3a3f1ee8a4e4dc3d458fb82dea8441ee64e967f241862aff39519d0d4805f` |
| 47 | `theorem` | [integral_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-eq-integral.md) | 421 | `result-track:50b6cdc6fcaed7b1b64a3c1c0ed626d3a021a410d7786562b5327f58a8621d3a` |
| 48 | `theorem` | [integral_eq_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-eq-lintegral.md) | 423 | `result-track:2691798ebb68d6f3c0fa642e46ed693ab3bb4786e1cac26868f364de57f71b86` |
| 49 | `theorem` | [integral_eq_setToL1S](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-eq-settol1s.md) | 427 | `result-track:5dd103839c0c3019616d9fe604d17d5ab46e4dc21f9ac0b5184038752e076193` |
| 50 | `theorem` | [integral_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-congr-source-edition-2.md) | 429 | `result-track:c42485a5685fc984028b116b804b9fd425ccb65be0b8c7965b92a58ea03eccf6` |
| 51 | `theorem` | [integral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-add-source-edition-3.md) | 433 | `result-track:935399c9f4dac802d78df6d2734b9e7f3d0ce06717b75b757cf920f7baea8df1` |
| 52 | `theorem` | [integral_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-smul-source-edition-2.md) | 436 | `result-track:c37b47584a7ba3f94c03d1e24e9b91be851be7e657eb07fb3df3eac50c25c869` |
| 53 | `theorem` | [norm_integral_le_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/norm-integral-le-norm.md) | 439 | `result-track:89b9fa80b0dcaeb1f8da8fa384d950104a4d36c588b2b9ee7c27510446ce7b5b` |
| 54 | `def` | [integralCLM'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integralclm-source-edition-4.md) | 446 | `declaration-track:e6a9c0255706a4eaab14fbca3fe8357000a11f373537431ef4e3b8f1019e9ec8` |
| 55 | `def` | [integralCLM](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integralclm-source-edition-3.md) | 451 | `declaration-track:c6f7044c081f05e8e7afbd732c713cdac8ed3ed65084a0bf14dc45abb4126f9b` |
| 56 | `theorem` | [norm_Integral_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/norm-integral-le-one.md) | 460 | `result-track:4a0e15e54c852b6e88bf764fd24c41b89a3283e88278091f890b269c38bab3e6` |
| 57 | `theorem` | [posPart_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/pospart-tosimplefunc.md) | 466 | `result-track:02f8d6efdbfe0ae9737589414a24bb9ff63d47b6999eca80e1c88293b3363be3` |
| 58 | `theorem` | [negPart_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/negpart-tosimplefunc.md) | 477 | `result-track:767e726fa9c01a5d679fef2685ddbe80314ff244e044d798d1555c9ecffecd7e` |
| 59 | `theorem` | [integral_eq_norm_posPart_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-eq-norm-pospart-sub-source-edition-2.md) | 487 | `result-track:ecd0af6a45f85274cce15cc38e0eafb9d9413b7dd715693eb8b3d8d30eca9f5c` |
| 60 | `def` | [integralCLM'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integralclm.md) | 529 | `declaration-track:361e87c77362851cc866937774cfc5a44b62f14573669b1ff11f1089a687ab4f` |
| 61 | `def` | [integralCLM](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integralclm-source-edition-2.md) | 533 | `declaration-track:67d1f346b7dff2739fc1aeb4e6b1e87694ca94714b0ddcef10de1b085c9a0896` |
| 62 | `theorem` | [integral_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-eq-source-edition-2.md) | 540 | `result-track:6ead9006e17aa4083b5bb848ea5b0209144af6a3782f99d7ed5af887cc4f7afb` |
| 63 | `theorem` | [integral_eq_setToL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-eq-settol1.md) | 543 | `result-track:8655323b3d18d60adc07fb7053260692f1c4bc94a91fe62718bb992594e36d3d` |
| 64 | `theorem` | [SimpleFunc.integral_L1_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/simplefunc-integral-l1-eq-integral.md) | 548 | `result-track:1eabcb33791248d8f7b027a2f92f450fc30a8245a84e67b7a336adecf201d8b6` |
| 65 | `theorem` | [SimpleFunc.integralCLM'_L1_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/simplefunc-integralclm-l1-eq-integral.md) | 554 | `result-track:6b1a7dceb93c6d715043edb352f2fa6c97014d62314d116bf895b9f2a8ebb24b` |
| 66 | `theorem` | [integral_eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-eq-source-edition-3.md) | 560 | `result-track:fa5b8e0adb52b108d45064f3590f24c4716a8b682dbdf64344780cc4f1850819` |
| 67 | `theorem` | [integral_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-zero.md) | 571 | `result-track:37f5b70ecd4da8d96ecdb2345125f5ceb8a598f7a1b81bced62b09b6c52ccaff` |
| 68 | `theorem` | [integral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-add.md) | 578 | `result-track:0dba8992eece1f598b0a96d32ca5a62651ce5fa76f279314fa0ecf2f70776eba` |
| 69 | `theorem` | [integral_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-neg-source-edition-2.md) | 583 | `result-track:63f43078c344f8b1f8adafd8b4a1fce62c05b07534ea6817d4ed33e7c2a93439` |
| 70 | `theorem` | [integral_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-sub-source-edition-2.md) | 588 | `result-track:b2d6e8a538d59b1ad6238d99749ab5acdae3b24a2f740aaec7ba2bcea9e8d987` |
| 71 | `theorem` | [integral_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-smul-source-edition-3.md) | 593 | `result-track:ff5effebcac4f4adc58bfa1d56f44782aa6e92805d004854bb33bedaf8456440` |
| 72 | `theorem` | [norm_Integral_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/norm-integral-le-one-source-edition-2.md) | 596 | `result-track:78b8e53045630e85b5af1d02a0d9f6bea6f9c831faf53ac30a4331d8ec0a92bd` |
| 73 | `theorem` | [nnnorm_Integral_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/nnnorm-integral-le-one.md) | 599 | `result-track:eee8224a1bb7f29dc1d779548ae7cc580e257fe28dc2090c63f22739e0f7fbbc` |
| 74 | `theorem` | [norm_integral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/norm-integral-le.md) | 602 | `result-track:960af79c91cd40b241dc701cb712e6af4d5fec9903b3cf347ee970566113dfdc` |
| 75 | `theorem` | [nnnorm_integral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/nnnorm-integral-le.md) | 609 | `result-track:6cbbb05df88134498d3a6e72b09fc2b80f3d0048b71f9124aeae9621d4a0747f` |
| 76 | `theorem` | [continuous_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/continuous-integral.md) | 613 | `result-track:817d1b62f5355f919536e541e4dd18b6243c1cab4ddc450845fdc5553a6d2aa4` |
| 77 | `theorem` | [integral_eq_norm_posPart_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/declarations/integral-eq-norm-pospart-sub.md) | 619 | `result-track:0e5432b661da525e9535863b7fbf1dcf1a16a73a9a1290b80fd8698049e29f50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f702881bfe04084ff3a42ea6d31e1a9d9d05695dda967440744416000343982a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
