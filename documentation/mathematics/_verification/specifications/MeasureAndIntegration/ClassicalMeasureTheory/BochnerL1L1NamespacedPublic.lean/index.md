# Verification target: Bochner L1 L1 Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9fd6c639cc132e235aba0c557bdacaf8b478f9b",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant12ee8b69893dcce53817f6760e392d6b71732328fd7f8dfa8f6464bc1d80042d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9fd6c639cc132e235aba0c557bdacaf8b478f9b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant12ee8b69893dcce53817f6760e392d6b71732328fd7f8dfa8f6464bc1d80042d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/L1/Variant12ee8b69893dcce53817f6760e392d6b71732328fd7f8dfa8f6464bc1d80042d.lean.json)

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
| 1 | `def` | [weightedSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/weightedsmul.md) | 85 | `declaration-track:e5e7db09d48bbba565e34e6c813eb03fd0146d33ccf8e99200d7ed27beb8c7eb` |
| 2 | `theorem` | [weightedSMul_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/weightedsmul-apply.md) | 88 | `result-track:3eff9db9a1fdf9c99e835a6137e0e246c9ae2093a691b911eebcaf8ee87ffeac` |
| 3 | `theorem` | [weightedSMul_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/weightedsmul-zero-measure.md) | 92 | `result-track:c98f14f0a77c7193dc192710f2f1221b57b007622e83618a03aea825e8ec080e` |
| 4 | `theorem` | [weightedSMul_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/weightedsmul-empty.md) | 96 | `result-track:3528b801c18a28c240f01c4659bc3072d603a3f42a043cf067366e1b03c952ad` |
| 5 | `theorem` | [weightedSMul_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/weightedsmul-add-measure.md) | 99 | `result-track:73f8b9686e73322b24e8c34b1c53b5bc8151f5044290679751722ceb45f869d1` |
| 6 | `theorem` | [weightedSMul_smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/weightedsmul-smul-measure.md) | 107 | `result-track:0123c5767e606ce37cc467781649e5a52831e149fbb71d79578a5fdf8b49f256` |
| 7 | `theorem` | [weightedSMul_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/weightedsmul-congr.md) | 112 | `result-track:9922f4f32808c545eaaa1f91967b3452fdc74ee32e5565b0fe158d8843a3d69e` |
| 8 | `theorem` | [weightedSMul_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/weightedsmul-null.md) | 116 | `result-track:e478b072fa9ae8944e7b3b5b2442e96e75095a2bc6320802e40dcaaf865a67f2` |
| 9 | `theorem` | [weightedSMul_union'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/weightedsmul-union-source-edition-2.md) | 119 | `result-track:9518eb0d0fe3c33419020ced034c0e267260825583884214bda620ea56eee86c` |
| 10 | `theorem` | [weightedSMul_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/weightedsmul-union.md) | 126 | `result-track:5c20fa07f65c6c4d7096a391abc30c1ce6c4512b239c4a948098dd4ae200511c` |
| 11 | `theorem` | [weightedSMul_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/weightedsmul-smul.md) | 131 | `result-track:a62bcbb05c5ab253f782dde583bd39dfe1d622f9146094c4806ec649a66c00bd` |
| 12 | `theorem` | [norm_weightedSMul_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/norm-weightedsmul-le.md) | 135 | `result-track:944e636fb8e9a0e44a74230addad4d700adff08ee088bb82ba322ef49b11bb28` |
| 13 | `theorem` | [dominatedFinMeasAdditive_weightedSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/dominatedfinmeasadditive-weightedsmul.md) | 144 | `result-track:65a479e8e333fe657ccf390e3bdf52f6c0397b25564b52a00002cb1d572bade6` |
| 14 | `theorem` | [weightedSMul_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/weightedsmul-nonneg.md) | 148 | `result-track:b9ff95fcb35be4023f02bd8ed32ba74d638493f61980d2bbfec3d20cd1e32b12` |
| 15 | `def` | [posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/pospart-source-edition-2.md) | 164 | `declaration-track:5e6e2e08e20146f751e4baf65d98e4628268014a955cc5ff47ee60dbb3e0cea6` |
| 16 | `def` | [negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/negpart.md) | 168 | `declaration-track:37c1e5d2e88867b865ea9966280484f20996c26454d3a1b0826af8ee3afa3880` |
| 17 | `theorem` | [posPart_map_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/pospart-map-norm.md) | 171 | `result-track:cd94e161cd496e4509dabf3e31035d3050d66e14c0ce8722aeadb8c52319ab9d` |
| 18 | `theorem` | [negPart_map_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/negpart-map-norm.md) | 174 | `result-track:7cb8c00d57907b15850c67ae34c3b1fbe7bea377cafb324c7d3ecc36e81bc900` |
| 19 | `theorem` | [posPart_sub_negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/pospart-sub-negpart.md) | 177 | `result-track:a2974967758717a7ac0fe8776aa16876b5f86e9515c71758839e94b4103458b1` |
| 20 | `def` | [integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral.md) | 202 | `declaration-track:5607049fcfeb0bad6d7dfc09a237e3e857cc2f75174accd221a53b80b1837b22` |
| 21 | `theorem` | [integral_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-def.md) | 205 | `result-track:40ce24667b259042cafad4a211284f00984a3c64280bfbceb38f63272cbab3e2` |
| 22 | `theorem` | [integral_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-eq.md) | 208 | `result-track:06261e42687810259686ed0df19dbd01e3c4f556e5ad6ccc8be6ee80afe81e1e` |
| 23 | `theorem` | [integral_eq_sum_filter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-eq-sum-filter.md) | 212 | `result-track:debdeeff604ca9830b698601585112efa59fd9b10bbb8b08d5b7bf1c50fc9242` |
| 24 | `theorem` | [integral_eq_sum_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-eq-sum-of-subset.md) | 218 | `result-track:0c3908a2eb2db589c955a4ae94aca95a08ab173e1ab5f0d93a5923e8cea56d11` |
| 25 | `theorem` | [integral_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-const.md) | 229 | `result-track:04ed8c4031dd8cf07a41ccc3e54a913b0acad3d1e2c1f36d2a1326d3325eaddf` |
| 26 | `theorem` | [integral_piecewise_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-piecewise-zero.md) | 239 | `result-track:6aa4f7758782d399ed18956f9b968ca455987b59f543e500b5807e0d57c27ed4` |
| 27 | `theorem` | [map_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/map-integral.md) | 256 | `result-track:23e33fdf98ee8f3b7394833e6444a4798ac1adb49bfbbede4eef729e70258267` |
| 28 | `theorem` | [integral_eq_lintegral'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-eq-lintegral-source-edition-2.md) | 263 | `result-track:9a7d6c431fe45334bda4b9f692a372cd78dc5434d74c83984a1da40fafc1f34d` |
| 29 | `theorem` | [integral_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-congr-source-edition-2.md) | 279 | `result-track:f895abbfae496ee721c8b7f2ecbe76b56956ad7c682278b2d58edb429dbaeb21` |
| 30 | `theorem` | [integral_eq_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-eq-lintegral-source-edition-3.md) | 285 | `result-track:c01a7be12336acabef7983e879dc21bed7ac699e8ce298a37b55cddcaafd20ec` |
| 31 | `theorem` | [integral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-add-source-edition-2.md) | 292 | `result-track:4f34e3c5b5cc789b23a0052fc3db24f646cfb71202b663d0d030e4ff39d6dae0` |
| 32 | `theorem` | [integral_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-neg-source-edition-2.md) | 296 | `result-track:f2572f2a5b92b035bd159a59d2733972a72f2cc121e4ee5f361dfa4e234b5fd8` |
| 33 | `theorem` | [integral_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-sub-source-edition-2.md) | 299 | `result-track:fbe1b327b952810374ffa7d4a51f1c5c5b87accdabda84271830e338e1c6114f` |
| 34 | `theorem` | [integral_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-smul-source-edition-2.md) | 303 | `result-track:89bcde366642df70b8b532caf493fee71d8be8650e7eaba20a82b10f512c5518` |
| 35 | `theorem` | [norm_setToSimpleFunc_le_integral_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/norm-settosimplefunc-le-integral-norm.md) | 308 | `result-track:58ab0e7ae44d87fe80b3d4bd349b0e1d755a1488bfa23f0c6eff0810f359f032` |
| 36 | `theorem` | [norm_integral_le_integral_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/norm-integral-le-integral-norm.md) | 317 | `result-track:ac57d91e607daf7aeb01707379e9636f0fc84b08c6bee94b69435f0bd6d4cd3e` |
| 37 | `theorem` | [integral_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-add-measure.md) | 322 | `result-track:ee83bd1918586a12a73fe67554b7ada8f4d93c2c9256593b6e2d0d4ed5789085` |
| 38 | `lemma` | [integral_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-nonneg.md) | 334 | `result-track:6ff0580922f970220aaa28502c373ac335bb4ff28efd63981cbc56d5b4c7bc9e` |
| 39 | `lemma` | [integral_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-mono.md) | 348 | `result-track:78d3170f5dfbbd5131fa6daa9eadadf2094a22259aec9b087249a27481241a8d` |
| 40 | `lemma` | [integral_mono_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-mono-measure.md) | 354 | `result-track:770b16f5769e5854bc30fbdfbe04810bdb91507f8baa72fcb0ec54de7ee27295` |
| 41 | `theorem` | [norm_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/norm-eq-integral.md) | 387 | `result-track:467139829d14bb0998a2091c8bd04955c51384833def534e09abc3a1c7d5a511` |
| 42 | `def` | [posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/pospart.md) | 394 | `declaration-track:17aedd420701b2715d18f0ce6b09361156e985ee834b9f3b6e8bf01b6f22b295` |
| 43 | `def` | [negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/negpart-source-edition-2.md) | 402 | `declaration-track:7a59b6361d9a6175c89ee91a2f1fba039b0d3d6121e364c59851bbe6a897c284` |
| 44 | `theorem` | [coe_posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/coe-pospart.md) | 406 | `result-track:0d6ca528444828544515fea94b3dcc7a4db7964997e1a09289bf12ec4f2b42c4` |
| 45 | `theorem` | [coe_negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/coe-negpart.md) | 409 | `result-track:63273f1c9b6091b0f5251148c7425825fe6907414a572f3f8398eb19f2b186c9` |
| 46 | `def` | [integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-source-edition-2.md) | 426 | `declaration-track:b2bd482c4e92881ce843f4e92096ce16b50497308eec7a35a5919bd702b2e7b0` |
| 47 | `theorem` | [integral_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-eq-integral.md) | 429 | `result-track:4223b0fdb4c5133775861a1d4fdfcad31dfa161450d9b89e573363bdf6d0b4e8` |
| 48 | `theorem` | [integral_eq_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-eq-lintegral.md) | 431 | `result-track:61b3cc9ba1842f81d17eb32c08234efb68c9c23cd3a326b215055980bfbe5f4c` |
| 49 | `theorem` | [integral_eq_setToL1S](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-eq-settol1s.md) | 435 | `result-track:eff11bc0d633de16e2c8872237e9462d312553c46cdb1772e89f55d599d202f0` |
| 50 | `theorem` | [integral_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-congr.md) | 437 | `result-track:312e3ff1242921729fad2298710137320d01b6d169c7c603bf6230c1017f20f8` |
| 51 | `theorem` | [integral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-add.md) | 441 | `result-track:14ac81bee3dd5a781bb9a0f3508a4b1d247e3eceec2477513a1b99b99140fe96` |
| 52 | `theorem` | [integral_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-smul-source-edition-3.md) | 444 | `result-track:bb480adc6257b52d498d96df306bcdd9d588940179fdb5e19c3425cd1ddbc7f1` |
| 53 | `theorem` | [norm_integral_le_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/norm-integral-le-norm.md) | 447 | `result-track:62ea6244285aa7a2d6cff693c21522287a7197439e9e3bdfce124b89a9835744` |
| 54 | `def` | [integralCLM'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integralclm-source-edition-4.md) | 454 | `declaration-track:ea279edf2458bb898cd2e0bc3402523a4a78c32f5d42b6914217fdd1c5ab34fa` |
| 55 | `def` | [integralCLM](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integralclm-source-edition-3.md) | 459 | `declaration-track:7a696fdfe418befd64da0b3659aebc86b5920c6a7b5c9a8ca81c7984249744a2` |
| 56 | `theorem` | [norm_Integral_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/norm-integral-le-one.md) | 468 | `result-track:532cec3ad8fb7440c9e813821929f08b5d733bef2eff6ea8ba7bd3a527abaa01` |
| 57 | `theorem` | [posPart_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/pospart-tosimplefunc.md) | 474 | `result-track:ddcfc71d96b6bc5a427fbd0d77027b78ca2ade9d7720001763f111dd0ece4735` |
| 58 | `theorem` | [negPart_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/negpart-tosimplefunc.md) | 485 | `result-track:bfc8c3366825230b15cec0ec2e1834952ecaf4d7f89b64db0a53d93813171827` |
| 59 | `theorem` | [integral_eq_norm_posPart_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-eq-norm-pospart-sub.md) | 495 | `result-track:4b1fd2e948bb35040ab44d047fff5dbc46d841888f771fe74d91fce5e814fac3` |
| 60 | `def` | [integralCLM'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integralclm.md) | 537 | `declaration-track:0a590ead0ef729552cc3fdc2d9217ef56d82ca5c4ae6e0a128848f32341c6f9a` |
| 61 | `def` | [integralCLM](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integralclm-source-edition-2.md) | 541 | `declaration-track:22eda8decd8ed47f022fb3e4bcd05026d7ba6430e55786578b0abe6aff6f6dbf` |
| 62 | `theorem` | [integral_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-eq-source-edition-3.md) | 548 | `result-track:740b5312f59dd13a88b1ae2648a892a7d29ec32e0fa8af56943d9d22cb3b5c7b` |
| 63 | `theorem` | [integral_eq_setToL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-eq-settol1.md) | 551 | `result-track:9d7c9ea90f10b47cd452ebd6dcd3f304a7924cdc254c0a4d2c420a23509f7114` |
| 64 | `theorem` | [SimpleFunc.integral_L1_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/simplefunc-integral-l1-eq-integral.md) | 556 | `result-track:d80d0a1b8adf8ba0c6b4f044938ed978559513c77cd0862acb27775993ae2611` |
| 65 | `theorem` | [SimpleFunc.integralCLM'_L1_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/simplefunc-integralclm-l1-eq-integral.md) | 562 | `result-track:383dfcfacf006b37a8f1b5d19f6522202bac94b66359336ab645ff495544ba5b` |
| 66 | `theorem` | [integral_eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-eq-source-edition-2.md) | 568 | `result-track:308ee2e5b43b7b098b75c83c14cc77c9afab3440c28b32009d8936d7e93cb5c7` |
| 67 | `theorem` | [integral_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-zero.md) | 579 | `result-track:3d7c2eefee498532dbab915c0deb12f2a6280bfcd7106c072c010f57a880bdd5` |
| 68 | `theorem` | [integral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-add-source-edition-3.md) | 586 | `result-track:73c6f4684f751add69ce49d838b8af29ababc0463e6b2531825a3d12e83e48bf` |
| 69 | `theorem` | [integral_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-neg.md) | 591 | `result-track:2a74ea258d7b46b040f2de44cc8ba4429470795056c650115394eacef4d7b7d7` |
| 70 | `theorem` | [integral_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-sub.md) | 596 | `result-track:a569b84ba1f89f2a79540c2864a1ecc8c3d2e5218b1de6056bdcbcc5efa056e8` |
| 71 | `theorem` | [integral_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-smul.md) | 601 | `result-track:3ef52a0261175c3257c5ebeb1620181f3f8f50009ea11b83416019184144f812` |
| 72 | `theorem` | [norm_Integral_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/norm-integral-le-one-source-edition-2.md) | 604 | `result-track:e1885da5b1e9e13981025ba9193d3ec311024395a7290c274431b374df48969b` |
| 73 | `theorem` | [nnnorm_Integral_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/nnnorm-integral-le-one.md) | 607 | `result-track:24cdc175cc0b2900ac5a5395dee73efa82a4023c74d35cef5ac6b9dd7db7911b` |
| 74 | `theorem` | [norm_integral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/norm-integral-le.md) | 610 | `result-track:c50027d73401836965fd21137e621802aef491d46f3b263667936c0303f5352a` |
| 75 | `theorem` | [nnnorm_integral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/nnnorm-integral-le.md) | 617 | `result-track:af3d683a8635bed05052175b21cb9bf40fabc7855bae00ad034d05cb2accaff8` |
| 76 | `theorem` | [continuous_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/continuous-integral.md) | 621 | `result-track:5b7d0191807901ec0d79f1c8e2d4f08e4209f85e71f601045eb96093fa167ea1` |
| 77 | `theorem` | [integral_eq_norm_posPart_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/declarations/integral-eq-norm-pospart-sub-source-edition-2.md) | 627 | `result-track:dc22f520745ee58437a851dd688958f6da74847f58d94376d2bee871e3c11338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94200b5ff41140bce8e39aa754950fa2a61ccc6d2d69c0dfb1a2edc781555d47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant12ee8b69893dcce53817f6760e392d6b71732328fd7f8dfa8f6464bc1d80042d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/L1/Variant12ee8b69893dcce53817f6760e392d6b71732328fd7f8dfa8f6464bc1d80042d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
