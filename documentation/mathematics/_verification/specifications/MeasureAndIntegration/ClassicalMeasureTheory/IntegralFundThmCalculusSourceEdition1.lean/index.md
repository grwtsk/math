# Verification target: Integral Fund Thm Calculus Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16d5c33a386ed47303041786a77bd4f00fd06b25",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantc7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16d5c33a386ed47303041786a77bd4f00fd06b25`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantc7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantc7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Measurable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Dual` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.VitaliCaratheodory` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FTCFilter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/ftcfilter.md) | 197 | `declaration-track:2fd87a310edf4fb1209215fe287adb769039886b3e949ff2c0b5e59c40d820b5` |
| 2 | `instance` | [pure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/pure.md) | 209 | `declaration-track:b40c07fe8f76c333eba347da0a46064f9a0b8665d388e454dfc7cdc9f63741d7` |
| 3 | `instance` | [nhdsWithinSingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/nhdswithinsingleton.md) | 214 | `declaration-track:0ed1cc45ebe2c3bf2970ff1a131590c1c7f7ea4c6a88cf1f429a0950f0a8cca7` |
| 4 | `theorem` | [finite_at_inner](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/finite-at-inner.md) | 218 | `result-track:1024d23552c90f97b49f9a6190fe7d330f7af086a95b09f74f69bcb5ee2387f4` |
| 5 | `instance` | [nhds](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/nhds.md) | 223 | `declaration-track:602d99a1c3f77a94662442f18da491478f8933a9368fb0ca3c9b206c1ac3691a` |
| 6 | `instance` | [nhdsUniv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/nhdsuniv.md) | 228 | `declaration-track:7b35dc357a3256c6b96ef6e2b7f7656841bc09420e6ed507ad1af09dcbe0b3fc` |
| 7 | `instance` | [nhdsLeft](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/nhdsleft.md) | 231 | `declaration-track:e048db1d4cda134b2c4f9d8ef396ccfa15b9828e8d2aae5bb7ea3cc206545c87` |
| 8 | `instance` | [nhdsRight](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/nhdsright.md) | 236 | `declaration-track:475944f612edf75b1a08f5aa453b6fa65bf57d8028cec4f60a9778d2034cfe29` |
| 9 | `instance` | [nhdsIcc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/nhdsicc.md) | 241 | `declaration-track:aa511d84d93ace3f4355ca41fdd4ba0a230c1875795c3e0bcacdcc9196d2bf0e` |
| 10 | `instance` | [nhdsUIcc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/nhdsuicc.md) | 247 | `declaration-track:fce1f68eb79ff57f75324a824d217985164843b1282fa05f3b346bbcc0407e71` |
| 11 | `theorem` | [measure_integral_sub_linear_isLittleO_of_tendsto_ae'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/measure-integral-sub-linear-islittleo-of-tendsto-ae-source-edition-2.md) | 274 | `result-track:feb52c114fc02d3f6f604503da89f56c4d8f253db30013596b61a23597e70b64` |
| 12 | `theorem` | [measure_integral_sub_linear_isLittleO_of_tendsto_ae_of_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/measure-integral-sub-linear-islittleo-of-tendsto-ae-of-le.md) | 300 | `result-track:2aed33a9ff61b5ba4680b88c2806e917f4d2c81e262218b13c260f9e1bfc6a06` |
| 13 | `theorem` | [measure_integral_sub_linear_isLittleO_of_tendsto_ae_of_ge'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/measure-integral-sub-linear-islittleo-of-tendsto-ae-of-ge-source-edition-2.md) | 321 | `result-track:9b64ba5c36a4619f7adf2b428211baf1fbd0730fe6dccbba87f5707d3b931c6e` |
| 14 | `theorem` | [measure_integral_sub_linear_isLittleO_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/measure-integral-sub-linear-islittleo-of-tendsto-ae.md) | 347 | `result-track:233b63fcbf844721b8b011bb93269fc1410b23df4cfb34d1927c6d2e0c75b2a1` |
| 15 | `theorem` | [measure_integral_sub_linear_isLittleO_of_tendsto_ae_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/measure-integral-sub-linear-islittleo-of-tendsto-ae-of-le-source-edition-2.md) | 364 | `result-track:caa71b0f6d476dd4696d1f620c70d301019869c61d820f08aba3dca3aa9efc50` |
| 16 | `theorem` | [measure_integral_sub_linear_isLittleO_of_tendsto_ae_of_ge](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/measure-integral-sub-linear-islittleo-of-tendsto-ae-of-ge.md) | 382 | `result-track:28770afa76d5faebe20c21edb3506b7130987c544ea6d747cffcba1e97f16247` |
| 17 | `theorem` | [measure_integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/measure-integral-sub-integral-sub-linear-islittleo-of-tendsto-ae.md) | 408 | `result-track:36198fc0fa7b9b72959cb52cbff74436990199f533b068a64c111a2f6839560e` |
| 18 | `theorem` | [measure_integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/measure-integral-sub-integral-sub-linear-islittleo-of-tendsto-ae-right.md) | 447 | `result-track:18fd69819a2caeee0bbbd4a627408bf2a29b2529b911c5ae8646a1c6b46b213f` |
| 19 | `theorem` | [measure_integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/measure-integral-sub-integral-sub-linear-islittleo-of-tendsto-ae-left.md) | 467 | `result-track:4eb4742a3dc9d33cd24e7d92939152fe7e683a9b6b66ae111ae79fb9e512a1cc` |
| 20 | `theorem` | [integral_sub_linear_isLittleO_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-sub-linear-islittleo-of-tendsto-ae.md) | 506 | `result-track:34e96cd15a3fec9ad96d07ca23291a20c593e65f9e60e0095aad26fd073ca198` |
| 21 | `theorem` | [integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-sub-integral-sub-linear-islittleo-of-tendsto-ae.md) | 523 | `result-track:13ef961de35dd171ac616d57240cf523e97261a3aee08847c28bf9e91dbe552e` |
| 22 | `theorem` | [integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-sub-integral-sub-linear-islittleo-of-tendsto-ae-right.md) | 544 | `result-track:09dd5ae47d0d2156d7cf8bbe52e3569f02bf2bd27ff1313e18bfdc99b13655be` |
| 23 | `theorem` | [integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-sub-integral-sub-linear-islittleo-of-tendsto-ae-left.md) | 559 | `result-track:73e383fcc5c768f8350300c768fa5420f142c3b28d8ec265417e3ced60d5d915` |
| 24 | `theorem` | [integral_hasStrictFDerivAt_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasstrictfderivat-of-tendsto-ae.md) | 605 | `result-track:f092da201a820b974197f8fb2eca5871c07ca3cbf0441755338d0a6a76b31e66` |
| 25 | `theorem` | [integral_hasStrictFDerivAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasstrictfderivat.md) | 626 | `result-track:9b93dd183feaa045b555d6f4de7e92be11c11fef7f4247f5a23219f2e5a8235f` |
| 26 | `theorem` | [integral_hasStrictDerivAt_of_tendsto_ae_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasstrictderivat-of-tendsto-ae-right.md) | 639 | `result-track:049f5affae278163c0362014de69dfb8e8bfbcd1a023b5774c427516e7d30718` |
| 27 | `theorem` | [integral_hasStrictDerivAt_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasstrictderivat-right.md) | 650 | `result-track:8395c84445f0571bf535973b4f6bab13485eacc82df30158065f47d70ca62837` |
| 28 | `theorem` | [integral_hasStrictDerivAt_of_tendsto_ae_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasstrictderivat-of-tendsto-ae-left.md) | 660 | `result-track:5781649b5a3606d62b9a502ae77012d4c9475f68d4a4c20ad59dce8fc0c3e5ee` |
| 29 | `theorem` | [integral_hasStrictDerivAt_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasstrictderivat-left.md) | 671 | `result-track:98399b488d888a366d3ee76cae7d510019dc7889b3df02de825ce19c953fc2ec` |
| 30 | `theorem` | [_root_.Continuous.integral_hasStrictDerivAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/root-continuous-integral-hasstrictderivat.md) | 681 | `result-track:c750cd38bbc0397a499ac21d2d8ab44acd3b38b23ed9af907d4f6a418f885cff` |
| 31 | `theorem` | [_root_.Continuous.deriv_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/root-continuous-deriv-integral.md) | 690 | `result-track:5795ace5145ed1f19de7e23b17d3aae7dff9ddb93b766c03485e894fab55b18f` |
| 32 | `theorem` | [integral_hasFDerivAt_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasfderivat-of-tendsto-ae.md) | 706 | `result-track:586b3690728f08c7d36a5a6b81e3eeca457d5899f5a8edac95add542a020ec29` |
| 33 | `theorem` | [integral_hasFDerivAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasfderivat.md) | 717 | `result-track:12a1eb47daa83c3ebab62272fdd4f278daa63acc463599fe5ced86613f3282ac` |
| 34 | `theorem` | [fderiv_integral_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/fderiv-integral-of-tendsto-ae.md) | 728 | `result-track:9aaea61166013c953c9578255b1d4091f8b4b329caa76c67eec0816b35ba6f97` |
| 35 | `theorem` | [fderiv_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/fderiv-integral.md) | 739 | `result-track:2ba152f9ec8b1fadfab4bd524813a533e2cbafd4b99b33fb7cfdfd0518d47e39` |
| 36 | `theorem` | [integral_hasDerivAt_of_tendsto_ae_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasderivat-of-tendsto-ae-right.md) | 749 | `result-track:02f79122e11379c19e7240fc64e35ff7888cd93b4ee0ace83d24900c09995d8c` |
| 37 | `theorem` | [integral_hasDerivAt_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasderivat-right.md) | 757 | `result-track:0f65b6bba2c7ae39c2598b9742a3c1e10b815ec46a6c578ae5eae363d06abc2c` |
| 38 | `theorem` | [deriv_integral_of_tendsto_ae_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/deriv-integral-of-tendsto-ae-right.md) | 765 | `result-track:ae6ec40d6d99e9c6c88fa2977351e27332efb3f67bcb2c5b69eadb6de15eb9d9` |
| 39 | `theorem` | [deriv_integral_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/deriv-integral-right.md) | 773 | `result-track:588573d54e5bdc76ab41ab35f21773e1bdb1e0eba1735de71f37ac8e1e4533a2` |
| 40 | `theorem` | [integral_hasDerivAt_of_tendsto_ae_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasderivat-of-tendsto-ae-left.md) | 781 | `result-track:1a43cd49b975f0e0c6da3716e926ab1ca6403e8c3896bdf95bd40af957c2b307` |
| 41 | `theorem` | [integral_hasDerivAt_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasderivat-left.md) | 789 | `result-track:25ea326a801e65ce770089ebd1f0d4e41ee1d7d51842e08d8d99673e45cb154c` |
| 42 | `theorem` | [deriv_integral_of_tendsto_ae_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/deriv-integral-of-tendsto-ae-left.md) | 797 | `result-track:d1a993e8aef4204a0567eee7b39898cd1724f8d92cb28af883131efb4e59bb5f` |
| 43 | `theorem` | [deriv_integral_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/deriv-integral-left.md) | 805 | `result-track:c35cbbf38d9f85ad8afa4c9fbf821cee5b4c97f43b4e0fb34178e0910a234b84` |
| 44 | `theorem` | [integral_hasFDerivWithinAt_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasfderivwithinat-of-tendsto-ae.md) | 828 | `result-track:7958a57a778866fa7b0bb045840459bc2e4db9e940877d2563dd3a710e059a90` |
| 45 | `theorem` | [integral_hasFDerivWithinAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasfderivwithinat.md) | 857 | `result-track:dfcc1b744f1152c3f8be8977f023201386c1076bb7632b35710365da67af90e1` |
| 46 | `macro` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/macro.md) | 869 | `declaration-track:48e7835716dbf3a5db07a596db3cb4e7af2dd97bc9937b5c9298717360578f71` |
| 47 | `theorem` | [fderivWithin_integral_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/fderivwithin-integral-of-tendsto-ae.md) | 886 | `result-track:3eb6345997e75730d41ccac214d92cf60ddd196b6ed94c78e6db292bd58dec11` |
| 48 | `theorem` | [integral_hasDerivWithinAt_of_tendsto_ae_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasderivwithinat-of-tendsto-ae-right.md) | 900 | `result-track:7f2ad9d1fa318253a308694e380c74230a1cdbe9e15bc0038b5bf1b296381ec6` |
| 49 | `theorem` | [integral_hasDerivWithinAt_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasderivwithinat-right.md) | 911 | `result-track:cdd868c6134934092b6cb67e9231a279d5bb5b9bf8752cd34593e2aa100a0571` |
| 50 | `theorem` | [derivWithin_integral_of_tendsto_ae_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/derivwithin-integral-of-tendsto-ae-right.md) | 920 | `result-track:1295b2a827b426159070bcdecdd62b3e1a8d237fa038336cdc12d3717ff6b47a` |
| 51 | `theorem` | [derivWithin_integral_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/derivwithin-integral-right.md) | 931 | `result-track:e582611aa5dffe43a9e284bde035feb8a87acf4fbeb6eaf345b735fea2bd1750` |
| 52 | `theorem` | [integral_hasDerivWithinAt_of_tendsto_ae_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasderivwithinat-of-tendsto-ae-left.md) | 942 | `result-track:c9692989000f34e4e318ff4fbb971140055eb9576b0cb50161c076de68a70426` |
| 53 | `theorem` | [integral_hasDerivWithinAt_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-hasderivwithinat-left.md) | 953 | `result-track:d70a66b673eb5e1f894191d67ae69d3a04916f3017c308f1e744acb2cda2b541` |
| 54 | `theorem` | [derivWithin_integral_of_tendsto_ae_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/derivwithin-integral-of-tendsto-ae-left.md) | 962 | `result-track:88ac4e874e8f03b71a06e59515550a6834e590c29cd657ec9aedaa6fac6d2359` |
| 55 | `theorem` | [derivWithin_integral_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/derivwithin-integral-left.md) | 973 | `result-track:dc73cf7c28e7c6a3a3ec1eb4f8350dcf3f09cf216c1652efcc0f9550b661011a` |
| 56 | `theorem` | [differentiableOn_integral_of_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/differentiableon-integral-of-continuous.md) | 982 | `result-track:fb37e3166781307ceb40adb7cbec41acb5a6c19ec5ddae65e53a7ca831df2ef8` |
| 57 | `theorem` | [sub_le_integral_of_hasDeriv_right_of_le_Ico](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/sub-le-integral-of-hasderiv-right-of-le-ico.md) | 1020 | `result-track:8ef224ffebf90b773a69822894544711d9aa1997af5b7632a6696d91cc50d069` |
| 58 | `theorem` | [sub_le_integral_of_hasDeriv_right_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/sub-le-integral-of-hasderiv-right-of-le.md) | 1121 | `result-track:c11dd8d740f23937d5103efd4e6e50b8a66b58acac9a9aa06d07838dc679a5b6` |
| 59 | `theorem` | [integral_le_sub_of_hasDeriv_right_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-le-sub-of-hasderiv-right-of-le.md) | 1148 | `result-track:5ed41bc56676e2390630e95b5b423ca658a61309937a3dd70b2a8653160a4b31` |
| 60 | `theorem` | [integral_eq_sub_of_hasDeriv_right_of_le_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-eq-sub-of-hasderiv-right-of-le-real.md) | 1159 | `result-track:a574509639292f818ff127611f159e6558691ea79255d547af4da715a11b964c` |
| 61 | `theorem` | [integral_eq_sub_of_hasDeriv_right_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-eq-sub-of-hasderiv-right-of-le.md) | 1171 | `result-track:44cc517948dc036c718ad2e47e7e5658ea87712b9cb2f2419f620c63b589744d` |
| 62 | `theorem` | [integral_eq_sub_of_hasDeriv_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-eq-sub-of-hasderiv-right.md) | 1184 | `result-track:65578ae9780081bc1e5df0b124ed1632f5046fb3039a328bbc68ce490b31ff6d` |
| 63 | `theorem` | [integral_eq_sub_of_hasDerivAt_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-eq-sub-of-hasderivat-of-le.md) | 1197 | `result-track:9d107bb133cec2bbe56e9b4671da19fe3d0977008952ffb4bf188b9dc9668b89` |
| 64 | `theorem` | [integral_eq_sub_of_hasDerivAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-eq-sub-of-hasderivat.md) | 1206 | `result-track:d0334cd8fce27b590792a37b780fccb5f74f32624c6cce99a156f8512fc73dba` |
| 65 | `theorem` | [integral_eq_sub_of_hasDerivAt_of_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-eq-sub-of-hasderivat-of-tendsto.md) | 1212 | `result-track:0ad99f617a4e41f3f847adf0dc20cf0485d67647ac471e39999484c99baab354` |
| 66 | `theorem` | [integral_deriv_eq_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-deriv-eq-sub-source-edition-2.md) | 1234 | `result-track:ee4cdc1d29d47c256cf27f504484f67bf72d21443112568e17b39c2883cd0ab7` |
| 67 | `theorem` | [integral_deriv_eq_sub'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-deriv-eq-sub.md) | 1239 | `result-track:d91e8f600c2e4001aa7270aefaa4ce365d870439edf0cf1f11657a6fa258b510` |
| 68 | `theorem` | [integrableOn_deriv_right_of_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integrableon-deriv-right-of-nonneg.md) | 1253 | `result-track:8f89e36f946b696803c04162331d5b4e1d5e9f3a11f947c73eff70fe35477831` |
| 69 | `theorem` | [integrableOn_deriv_of_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integrableon-deriv-of-nonneg.md) | 1289 | `result-track:347af8e659ee9c088f1a9d8494ff2b6e55d846d0a1b6ac77c331d58cf06e6508` |
| 70 | `theorem` | [intervalIntegrable_deriv_of_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/intervalintegrable-deriv-of-nonneg.md) | 1297 | `result-track:1641a659b84b189eccc7598f469f46a4f36db2ad1b1a0245d003ce86eb3b648d` |
| 71 | `theorem` | [integral_deriv_mul_eq_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-deriv-mul-eq-sub.md) | 1318 | `result-track:19f4c88a40c908843509a432fe17bb752657ba8e4c0ee655a9ac795df69a008b` |
| 72 | `theorem` | [integral_mul_deriv_eq_deriv_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-mul-deriv-eq-deriv-mul.md) | 1327 | `result-track:78928a9e7cf66654fc14666ef445f8dc1e36762c462bbca1e7c0d450e950014a` |
| 73 | `theorem` | [integral_comp_smul_deriv'''](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-comp-smul-deriv-source-edition-2.md) | 1353 | `result-track:82859f16621a6dc40ca15e75356d074f290632530f8a4155e047d872c8766a66` |
| 74 | `theorem` | [integral_comp_smul_deriv''](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-comp-smul-deriv-source-edition-3.md) | 1398 | `result-track:de3ce3be88fdd418aa6d454eecc36d9aaf15c1d96aa72498a4940fb950653d44` |
| 75 | `theorem` | [integral_comp_smul_deriv'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-comp-smul-deriv-source-edition-4.md) | 1415 | `result-track:ec64aac9661d917f531c8f1949325171b90b8cbbd62ebd2cc21cb74703cd0b55` |
| 76 | `theorem` | [integral_comp_smul_deriv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-comp-smul-deriv.md) | 1427 | `result-track:0efc816e333e85e38f9bb327f7052310fade26216dfc3950a5a02db8c7658bbb` |
| 77 | `theorem` | [integral_deriv_comp_smul_deriv'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-deriv-comp-smul-deriv.md) | 1433 | `result-track:72d8546c70c947c9c172a1d81cc23588900a70fb0487bca12c418426a130c771` |
| 78 | `theorem` | [integral_deriv_comp_smul_deriv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-deriv-comp-smul-deriv-source-edition-2.md) | 1444 | `result-track:80346c34c5e7cf088182f38fb2d381cddd02175fef3217d41025215a54db642a` |
| 79 | `theorem` | [integral_comp_mul_deriv'''](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-comp-mul-deriv.md) | 1461 | `result-track:0e2354d824d52c2a8c12cd7bbc43bca56def3c01fc101bd38b96fcd244c21174` |
| 80 | `theorem` | [integral_comp_mul_deriv''](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-comp-mul-deriv-source-edition-3.md) | 1475 | `result-track:b9bd56b5a307fc62e1fa816d3db70db1533592c9b7561b6d792fb96a6092d00a` |
| 81 | `theorem` | [integral_comp_mul_deriv'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-comp-mul-deriv-source-edition-4.md) | 1488 | `result-track:d75c6bccabde85884967b15b63eda08ae4363b9aeaf7a1df20531bde106c65e2` |
| 82 | `theorem` | [integral_comp_mul_deriv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-comp-mul-deriv-source-edition-2.md) | 1498 | `result-track:3371c05eb4525c7c7e495d032b3147e579dc71ac07d5a7f543a4b8e931695239` |
| 83 | `theorem` | [integral_deriv_comp_mul_deriv'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-deriv-comp-mul-deriv.md) | 1504 | `result-track:1d2474dd2536f9f50defe4493d410a64d98a623059399f6d50e3181849f6bce4` |
| 84 | `theorem` | [integral_deriv_comp_mul_deriv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralFundThmCalculusSourceEdition1.lean/declarations/integral-deriv-comp-mul-deriv-source-edition-2.md) | 1513 | `result-track:7b017e872138e615c6dfec1d95a0e466a67d1022ba3832c7273684f8e9e9b344` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc96d04c2f84a2df1f55785730cfc3cc54ed08961b60ec378a71031c23d9334b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantc7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantc7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
