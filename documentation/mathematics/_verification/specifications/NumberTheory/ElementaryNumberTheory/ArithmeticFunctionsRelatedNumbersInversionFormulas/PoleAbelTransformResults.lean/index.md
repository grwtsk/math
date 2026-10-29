# Verification target: Pole Abel Transform Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c42f09290414d90b352cd246d303a54d94c5ae6",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c42f09290414d90b352cd246d303a54d94c5ae6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleArithmeticFunctional` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PoleCorrelationRegularity` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteStepCount](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/finitestepcount.md) | 30 | `declaration-track:e1fc944cbfebfbb3985920430e8a37a9ac528574fcf8d1ae27b444c5c407d774` |
| 2 | `def` | [finiteAbelError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/finiteabelerror.md) | 34 | `declaration-track:368301534db084c69d5083e998b94c8d51425bb276b7bba34e6c6b976242ee57` |
| 3 | `def` | [finiteAbelPrimitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/finiteabelprimitive.md) | 38 | `declaration-track:a122ac61aacea860531e33a00f7776fc5ead35e39acc8b9acc90d0e419dc2c85` |
| 4 | `theorem` | [integral_closed_step_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/integral-closed-step-one.md) | 42 | `result-track:0ae114dc1f8c8bb5cb876535697bc13f36cb34fe824cf92616082e1973530f69` |
| 5 | `theorem` | [finite_abel_error_interval_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/finite-abel-error-interval-integrable.md) | 58 | `result-track:b001f0554ff0ce921b7f5d24a4ee6ceff6ba54565c8a77000d67a13c02350054` |
| 6 | `theorem` | [finite_abel_primitive_eq_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/finite-abel-primitive-eq-integral.md) | 77 | `result-track:e9a6c9ee2835920baaef489767d7db5772c20e8c91088ed7a2c8d56e9323c9ee` |
| 7 | `theorem` | [ramp_second_abel_atom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/ramp-second-abel-atom.md) | 113 | `result-track:f65d68cd575101e45ada9013a5ceeb05943c5f1634b4af002075fe3c1d9bfe21` |
| 8 | `theorem` | [continuum_second_abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/continuum-second-abel.md) | 154 | `result-track:c67e9245e5609102c28918d9f1930cee4ae11a63ed91ee7f9d60eaba21391c44` |
| 9 | `theorem` | [affine_second_abel_boundary](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/affine-second-abel-boundary.md) | 182 | `result-track:37c6ca2784631bfad15091946ea1833f7fbba53c496a423cf4916ff06fd4355b` |
| 10 | `theorem` | [finite_abel_primitive_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/finite-abel-primitive-continuous.md) | 205 | `result-track:e04e51ca98533e2a9db309b28fff5b8428144b6c9e5503e2e491b087df487262` |
| 11 | `theorem` | [finite_second_abel_interval_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/finite-second-abel-interval-integrable.md) | 213 | `result-track:7a77b9c64f9f1e7272fc1341fc457270cd9a3c937e7b8a1c8c51fb1f83b50232` |
| 12 | `theorem` | [finite_second_abel_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/finite-second-abel-identity.md) | 221 | `result-track:225503934f93fc12107a49f1971262402b9bc264e0c645001f80b09a1ca6f366` |
| 13 | `def` | [lowerStepCount](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/lowerstepcount.md) | 257 | `declaration-track:12b7cf74085aa3fbe0d4912e192c01250dc9120caf4af447656ac69c475dcf85` |
| 14 | `def` | [lowerAbelError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/lowerabelerror.md) | 262 | `declaration-track:adbd6f1d6389c91a0f8f1c03e160f8ae78f88a607088ec0fbb6bf4ad7c20172d` |
| 15 | `def` | [lowerAbelPrimitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/lowerabelprimitive.md) | 267 | `declaration-track:9ad7415d4aa3f962f95c466eb887f19ab26fdd61e5a55c04634c84dbb6ce462c` |
| 16 | `theorem` | [lower_inventory_log_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/lower-inventory-log-bounds.md) | 272 | `result-track:29309be7570637a1cdd5a7279227d3db4b7de451261eca414df42c0086f3b67a` |
| 17 | `theorem` | [lower_abel_error_interval_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/lower-abel-error-interval-integrable.md) | 280 | `result-track:85f1f3c8ad23a6267929e42358c37fc202b6b4980d551b1bece5857443685da9` |
| 18 | `theorem` | [lower_abel_primitive_eq_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/lower-abel-primitive-eq-integral.md) | 285 | `result-track:4e25ff30688735a9212e506618262d4568485bb44e307831d45f887bacd419cf` |
| 19 | `theorem` | [lower_step_count_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/lower-step-count-zero.md) | 291 | `result-track:a62fa94e327faad9ea82803ca4767115400174a1da38617d640959a07385e6e9` |
| 20 | `theorem` | [lower_abel_error_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/lower-abel-error-zero.md) | 298 | `result-track:cf345bdc3f1515596ee53f29f2fca4acf4b10e9b489bc8301cc5288e98e4b080` |
| 21 | `theorem` | [lower_abel_primitive_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/lower-abel-primitive-zero.md) | 303 | `result-track:3bc23bcbbbbc2d5177340ffe42214c736f1adb2b09e2a56ab19af1e0b0608bfa` |
| 22 | `def` | [logarithmicAbelTest](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/logarithmicabeltest.md) | 307 | `declaration-track:4bb26d65641c7b4c3a73197dd6ad9e36c868d5af9fa5bd638af031c419a84bd7` |
| 23 | `def` | [sourceAbelTest](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/sourceabeltest.md) | 310 | `declaration-track:533cbb950adad641ace6fed505fd7c481252034498f8fde4463c620c35810043` |
| 24 | `theorem` | [logarithmic_abel_test_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/logarithmic-abel-test-log.md) | 314 | `result-track:d34409d60704dad69ac957ee6b7426fc5401fd1899238fe974f15c145701ee88` |
| 25 | `theorem` | [exponential_logarithmic_abel_test](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/exponential-logarithmic-abel-test.md) | 319 | `result-track:40239481c04c24d9da68e19802e51105f0d03404e908d49dd98fa22d9810f858` |
| 26 | `theorem` | [logarithmic_abel_test_second_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/logarithmic-abel-test-second-deriv.md) | 327 | `result-track:0d0ab3ccebccece5ddbdae36e6a6f3ed53335de753ccb5297bc0fee07532f50a` |
| 27 | `theorem` | [lower_discrepancy_second_abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/lower-discrepancy-second-abel.md) | 358 | `result-track:4998fb74652e27efb11900a737773e83c59073aba1a3186124b528d44acd9837` |
| 28 | `theorem` | [deriv_upper_endpoint_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/deriv-upper-endpoint-zero.md) | 383 | `result-track:215d9955dd3d4be05e3db82362d925c0b3a06c4450cb5460d407a2fe7a3e2493` |
| 29 | `theorem` | [source_abel_test_upper_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/source-abel-test-upper-zero.md) | 395 | `result-track:f99e6e22d32d947d264665f457658155595f138aba8fe336cf89d9d916794550` |
| 30 | `theorem` | [source_abel_test_cont_diff_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/source-abel-test-cont-diff-one.md) | 402 | `result-track:f2a5cdc972edfa89eb2b8b4934522a8077d6c99d90859149d6833b256e8c5a6c` |
| 31 | `theorem` | [source_abel_test_upper_deriv_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/source-abel-test-upper-deriv-zero.md) | 409 | `result-track:598e51218d957ecc30c1b4b8923ea6dc2e3b256ce0212a1f8c84ce2f2c54ada5` |
| 32 | `theorem` | [source_abel_test_at_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/source-abel-test-at-zero.md) | 415 | `result-track:09f21c0820a64627bf652f700b81c84ba8082675c89eeab20fe1927cc82d37a0` |
| 33 | `theorem` | [source_correlation_deriv_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/source-correlation-deriv-zero.md) | 419 | `result-track:185d5f9a3755ab816465394b91faa0be772b4ba15bf19d3f7ec0d2c0388ed07f` |
| 34 | `theorem` | [source_abel_test_deriv_at_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/source-abel-test-deriv-at-zero.md) | 435 | `result-track:9d43f8404387242f4af9064d7ad06350b22c4e97f50470a48afda1378fe13182` |
| 35 | `theorem` | [source_discrepancy_second_abel_of_cont_diff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/source-discrepancy-second-abel-of-cont-diff.md) | 451 | `result-track:ed4221f52379e4562a03a750caa519d5e1b7adac4ff0e1c1eb47bcdfe0d0e015` |
| 36 | `theorem` | [source_abel_test_cont_diff_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/source-abel-test-cont-diff-two.md) | 461 | `result-track:fbe0eea8a886081d6bc950937632ec7135b3b542650b99c8a2df693e5add0082` |
| 37 | `theorem` | [source_second_abel_interval_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/source-second-abel-interval-integrable.md) | 468 | `result-track:c62eb4e476f103aac32841b339ebd54d8e1e50f441eb143932c6c4266289808c` |
| 38 | `theorem` | [source_discrepancy_second_abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/source-discrepancy-second-abel.md) | 474 | `result-track:c1b5b1a490df545ef8a755fb5450ffe33beafdbdc1d8d4e62b3bb6e39ebccde3` |
| 39 | `theorem` | [source_affine_second_abel_boundary](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/source-affine-second-abel-boundary.md) | 481 | `result-track:808cb4edd92604ef626d757f690cd3d1a77ddcbb4623982247cf138f4171cd11` |
| 40 | `theorem` | [source_abel_test_second_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/source-abel-test-second-deriv.md) | 490 | `result-track:31a8df59ccd96cdb98b559a215480307102b4f832eebd39edcb4349de710d73a` |
| 41 | `theorem` | [lower_power_contribution_second_abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformResults.lean/declarations/lower-power-contribution-second-abel.md) | 499 | `result-track:9780331718ad4f976ca51c3da2855ee6cc77ac3a1aa53ba1133ee4f3c0314387` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=377125f950f5f091327e68a530e619ad6e7cf8f27a428553145c638c1dab30cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
