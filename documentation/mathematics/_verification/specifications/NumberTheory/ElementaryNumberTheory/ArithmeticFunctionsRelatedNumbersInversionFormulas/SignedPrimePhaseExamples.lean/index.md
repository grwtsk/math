# Verification target: Signed Prime Phase Examples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e84231e22c0e7205914efac694eeaa6028002f0c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SignedPrimePhaseExamples/Variant52f525fc4de6207b3bb188776d3d0ec91ec32dad39560719e87a0249ea6d16e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e84231e22c0e7205914efac694eeaa6028002f0c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SignedPrimePhaseExamples/Variant52f525fc4de6207b3bb188776d3d0ec91ec32dad39560719e87a0249ea6d16e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SignedPrimePhaseExamples/Variant52f525fc4de6207b3bb188776d3d0ec91ec32dad39560719e87a0249ea6d16e9.lean.json)

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
| 1 | `theorem` | [literal_moebius_prime_sign](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/literal-moebius-prime-sign.md) | 19 | `result-track:f930061bbd6c9668afd2236c0eeb8cc2e62a00d07113e1ac4184bb90b8cdea3b` |
| 2 | `theorem` | [literal_moebius_composite_sign](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/literal-moebius-composite-sign.md) | 23 | `result-track:16ea03ab82526ec034748f92a4fb82e52c20ac97b28e9fc61adf3fb9e5c83abe` |
| 3 | `theorem` | [repeated_prime_moebius_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/repeated-prime-moebius-zero.md) | 32 | `result-track:d7451550ab26e19572bb4da1df81aad1146b971f90f8f8926e445cbb43823791` |
| 4 | `theorem` | [literal_moebius_absolute_replacement_rejected](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/literal-moebius-absolute-replacement-rejected.md) | 38 | `result-track:943813c4fe42e80ffa8168be3a0513f3c342187be04fdf683a1623bde3692fff` |
| 5 | `def` | [primeTwoWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/primetwoweight.md) | 43 | `declaration-track:a222e14c27ef8dbc92556fa8f0d5faafaeebe8577f0c7580ef255bd641f2c8fa` |
| 6 | `theorem` | [primeTwoWeight_positive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/primetwoweight-positive.md) | 45 | `result-track:72e5a3c1df18511c26ec3742f29b36c56048d70448ee74cdba3e205849fc7765` |
| 7 | `theorem` | [primeTwoWeight_lt_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/primetwoweight-lt-one.md) | 49 | `result-track:f53ef58fcd5ded943f9c04f41e3dce9aa820ab2708338aaf5859a1021c98f1c2` |
| 8 | `theorem` | [primeTwoWeight_sq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/primetwoweight-sq.md) | 54 | `result-track:44d834c4f35f713a886454ff2dcfbb8db4117c4c3f80cdb03adc470a37e9d522` |
| 9 | `theorem` | [signed_zero_phase_contracts](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/signed-zero-phase-contracts.md) | 60 | `result-track:461dea96c84ea650728213ac4774616f73894ac890c5574e5b434cc1dd1921e8` |
| 10 | `theorem` | [unsigned_zero_phase_amplifies](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/unsigned-zero-phase-amplifies.md) | 66 | `result-track:b3dde9bfaa09bf52f84d2b8180b4c2d3631e9ef05e7b810d764fd08595d0e16e` |
| 11 | `theorem` | [sign_erasure_changes_factor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/sign-erasure-changes-factor.md) | 70 | `result-track:c921798a2ce2ad97eb427268dfcaa6a1bfccb4fa777327faa8ddb4b1b4303c91` |
| 12 | `theorem` | [signed_anti_phase_amplifies](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/signed-anti-phase-amplifies.md) | 75 | `result-track:f96c20d0d4583f87e51aa20663ab25360cf831cd4ed27b5e92c677cce5627ca9` |
| 13 | `theorem` | [zero_phase_signed_broad](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/zero-phase-signed-broad.md) | 79 | `result-track:cfa19e3debb88eabbd0cf9fb50ba216c3e7b20392c20af4a0fbb1186c9b4e388` |
| 14 | `theorem` | [zero_phase_absolute_test_fails](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/zero-phase-absolute-test-fails.md) | 87 | `result-track:1efaab461123286dea57cc00639e288a61cd3d0c0f632be1e4ce8aa861e19916` |
| 15 | `theorem` | [prime_two_singleton_mass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/prime-two-singleton-mass.md) | 95 | `result-track:04f48678b6c885cf49314085d74205da2c12d8fd78002db508b0bc07798d4329` |
| 16 | `theorem` | [prime_two_block_mass_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/prime-two-block-mass-lower.md) | 101 | `result-track:0b9d20c76384ef1c2b636a5f45971d074ecff6065c7b41b69b7c31a11a88620b` |
| 17 | `theorem` | [prime_two_small_cutoff_rejected](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/prime-two-small-cutoff-rejected.md) | 110 | `result-track:2127bdde8eb0717ea5750bf91ae718aa1188d46d1a0c4dc1eb578431c00356ce` |
| 18 | `theorem` | [covered_prime_two_small_cutoff_rejected](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/covered-prime-two-small-cutoff-rejected.md) | 119 | `result-track:064e0fbb69bd513b67507ccd130bb90b17f54d1eb55dd691f28153b0104ddf4c` |
| 19 | `def` | [gramQuadratic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/gramquadratic.md) | 129 | `declaration-track:7c53b3ece8eee75a5b0d68d0ac3b865e53030f455c76a01b664b89343a7a3324` |
| 20 | `theorem` | [gramQuadratic_eq_square](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/gramquadratic-eq-square.md) | 132 | `result-track:025b122ecea2c88304b73da5617e4c151c1dcd4c0e5d79f9f94c1d8607dfda40` |
| 21 | `theorem` | [gramQuadratic_nonnegative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/gramquadratic-nonnegative.md) | 143 | `result-track:d1d188e3bbce692f3a5a8e1c0ee9a59dc58e8cb4fdf5376f494e261e643e1dcb` |
| 22 | `def` | [abstractNotes](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/abstractnotes.md) | 149 | `declaration-track:99333b0afa2492bccaa7a1de1bfad1dac3bd53014cb64a03af6edc7ff4209230` |
| 23 | `def` | [initialCoefficients](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/initialcoefficients.md) | 151 | `declaration-track:8b202f4826ab62a585671e79090a64b5b679ab1fc92734f9c017bbdc7b655916` |
| 24 | `def` | [firstPrimeCoefficients](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/firstprimecoefficients.md) | 152 | `declaration-track:fcdd4dfd707c70a72c2794c70ef8a4371d849ccbd03fbfa5792e556db359ee55` |
| 25 | `def` | [twoPrimeCoefficients](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/twoprimecoefficients.md) | 153 | `declaration-track:2a5910e0666afe30c37e66c18d23869fd09fc5e6f95ab6f7f53151a21795c979` |
| 26 | `theorem` | [abstract_initial_energy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/abstract-initial-energy.md) | 155 | `result-track:b38a771d7f0398ce27e00326f4e345ea6a67759436f5253807cefbffcfc14086` |
| 27 | `theorem` | [abstract_intermediate_energy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/abstract-intermediate-energy.md) | 160 | `result-track:79231667234dd75e462324dda4c37626aae9b67fecac0cd0ac6a5aa4700bd982` |
| 28 | `theorem` | [abstract_completed_energy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/abstract-completed-energy.md) | 165 | `result-track:6ae9a5fabdc9a2fa94bbe0346ee25726685d1e1dd6a323405f205964e7adc1a6` |
| 29 | `theorem` | [abstract_growth_then_cancellation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/abstract-growth-then-cancellation.md) | 170 | `result-track:cc14e838627f89a121673b13fcd09a96323d904633734ec0ece9cb5279e912ce` |
| 30 | `theorem` | [nondecreasing_natural_rank_rejected](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/nondecreasing-natural-rank-rejected.md) | 178 | `result-track:26e84abd3bb7473c3288ef65913d15de1675a4f7587d5735c985d5d4da0259a7` |
| 31 | `theorem` | [narrower_width_same_rank_fixture](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/narrower-width-same-rank-fixture.md) | 183 | `result-track:d1bea5e6fa14909dd83dca1db72bf9ad51f4fea36b845888f8aff5324c235093` |
| 32 | `theorem` | [geometric_inverse_scale_is_exponential](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/geometric-inverse-scale-is-exponential.md) | 186 | `result-track:2a9db405b522cf3734d15d1e32c36b4634fe1a1b4ac1164b40a4bc009e7eb3e8` |
| 33 | `theorem` | [geometric_exponential_loss_not_polynomial](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamples.lean/declarations/geometric-exponential-loss-not-polynomial.md) | 193 | `result-track:ded568215c671759f7210ae4ff077b323df84c913c7ed63e0aaa189c89e5e339` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a31367f7ad4b650a0c4dc5a91a38ea3d9d13e6f204d8de5f182204d9e79b57c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/SignedPrimePhaseExamples/Variant52f525fc4de6207b3bb188776d3d0ec91ec32dad39560719e87a0249ea6d16e9.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/SignedPrimePhaseExamples/Variant52f525fc4de6207b3bb188776d3d0ec91ec32dad39560719e87a0249ea6d16e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
