# Verification target: Special Functions Integrals Namespaced Integral Log Of Pos

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6216c9d48603150583ae8056356cb9e25ed4246",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variantb94b35ac784a98fd367bb7c387eb1285c3fc3a494985d9f9e46512176715a712.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/index.md) · [Full source](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6216c9d48603150583ae8056356cb9e25ed4246`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variantb94b35ac784a98fd367bb7c387eb1285c3fc3a494985d9f9e46512176715a712.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integrals/Variantb94b35ac784a98fd367bb7c387eb1285c3fc3a494985d9f9e46512176715a712.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.FundThmCalculus` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/macro-rules.md) | 48 | `declaration-track:ff3013396103638a82061080778ed07db1e8a384808b607d79aa45162fb56ea0` |
| 2 | `theorem` | [intervalIntegrable_pow](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-pow.md) | 62 | `result-track:01d69dfa431aded01468d137dde40bd8110389a9b37a82da062df59f33f740cd` |
| 3 | `theorem` | [intervalIntegrable_zpow](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-zpow.md) | 66 | `result-track:06d3e83f5713e77f629dbcf2a7b70beca6c2f93c21632ce31ae8afcef669456f` |
| 4 | `theorem` | [intervalIntegrable_rpow](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-rpow-source-edition-2.md) | 73 | `result-track:ea61056b1a06febd56611d3ce36c544c6e24b4cfa03b74b2df578f7fc8b03002` |
| 5 | `theorem` | [intervalIntegrable_rpow'](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-rpow.md) | 81 | `result-track:b6d9bad980264fd71f50d86febfd20b0cd0bf530505e3eccf54ef2fed6bbbf87` |
| 6 | `theorem` | [intervalIntegrable_cpow](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-cpow.md) | 108 | `result-track:385fe918d4b4dbf1852415304cae8c65b777038b32b60cdc4a5413909d828176` |
| 7 | `theorem` | [intervalIntegrable_cpow'](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-cpow-source-edition-2.md) | 157 | `result-track:cb1afcac07bdea4d2f47ad461738a140c79bdc66e55f1660d8ca3a5e195a3f82` |
| 8 | `theorem` | [intervalIntegrable_id](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-id.md) | 191 | `result-track:884666cca0d65a43b32da84c3b12d2381d07e8bf1316f2f34c732d20fb36b0e0` |
| 9 | `theorem` | [intervalIntegrable_const](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-const.md) | 196 | `result-track:463cadb018cb8b5d0d0428277b1365de35134873f24a3077813a889521c437fc` |
| 10 | `theorem` | [intervalIntegrable_one_div](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-one-div.md) | 200 | `result-track:bca2189742cda8721ca3e14d9a075c2aa4c3f5a0a095abf9d6056e5343dd7f37` |
| 11 | `theorem` | [intervalIntegrable_inv](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-inv.md) | 206 | `result-track:b0b7548d796385e95ffac64e32b40e71eaf174936e341e7307db1016f2c7b8c2` |
| 12 | `theorem` | [intervalIntegrable_exp](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-exp.md) | 212 | `result-track:b380da815fdc52a1faa6f7bd92afd651278d4fa52b07670bafc3b2053ed3964a` |
| 13 | `theorem` | [Special Functions Integrals Namespaced Integral Log Of Pos](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/root-grwtsk-analysis-realanalysis-integration-intervalintegrablepow-vari.md) | 217 | `result-track:04c96983ad871b8b09f1c42ae8e2cd8e9769584a6f5de04f832cfbd04fcb7314` |
| 14 | `theorem` | [intervalIntegrable_log](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-log.md) | 224 | `result-track:060dacb2cfda9b71d917cc7f867f1f61516d250deca031c130123c41ff676f45` |
| 15 | `theorem` | [intervalIntegrable_sin](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-sin.md) | 229 | `result-track:6f0959f6321e341a693b833fe034c7c677e9f3dd0729628d2f633873c205ad23` |
| 16 | `theorem` | [intervalIntegrable_cos](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-cos.md) | 234 | `result-track:f213aec39588fb51013c0f5f7e4f1cfac0895304047c76cea59f3f017d86d70e` |
| 17 | `theorem` | [intervalIntegrable_one_div_one_add_sq](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-one-div-one-add-sq.md) | 238 | `result-track:79ff5b3b08e879c3d5f69e45f110e1d779d18255abd0d61221250fa0485c75ac` |
| 18 | `theorem` | [intervalIntegrable_inv_one_add_sq](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/intervalintegrable-inv-one-add-sq.md) | 246 | `result-track:de8ba940d791fc8237badc151d64d9055c8add7a07615512d00686e6c4d5ed10` |
| 19 | `theorem` | [mul_integral_comp_mul_right](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/mul-integral-comp-mul-right.md) | 255 | `result-track:9862cfea3deebddf47e15fb3791ad5a0fc16081f20fabe360ab2d4aabdeb815f` |
| 20 | `theorem` | [mul_integral_comp_mul_left](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/mul-integral-comp-mul-left.md) | 260 | `result-track:9bb91d4c1b9f7f76b5396878ee55c95401fedfbf3a49965d27d2eb01806f725c` |
| 21 | `theorem` | [inv_mul_integral_comp_div](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/inv-mul-integral-comp-div.md) | 265 | `result-track:e5b819b4ebf4880bbeb05e119dfde15b61aa552d2c70ac85a74c34680cc37472` |
| 22 | `theorem` | [mul_integral_comp_mul_add](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/mul-integral-comp-mul-add.md) | 270 | `result-track:9c5969dbf8f10d5f0076d7dfbfa34b94bc40c8f2a3868b3ab69410751a8cb0a0` |
| 23 | `theorem` | [mul_integral_comp_add_mul](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/mul-integral-comp-add-mul.md) | 276 | `result-track:7ee420a8a6cf90b8e2ace17a19c7249827f99033ec157d420f7bda2a48a6fb78` |
| 24 | `theorem` | [inv_mul_integral_comp_div_add](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/inv-mul-integral-comp-div-add.md) | 282 | `result-track:a3c446d94751c863cc510a884623e92dfc953a063f787b0cf97d11300021f239` |
| 25 | `theorem` | [inv_mul_integral_comp_add_div](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/inv-mul-integral-comp-add-div.md) | 288 | `result-track:64eab4284b28daee7e2363eb02386b58b7aee5e789b1408efcd9c5599d8fd552` |
| 26 | `theorem` | [mul_integral_comp_mul_sub](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/mul-integral-comp-mul-sub.md) | 294 | `result-track:8c4b881b3d008a3fdc7d9be79f24183ea4770face009a630f5939d5dc4391cc2` |
| 27 | `theorem` | [mul_integral_comp_sub_mul](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/mul-integral-comp-sub-mul.md) | 300 | `result-track:66aa1c8e0344d9ed4264aa3b3a4dfcaaa88612d63520a400d04095a92af3e88a` |
| 28 | `theorem` | [inv_mul_integral_comp_div_sub](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/inv-mul-integral-comp-div-sub.md) | 306 | `result-track:989ce6e3abea3771a98006e7fbba726f917b156eeb282bacfb5a95cefef7f4bd` |
| 29 | `theorem` | [inv_mul_integral_comp_sub_div](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/inv-mul-integral-comp-sub-div.md) | 312 | `result-track:c52383bdabf2b0b52d9e7ff72282dd3d2c0f95a074a666b360979a1ec1d3bcf3` |
| 30 | `theorem` | [integral_cpow](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-cpow.md) | 324 | `result-track:eca207265cf89899118e2f0aa3e55bf30730ade712852e5eba2a9b2f940738fe` |
| 31 | `theorem` | [integral_rpow](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-rpow.md) | 356 | `result-track:d6e74711b2a4c51571771a2b21ae69c70f100798855c4918311b1df6a0f1340c` |
| 32 | `theorem` | [integral_zpow](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-zpow.md) | 379 | `result-track:c2cf0c4a35bfb944bc73a7d0fa058d2ed9df9e09fc4627075f91fd83c297b27c` |
| 33 | `theorem` | [integral_pow](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-pow.md) | 386 | `result-track:a16ac4dbe125f5a529dc35849d96a60d783c69ce5ce3141ecd9a91c10c54963c` |
| 34 | `theorem` | [integral_pow_abs_sub_uIoc](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-pow-abs-sub-uioc.md) | 392 | `result-track:6271ac9dd3dec7b622ab9360408c30e50ef2e64c25a483e2aa372532a47c8823` |
| 35 | `theorem` | [integral_id](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-id.md) | 416 | `result-track:c884e18c0da5126b6217475a6d68f986749158c6bc5bc208d6b379216a42a900` |
| 36 | `theorem` | [integral_one](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-one.md) | 423 | `result-track:f2a67621b88fb96b86501234020bac8182b8639b45a397d470233e3f9eb5e510` |
| 37 | `theorem` | [integral_const_on_unit_interval](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-const-on-unit-interval.md) | 427 | `result-track:49e06b63677901098de5b6d745cc4e0e32c9f3921d3c18d3f0fb910bb8fe7be8` |
| 38 | `theorem` | [integral_inv](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-inv.md) | 431 | `result-track:aece6cd6e3345e8778172833ffbede2308ef8115ad826963968a5d6ac978772c` |
| 39 | `theorem` | [integral_inv_of_pos](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-inv-of-pos.md) | 439 | `result-track:ffc0c28b6150b2caef75ce1741386af7880004682987be6227b13558e37f587e` |
| 40 | `theorem` | [integral_inv_of_neg](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-inv-of-neg.md) | 444 | `result-track:397e22d5ef39ace9e7b372cdd7cf1fe8208395d4172951097655f20892a9e902` |
| 41 | `theorem` | [integral_one_div](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-one-div.md) | 448 | `result-track:60fc4ce6aa91a511db38bc2996c6560e7d2f9df2ad5c5de8d93abcc5dc429db0` |
| 42 | `theorem` | [integral_one_div_of_pos](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-one-div-of-pos.md) | 452 | `result-track:17c88e5968a54e1e6c4ad8074062506065f3545e98758f16d1fe7f7e7b41c305` |
| 43 | `theorem` | [integral_one_div_of_neg](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-one-div-of-neg.md) | 456 | `result-track:afd427242c9d1da33b135cd7e5b1326d75b49bb98a4a241df1b9e2f644ae235e` |
| 44 | `theorem` | [integral_exp](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-exp.md) | 461 | `result-track:114ee1ab60ad432e076ea495a97a28aebbd17eba52e995b73446792e529e45bd` |
| 45 | `theorem` | [integral_exp_mul_complex](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-exp-mul-complex.md) | 468 | `result-track:84259cd3c64b10c8cc144186e96069c4c58605af74abd3e7826da2f60732b850` |
| 46 | `theorem` | [integral_log](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-log.md) | 482 | `result-track:393f761f33eed0ff4a300d560568d54583642f8a9675414a4f74b94a7e941870` |
| 47 | `theorem` | [integral_log_of_pos](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-log-of-pos.md) | 494 | `result-track:c1015cabc9d7257076d9720f5250fc5e68a93a1477516c53c7f96ba061c90597` |
| 48 | `theorem` | [integral_log_of_neg](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-log-of-neg.md) | 500 | `result-track:18cf5779e3b5f0064de3e501c054ef38ebf7003d1beac6c342e72117b47bbb12` |
| 49 | `theorem` | [integral_sin](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin.md) | 506 | `result-track:073637a44f0e03406a5c6097aaf95a561613cb85f273d843427b654a74967060` |
| 50 | `theorem` | [integral_cos](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-cos.md) | 515 | `result-track:f413e6189e7127ca054fd17008ac34df51e3f9e8db1fb9e61f3d92381c167f5c` |
| 51 | `theorem` | [integral_cos_mul_complex](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-cos-mul-complex.md) | 522 | `result-track:4e1ccccc7931f9315f2c013c3507e7858f03755ae84e82f722d31297722db925` |
| 52 | `theorem` | [integral_cos_sq_sub_sin_sq](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-cos-sq-sub-sin-sq.md) | 539 | `result-track:e4461787d12d79c308c2086af997ce9ee749ff9a9243efccf8b2cbf3c6a84561` |
| 53 | `theorem` | [integral_inv_one_add_sq](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-inv-one-add-sq.md) | 547 | `result-track:8098de5128e4ca31227915cec56bb1638027ec50c1c5973b5ede91bc15a6729f` |
| 54 | `theorem` | [integral_one_div_one_add_sq](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-one-div-one-add-sq.md) | 556 | `result-track:ce95aa8f542b857005c93c0cdd4fd19011d8f07859492c0df3c7751bd316f6f2` |
| 55 | `theorem` | [integral_mul_cpow_one_add_sq](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-mul-cpow-one-add-sq.md) | 565 | `result-track:8bea90887dc4175f6807987be6da86d1d7a7c7b0326d1895c60aba88046b99ac` |
| 56 | `theorem` | [integral_mul_rpow_one_add_sq](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-mul-rpow-one-add-sq.md) | 597 | `result-track:558508f61e26a6a049ef8dbab0bdc2db28c6517638e28e9b87a0accc4d1e1742` |
| 57 | `theorem` | [integral_sin_pow_aux](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-pow-aux.md) | 622 | `result-track:17fb8488b4af5227e44b2ca1093ca614067dd9eb1bb44ea8e9cd1a9a05aebb8e` |
| 58 | `theorem` | [integral_sin_pow](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-pow.md) | 655 | `result-track:7eabe5f42fde40954a4315bb5e4d8b50c20b1a3113b550b0c0b4c5928eb10c4c` |
| 59 | `theorem` | [integral_sin_sq](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-sq.md) | 667 | `result-track:fb2717518dbf44d5deddd94d250dd33f24e865ce5bd81b3d91287d64ec69bc28` |
| 60 | `theorem` | [integral_sin_pow_odd](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-pow-odd.md) | 671 | `result-track:f30c7115f0cc31b1fe55550b2d6fe7828bb5767c8f4a45c19a7555d436e3a278` |
| 61 | `theorem` | [integral_sin_pow_even](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-pow-even.md) | 679 | `result-track:1f10b7b23a48f18056229e85e81a8140926f52ef21a11acfc0ab0e9a7a18338a` |
| 62 | `theorem` | [integral_sin_pow_pos](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-pow-pos.md) | 687 | `result-track:2441b5fa3ebe3e24a9955f6e0d2fdd9b09bbe094f88576491b8b3ead3fefbb7d` |
| 63 | `theorem` | [integral_sin_pow_succ_le](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-pow-succ-le.md) | 695 | `result-track:eb6b2edb677f99f69c83450acbc7352b1f21f791b0d4de42c773ffab6e845c40` |
| 64 | `theorem` | [integral_sin_pow_antitone](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-pow-antitone.md) | 700 | `result-track:dd81743ac945ad2b18a726b97741e4e7c4fbb0f80cfce341cb149c5ae3ec5bc7` |
| 65 | `theorem` | [integral_cos_pow_aux](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-cos-pow-aux.md) | 707 | `result-track:d72bc755367ab2ffa5c9bf137265f76afecb4f709fe08f2a2cc67a87f681b88a` |
| 66 | `theorem` | [integral_cos_pow](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-cos-pow.md) | 736 | `result-track:4ba69688cb275a1410f5a7e272093a732b5d265f17cbedd519ae4f2c1e0101ba` |
| 67 | `theorem` | [integral_cos_sq](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-cos-sq.md) | 748 | `result-track:9b484f7095b04024598340eb5751e65b275f426f603a5dc62ca68eb2dde52dbb` |
| 68 | `theorem` | [integral_sin_pow_mul_cos_pow_odd](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-pow-mul-cos-pow-odd.md) | 756 | `result-track:a0bb47587aecd57e9aa517c58e3be1a34c296a0e518d8d4395d9433f9ae7026b` |
| 69 | `theorem` | [integral_sin_mul_cos₁](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-mul-cos-source-edition-2.md) | 773 | `result-track:417f398a232918a15eaddcf7d86976040e34aede20bc22a151523791ccf7913c` |
| 70 | `theorem` | [integral_sin_sq_mul_cos](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-sq-mul-cos.md) | 778 | `result-track:fe5f0a83693d57e1b9c985ce77c9f44ec37af7217f2b73c6c228712ed40f978b` |
| 71 | `theorem` | [integral_cos_pow_three](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-cos-pow-three.md) | 785 | `result-track:e371ff0f9f3b47857558f455f122a4d8d90351287772b5063b2fbf51dae4fda7` |
| 72 | `theorem` | [integral_sin_pow_odd_mul_cos_pow](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-pow-odd-mul-cos-pow.md) | 792 | `result-track:7a2289c0ec6f924ce8fdd9b0bf795ffe32433bf0acfc5bfe28db3fea6028ff0d` |
| 73 | `theorem` | [integral_sin_mul_cos₂](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-mul-cos.md) | 812 | `result-track:05eb3830dc2d93373bac858db854fae630f187685ebc4988b6457216fe4aa7d5` |
| 74 | `theorem` | [integral_sin_mul_cos_sq](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-mul-cos-sq.md) | 817 | `result-track:51c53221020ebdc8e12807bddca8bd755b291e78143751c22f558b2fb9c9ab61` |
| 75 | `theorem` | [integral_sin_pow_three](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-pow-three.md) | 824 | `result-track:87051b1cc9618c8766109b66a2a04cd13f040c9dffcdecd1bf9a30ed26b11d53` |
| 76 | `theorem` | [integral_sin_pow_even_mul_cos_pow_even](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-pow-even-mul-cos-pow-even.md) | 831 | `result-track:c3b24322c43e861b6fd53c9a4a1a14c3ce992f135861da944e86afb28419398f` |
| 77 | `theorem` | [integral_sin_sq_mul_cos_sq](../../../../SpecialFunctions/SpecialFunctionsIntegralsNamespacedIntegralLogOfPos.lean/declarations/integral-sin-sq-mul-cos-sq.md) | 838 | `result-track:2b61c94d9d94abac8966e8225c4665c70abf2ea61530e2e643035a26f125e1c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4de52338a6e72609ae8e838f2e5667f8bdfda0c6eb3c2d543041dbb79f5584fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variantb94b35ac784a98fd367bb7c387eb1285c3fc3a494985d9f9e46512176715a712.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Integrals/Variantb94b35ac784a98fd367bb7c387eb1285c3fc3a494985d9f9e46512176715a712.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
