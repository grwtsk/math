# Verification target: Bernoulli Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a665dbc38aeb4dcc149b60e7abdb75f97195a4b8",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/BernoulliPublic.lean/index.md) · [Full source](../../../../NumberTheory/BernoulliPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a665dbc38aeb4dcc149b60e7abdb75f97195a4b8`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernoulli'](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli.md) | 83 | `declaration-track:4f28ac01190d28eddc11663619075e2f8f47db8959e4a45c48f702cd662d338c` |
| 2 | `theorem` | [bernoulli'_def'](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-def.md) | 86 | `result-track:75261b58343ef5eca1bd42bca263fc9e1073967bd05169437e2e42cba287fb95` |
| 3 | `theorem` | [bernoulli'_def](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-def-source-edition-2.md) | 90 | `result-track:8c57d51f6b8198767d5e9b0260b9734cbd7a0b8a5776f8d07c52b600bc126d06` |
| 4 | `theorem` | [bernoulli'_spec](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-spec-source-edition-2.md) | 94 | `result-track:5570a3f2cb08577a30ff02cf7b072f1febb832cc6708f6f17c1ccd39d799f757` |
| 5 | `theorem` | [bernoulli'_spec'](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-spec.md) | 101 | `result-track:2654d69010788880d41985992584d33de56b7f817904be859d0013b10d16aad2` |
| 6 | `theorem` | [bernoulli'_zero](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-zero-source-edition-2.md) | 113 | `result-track:4328b39b74b2b5a7710d757d086984a8490747870abc8a5f988541fbab90ce3b` |
| 7 | `theorem` | [bernoulli'_one](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-one.md) | 118 | `result-track:0816b46ff6816e3451ff5868a70f3106b9c02935853a26639868ec8daef2d108` |
| 8 | `theorem` | [bernoulli'_two](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-two-source-edition-2.md) | 123 | `result-track:82dcb6e6e0e0e523ac98b874618ee0372868fee8a692ac82e6987bacbddaed9f` |
| 9 | `theorem` | [bernoulli'_three](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-three.md) | 128 | `result-track:6ce6f48757654b50217214b1c7ad29106644d5fcd7e09f58c669ba8a45ba1038` |
| 10 | `theorem` | [bernoulli'_four](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-four.md) | 133 | `result-track:e6ebbd29092576d98a18dc6fc08046d88553587725523b7813bddadf1d4b3ded` |
| 11 | `theorem` | [sum_bernoulli'](../../../../NumberTheory/BernoulliPublic.lean/declarations/sum-bernoulli-source-edition-2.md) | 141 | `result-track:6fc52a2fce352095ddc1d4821c3437a3c621c7c71166af1e446ba06e1663e18a` |
| 12 | `def` | [bernoulli'PowerSeries](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-powerseries.md) | 156 | `declaration-track:3c941d47985015b4a5158187a41b2c861feb7f40f619ccdea71df6b760551761` |
| 13 | `theorem` | [bernoulli'PowerSeries_mul_exp_sub_one](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-powerseries-mul-exp-sub-one.md) | 159 | `result-track:4622073f4b09892fe3d1c88261cfbe02426e70cd1ccf192bfdbbb2696a69fdef` |
| 14 | `theorem` | [bernoulli'_eq_zero_of_odd](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-eq-zero-of-odd.md) | 178 | `result-track:0d5f813001465431cef8541306af9abd01388731eb57241328908b23440daa70` |
| 15 | `def` | [bernoulli](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-source-edition-2.md) | 195 | `declaration-track:f2f2cbc466f932e0427fbb0d977ff9c5ca20043d1d5f9bf0f037bd5ce697ecf2` |
| 16 | `theorem` | [bernoulli'_eq_bernoulli](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-eq-bernoulli.md) | 198 | `result-track:2cdf5d042c0111a4c7b155232b1096f514def4ac1ed8b4a272612857fe208475` |
| 17 | `theorem` | [bernoulli_zero](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-zero.md) | 202 | `result-track:0699dfe57c4407edeb7b11574d4f528a54af0cc2902e243ce7aef8a6e81c5d7b` |
| 18 | `theorem` | [bernoulli_one](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-one-source-edition-2.md) | 205 | `result-track:74f4e7b51f8c9d42bf5f783497fda5b5a1d3c91db641f75270554ab9b0fe5f8a` |
| 19 | `theorem` | [bernoulli_two](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-two.md) | 208 | `result-track:0e95344466b522d86bb205b451802c0fe236d2c7cb5613ed5e694e973170ddae` |
| 20 | `theorem` | [bernoulli_eq_zero_of_odd](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-eq-zero-of-odd-source-edition-2.md) | 212 | `result-track:355b6eb9556365287e372e3836d4d8626a406913284ffb775a550e9de1ed623e` |
| 21 | `theorem` | [bernoulli_eq_bernoulli'_of_ne_one](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-eq-bernoulli-of-ne-one.md) | 215 | `result-track:93fbff729567902447ab362cf4a2944d7321a9fdb94697fa4111196901141d57` |
| 22 | `theorem` | [sum_bernoulli](../../../../NumberTheory/BernoulliPublic.lean/declarations/sum-bernoulli.md) | 224 | `result-track:61db1a34b6b1d3fe91f0f8e31260e947bb4fedd3d3fdb1620878eb2e6823c7be` |
| 23 | `theorem` | [bernoulli_spec'](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-spec-source-edition-3.md) | 244 | `result-track:676c7f169a9474de388e6b34aded7103a364a8fedf7b763bb87db2c324dbc3c8` |
| 24 | `def` | [bernoulliPowerSeries](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoullipowerseries.md) | 266 | `declaration-track:e95f433a79a969532df6aaaf24bca34a879346b49d1ab02d0cbb24dca0decbb4` |
| 25 | `theorem` | [bernoulliPowerSeries_mul_exp_sub_one](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoullipowerseries-mul-exp-sub-one.md) | 269 | `result-track:f4060b0bdfa24ad578d0f95c8a15c9d2a5f5eb1d3834a8e2b9d28bc04f8015aa` |
| 26 | `theorem` | [sum_range_pow](../../../../NumberTheory/BernoulliPublic.lean/declarations/sum-range-pow.md) | 293 | `result-track:54ee2deec9a803347d8932ec94e6021987f79e53a79e192dfd97d4cc0e1c757e` |
| 27 | `theorem` | [sum_Ico_pow](../../../../NumberTheory/BernoulliPublic.lean/declarations/sum-ico-pow.md) | 358 | `result-track:b8586132eafb59da8fe7983d15c955d74bff1a83585b85efc84e9fa5c86fe5f0` |
| 28 | `def` | [vonStaudtIndicator](../../../../NumberTheory/BernoulliPublic.lean/declarations/vonstaudtindicator.md) | 414 | `declaration-track:7cd1d86e027238035426c18444f5571e0e67679b2a51f6e3293373521e3706cf` |
| 29 | `abbrev` | [vonStaudtPrimes](../../../../NumberTheory/BernoulliPublic.lean/declarations/vonstaudtprimes.md) | 419 | `declaration-track:6744a5cb81c9114e9e9a171c238ed227cd9eab0278d98a38f394bc9d5d9e4a3f` |
| 30 | `lemma` | [sum_pow_add_indicator_eq_zero](../../../../NumberTheory/BernoulliPublic.lean/declarations/sum-pow-add-indicator-eq-zero.md) | 423 | `result-track:74fd1435480ddb291d26ca8fc186d35dcad08737cc5737a69eecf33f3194c94b` |
| 31 | `abbrev` | [pIntegral](../../../../NumberTheory/BernoulliPublic.lean/declarations/pintegral.md) | 439 | `declaration-track:6cbe4f332ec7ec6382fef25f43f5d59cb3825a110f190cb565f3f63a881b1931` |
| 32 | `lemma` | [pIntegral_mul](../../../../NumberTheory/BernoulliPublic.lean/declarations/pintegral-mul.md) | 441 | `result-track:a1a2792ffbf9f2727f4e251269b1d2707cb986b9cbfd447204cbf65d2745bddc` |
| 33 | `lemma` | [prod_one_div_prime_den_coprime](../../../../NumberTheory/BernoulliPublic.lean/declarations/prod-one-div-prime-den-coprime.md) | 447 | `result-track:e4d89c41fd5280809f20be631427cbe91b6b0fac5b476db646ade51098df6ed4` |
| 34 | `lemma` | [sum_one_div_prime_eq_indicator_div_add](../../../../NumberTheory/BernoulliPublic.lean/declarations/sum-one-div-prime-eq-indicator-div-add.md) | 457 | `result-track:3b63efff16976cf374dd68aa2a4c508ae6b9a4b529e68e7130f26c5d0681c9a2` |
| 35 | `lemma` | [pIntegral_pow_div](../../../../NumberTheory/BernoulliPublic.lean/declarations/pintegral-pow-div.md) | 470 | `result-track:d199bb68b14307e2d4a554535b043206ffce68b2ed65fdbf05137e17c20f6ebf` |
| 36 | `lemma` | [factorization_succ_le_sub_one](../../../../NumberTheory/BernoulliPublic.lean/declarations/factorization-succ-le-sub-one.md) | 492 | `result-track:30576d10830ce91eb538f92daeb1054080b2fb59c61cc1bcea54c2511707af90` |
| 37 | `lemma` | [choose_two_mul_succ_mul_div_eq](../../../../NumberTheory/BernoulliPublic.lean/declarations/choose-two-mul-succ-mul-div-eq.md) | 512 | `result-track:3cf83b2934ecfc433631db8a06efbd1b8427bd50f181b2baed4e56fc1987dc7a` |
| 38 | `lemma` | [pIntegral_choose_mul_pow_div](../../../../NumberTheory/BernoulliPublic.lean/declarations/pintegral-choose-mul-pow-div.md) | 521 | `result-track:aa6fbd2c1c61fb0c1974aa6f6be0f92314c9147ee88003bc816ff6cba24ed6d5` |
| 39 | `lemma` | [pIntegral_bernoulli_even_term](../../../../NumberTheory/BernoulliPublic.lean/declarations/pintegral-bernoulli-even-term.md) | 535 | `result-track:d94c4e40d8bad42fa9331ef32a791deaa2639f05dec4bb34a0828e152609a546` |
| 40 | `lemma` | [pIntegral_faulhaber_sum](../../../../NumberTheory/BernoulliPublic.lean/declarations/pintegral-faulhaber-sum.md) | 567 | `result-track:eb9c6ecc79c146e3c412491779baa394a63215151998097f493a58ac91a23a47` |
| 41 | `lemma` | [sum_pow_filter_eq_faulhaber](../../../../NumberTheory/BernoulliPublic.lean/declarations/sum-pow-filter-eq-faulhaber.md) | 594 | `result-track:04a648a318df432404f496a67f3aab2f7a0971befdea3f4f61429c40637ac98c` |
| 42 | `lemma` | [faulhaber_sum_div_prime_eq](../../../../NumberTheory/BernoulliPublic.lean/declarations/faulhaber-sum-div-prime-eq.md) | 605 | `result-track:7b0c0bbe3202002c60fb198516bc702a52a4b075d7b90785fa43f0cf43ba77f4` |
| 43 | `lemma` | [bernoulli_add_indicator_eq_sub](../../../../NumberTheory/BernoulliPublic.lean/declarations/bernoulli-add-indicator-eq-sub.md) | 619 | `result-track:fc481cce7d0e513b6ab049382506dd101bfb574581fb5ac13437e196efd61e1b` |
| 44 | `lemma` | [not_dvd_den_bernoulli_add_indicator](../../../../NumberTheory/BernoulliPublic.lean/declarations/not-dvd-den-bernoulli-add-indicator.md) | 638 | `result-track:3635b0474f96673f487cd5cf0e979e22443cc71b9f943bd9def55727a7db8ab0` |
| 45 | `lemma` | [not_dvd_den_vonStaudt_sum](../../../../NumberTheory/BernoulliPublic.lean/declarations/not-dvd-den-vonstaudt-sum.md) | 650 | `result-track:4c9472a330aed68cc15fb505ff0bbc5e1fe56c384f9d88ad918efd0884d380ec` |
| 46 | `theorem` | [vonStaudt_clausen](../../../../NumberTheory/BernoulliPublic.lean/declarations/vonstaudt-clausen.md) | 663 | `result-track:8e4345756ae403ef6241cc544a7f550aeb738ae001847fed8ff1f69608e0cc6e` |
| 47 | `theorem` | [padicValuation_bernoulli](../../../../NumberTheory/BernoulliPublic.lean/declarations/padicvaluation-bernoulli.md) | 680 | `result-track:ca5ec950722322e4f77169de02ba918850a47aed25890d8bbdeebe5f81c1c5ff` |
| 48 | `theorem` | [padicValRat_bernoulli](../../../../NumberTheory/BernoulliPublic.lean/declarations/padicvalrat-bernoulli.md) | 690 | `result-track:5d8bb5fefa3e62c5a2fded808ac7ea75510d5a29aa02ce0bc4d5a3db2088d621` |
| 49 | `theorem` | [dvd_den_bernoulli](../../../../NumberTheory/BernoulliPublic.lean/declarations/dvd-den-bernoulli.md) | 697 | `result-track:01b695bf61c6920f8f673a19c9f809b73dac2ab69f4784383088cc1c3bbf4f02` |
| 50 | `theorem` | [not_dvd_num_bernoulli](../../../../NumberTheory/BernoulliPublic.lean/declarations/not-dvd-num-bernoulli.md) | 703 | `result-track:d0d7c9128749ea6179f3264d2335d23b3b194150090e7e84574d6d0619dbc20d` |
| 51 | `theorem` | [not_sq_dvd_den_bernoulli](../../../../NumberTheory/BernoulliPublic.lean/declarations/not-sq-dvd-den-bernoulli.md) | 711 | `result-track:bc24ecc3ba5af4841018beb0d9777360db9138be7c18351414aaa2252943e88a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c85e85760c8e52bd8548e6b6bda73e25cfa2a8ae4010fb74b8aefcbbe9e9b5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
