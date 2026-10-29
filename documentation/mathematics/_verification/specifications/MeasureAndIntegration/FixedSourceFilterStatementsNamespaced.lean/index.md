# Verification target: Fixed Source Filter Statements Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bc3711ce65f1061a699f81fcd11414db2ec9adb",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilterStatements/Variant06eecc0fe662136c9d6020ba31e018b9897322c0a236bfe7f7cdbad20adbef49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bc3711ce65f1061a699f81fcd11414db2ec9adb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilterStatements/Variant06eecc0fe662136c9d6020ba31e018b9897322c0a236bfe7f7cdbad20adbef49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilterStatements/Variant06eecc0fe662136c9d6020ba31e018b9897322c0a236bfe7f7cdbad20adbef49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PoleCancellation` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixedBump](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/fixedbump.md) | 24 | `declaration-track:2fd7b562930bbb6232e7e453debc1b1238524d031b7ca09c17e399c9b9430a41` |
| 2 | `def` | [fixedBumpFirst](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/fixedbumpfirst.md) | 27 | `declaration-track:a2694139c0f0689f7677d9c5f6aed5306e3183f76590a82dcf7a2a9da55b2fda` |
| 3 | `def` | [v](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-source-edition-2.md) | 30 | `declaration-track:e48e89b0cf28b776316d156af9510b6ced3e89fa9854a92d9f7e915cbd9ee9d5` |
| 4 | `def` | [V](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v.md) | 33 | `declaration-track:45aa3d6b8f5ae112c815fb34e2bcea7c17577361ce27e1f05c1541d206a66691` |
| 5 | `theorem` | [sourceNormalization_one](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/sourcenormalization-one.md) | 35 | `result-track:eb23d62f0dfefb497033cc7bad3bf9c2eebed10febfeb6e938d022ddaa0a9ad5` |
| 6 | `theorem` | [fixedBump_eq_scaled](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/fixedbump-eq-scaled.md) | 38 | `result-track:d054f161471cacc74aa4fcdf77e36050d0fe1993af0552eab49a0d5f8a4be8b2` |
| 7 | `theorem` | [fixedBump_weak_second_derivative](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/fixedbump-weak-second-derivative.md) | 42 | `result-track:3247fa20ff2a219394241f72c5e8aea83afa0508f17f7dd0416069e1a9f1dc4d` |
| 8 | `theorem` | [fixedBump_hasDerivAt](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/fixedbump-hasderivat.md) | 47 | `result-track:beb92cbe858e4c761ff35a841ad6d92f186883f7d149d2ba0b47a589e9da2b15` |
| 9 | `theorem` | [fixedBumpFirst_hasDerivAt](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/fixedbumpfirst-hasderivat.md) | 54 | `result-track:bcd047f7e178f77b6a746cd950bb00f933817159dc2331474a5b67c68b4ef2d8` |
| 10 | `theorem` | [fixedBump_deriv](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/fixedbump-deriv.md) | 61 | `result-track:924be0f8934624bd05e246e2436701bbf0ecd685036c39fca69e4b917938e3ac` |
| 11 | `theorem` | [fixedBump_second_deriv](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/fixedbump-second-deriv.md) | 65 | `result-track:901a372dbe19b3c5373b74e26a3879c1a66728b6c57fe9e19a7513ff09d0dedd` |
| 12 | `theorem` | [v_eq_fixed_differential](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-eq-fixed-differential.md) | 70 | `result-track:92864cad7b5699c568b6bab2f9c2ef7df9d1e47a4b82287daad49e29d7c83ab8` |
| 13 | `theorem` | [v_contDiff](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-contdiff.md) | 76 | `result-track:4a66ec182bab8d60027721b43fb80f34e5efaf9a5979be547ef38a45c10c1826` |
| 14 | `theorem` | [v_hasCompactSupport](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-hascompactsupport.md) | 78 | `result-track:08d09b8354898475b2d72ba5842458d18e67720db4c6358d6bb74177eee8e0c1` |
| 15 | `theorem` | [v_zero_of_one_le_abs](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-zero-of-one-le-abs.md) | 81 | `result-track:76cb7d4c2fc4d3798dc5fd25abbf8bde04fa5155d7ef925c138a13c303266211` |
| 16 | `theorem` | [v_support_subset](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-support-subset.md) | 84 | `result-track:18ad1ea4b564e27aa9bc132a99c4f5bd55a7317d82e51ee33ee6e8081dd45651` |
| 17 | `theorem` | [v_even](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-even.md) | 94 | `result-track:87db12fe2d1df35b1c682b07c5318fe065739f23f47a969ebc8ee193313b828d` |
| 18 | `theorem` | [v_integrable](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-integrable.md) | 96 | `result-track:27c270c5b6f420f592283f5dfc747c78847e9f1ae09bd57756c42c795e1b5dff` |
| 19 | `theorem` | [v_memLp_two](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-memlp-two.md) | 98 | `result-track:731a67e41f04a9d42d0753319c685ebd1772fb1cb371462efb2ba9ab2d1b42ac` |
| 20 | `theorem` | [v_square_integrable](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-square-integrable.md) | 101 | `result-track:cec2e558e241a27199fcdc579909c7a90b059ad073e788712fd642bdec216742` |
| 21 | `theorem` | [v_square_integral](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-square-integral.md) | 104 | `result-track:d10c506e22dd9ea9d2e4ee4246e6d3cf327b05938cb07563aecf6d778c6e609a` |
| 22 | `theorem` | [v_deriv_hasCompactSupport](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-deriv-hascompactsupport.md) | 106 | `result-track:df96a8e21d1b289231f5b0c6ed9c7c343d37660258e94dad40671b9cbe714506` |
| 23 | `theorem` | [v_deriv_bounded](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-deriv-bounded.md) | 108 | `result-track:3308ad9ee73d78bb8ed1627b33d90272359a892222b802277e65056526160535` |
| 24 | `theorem` | [v_complex_eq_actual](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-complex-eq-actual.md) | 111 | `result-track:c5b06cfc39faa2758799cabed19ace5a138ffefb9cae06d92e6e86facad9aa8f` |
| 25 | `theorem` | [V_integrable](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-integrable-source-edition-2.md) | 115 | `result-track:41588f0711536d556a9b780bf668cc49b8eb901d642bd6c06c855775635a9b51` |
| 26 | `theorem` | [V_eq_bilateral](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-eq-bilateral.md) | 124 | `result-track:cb46a67174c439dec2393110a55da44b3a67a732d95975e3118e0f2cfa06f8f7` |
| 27 | `theorem` | [V_eq_closed_formula](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-eq-closed-formula.md) | 133 | `result-track:4dff8a937234f9baa53f27b1cf8b4a407b7c78208031e6adc44f816bcc0705bb` |
| 28 | `theorem` | [V_positive_pole_zero](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-positive-pole-zero.md) | 137 | `result-track:f16fc2b221368fcadd2d075e11e9c002eb1ba796896aa59c356751e4ad6616b9` |
| 29 | `theorem` | [V_negative_pole_zero](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-negative-pole-zero.md) | 140 | `result-track:438f3f06f605b8203e07e1c29f8f7ae7da37681a2fcab3eb73c173d8f9f3218c` |
| 30 | `def` | [removedFilter](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/removedfilter.md) | 145 | `declaration-track:710fa4710a78124de7f0911910559c7673fe9811c02645e28a6a5bac98c74647` |
| 31 | `def` | [positivePoleSlope](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/positivepoleslope.md) | 151 | `declaration-track:b5bfe408f694a21068b9f17634087a63b0bca4f5b30819b43974252a84edcca5` |
| 32 | `theorem` | [V_eq_removedFilter](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-eq-removedfilter.md) | 155 | `result-track:6a795d6592a2d982bf0ce5f4bb31133dc21ec9e023f8015d1524f076c0de2ce4` |
| 33 | `theorem` | [removedFilter_differentiableAt](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/removedfilter-differentiableat.md) | 161 | `result-track:e5d4a2ba0797708ffe811cb2987525ec6a8d2fb89ff6e23023c48be1cc591385` |
| 34 | `theorem` | [removedFilter_positive_pole](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/removedfilter-positive-pole.md) | 168 | `result-track:4b83e7fa2a74713ff0d4c5974618f80ed8733704eb3b0adc0802731eb23f4e8f` |
| 35 | `theorem` | [positivePoleSlope_pos](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/positivepoleslope-pos.md) | 173 | `result-track:052898878e0d21d25a4cb8599281c071ab126005f10527795559e2e6602673cf` |
| 36 | `theorem` | [V_hasDerivAt_positive_pole](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-hasderivat-positive-pole.md) | 187 | `result-track:c8f5b6afdb8c4c6a1a06a282a95003fd7eb4b5d489388f14df6909cbf70bd95e` |
| 37 | `theorem` | [V_deriv_positive_pole](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-deriv-positive-pole.md) | 199 | `result-track:3464615fa4b816c4792fe99b1e1725fc3b4ee9f09e2d3d2bc14173329ab748ec` |
| 38 | `theorem` | [V_deriv_positive_pole_ne_zero](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-deriv-positive-pole-ne-zero.md) | 202 | `result-track:ab77cae3fefd9e28ef08fe90790e96e0773bd60903af998906599f83f7dbc359` |
| 39 | `theorem` | [V_removed_pole_limit](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/v-removed-pole-limit.md) | 208 | `result-track:fd3d17389163e366046ee0ea8dc1e2c11b1a5af9f56c63485d0faa3ae51e8e36` |
| 40 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-29.md) | 228 | `declaration-track:a7c147850291d31f63ea113c866a7ea400c6180d9ae0477a0bf32c7ae1fbc381` |
| 41 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-10.md) | 230 | `declaration-track:34bb009117ae7cf3b1d87ca34805a7a148f53285ef28ccf2b9867cd194edb783` |
| 42 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-4.md) | 232 | `declaration-track:184b0a5416e33fb98bb10a59946eb0b21de377a2030306a0154f51873fdb65ac` |
| 43 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-12.md) | 234 | `declaration-track:4736609e2907a9c6f45a993cee5d29007cd16e1c9c957858213dab0ee8307cb9` |
| 44 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-21.md) | 236 | `declaration-track:663b36987fc6a51484e9123a508b65e87e66c1d1468fc9c800a92f348c832cb2` |
| 45 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-34.md) | 239 | `declaration-track:d973b96684b6e4bb2cefa41fe57571b51c7a95f6ee4be5e8eba909c491285d02` |
| 46 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-2.md) | 242 | `declaration-track:092c8cbacd9b97d901fdb6bdae05f6c5572f17c06f1203f2eda754b5a22fecc1` |
| 47 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-37.md) | 246 | `declaration-track:dbeb84bcb8c9a7443c3ddb4aa2b5d1748fa61dd72c44c371266f7ecf205d5ea2` |
| 48 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-22.md) | 249 | `declaration-track:673bc32a1343b9eb2bbb6d3a550e3352403ae16e4916192cd0bae70dbfb2048e` |
| 49 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-3.md) | 253 | `declaration-track:0caa77391cac3a7b9ea6aa717d0f57a1eefe397f6212a1912e54c4c13ad1c6bf` |
| 50 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-38.md) | 256 | `declaration-track:e327cb597c7c10f1e909d0f6eb0786ec219ca3e621faa87e3c5c1074f540c7b4` |
| 51 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-18.md) | 259 | `declaration-track:58d036a72fffc111c6ea1386500413b4050c2478759d5d87f286dd7e688b894a` |
| 52 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-19.md) | 264 | `declaration-track:61064d8b83f1ae0a307b19bb9a957dad2bba5224e2bd09b0304331e6d13c360f` |
| 53 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-26.md) | 267 | `declaration-track:9a060da6d9c8206b226153c97d353ba4c35b79fc744749e5eeb2cc03b2a46467` |
| 54 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-6.md) | 270 | `declaration-track:23e6046c82ad99d661cb87915609e6107a40ee8966aad0586409e987d27d1242` |
| 55 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-23.md) | 273 | `declaration-track:704e033105ceb23d05f2fa975125c1347a87d7bc9c10ad82871ff13e06d8c0e9` |
| 56 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-9.md) | 276 | `declaration-track:34698c494f963b543badebe47dba18fa8065f6b497e575333b950138627054ab` |
| 57 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-36.md) | 279 | `declaration-track:db91ecee5a96cc231cc182bd070952ebc617b01076c2bf8096af5c1cd3e2c1af` |
| 58 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-7.md) | 282 | `declaration-track:25b1d36e3c5f9d9886ec55acbdaedfe6111a60c2cb2841937bc1efed7cae8698` |
| 59 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example.md) | 285 | `declaration-track:02f2702612bf0027ff857e30f87e35ce32eeed380f05f21dbe20756165970e6d` |
| 60 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-16.md) | 288 | `declaration-track:4f0f08b4ace8380718c4d2d5ff944b1b797eae521aee1ecda2389105edc9bfbc` |
| 61 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-15.md) | 291 | `declaration-track:4cb9ea1e218d50894cfbbfcd17dff2b10d3a5cf8603c52fb443fe2bbb0f44010` |
| 62 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-28.md) | 294 | `declaration-track:a13aea9c742dc547f300ca8528a0bc44cc6b5f127de01831f6324af3f16b7ee5` |
| 63 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-14.md) | 297 | `declaration-track:4c455825ae8c2153605eb0a963c6df486cf12af55cfc3285e6841defc828e15e` |
| 64 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-20.md) | 301 | `declaration-track:614b05c4523c6f94c70e2eead09c23dcd644ba41e225356afc1d739b34577065` |
| 65 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-8.md) | 305 | `declaration-track:3246c000273e046c5866b2a788f3991c4e59ebcc4976a9f91a078a99865eef03` |
| 66 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-17.md) | 309 | `declaration-track:524b57741e876ca6aa48cfb63fb0cea7570474290da5b45b4fa5dc4146a80cdf` |
| 67 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-33.md) | 313 | `declaration-track:c87cf56254d39a1543fb198c6abc6e2000e727dd654411766ab1684c52a7fca8` |
| 68 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-25.md) | 316 | `declaration-track:881e428dc7f46971640f50cd8765b301af951912f71889afd763b3bd5ad2b1a8` |
| 69 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-39.md) | 319 | `declaration-track:eef87fadb8caf319ebe46da445e3bc9aaeb11803800a93f99dd86a69b97a455b` |
| 70 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-27.md) | 323 | `declaration-track:a1161cf0cdfc6ed54b4b8c9936991f3a07ecb14c8be7e0a9e2ed046601c172d8` |
| 71 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-24.md) | 326 | `declaration-track:7593381a038c0d13ea187e71f4d5fbdbb9b6d23facfed5df443ecd835c8ffb10` |
| 72 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-13.md) | 330 | `declaration-track:47f21c0c5a7aa1ba1021761f75e9908094db411f0128fc45baa3f4669a39d530` |
| 73 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-30.md) | 334 | `declaration-track:ad678d4ff32559b5478d31bc457ee4b1c7e44a8bffcf6e689a83803df6eed55d` |
| 74 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-31.md) | 337 | `declaration-track:b37dc436c3dc534c57552b6f344feb410cced2c2984f26aa09d71cf2dcc26418` |
| 75 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-5.md) | 340 | `declaration-track:1c7641654323bff83ac8d05197929996f2011188d5c19ccee3976253a75095f7` |
| 76 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-32.md) | 344 | `declaration-track:b426bc0608d5fdfb33a95f9aaa0ed7b78240006c70681d03fa4f38fdfc3e4fae` |
| 77 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-11.md) | 347 | `declaration-track:3a4cf0d45db327a19cf7f4be4925c0d08aa455802200c089a356f85ca2172c75` |
| 78 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedSourceFilterStatementsNamespaced.lean/declarations/example-source-edition-35.md) | 350 | `declaration-track:da1251c345c125d8f03b018a3c84e800b8642b76ec3faccc551b6fdaf1ea4894` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd305b89769ef8e8761d0c10bc6b14ed557becc818e51402544486e5686c8b7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilterStatements/Variant06eecc0fe662136c9d6020ba31e018b9897322c0a236bfe7f7cdbad20adbef49.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilterStatements/Variant06eecc0fe662136c9d6020ba31e018b9897322c0a236bfe7f7cdbad20adbef49.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
