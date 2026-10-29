# Verification target: Multinomial Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a2836454d7dbbdabbb4dd186e4e838521febb27",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant71462ce6b6601ee6637619fd1badeea1283ae446e93790f1f71604f12a1cccb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a2836454d7dbbdabbb4dd186e4e838521febb27`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant71462ce6b6601ee6637619fd1badeea1283ae446e93790f1f71604f12a1cccb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant71462ce6b6601ee6637619fd1badeea1283ae446e93790f1f71604f12a1cccb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multinomial](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-source-edition-2.md) | 77 | `declaration-track:67fb9eb707c8e4a0814b9fc064bf76ef89c3ef93f9f6c6c914089a87963a144c` |
| 2 | `theorem` | [multinomial_pos](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-pos.md) | 80 | `result-track:adb801838fa2ed367a0f8a8c8775c2f97de2adf69a0bbe7763ff85cf42c37173` |
| 3 | `theorem` | [multinomial_spec](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-spec.md) | 84 | `result-track:bf1252e5092a03cf179c7bdddb4b77177e56fb2f80a4bb21fc922b6b633831f9` |
| 4 | `lemma` | [multinomial_empty](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-empty.md) | 87 | `result-track:ca55cc8baa2bbfe3dd3dd7650676226614baaf4530d49a120d293139835a4b8b` |
| 5 | `lemma` | [multinomial_cons](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-cons-source-edition-3.md) | 91 | `result-track:a8fbf5215c305438fffa0d34b1626b06701ce0846c8e06f523ab32d39666a035` |
| 6 | `lemma` | [multinomial_insert](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-insert.md) | 99 | `result-track:46d97d0dc0d92be5edc6023f382a4010dd3d565f1c3a389c2735e191ee8e03fe` |
| 7 | `lemma` | [multinomial_singleton](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-singleton.md) | 103 | `result-track:2d67b37ca699771a4959d484fc1f3ebfa91ca76c2b2020dd160541f724007092` |
| 8 | `theorem` | [multinomial_insert_one](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-insert-one.md) | 107 | `result-track:26d7b6deb938a89a170dc04b728efb472ee9603ed5ee8e9356a3fa0344840bb5` |
| 9 | `theorem` | [multinomial_congr](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-congr.md) | 114 | `result-track:f18055e1e7e9227814ec77188cdb28e81fa2619914577e9a2338cee6d3e32070` |
| 10 | `theorem` | [multinomial_congr_of_eq_on_inter](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-congr-of-eq-on-inter.md) | 120 | `result-track:9e3d634acc6e823dc0450fb85dedd87e986de6380885153c3ad1e5004703fd82` |
| 11 | `theorem` | [multinomial_congr_of_sdiff](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-congr-of-sdiff.md) | 129 | `result-track:8a72673e33cafab95915c0960407f64cc75fe5c6b941ade07d95791df2b74b5c` |
| 12 | `theorem` | [multinomial_single](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-single.md) | 135 | `result-track:0a4f6de653a47ae7729d2d7da25e6b4125f33cb7664bd357746f58b77cef3239` |
| 13 | `theorem` | [binomial_eq](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/binomial-eq.md) | 153 | `result-track:ec84aa14570690c3292a69edfb10a47f960fc92145527c41523e023da58f13ba` |
| 14 | `theorem` | [binomial_eq_choose](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/binomial-eq-choose.md) | 157 | `result-track:96ef4f47133cad9ad4c4e3273bf8a93ee2e7be1a9a78ecc6da76efc812d78a80` |
| 15 | `theorem` | [binomial_spec](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/binomial-spec.md) | 161 | `result-track:5304e59be805b9d06851007aff3c3321a0b7d2169b50beafdf88d1aa5a7cb60f` |
| 16 | `theorem` | [binomial_one](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/binomial-one.md) | 165 | `result-track:bb15e44c855c4e7c38a4ae94c19d8cd559ecd5d004e02303b98406587e0feb78` |
| 17 | `theorem` | [binomial_succ_succ](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/binomial-succ-succ.md) | 169 | `result-track:25468adcb884e49d851ff8c65e0dc7eaa4fdde19b758e33f9edfce3243c505b8` |
| 18 | `theorem` | [succ_mul_binomial](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/succ-mul-binomial.md) | 179 | `result-track:92321eb4e517ba12cc0e61ba1f45e593f9b197d1d242f7556c9a515e9d24bd7e` |
| 19 | `theorem` | [multinomial_univ_two](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-univ-two.md) | 189 | `result-track:62e7d112426d635e9dde699366be396a344330ad99b87818b1ad23082a2841d5` |
| 20 | `theorem` | [multinomial_univ_three](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-univ-three.md) | 194 | `result-track:6085b384fe7d75e081edd414d082437936afc30f65e5e36592bbbf305870f4e1` |
| 21 | `def` | [multinomial](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-source-edition-3.md) | 210 | `declaration-track:ae459e66e600d9bc1e837789b5bfc608c19145578f23d982fd1299498c3640d6` |
| 22 | `theorem` | [multinomial_eq](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-eq.md) | 213 | `result-track:d1e0fcf210d39f8c2adf0c0bbf42c2cf82eb0f05f122bf3273595b9367d1932e` |
| 23 | `theorem` | [multinomial_eq_of_support_subset](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-eq-of-support-subset.md) | 216 | `result-track:77ac2d059be7b59adff5b19b6b030104ec3f7dc3e8bc55fe90c6db169bf9221e` |
| 24 | `theorem` | [multinomial_update](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-update.md) | 224 | `result-track:1c0cd92774797bc1180aa952678985fcefbcb2c302477710e80c1cf4b2a99075` |
| 25 | `def` | [countPerms](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/countperms.md) | 243 | `declaration-track:2268b58191108a02543cbbb9717b70ffbdd1cfb27396e8193f672f93a0f1e3c1` |
| 26 | `theorem` | [countPerms_filter_ne](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/countperms-filter-ne.md) | 246 | `result-track:86f409d3ef31922002c88322dd9d4c5283038cb2e3c8cdca5df91d99bbe75526` |
| 27 | `theorem` | [countPerms_zero](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/countperms-zero.md) | 258 | `result-track:1313eb36694277666cfe3a32c81bf9c2b7d56e89a49971d15961d6d0b44a0012` |
| 28 | `lemma` | [sum_pow_eq_sum_piAntidiag_of_commute](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/sum-pow-eq-sum-piantidiag-of-commute.md) | 278 | `result-track:e96960b6c9febccb0cdd9aed8a58edfd196e343c3140293b710702bea40b5bd5` |
| 29 | `theorem` | [sum_pow_of_commute](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/sum-pow-of-commute.md) | 318 | `result-track:386acd60dfeb42de2bac9d134ef36109fb1adb8d0233a013bc94683ec1cd9edc` |
| 30 | `lemma` | [sum_pow_eq_sum_piAntidiag](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/sum-pow-eq-sum-piantidiag.md) | 358 | `result-track:faed4b3e15d84c1f9b7943a021dac786620609ecebfe1182aa22932419ce557b` |
| 31 | `theorem` | [sum_pow](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/sum-pow.md) | 363 | `result-track:6c50f643da553aefb1fe285c79d73a4be2f349dc48ef3796a248d7bab3515aa3` |
| 32 | `lemma` | [multinomial_two_mul_le_mul_multinomial](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-two-mul-le-mul-multinomial.md) | 375 | `result-track:6d0bf2dd0a8de396e1469952582e0e2c66b90a1bc49f609c9acc562703c092c1` |
| 33 | `theorem` | [countPerms_coe_fill_of_notMem](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/countperms-coe-fill-of-notmem.md) | 398 | `result-track:fce9fff0e20c5eaded3b2339a0c015d7e3d407542cb757d31969a21fd720202d` |
| 34 | `theorem` | [Finsupp.multinomial_of_support_subset](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/finsupp-multinomial-of-support-subset.md) | 414 | `result-track:32b4bebd6665187ece99a07a5de1f9c0d97f217b2be980629473a584374cc2d5` |
| 35 | `lemma` | [toFinsupp_sum](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/tofinsupp-sum.md) | 423 | `result-track:72caab46ca6db33b19896aafc5dde54346f14a5fb5819cb14ba658973f20ea0f` |
| 36 | `abbrev` | [multinomial](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-source-edition-4.md) | 435 | `declaration-track:dad32f8cc77ab19d945a9ab296908e95bb582e57753da6b144ee1c8a063d9e01` |
| 37 | `theorem` | [multinomial_cons](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-cons.md) | 437 | `result-track:3e1d30e15a2212b651c0e5c547846d92757e1678113e491a9d58fd785c07816c` |
| 38 | `def` | [multinomial](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial.md) | 462 | `declaration-track:256a2f17fd75b2ae9b39efac7816340c7e8ddf0b0cba42bf9d80ca7f0cfd3c6c` |
| 39 | `theorem` | [multinomial_cons](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-cons-source-edition-2.md) | 473 | `result-track:62dc88f5205bed124b354fc2ff8094e7b7902e09be0ceda2267b3283af343280` |
| 40 | `theorem` | [multinomial_zero](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-zero.md) | 479 | `result-track:1258abf99c4c466c11e5bc374e7705f63ebe0860518b4e7409fd010a0d4717cf` |
| 41 | `theorem` | [multinomial_singleton](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-singleton-source-edition-2.md) | 482 | `result-track:7638d4c5d0729a5943d431ea0b78eb647651d6e2299f6048ec7e689ce50582fc` |
| 42 | `theorem` | [multinomial_add](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-add.md) | 486 | `result-track:6c2a088fb361a8545c9bfe95559e7a0c1202589ab326703d9f03dce8a3629166` |
| 43 | `theorem` | [multinomial_nsmul](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-nsmul.md) | 497 | `result-track:df92e702d328f12416bb9aeb9a003ffcdc622196736c9db3964c0be56165cfb5` |
| 44 | `theorem` | [multinomial_nsmul_singleton](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-nsmul-singleton.md) | 507 | `result-track:70991d2c3dd92f70bef1086f5001a649e68c67b3ff1d9f70bc34960c609fd58c` |
| 45 | `theorem` | [multinomial_pos](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/multinomial-pos-source-edition-2.md) | 511 | `result-track:e6b6e28fe3f90ea22d83a57816848e962cceacd7509d0cfa385d2b6c8d9f541f` |
| 46 | `def` | [evalMultinomial](../../../../../NumberTheory/ElementaryNumberTheory/MultinomialNamespacedPublic.lean/declarations/evalmultinomial.md) | 525 | `declaration-track:88355b18795736cbb8dc016c80ce5347a56be4991e357b446cf8e574f5708aab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3cad332400e57a1ec96d262f3dbb924aa566409d941f1ca25a88950e59adbe83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant71462ce6b6601ee6637619fd1badeea1283ae446e93790f1f71604f12a1cccb8.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant71462ce6b6601ee6637619fd1badeea1283ae446e93790f1f71604f12a1cccb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
