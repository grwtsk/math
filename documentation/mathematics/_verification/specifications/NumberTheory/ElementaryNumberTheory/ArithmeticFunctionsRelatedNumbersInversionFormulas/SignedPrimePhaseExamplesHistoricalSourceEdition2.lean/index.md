# Verification target: GRWTSK.Analysis.Fourier.SignedPrimePhaseExamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e84231e22c0e7205914efac694eeaa6028002f0c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/SignedPrimePhaseExamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e84231e22c0e7205914efac694eeaa6028002f0c`.

Source path: `GRWTSK/Analysis/Fourier/SignedPrimePhaseExamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/SignedPrimePhaseExamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.AsymptoticAnalysis.ExponentialEnergyObstruction`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialEnergyObstructionHistoricalSourceEdition2.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [literal_moebius_prime_sign](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/literal-moebius-prime-sign.md) | 19 | `result-track:ed034114a16f3363cfb35de6fb4f9aa7e8a728c732057b912ff3a6ab1010d7a5` |
| 2 | `theorem` | [literal_moebius_composite_sign](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/literal-moebius-composite-sign.md) | 23 | `result-track:2e144cb013ff73cfaeb915f4586032a8ad90577278f223cf0f56b2f90a301070` |
| 3 | `theorem` | [repeated_prime_moebius_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/repeated-prime-moebius-zero.md) | 32 | `result-track:51a57a1981be77b38d2ab4c32c0f0c726db43c4d53c0fb50e113cf4245cad104` |
| 4 | `theorem` | [literal_moebius_absolute_replacement_rejected](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/literal-moebius-absolute-replacement-rejected.md) | 38 | `result-track:8cfe6d958f76fbeea0ff3041d0d23048075f8486f2c106fac21062c3420608f2` |
| 5 | `def` | [primeTwoWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/primetwoweight.md) | 43 | `declaration-track:fc0804396b0f9f38d3f5b71eef69a504a62c12ae20db0b21716c05a51217da1a` |
| 6 | `theorem` | [primeTwoWeight_positive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/primetwoweight-positive.md) | 45 | `result-track:0f929d52df17e66f7b4d66de8216cf72cd3ef63ec6794afaa65e9f8c703d79b5` |
| 7 | `theorem` | [primeTwoWeight_lt_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/primetwoweight-lt-one.md) | 49 | `result-track:892da1f990c31584466d563c51a348cace826f75489150f4f515b4720a72ee38` |
| 8 | `theorem` | [primeTwoWeight_sq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/primetwoweight-sq.md) | 54 | `result-track:ea47791b96838037f951928f981d9c31b3a9327e2475a78a26707174db143207` |
| 9 | `theorem` | [signed_zero_phase_contracts](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/signed-zero-phase-contracts.md) | 60 | `result-track:4d53a956d1239bcd21d69b66a4ae1e47a8dd9bac420845e60de6e348ce3f457d` |
| 10 | `theorem` | [unsigned_zero_phase_amplifies](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/unsigned-zero-phase-amplifies.md) | 66 | `result-track:b4b1c2951496c32a05aad6a5217195dc223fd92e3d0f71d31c9fa0d8e158761a` |
| 11 | `theorem` | [sign_erasure_changes_factor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/sign-erasure-changes-factor.md) | 70 | `result-track:91d33173abc122826d18fe761404097f1644794e1b2df49e67d9028c028b89d4` |
| 12 | `theorem` | [signed_anti_phase_amplifies](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/signed-anti-phase-amplifies.md) | 75 | `result-track:6a734615f3c86b25155038e5dfbc3b15614639a5a425a610aa55a7330f2f839e` |
| 13 | `theorem` | [zero_phase_signed_broad](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/zero-phase-signed-broad.md) | 79 | `result-track:790b35ea3f663a4474b520c009ecbb177f303273d62d0f8525e337bdaae36786` |
| 14 | `theorem` | [zero_phase_absolute_test_fails](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/zero-phase-absolute-test-fails.md) | 87 | `result-track:241ec2e1e86bb5675c72f60bfa06f3653fcedd061da51e604b5809f8f75fe55a` |
| 15 | `theorem` | [prime_two_singleton_mass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/prime-two-singleton-mass.md) | 95 | `result-track:4a9947aea9035f1b8c6d3c075a5ec241f44080f42fd0ed52b01e2d2d62f25fa1` |
| 16 | `theorem` | [prime_two_block_mass_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/prime-two-block-mass-lower.md) | 101 | `result-track:63bb8ec64baa4db02156ee4ca2ff625c9dfaee4c75ddb800abfd6a6a6972fdff` |
| 17 | `theorem` | [prime_two_small_cutoff_rejected](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/prime-two-small-cutoff-rejected.md) | 110 | `result-track:be7144fee4608ff514b867f63018ae449a1d07160790838c576c36c505d69f78` |
| 18 | `theorem` | [covered_prime_two_small_cutoff_rejected](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/covered-prime-two-small-cutoff-rejected.md) | 119 | `result-track:2336041d66fcc4d188dc907001e572362337e490a68784792f4583d649981573` |
| 19 | `def` | [gramQuadratic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/gramquadratic.md) | 129 | `declaration-track:5709a15e559e8640b9f0e76a8425d46e8e47244317c9fe65cbf239403ccf7d2f` |
| 20 | `theorem` | [gramQuadratic_eq_square](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/gramquadratic-eq-square.md) | 132 | `result-track:12284505cbd23976a22ede026d3965e52cba6c2bf22db7c0a83d8fb67a9c4299` |
| 21 | `theorem` | [gramQuadratic_nonnegative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/gramquadratic-nonnegative.md) | 143 | `result-track:2928c1356744e66a314bfdb5846b29cc14d0e1fad1147f3b6852a29a138dcbd3` |
| 22 | `def` | [abstractNotes](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/abstractnotes.md) | 149 | `declaration-track:6e974ff29cb374a997bf0cb644976502d17c5f671a393e8254bd915e4f372548` |
| 23 | `def` | [initialCoefficients](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/initialcoefficients.md) | 151 | `declaration-track:7965af8dd4a0a11e18321a345af28b218a17de16863328a7c45d598336876192` |
| 24 | `def` | [firstPrimeCoefficients](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/firstprimecoefficients.md) | 152 | `declaration-track:dcabbaacc27f2a524b24097524ddc16b130f9b66a65a162bb29325fa6c89f566` |
| 25 | `def` | [twoPrimeCoefficients](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/twoprimecoefficients.md) | 153 | `declaration-track:c99bf844fdcec89ea8e03ed4f7cf326b2bab707a579249b1da79f38d615e0bff` |
| 26 | `theorem` | [abstract_initial_energy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/abstract-initial-energy.md) | 155 | `result-track:76f328755d1dfe5a73999cfb9b142b2f0dae950a7a4f903e65f68cd10e68a719` |
| 27 | `theorem` | [abstract_intermediate_energy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/abstract-intermediate-energy.md) | 160 | `result-track:f23217dc434cd28a63588ada17559b03f04de499199f113dd7736f1f3fd405cc` |
| 28 | `theorem` | [abstract_completed_energy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/abstract-completed-energy.md) | 165 | `result-track:983ab26ec01fd7378fbedd62057ef0821a5388013d1fd2363f4b42757fd0e426` |
| 29 | `theorem` | [abstract_growth_then_cancellation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/abstract-growth-then-cancellation.md) | 170 | `result-track:8cc336563b1afa01a743792db699f0d12b2801c3eae45f7258a19fe5f944a38e` |
| 30 | `theorem` | [nondecreasing_natural_rank_rejected](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/nondecreasing-natural-rank-rejected.md) | 178 | `result-track:e62427ac9873adf5b7fb41154b8fe552a06122da55533f102524a749b84e5654` |
| 31 | `theorem` | [narrower_width_same_rank_fixture](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/narrower-width-same-rank-fixture.md) | 183 | `result-track:cf06b1e4349ccffcf8356d3d99bbc92f29023bded5563fdc50d2309beda8a703` |
| 32 | `theorem` | [geometric_inverse_scale_is_exponential](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/geometric-inverse-scale-is-exponential.md) | 186 | `result-track:f9b486a546f078288dbe81f116e85d1fe6b5b1614bdbd13c6d23c0e0dc2f1e4f` |
| 33 | `theorem` | [geometric_exponential_loss_not_polynomial](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/declarations/geometric-exponential-loss-not-polynomial.md) | 193 | `result-track:76f4712d97ce4962ba44f13023a0772cfbe9e2fd2f70e61acec99fb145e42299` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00b69663667fa142cd3c6dbc0bdc44403a2bd7a22cde3848bc34f1f8edab054c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Fourier/SignedPrimePhaseExamples.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/SignedPrimePhaseExamples.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
