# Verification target: Bernoulli Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b1c5085b78d3dadb460017b25f76c1beaf98310",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/BernoulliNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/BernoulliNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b1c5085b78d3dadb460017b25f76c1beaf98310`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean.json)

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
| 1 | `def` | [bernoulli'](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-source-edition-2.md) | 91 | `declaration-track:aab159e8613f7e5617c1aa415ae4069172df36931d330bf1cd46d8f96c956e13` |
| 2 | `theorem` | [bernoulli'_def'](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-def-source-edition-2.md) | 94 | `result-track:9b7a7276dcbe101c71ad71eafc3c9da31a8faa6571f011d181cc78f69dd36de7` |
| 3 | `theorem` | [bernoulli'_def](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-def.md) | 98 | `result-track:094372c69e3c9ab88c58eef1c7ad34a28b40ed7d7762817b489de0a530a59154` |
| 4 | `theorem` | [bernoulli'_spec](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-spec-source-edition-3.md) | 102 | `result-track:ba60786393de245b6041da7fa0b24d394dbbf7ae4c1c0cb7dbd87c89028c7780` |
| 5 | `theorem` | [bernoulli'_spec'](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-spec.md) | 109 | `result-track:58b0a0b3145628925fcd1c3bec591b7496fcfb8022de578ba10db0130ce4679a` |
| 6 | `theorem` | [bernoulli'_zero](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-zero-source-edition-2.md) | 121 | `result-track:824925a45b6c13add20c16acdc81e35faad891f7735df076f063b9403db8ff2f` |
| 7 | `theorem` | [bernoulli'_one](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-one-source-edition-2.md) | 126 | `result-track:54df7abb278b01aacf7afa09deaf8a921efae12254982a3ddb06b1a6bfc3acee` |
| 8 | `theorem` | [bernoulli'_two](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-two.md) | 131 | `result-track:581530bbeb5d5c956a08ae9d12911a52d030aedf5895a9f2b585371355e41288` |
| 9 | `theorem` | [bernoulli'_three](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-three.md) | 136 | `result-track:0e80bc57aaa03f71975212c5707fbd695663e347cb47189c5c2e1605037f177e` |
| 10 | `theorem` | [bernoulli'_four](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-four.md) | 141 | `result-track:21b575146b7340e5ac49dc4f3caaed50b880bd29215fa08d237fbd6ef18877c7` |
| 11 | `theorem` | [sum_bernoulli'](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/sum-bernoulli-source-edition-2.md) | 149 | `result-track:ba54f3a06a3bb5416f80ed2d5da71c21b30db64040ed09faf033919853ad3b1d` |
| 12 | `def` | [bernoulli'PowerSeries](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-powerseries.md) | 164 | `declaration-track:b1371248dd7cde291d08e9315684ec8316ce1107475964397c5c281b28c5d6d7` |
| 13 | `theorem` | [bernoulli'PowerSeries_mul_exp_sub_one](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-powerseries-mul-exp-sub-one.md) | 167 | `result-track:a982b5b9eb9526093a22a67d6b191d64a1ef8a0cc51dc4951a28aadef9fcb3bb` |
| 14 | `theorem` | [bernoulli'_eq_zero_of_odd](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-eq-zero-of-odd.md) | 186 | `result-track:a8bcb416436752e1abf09d4eb14b4f5ade0bc61522e1239f0b995481cbf5bdf7` |
| 15 | `def` | [bernoulli](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli.md) | 203 | `declaration-track:4226a9a5e05a5a9a31b2bfbbb0c28343ff0eacce77a134a9ae3f23b94f4415d2` |
| 16 | `theorem` | [bernoulli'_eq_bernoulli](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-eq-bernoulli.md) | 206 | `result-track:59467ba15f14f5f6d38cf1e8417ae87908576dab3a9ee8034b6b2aba6735cdae` |
| 17 | `theorem` | [bernoulli_zero](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-zero.md) | 210 | `result-track:48b499a23b97cd3de83b3f573eedd04e5510ead23f63973f3c72c8d857159113` |
| 18 | `theorem` | [bernoulli_one](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-one.md) | 213 | `result-track:2b6690d9af93a6b4da5b7ca565a13b2eca102f63a037ef5b27f7f4188d9994b6` |
| 19 | `theorem` | [bernoulli_two](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-two-source-edition-2.md) | 216 | `result-track:9481cef61f9cab367545de3af611b53f00bef4abcdcec34062c7b8de50dfee98` |
| 20 | `theorem` | [bernoulli_eq_zero_of_odd](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-eq-zero-of-odd-source-edition-2.md) | 220 | `result-track:e211c4ffeef05c055d7fc6968a46491f5d3ce037371b4c8c84dfc2ca7a24e1fb` |
| 21 | `theorem` | [bernoulli_eq_bernoulli'_of_ne_one](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-eq-bernoulli-of-ne-one.md) | 223 | `result-track:087cb1f816421ec13cc19abf2d22aa3770a3757c012dd9573198cec6867d4c42` |
| 22 | `theorem` | [sum_bernoulli](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/sum-bernoulli.md) | 232 | `result-track:57af7364d1425cf6b2948af1af77ddeea04bd045d58ec348870d960835f91a5d` |
| 23 | `theorem` | [bernoulli_spec'](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-spec-source-edition-2.md) | 252 | `result-track:81d3387554a52286e765aa914d58cc54fe81fb686f0e6fca2d3c73af53fc92c4` |
| 24 | `def` | [bernoulliPowerSeries](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoullipowerseries.md) | 274 | `declaration-track:b152f24b7cb2075b2b6ef13ef478e73ef5059b00275698f4e7485fe1e86e0137` |
| 25 | `theorem` | [bernoulliPowerSeries_mul_exp_sub_one](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoullipowerseries-mul-exp-sub-one.md) | 277 | `result-track:4ee9f6061de9ceaf0e4b828f64f41d0a708be9b2b057f136ee5cab547abebab1` |
| 26 | `theorem` | [sum_range_pow](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/sum-range-pow.md) | 301 | `result-track:c2d7b244254305234661d92abdd25057ebe0c5a456270e8efc9da3196e24c383` |
| 27 | `theorem` | [sum_Ico_pow](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/sum-ico-pow.md) | 366 | `result-track:6420419cb784432b5196086f76b1ce669493e8f7c169e6c36aafca256a530f04` |
| 28 | `def` | [vonStaudtIndicator](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/vonstaudtindicator.md) | 422 | `declaration-track:79ff0421315bc1b65a2231374038150fd8ca7db694adf7331630574577f5b39e` |
| 29 | `abbrev` | [vonStaudtPrimes](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/vonstaudtprimes.md) | 427 | `declaration-track:2d7b1024b1d6ab18ab943471687fe4cbe409e2da05a3b88426011fc032a67489` |
| 30 | `lemma` | [sum_pow_add_indicator_eq_zero](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/sum-pow-add-indicator-eq-zero.md) | 431 | `result-track:fb5cc4a0f064ca69d2de80d90844ef25be56113a9ac6729a8e2d8866e208e32f` |
| 31 | `abbrev` | [pIntegral](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/pintegral.md) | 447 | `declaration-track:c3cf728c84c9eb1a1d1ab632b6e5c25a8ef9c8dc23c3b3506c956d7c70845daa` |
| 32 | `lemma` | [pIntegral_mul](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/pintegral-mul.md) | 449 | `result-track:eaa2e95d3a290358d5fdec5bbe5294c0b558c61780cac8833d1967fd2c5f9178` |
| 33 | `lemma` | [prod_one_div_prime_den_coprime](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/prod-one-div-prime-den-coprime.md) | 455 | `result-track:49d1ee9f5a4b1877c4aaffaffa743244e64b904098f27f3a468c1b7f1cbedae9` |
| 34 | `lemma` | [sum_one_div_prime_eq_indicator_div_add](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/sum-one-div-prime-eq-indicator-div-add.md) | 465 | `result-track:266a1f51d40fdc91fb28d82b86d3060888f602f37673ff779079c3c9217e1929` |
| 35 | `lemma` | [pIntegral_pow_div](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/pintegral-pow-div.md) | 478 | `result-track:3c698386269e841c2a894a50536cf4404726d57c6b0bb42512f81134ca7b6916` |
| 36 | `lemma` | [factorization_succ_le_sub_one](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/factorization-succ-le-sub-one.md) | 500 | `result-track:107c2d7d9d73ccc3bb28491c12fcd9c1225fc312cbe0210147bc8f3731fa78d1` |
| 37 | `lemma` | [choose_two_mul_succ_mul_div_eq](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/choose-two-mul-succ-mul-div-eq.md) | 520 | `result-track:a4410b768c7bbb1c5220c437adcb5869c4f0b53d441dff20c0d9f13ae2baf3e0` |
| 38 | `lemma` | [pIntegral_choose_mul_pow_div](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/pintegral-choose-mul-pow-div.md) | 529 | `result-track:4d57c901f5ffd2a19422ae798596b1e859a0bc781826833489afe80884c4d617` |
| 39 | `lemma` | [pIntegral_bernoulli_even_term](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/pintegral-bernoulli-even-term.md) | 543 | `result-track:2b4b6454f9b0a3ec13bd99ff7feed3b7b8a3d1161a11a535be532c75fda9de2d` |
| 40 | `lemma` | [pIntegral_faulhaber_sum](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/pintegral-faulhaber-sum.md) | 575 | `result-track:c29f72b72907c8102888ea18b69ec5183719252a600798836674fbfb69194dfc` |
| 41 | `lemma` | [sum_pow_filter_eq_faulhaber](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/sum-pow-filter-eq-faulhaber.md) | 602 | `result-track:0f74f8f66165268e7b0d1ad6a76c16c5b6c57c4a73b587ec463aea05014aff5b` |
| 42 | `lemma` | [faulhaber_sum_div_prime_eq](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/faulhaber-sum-div-prime-eq.md) | 613 | `result-track:7059f492929bb8465cc135687c214730db0bafb58766f7e61bedcd0b4f9c03f2` |
| 43 | `lemma` | [bernoulli_add_indicator_eq_sub](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/bernoulli-add-indicator-eq-sub.md) | 627 | `result-track:d12d7529bef3be7d718fe225bcb436423108af09cebfa3c9bc33809b2ffb34b9` |
| 44 | `lemma` | [not_dvd_den_bernoulli_add_indicator](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/not-dvd-den-bernoulli-add-indicator.md) | 646 | `result-track:cafd5acdb50e5f01da8365ffbd1d5e74fee44e781534080c5038956969fff8c6` |
| 45 | `lemma` | [not_dvd_den_vonStaudt_sum](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/not-dvd-den-vonstaudt-sum.md) | 658 | `result-track:a4e0f22a2c2a39a80060600847220349dabb340c5ff8ad4efeb388a29b5e69a1` |
| 46 | `theorem` | [vonStaudt_clausen](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/vonstaudt-clausen.md) | 671 | `result-track:ed2cb46c5fdc4a28d1fe8d9c54dfe1b788c39d98bb2716587880c5a8d9d311ef` |
| 47 | `theorem` | [padicValuation_bernoulli](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/padicvaluation-bernoulli.md) | 688 | `result-track:5eab028fea28d0b5d0815db71b11bda3d023a923a2303f514201bfaaae1c96a0` |
| 48 | `theorem` | [padicValRat_bernoulli](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/padicvalrat-bernoulli.md) | 698 | `result-track:81011999bdb2db75d2c759295637a7ebbcb2a86a0c6011799e17f7a4cc513f2a` |
| 49 | `theorem` | [dvd_den_bernoulli](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/dvd-den-bernoulli.md) | 705 | `result-track:0163e3dd6d8b0c09036fdf9ba5907738356ff480a76ad5f4208ce155debd9686` |
| 50 | `theorem` | [not_dvd_num_bernoulli](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/not-dvd-num-bernoulli.md) | 711 | `result-track:d61360172c70abbf150c46a3909f0ed3c4a4e1ead757980770e58d7f8a6ad7e4` |
| 51 | `theorem` | [not_sq_dvd_den_bernoulli](../../../../NumberTheory/BernoulliNamespacedPublic.lean/declarations/not-sq-dvd-den-bernoulli.md) | 719 | `result-track:12bd03acb8341da4d3172a98a7eee5d8e59b5d23581fc32114e5fb8586ea093c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56041ffdae751d42eec6a0ec7f66ba2b4c0e02e86b8aeaa66805c56c30a09981 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
