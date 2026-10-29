# Verification target: L1 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5920ecca9951406866696dcf79bf2219d0bb186f",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant99f1eadd0e057e71c231b1745d7a1daf8528f3b43b6c08b3758f3b22cdbe7acb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5920ecca9951406866696dcf79bf2219d0bb186f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant99f1eadd0e057e71c231b1745d7a1daf8528f3b43b6c08b3758f3b22cdbe7acb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/L1/Variant99f1eadd0e057e71c231b1745d7a1daf8528f3b43b6c08b3758f3b22cdbe7acb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.SetToL1` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/weightedsmul.md) | 84 | `declaration-track:2facc8df0fa31044232d11f915de5a593c7676958bc87bbe3d58f0dcd2171eac` |
| 2 | `theorem` | [weightedSMul_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/weightedsmul-apply.md) | 87 | `result-track:1cbd3bdef9e33e8f2148edba898db5414864bcfbbdaed6ceeef3aa53df79ba66` |
| 3 | `theorem` | [weightedSMul_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/weightedsmul-zero-measure.md) | 91 | `result-track:be5b14887d285374014b04c37cd2328056c2854a58cffeaae4b42b8de65deaf9` |
| 4 | `theorem` | [weightedSMul_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/weightedsmul-empty.md) | 95 | `result-track:e3e90fa61e85b3366a1222f02e6ba4793e3502835612b49ed9862308a845509d` |
| 5 | `theorem` | [weightedSMul_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/weightedsmul-add-measure.md) | 98 | `result-track:d54719322b756344f2ab372cb3b83d19eb0e04e0f7e6349bcd127429ab8031e8` |
| 6 | `theorem` | [weightedSMul_smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/weightedsmul-smul-measure.md) | 106 | `result-track:312119fee18678b1e58ce8d5c42f09108ebdf06b618bad6bbc1221170fd4fa49` |
| 7 | `theorem` | [weightedSMul_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/weightedsmul-congr.md) | 111 | `result-track:7c9e188d1fb0d2d0dd650bae75d0b69bd982dda0fa784c21f0800859d8c832a6` |
| 8 | `theorem` | [weightedSMul_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/weightedsmul-null.md) | 115 | `result-track:56d6f39d3eceb359a9efdac5d733d6ee38d595ebd242d20f43227de7d0635b2a` |
| 9 | `theorem` | [weightedSMul_union'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/weightedsmul-union.md) | 118 | `result-track:220209bacd2e8290b5cff7fa645b69e36b011ef8b7d614820e264841c96dd509` |
| 10 | `theorem` | [weightedSMul_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/weightedsmul-union-source-edition-2.md) | 125 | `result-track:9be6a87d4118bdbf7889bea7e580447e974f4584a52fa2450333720928c4c5f8` |
| 11 | `theorem` | [weightedSMul_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/weightedsmul-smul.md) | 130 | `result-track:69d37bbd0f115ce8fa30bf01641065bbe642a479edafedd0db19282d14d0c37e` |
| 12 | `theorem` | [norm_weightedSMul_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/norm-weightedsmul-le.md) | 134 | `result-track:d995d66b8b41075787f5a663428d68787e28e93f6464aca414253af97ae1e576` |
| 13 | `theorem` | [dominatedFinMeasAdditive_weightedSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/dominatedfinmeasadditive-weightedsmul.md) | 143 | `result-track:f216616c445b3d4f9264fc44b0e171b28195673eb60b1e2ddfee36042157bff0` |
| 14 | `theorem` | [weightedSMul_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/weightedsmul-nonneg.md) | 147 | `result-track:76e09cdc846825129f6653d648da558aeba8973309296d3368c57b056c6faba4` |
| 15 | `def` | [posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/pospart-source-edition-2.md) | 163 | `declaration-track:aca3821b65c526f54653ce1aac34bb59c7696edcff81c6c324fed259ef4a07a7` |
| 16 | `def` | [negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/negpart-source-edition-2.md) | 167 | `declaration-track:940e491ca2d6c81043aaf2cad25d44707019610c376982deb999157f1e0b19a8` |
| 17 | `theorem` | [posPart_map_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/pospart-map-norm.md) | 170 | `result-track:2f70f1efea844805a4e230f9dbb3bc88a2bb171c9eb24fbabc8cc507a32f2d9e` |
| 18 | `theorem` | [negPart_map_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/negpart-map-norm.md) | 173 | `result-track:61063dcc98cc3b15c6d913bf127642573e540b7f57744ea656b10f7f7de5dc59` |
| 19 | `theorem` | [posPart_sub_negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/pospart-sub-negpart.md) | 176 | `result-track:7d1e9dba2c90091ad281357b6854af95189d2fa40dbd64cd7af8a159bc5ab103` |
| 20 | `def` | [integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-source-edition-2.md) | 201 | `declaration-track:95c7ba9d0f704971f5ffa444a9670d3af0506ba473ee11f72fbda1a34306a225` |
| 21 | `theorem` | [integral_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-def.md) | 204 | `result-track:f449dfc7af1e6a979ee9c93e27c3a8b095bdf2f1479478df936ba26782684b61` |
| 22 | `theorem` | [integral_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-eq.md) | 207 | `result-track:4bb25c1f22ae2d5a3666cc4ee034d582e898298302546b9affec7aaa87cfb99c` |
| 23 | `theorem` | [integral_eq_sum_filter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-eq-sum-filter.md) | 211 | `result-track:302f787bd78b90ce59968761b51651cb7cbe68b6cf2a263f33e7165c0a017fe5` |
| 24 | `theorem` | [integral_eq_sum_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-eq-sum-of-subset.md) | 217 | `result-track:62041a8f7ed57223ef23c170eace85f0d7143f4d5d5c0c3704c375cd1cd0f5fe` |
| 25 | `theorem` | [integral_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-const.md) | 228 | `result-track:2d57a828576c82e56b532b2c288e810e4b7d362fcc7799f7669ce575e7247227` |
| 26 | `theorem` | [integral_piecewise_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-piecewise-zero.md) | 237 | `result-track:e3855a55eebca1b7fdadd2881ebb81213afb38f91543e396ca2b803f9abcca64` |
| 27 | `theorem` | [map_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/map-integral.md) | 254 | `result-track:66fd3ff2c8e0c371fbf0a01fe6cacbc1a854510c8cc30cf986bcacd020bd4bb1` |
| 28 | `theorem` | [integral_eq_lintegral'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-eq-lintegral-source-edition-3.md) | 261 | `result-track:f1cfc8d21daa5766887b471931060de10b876bc11b91020ce854454f5dba1913` |
| 29 | `theorem` | [integral_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-congr.md) | 277 | `result-track:7790a2ab1a7669bce1c0fdb3c1c2f00e6b71a76fed0677649c8b2836f95734da` |
| 30 | `theorem` | [integral_eq_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-eq-lintegral-source-edition-2.md) | 283 | `result-track:b1caa7a17f5ce844e103cf24472aba5082e25342d69650a9d27ce211c31f8aa6` |
| 31 | `theorem` | [integral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-add-source-edition-3.md) | 290 | `result-track:f3ea1fa6a1411fcea30ed9fce87dafa1fef839e6ef465446bd6db20eda7d34ad` |
| 32 | `theorem` | [integral_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-neg.md) | 294 | `result-track:1f9361ef9bbf4a2da6b84a1efe83567b48d71c2580a29dc9b42ee023eff23737` |
| 33 | `theorem` | [integral_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-sub-source-edition-2.md) | 297 | `result-track:de5d375b72a9c8ccff4a3b4aa0b27c84c891effd00d514566a27d608ee5b63fc` |
| 34 | `theorem` | [integral_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-smul-source-edition-2.md) | 301 | `result-track:4ae428ada71970e20c5d679c9a44ae06028a18213fd67d8e7ce76f4b071f03f2` |
| 35 | `theorem` | [norm_setToSimpleFunc_le_integral_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/norm-settosimplefunc-le-integral-norm.md) | 306 | `result-track:078a2dec63bc75a4b7f0bb89ea84137d94571eab6cea3d5d64ebacda93e3d742` |
| 36 | `theorem` | [norm_integral_le_integral_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/norm-integral-le-integral-norm.md) | 315 | `result-track:6fa0245b53ff91ede0930a008351d248fe2fe2589cea46ed0395c134554f81e6` |
| 37 | `theorem` | [integral_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-add-measure.md) | 320 | `result-track:a395009155f0f1bda2c909c94a176fd61daf3ffe07eb2e2a2641809cafd36cb2` |
| 38 | `lemma` | [integral_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-nonneg.md) | 332 | `result-track:3e9e7d40da85636937d9380772989076ce9665458d1d34a711aac17cf304d372` |
| 39 | `lemma` | [integral_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-mono.md) | 346 | `result-track:a85486385f612700cec7c8f3c87a89c4d46173743b110a7f8bf6815ac3edaa34` |
| 40 | `lemma` | [integral_mono_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-mono-measure.md) | 352 | `result-track:7838947b802bf6af9bec29afd64265cd1298c93e8169d341c63966a45de486df` |
| 41 | `theorem` | [norm_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/norm-eq-integral.md) | 386 | `result-track:5e3c3b3aba6d0cbd90b64dcf9ced681ac0519020ff26426e92780892ec2dd33e` |
| 42 | `def` | [posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/pospart.md) | 393 | `declaration-track:3bf89380368382c1612468fe9e6f682446c40eb1136be5445c4e91a1a1175981` |
| 43 | `def` | [negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/negpart.md) | 401 | `declaration-track:81b834ccc7672ee2ca0551501b12266206f92666fac26250d9b814726477873d` |
| 44 | `theorem` | [coe_posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/coe-pospart.md) | 405 | `result-track:394949d17b9ded6513d94732fb3dc373b4b913185641041760b1c887cc88ffcf` |
| 45 | `theorem` | [coe_negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/coe-negpart.md) | 408 | `result-track:339ac3f57e9f147df44a3bb4104df7645aecf5ce642469f181032b226a47f41e` |
| 46 | `def` | [integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral.md) | 425 | `declaration-track:8b3c7865b62fbfd51c1db2389f7697f10febbcdc4d10cc2d1307641a621b4ed1` |
| 47 | `theorem` | [integral_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-eq-integral.md) | 428 | `result-track:c75cdec58161c5e66b14492e57028d1527015b25e7746f34f864910ffca83bad` |
| 48 | `theorem` | [integral_eq_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-eq-lintegral.md) | 430 | `result-track:58590c00b30cae39ae0d0ba559d8182381ffa1f4fd13daa0e3df66d8c0be2449` |
| 49 | `theorem` | [integral_eq_setToL1S](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-eq-settol1s.md) | 434 | `result-track:99997fb3927f50593e0f0f1cdac9a2982eefe9b44502ea0b8466fec72587d1b8` |
| 50 | `theorem` | [integral_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-congr-source-edition-2.md) | 436 | `result-track:9b21a97976641ea3912ea775fcc703f2b97ec4c7e2b5a981646d7841e44a8a25` |
| 51 | `theorem` | [integral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-add.md) | 440 | `result-track:4ec8e8f1cfc0ac7d0a09d5cb5da5c07348d8ea183202d87e96d291be299dff91` |
| 52 | `theorem` | [integral_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-smul-source-edition-3.md) | 443 | `result-track:689f5ea19c64759771c2192c9f8ddd92659b4c991c9b78b12de245306faefb8d` |
| 53 | `theorem` | [norm_integral_le_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/norm-integral-le-norm.md) | 446 | `result-track:aa2031cdc39c5d0e73412efe426dafda71426390585b82b7008839fac5b7109e` |
| 54 | `def` | [integralCLM'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integralclm-source-edition-2.md) | 453 | `declaration-track:215140a1c57ca774755828020bca92aa25dfd699d92deb0079b9a4ca9ebc187b` |
| 55 | `def` | [integralCLM](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integralclm.md) | 458 | `declaration-track:039e4fb75f5dd9c22e294d4722036fd06d9318be5d255d212d1ded0682046879` |
| 56 | `theorem` | [norm_Integral_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/norm-integral-le-one-source-edition-2.md) | 467 | `result-track:a01e16c0b49f87f51ad836181d670150c7b684409f915c9f5872cfab84103625` |
| 57 | `theorem` | [posPart_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/pospart-tosimplefunc.md) | 473 | `result-track:7efcddf34adb30854ad9df49e13b4276e6eecffea068779637307338782bbff8` |
| 58 | `theorem` | [negPart_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/negpart-tosimplefunc.md) | 484 | `result-track:8a54b78b9bce601e30193e1811860ffca2e809fba741a61c7a80f2776180aea5` |
| 59 | `theorem` | [integral_eq_norm_posPart_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-eq-norm-pospart-sub.md) | 494 | `result-track:8327c22e48e8707dabcb43fc4649a5b86873da6ad6c58c54aaf2c91a7829f0fa` |
| 60 | `def` | [integralCLM'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integralclm-source-edition-3.md) | 536 | `declaration-track:2b1699f85c6c1cce24ed2ba6015195051d5b4af8cf5a41363190b1d1775de3be` |
| 61 | `def` | [integralCLM](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integralclm-source-edition-4.md) | 541 | `declaration-track:af46346ff286e0a2ffcdc08c457aa9ad0899959c50e1e613a92120fa2ef91f0c` |
| 62 | `theorem` | [integral_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-eq-source-edition-2.md) | 548 | `result-track:d6d03b5f880b8ea101b2edf0568aa36d8392467690eba1d43379671f33e5366d` |
| 63 | `theorem` | [integral_eq_setToL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-eq-settol1.md) | 551 | `result-track:9d38fcb13f427193df172166c8c3bfcc28bef4d8167fcfecfbbf776915f444c7` |
| 64 | `theorem` | [SimpleFunc.integral_L1_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/simplefunc-integral-l1-eq-integral.md) | 556 | `result-track:70f20825aa29adf035e1e3966caa0beeb66a3fe400c4cf21d7b7c855634b5caa` |
| 65 | `theorem` | [integral_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-zero.md) | 564 | `result-track:7fbcb546113f30e1306ae7986973d9f6a9ee922ffec5ee963dc2a74fa9f735ae` |
| 66 | `theorem` | [integral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-add-source-edition-2.md) | 571 | `result-track:98b3d5296c828674d7bcaa875cc264a858e6adcef691cad58c8dfb3af5fe705a` |
| 67 | `theorem` | [integral_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-neg-source-edition-2.md) | 576 | `result-track:c2601b5dcb3fb0e18785c246848f50e9bddf4a5f96b2410ce76863017350a7cb` |
| 68 | `theorem` | [integral_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-sub.md) | 581 | `result-track:a0ed1d207635ceb92d20395ada76d066b7c6d09a1a6556273e5fad7cdc15eec1` |
| 69 | `theorem` | [integral_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-smul.md) | 586 | `result-track:273d2425fbe444c8b23660c071821126302cb4e90c2ffa452e7bb90a483c9a49` |
| 70 | `theorem` | [norm_Integral_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/norm-integral-le-one.md) | 591 | `result-track:37c54d774b78e796eaec78125148c958990f16cf52f65ca31670141e694e2a89` |
| 71 | `theorem` | [nnnorm_Integral_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/nnnorm-integral-le-one.md) | 594 | `result-track:1073f99d8fcd68fdd3a19327dd97a9a532404ed8d36adb70a24ad3e0c268c39a` |
| 72 | `theorem` | [norm_integral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/norm-integral-le.md) | 597 | `result-track:8c025b01e4e640264e163920864f832bf19302235aa1b718dd543afd94eeb42b` |
| 73 | `theorem` | [nnnorm_integral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/nnnorm-integral-le.md) | 604 | `result-track:d5137602df0937682de8ba2f81d98e1bb3d297e169ed6ed6b9c21f8152e56192` |
| 74 | `theorem` | [continuous_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/continuous-integral.md) | 608 | `result-track:f1687e33cac13b2d6a851bdcf096b49502da2a07519dfbab7c06867340d0456f` |
| 75 | `theorem` | [integral_eq_norm_posPart_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L1Namespaced.lean/declarations/integral-eq-norm-pospart-sub-source-edition-2.md) | 614 | `result-track:f5663efbc1ae80fc30e5995b3338d4ec190205f9d44c10d539b6aa564979bb2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e2e7ecb5b698a208e6b780827373ec56583dba11d1e4ad2f456e4297e073ec7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant99f1eadd0e057e71c231b1745d7a1daf8528f3b43b6c08b3758f3b22cdbe7acb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/L1/Variant99f1eadd0e057e71c231b1745d7a1daf8528f3b43b6c08b3758f3b22cdbe7acb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
