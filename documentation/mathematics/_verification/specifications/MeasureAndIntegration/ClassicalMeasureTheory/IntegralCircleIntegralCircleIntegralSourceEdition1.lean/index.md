# Verification target: Integral Circle Integral Circle Integral Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0079ac21378deedf7a6be440ac892dcf1aaddd9",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/CircleIntegral/Variant52337b8ea60a20ab12c0784a693dd4c6b4170bae262485d12d435bb754c2c396.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0079ac21378deedf7a6be440ac892dcf1aaddd9`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/CircleIntegral/Variant52337b8ea60a20ab12c0784a693dd4c6b4170bae262485d12d435bb754c2c396.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/CircleIntegral/Variant52337b8ea60a20ab12c0784a693dd4c6b4170bae262485d12d435bb754c2c396.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.CircleMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.NonIntegrable` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/range-circlemap.md) | 79 | `result-track:736c20ec81e0c958672b83eebeab95f43795c003d05e8fc3c6366823aace025a` |
| 2 | `theorem` | [image_circleMap_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/image-circlemap-ioc.md) | 90 | `result-track:70e9ed634a953d2498b0fc95e75d002b0dcdf82e19aaef9f87f77a3d1560bf65` |
| 3 | `theorem` | [hasDerivAt_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/hasderivat-circlemap.md) | 93 | `result-track:0f7030ff44898318c1c07b2f708b700e336c4a01d27f6496632f177287e53e50` |
| 4 | `theorem` | [differentiable_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/differentiable-circlemap.md) | 98 | `result-track:d8491651b506a8ca396b277d90cb480a3777a08a8bd2670d7a2e996350265338` |
| 5 | `theorem` | [analyticOnNhd_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/analyticonnhd-circlemap.md) | 102 | `result-track:5540f3bd72efe7fd23225b729c3c54ba5dac271d302647e7f45db51a71907255` |
| 6 | `theorem` | [contDiff_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/contdiff-circlemap.md) | 111 | `result-track:4727a9040d6e2be6b5a6d68ec2481c9bedf58f7e566fc9e011f6b804e6e98e01` |
| 7 | `theorem` | [continuous_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/continuous-circlemap.md) | 116 | `result-track:26eec7cf009fe3f92b6c8cff262e6e1ce25ca42471e6270f0c555ca31413edbf` |
| 8 | `theorem` | [measurable_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/measurable-circlemap.md) | 120 | `result-track:01ae927f9d4d3ea5b9a78f686a320e3c845346a3fa41bc0ce3f804fb9f23442a` |
| 9 | `theorem` | [deriv_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/deriv-circlemap.md) | 124 | `result-track:4d222c75b229686e4de27756ec50de1a4666d60085f35f7710db1fefe3c3f7fc` |
| 10 | `theorem` | [deriv_circleMap_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/deriv-circlemap-eq-zero-iff.md) | 127 | `result-track:43f8532b83e87aae040440df632ab6ed9097b871b0085a2b6dc4e23727a23d74` |
| 11 | `theorem` | [deriv_circleMap_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/deriv-circlemap-ne-zero.md) | 130 | `result-track:686b546b6936aafc67ccb60e173222ddc78f86322a6ddeca2374a72314116d54` |
| 12 | `theorem` | [lipschitzWith_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/lipschitzwith-circlemap.md) | 134 | `result-track:6b132a4520b04e21e80923ec65b2df233bd93555779194ec837c6982b428d0ab` |
| 13 | `theorem` | [continuous_circleMap_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/continuous-circlemap-inv.md) | 138 | `result-track:77bab93d7a67652d64fde595ca2f5751951144aab75f455e7ddc253677573a98` |
| 14 | `theorem` | [circleMap_preimage_codiscrete](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/circlemap-preimage-codiscrete.md) | 146 | `result-track:ff60b482b19e47c142234056f74e07dfe3c0bd51d3d1083843fea7ba769db0e2` |
| 15 | `theorem` | [circleMap_neg_radius](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/circlemap-neg-radius.md) | 157 | `result-track:b9eecdf772d4fdb766b4bdd234f289373675028df0127db77a90fa87c7b74dc4` |
| 16 | `def` | [CircleIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/circleintegrable.md) | 171 | `declaration-track:cfc763f57441ef7ca61004cb29a15fd996d55790da04bc474f6b4b094cc06386` |
| 17 | `theorem` | [circleIntegrable_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/circleintegrable-const.md) | 175 | `result-track:555eba6b450c54674159280a3b2be2adeda42e883b2a5bac61c4cd896518c866` |
| 18 | `theorem` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/add.md) | 182 | `result-track:b27eda50ab9c6d95efa81e704f943ff0f4abdf8a4d1bccb2a5825f05945200e9` |
| 19 | `theorem` | [neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/neg.md) | 186 | `result-track:057448003a2f5c61127bc0746d5e5f18f686c33fae254817451caa6993019ef2` |
| 20 | `theorem` | [out](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/out.md) | 191 | `result-track:a5f0f1be26ecde16da746ca87319ff01dac9eef2796121e767a81dab8ab070c2` |
| 21 | `theorem` | [circleIntegrable_zero_radius](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/circleintegrable-zero-radius.md) | 202 | `result-track:6fb4670e50ff376e257c4ae599b0100e344d94cdf7b4e4e65af901e4600c05b2` |
| 22 | `theorem` | [CircleIntegrable.congr_codiscreteWithin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/circleintegrable-congr-codiscretewithin-source-edition-2.md) | 206 | `result-track:17aa0990f104a4321621a25d38e4f5b2655c4e1ae672d578978344d30b15940d` |
| 23 | `theorem` | [circleIntegrable_congr_codiscreteWithin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/circleintegrable-congr-codiscretewithin.md) | 218 | `result-track:159d46e8cd9be6c734e70f51579cce16b5f7f10c1210a394b24060e320666a46` |
| 24 | `theorem` | [circleIntegrable_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/circleintegrable-iff.md) | 224 | `result-track:a498f2153d7d8b1fec121b05f0c73ad8ca9cd98e974bd79eac125f1e5563da8f` |
| 25 | `theorem` | [ContinuousOn.circleIntegrable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/continuouson-circleintegrable-source-edition-2.md) | 238 | `result-track:edd9bef5655efb8410d4ffb0db4a76836c920f115c02c3f64baebaa7a91447c5` |
| 26 | `theorem` | [ContinuousOn.circleIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/continuouson-circleintegrable.md) | 242 | `result-track:30f1a13280398902df2547464a88d69c9a119f69d3af75eeb8e25ee7b783782f` |
| 27 | `theorem` | [circleIntegrable_sub_zpow_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/circleintegrable-sub-zpow-iff.md) | 249 | `result-track:0b8b5cc939ac7b9d7f119ca340a9509584976b441d229b3fbf9a5198be471d85` |
| 28 | `theorem` | [circleIntegrable_sub_inv_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/circleintegrable-sub-inv-iff.md) | 283 | `result-track:882255bf0915ecd9ac4b1d2ec9a10aa7d996363a95e9c437ad980786aa8fabe8` |
| 29 | `def` | [circleIntegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/circleintegral.md) | 290 | `declaration-track:24ac064b91e8dea290e7700ba37244efa329ab5213d7ead481b6d65f07b48464` |
| 30 | `theorem` | [circleIntegral_def_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/circleintegral-def-icc.md) | 296 | `result-track:9174643dccbd7d2340f434f8aa384dcb8e56a554026c97e3f90cfa155303b7fd` |
| 31 | `theorem` | [integral_radius_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-radius-zero.md) | 305 | `result-track:cf42e58b961eb3efc28b804078e4aa52d4c7f35aaeeebbaaf619980ed046d4d5` |
| 32 | `theorem` | [integral_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-congr.md) | 308 | `result-track:e7529f9d31185c55c405b0d0785b7dedbf5ff0e4e06a9a246e92df6d9163432d` |
| 33 | `theorem` | [circleIntegral_congr_codiscreteWithin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/circleintegral-congr-codiscretewithin.md) | 313 | `result-track:f06fdccb59eb334ac15ea359b910b5287bba43f90d230c6bac9d5edadb625a8a` |
| 34 | `theorem` | [integral_sub_inv_smul_sub_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-sub-inv-smul-sub-smul.md) | 322 | `result-track:b979facff25a11ba7015948b533e29aacc2b232d868664b075d15f66189c6ca2` |
| 35 | `theorem` | [integral_undef](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-undef.md) | 330 | `result-track:b93a6f2a0556c51ed91a94ffe567284b1fd2c27b59354f9194eeac82f3a85b00` |
| 36 | `theorem` | [integral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-add.md) | 334 | `result-track:0476ede63d0265c11da636b6ceba47fbbb058b18c8513746f66a5d74369eb4f9` |
| 37 | `theorem` | [integral_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-sub.md) | 339 | `result-track:fc050207b9ae7a8a27c95ba2bbf4c2cf687d83165fcd5600fc4c5138f3b00965` |
| 38 | `theorem` | [norm_integral_le_of_norm_le_const'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/norm-integral-le-of-norm-le-const.md) | 344 | `result-track:256fa613f18abacb6aa6d9d7ec2835536e29dbdaf4efd9243e73ce7064f27cf1` |
| 39 | `theorem` | [norm_integral_le_of_norm_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/norm-integral-le-of-norm-le-const-source-edition-2.md) | 356 | `result-track:29b424b415fb103bfba6d626f53e7350b2c9e3b7b8555733e8ad600c02d362c0` |
| 40 | `theorem` | [norm_two_pi_i_inv_smul_integral_le_of_norm_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/norm-two-pi-i-inv-smul-integral-le-of-norm-le-const.md) | 363 | `result-track:ef51f75c581c192c7cbb8b0986c36d21fd01961c003ebb9e8beed27b4701d39d` |
| 41 | `theorem` | [norm_integral_lt_of_norm_le_const_of_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/norm-integral-lt-of-norm-le-const-of-lt.md) | 373 | `result-track:9a819de0781a9338a89ac29293ed99dac23cc1c1edbf3f72577ca5bca3ca1101` |
| 42 | `theorem` | [integral_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-smul.md) | 393 | `result-track:66e2cc648ea884fe7fcbd7444ef5f2c81e989cf7e417da3f96b331d0001f84de` |
| 43 | `theorem` | [integral_smul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-smul-const.md) | 398 | `result-track:72a696b7b07f38bd3d34e15f904ac895d7195d187ab2335db61ee371df3f1176` |
| 44 | `theorem` | [integral_const_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-const-mul.md) | 403 | `result-track:055dbdfb3a7685a38315ca9e009bad0e70a25f847625775da436e1b8fba3baed` |
| 45 | `theorem` | [integral_sub_center_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-sub-center-inv.md) | 408 | `result-track:383eaec3f58389c297bc0f6d0743aeca5a96ea8cbc5a3c4daed6a7e6e3c4af8b` |
| 46 | `theorem` | [integral_eq_zero_of_hasDerivWithinAt'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-eq-zero-of-hasderivwithinat-source-edition-2.md) | 414 | `result-track:dee1f8dae7413864f8c770128df4102ab88be894453050b8f3e871c43eabf8a7` |
| 47 | `theorem` | [integral_eq_zero_of_hasDerivWithinAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-eq-zero-of-hasderivwithinat.md) | 426 | `result-track:05180a746ea6b76f79619828ca50f7b8edded8ba5b5dae4bee65cef93d743048` |
| 48 | `theorem` | [integral_sub_zpow_of_undef](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-sub-zpow-of-undef.md) | 433 | `result-track:046ae4bcf33c9c22f291176d6f7e9302e20f9a08e71cddfa595ad1a11f09ea4f` |
| 49 | `theorem` | [integral_sub_zpow_of_ne](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-sub-zpow-of-ne.md) | 442 | `result-track:12e0cf1367abc9cc9ec5f3b80dc6c8931a36257e4dc47377496819e19b2e7f77` |
| 50 | `def` | [cauchyPowerSeries](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/cauchypowerseries.md) | 468 | `declaration-track:a5c8a7069803b1283220139a038052982fae28d71572cd27076f1ab050e57ecd` |
| 51 | `theorem` | [cauchyPowerSeries_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/cauchypowerseries-apply.md) | 472 | `result-track:b74674a4773f3d16284877e1b0aed4a91d0a55690a129670caf35a0568efa51e` |
| 52 | `theorem` | [norm_cauchyPowerSeries_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/norm-cauchypowerseries-le.md) | 479 | `result-track:126b1d4949632e04ede81500cd9a48331d9d20550aa8e599515f0433ac39e860` |
| 53 | `theorem` | [le_radius_cauchyPowerSeries](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/le-radius-cauchypowerseries.md) | 501 | `result-track:5965c92398f66054fc22dd1df7e21c4412f116637279456210f9a4ccf8d12c6c` |
| 54 | `theorem` | [hasSum_two_pi_I_cauchyPowerSeries_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/hassum-two-pi-i-cauchypowerseries-integral.md) | 520 | `result-track:27d2195473bf909e650f156dce61abe31f452183acc7b596870b1980812352be` |
| 55 | `theorem` | [hasSum_cauchyPowerSeries_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/hassum-cauchypowerseries-integral.md) | 548 | `result-track:b282c57589e602d8e32c684105afa7914d323f0be6086fdb9efab6462d749e2c` |
| 56 | `theorem` | [sum_cauchyPowerSeries_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/sum-cauchypowerseries-eq-integral.md) | 558 | `result-track:0951446b7007d3b09e700c510f316a4201c87366a05b373b03362aa123af83d6` |
| 57 | `theorem` | [hasFPowerSeriesOn_cauchy_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/hasfpowerserieson-cauchy-integral.md) | 566 | `result-track:b53a6d79acc80502b38801fdf7cad33ef3ff390465a6e18334cc596a6abc6dd6` |
| 58 | `theorem` | [integral_sub_inv_of_mem_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralCircleIntegralCircleIntegralSourceEdition1.lean/declarations/integral-sub-inv-of-mem-ball.md) | 577 | `result-track:35d0c16efa4b3963674b9b111a4ede8bc5784266908c152aceec7f725f7a6462` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b30a4e7d84b0347e9678f1c1494f5993d88e3e5e4257da786d3f51d54c02b64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/CircleIntegral/Variant52337b8ea60a20ab12c0784a693dd4c6b4170bae262485d12d435bb754c2c396.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/CircleIntegral/Variant52337b8ea60a20ab12c0784a693dd4c6b4170bae262485d12d435bb754c2c396.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
