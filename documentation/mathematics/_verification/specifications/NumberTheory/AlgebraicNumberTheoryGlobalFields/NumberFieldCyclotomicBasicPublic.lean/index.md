# Verification target: Number Field Cyclotomic Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f1515299068de52e564fca7761d2e32e313e5d2",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f1515299068de52e564fca7761d2e32e313e5d2`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean.json)

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
| 1 | `theorem` | [finrank](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/finrank.md) | 45 | `result-track:820a772065c6ec2edc8918924a166606dfd393e3aa0216230d3a36e01fc75da6` |
| 2 | `theorem` | [discr_prime_pow_ne_two'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/discr-prime-pow-ne-two.md) | 49 | `result-track:305e8a626c90e91ac3ba0cdf37d8599b6dd0960f76c62b13a5d4929bb1bbc860` |
| 3 | `theorem` | [discr_odd_prime'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/discr-odd-prime.md) | 56 | `result-track:c5a9c4ac80ed231841d52d5557439192e7c69287545cd1cd73838ae31da1053a` |
| 4 | `theorem` | [discr_prime_pow'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/discr-prime-pow.md) | 64 | `result-track:4ed315294742475c9468fc881254e7b36a66e504305fa5f0aefb74b6effaa86b` |
| 5 | `theorem` | [discr_prime_pow_eq_unit_mul_pow'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/discr-prime-pow-eq-unit-mul-pow.md) | 73 | `result-track:19a24cb5c2b3ba4aad0155ac5f8422160b070db4610f03a37877e48bda7095c8` |
| 6 | `theorem` | [isIntegralClosure_adjoin_singleton_of_prime_pow](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/isintegralclosure-adjoin-singleton-of-prime-pow.md) | 81 | `result-track:8ad83824bf163f2c28bb670d896e5d4ae14b068ecf091184d219f468b1e86ce9` |
| 7 | `theorem` | [isIntegralClosure_adjoin_singleton_of_prime](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/isintegralclosure-adjoin-singleton-of-prime.md) | 126 | `result-track:58040299312641bdd44b1a333ad882c01757622091d97cb75fb4430def940728` |
| 8 | `theorem` | [cyclotomicRing_isIntegralClosure_of_prime_pow](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/cyclotomicring-isintegralclosure-of-prime-pow.md) | 134 | `result-track:d771425b47e4b2e6b153b7ff25d8898bb3fc01febc783471b25278121077b573` |
| 9 | `theorem` | [cyclotomicRing_isIntegralClosure_of_prime](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/cyclotomicring-isintegralclosure-of-prime.md) | 145 | `result-track:3f6f1a619c3e69f66f57aac2bc34e194a5035a5d78c650a051bf26c5b63eb003` |
| 10 | `def` | [_root_.IsPrimitiveRoot.adjoinEquivRingOfIntegersOfPrimePow](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/root-isprimitiveroot-adjoinequivringofintegersofprimepow.md) | 165 | `declaration-track:1f4cfd0bb9e3e3e93126e0a941c550158e525d457c5422dc4c070c38a768674c` |
| 11 | `instance` | [IsCyclotomicExtension.ringOfIntegersOfPrimePow](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/iscyclotomicextension-ringofintegersofprimepow.md) | 172 | `declaration-track:40abc1a520b771a325aef46cd315a128689859bcdde40dc60f9a22f77c11bf7c` |
| 12 | `def` | [integralPowerBasisOfPrimePow](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/integralpowerbasisofprimepow.md) | 179 | `declaration-track:5baa7853aab3f1c059c272b2e62f1636970720e3bf7aab7efe450148ef8303d8` |
| 13 | `abbrev` | [toInteger](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/tointeger.md) | 185 | `declaration-track:e3a28786653aca239d4d1039f3fa936da0807c5fdfc314c519cbd8965e6dde5a` |
| 14 | `lemma` | [coe_toInteger](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/coe-tointeger.md) | 190 | `result-track:264295e9ca829d5079bbd07030a09536f5e026aa3c1964eb8b3e309912e1f0d9` |
| 15 | `lemma` | [toInteger_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/tointeger-coe.md) | 193 | `result-track:09af5fc348dbca716fd83bd5f3b3cb2f5d7e1bec6638a2f9511d9480b4e3f57b` |
| 16 | `lemma` | [finite_quotient_toInteger_sub_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/finite-quotient-tointeger-sub-one.md) | 197 | `result-track:6d97ba2dfbdad16769ddbb6f80309306406ab2c77d93c03c96be085a63df78e2` |
| 17 | `lemma` | [card_quotient_toInteger_sub_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/card-quotient-tointeger-sub-one.md) | 208 | `result-track:e6e25da21fc69221362b2bd64551bdbca0f0398b5d55250120c82dba72738891` |
| 18 | `lemma` | [toInteger_isPrimitiveRoot](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/tointeger-isprimitiveroot.md) | 214 | `result-track:b81283d62b7e48e3176114cbde7a48bf1396ecb7d940e9d8489d1691d02482f1` |
| 19 | `theorem` | [integralPowerBasisOfPrimePow_gen](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/integralpowerbasisofprimepow-gen.md) | 221 | `result-track:ffdf896b77c1e2972adbedb45b25b0369765c51a10d841eb26d118252e7d76eb` |
| 20 | `theorem` | [integralPowerBasisOfPrimePow_dim](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/integralpowerbasisofprimepow-dim.md) | 231 | `result-track:ce24b290dc693d0fb71cd4dc22d723c0cddba5af49837ad03c7a6cb2a67dceb5` |
| 21 | `def` | [subOneIntegralPowerBasisOfPrimePow](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/suboneintegralpowerbasisofprimepow.md) | 239 | `declaration-track:775c5b784d1f8ad0f59f8aa19883b9d6a1d1667a7c5b4969d6d51781062225c1` |
| 22 | `theorem` | [subOneIntegralPowerBasisOfPrimePow_gen](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/suboneintegralpowerbasisofprimepow-gen.md) | 249 | `result-track:0c7931a986c43891d77ee19fc666f1e570e69f39340c39b26bc80c579a144534` |
| 23 | `theorem` | [zeta_sub_one_prime_of_ne_two](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/zeta-sub-one-prime-of-ne-two.md) | 258 | `result-track:fa689c43e8df036aa86a7925ef63d2d6eb18cde0ffb29645ec16afb99205fa12` |
| 24 | `theorem` | [zeta_sub_one_prime_of_two_pow](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/zeta-sub-one-prime-of-two-pow.md) | 277 | `result-track:404e4f01492e8a6f5a674aa8146b604841b41cb9e0aa610c6000334d5431f0d6` |
| 25 | `theorem` | [zeta_sub_one_prime](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/zeta-sub-one-prime.md) | 302 | `result-track:4d1d04a44c4c647afc454fed1c0d26d4b8a1c0c68a5edfb7ff3e1d6baa7ba5db` |
| 26 | `theorem` | [zeta_sub_one_prime'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/zeta-sub-one-prime-source-edition-2.md) | 310 | `result-track:d661ab8781ab828d3e7bf656818532b1b2457669a31a95298d6b5973c1bfc331` |
| 27 | `theorem` | [subOneIntegralPowerBasisOfPrimePow_gen_prime](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/suboneintegralpowerbasisofprimepow-gen-prime.md) | 315 | `result-track:69f71eb844d2543e03abd3db482dc35315726c53e316315fdfe26828e21e547a` |
| 28 | `theorem` | [norm_toInteger_sub_one_eq_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/norm-tointeger-sub-one-eq-one.md) | 325 | `result-track:347b256363e811085f704d07fc3edcd6074e95c69518f92cd3f3a45dfcff5123` |
| 29 | `lemma` | [norm_toInteger_pow_sub_one_of_prime_pow_ne_two](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/norm-tointeger-pow-sub-one-of-prime-pow-ne-two.md) | 339 | `result-track:27f3b29374f0782dceade4416598275bddbb299329ad296383cdb1e60fb767f8` |
| 30 | `lemma` | [norm_toInteger_pow_sub_one_of_two](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/norm-tointeger-pow-sub-one-of-two.md) | 349 | `result-track:e421350f817f37d253bbb38482970d3b633ce400a0b1251720563da12ca4df66` |
| 31 | `lemma` | [norm_toInteger_pow_sub_one_of_prime_ne_two](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/norm-tointeger-pow-sub-one-of-prime-ne-two.md) | 358 | `result-track:92bad2894a426bb6fd3652b6234fa3a7207520339512cc21df02c2f6ce6d0d2d` |
| 32 | `theorem` | [norm_toInteger_sub_one_of_eq_two_pow](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/norm-tointeger-sub-one-of-eq-two-pow.md) | 369 | `result-track:fc2ffacdad65dcd7c871cc5fc57f57e75a81ae56dc21361e23b72c195e5ecb25` |
| 33 | `lemma` | [norm_toInteger_sub_one_of_prime_ne_two](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/norm-tointeger-sub-one-of-prime-ne-two.md) | 380 | `result-track:2fbef854566f944887b32c1dab078fcb644ecb5b3dd45eda32a22607dcc2ca93` |
| 34 | `theorem` | [norm_toInteger_sub_one_of_eq_two](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/norm-tointeger-sub-one-of-eq-two.md) | 389 | `result-track:b997c11e4841efc93e23a178326ea2b81006fa63a7b9d85617e15ba63d5e72cb` |
| 35 | `lemma` | [norm_toInteger_sub_one_of_prime_ne_two'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/norm-tointeger-sub-one-of-prime-ne-two-source-edition-2.md) | 397 | `result-track:36869851f51bf61d56a79b01badc1301e66424471617d4ed6a9d68759e3cac60` |
| 36 | `lemma` | [prime_norm_toInteger_sub_one_of_prime_pow_ne_two](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/prime-norm-tointeger-sub-one-of-prime-pow-ne-two.md) | 405 | `result-track:6acc92f155be1c116a12ec8741405f9b3fa5794f45bc64338899e0fa7a85185e` |
| 37 | `lemma` | [prime_norm_toInteger_sub_one_of_prime_ne_two](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/prime-norm-tointeger-sub-one-of-prime-ne-two.md) | 415 | `result-track:b58705150ebccf892488b3ef5babee8e5dc13093dfb3fc47751f817548f44271` |
| 38 | `lemma` | [prime_norm_toInteger_sub_one_of_prime_ne_two'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/prime-norm-tointeger-sub-one-of-prime-ne-two-source-edition-2.md) | 424 | `result-track:bbe1977c9be1dcbc10c5d8d0c42068820a5a058858b8e26f88764f7eba8b23b7` |
| 39 | `theorem` | [not_exists_int_prime_dvd_sub_of_prime_pow_ne_two](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/not-exists-int-prime-dvd-sub-of-prime-pow-ne-two.md) | 433 | `result-track:0032feea25bfba8861fe631386065ca0374eca0dad9a172b40ca47dffff3b093` |
| 40 | `theorem` | [not_exists_int_prime_dvd_sub_of_prime_ne_two](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/not-exists-int-prime-dvd-sub-of-prime-ne-two-source-edition-2.md) | 471 | `result-track:95bb1ab75ab8123d79c8e5fac264256dcbd5f3c03a6af9bf019620332dc8aed9` |
| 41 | `theorem` | [not_exists_int_prime_dvd_sub_of_prime_ne_two'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/not-exists-int-prime-dvd-sub-of-prime-ne-two.md) | 481 | `result-track:65bcd7ace54d90d24d4ffa73bbffbe1b93db7e867cdfef29c672559faf533b8a` |
| 42 | `theorem` | [finite_quotient_span_sub_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/finite-quotient-span-sub-one.md) | 489 | `result-track:a1a5d97d9771afb1e984730fcb9b7ada7b7dbf1a84da9e04e152d2bc8fc3f5ea` |
| 43 | `theorem` | [finite_quotient_span_sub_one'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/finite-quotient-span-sub-one-source-edition-2.md) | 498 | `result-track:c6e5a7d7ebc8c32e3916ba00ace222fd94aab81129238bf46686660f470521d9` |
| 44 | `lemma` | [toInteger_sub_one_dvd_prime](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/tointeger-sub-one-dvd-prime.md) | 507 | `result-track:1ba0bb90284ac39be6ffddadff96a49e48fc61b4bb47c0d829044d90ed4d97a4` |
| 45 | `lemma` | [toInteger_sub_one_dvd_prime'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/tointeger-sub-one-dvd-prime-source-edition-2.md) | 529 | `result-track:39b6dc171051d7cbbe8ebbb35f914fff18c17ee3f4ac8df4ffa5d73d8846f36b` |
| 46 | `lemma` | [toInteger_sub_one_not_dvd_two](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/tointeger-sub-one-not-dvd-two.md) | 536 | `result-track:396365aa141cef1fcbac0f5f364df18ace42139022740c72854a0d376be54c58` |
| 47 | `theorem` | [prime_dvd_of_dvd_norm_sub_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/prime-dvd-of-dvd-norm-sub-one.md) | 554 | `result-track:c335f4e0ab96e4468efaeaa3c058f35e94195375a93bbf34d05a0d5a6ac46e48` |
| 48 | `theorem` | [discr_prime_pow](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/discr-prime-pow-source-edition-2.md) | 619 | `result-track:f01d53e57f29fef82b07be34e840f8040545a04c262a3196895e7fe2973408f5` |
| 49 | `theorem` | [discr_prime_pow_succ](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/discr-prime-pow-succ.md) | 644 | `result-track:8eff52a83dea7005075058ecc1b21083faff8836b3af8f7c59413e3f672e4105` |
| 50 | `theorem` | [discr_prime](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/discr-prime.md) | 651 | `result-track:bc57b6c202abdea8c4cf791344e010fbd23d709adf340a1aa1302fa19e5cf723` |
| 51 | `theorem` | [discr](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/discr.md) | 666 | `result-track:9c8f5fc5f451efde048424556e319b686414120432a8f1628f0d026df3ffb1f3` |
| 52 | `theorem` | [natAbs_discr](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/natabs-discr.md) | 727 | `result-track:67e0d2fd2e73d542fd9dc63af0b16e143ad8b05f23a62ec2c95d565d70bff858` |
| 53 | `theorem` | [adjoin_singleton_eq_top_aux](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/adjoin-singleton-eq-top-aux.md) | 737 | `result-track:11e31ba7257f7415b481eea86cc5e4fb74cfb3a04d52b9811e4b092c1d59c5c5` |
| 54 | `theorem` | [adjoin_singleton_eq_top](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/adjoin-singleton-eq-top.md) | 768 | `result-track:facdc6f36629cc646495109d7eba98b595792d2e1603bd33249b86023b51108d` |
| 55 | `theorem` | [isIntegralClosure_adjoin_singleton](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/isintegralclosure-adjoin-singleton.md) | 801 | `result-track:c2f18ff4eb202e227edcd5ead8006cc01fd442a08854ffe719449b23d8b877ff` |
| 56 | `theorem` | [cyclotomicRing_isIntegralClosure](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/cyclotomicring-isintegralclosure.md) | 817 | `result-track:0fa32a82865130f8a1e7aef4848f67de595b9056bb15540286578de738db0e89` |
| 57 | `def` | [adjoinEquivRingOfIntegers](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/adjoinequivringofintegers.md) | 837 | `declaration-track:8d4cb7bd428c84c8ee17ddb5a89d3b01815f8cc8b87498c6b1e65c8536784eb4` |
| 58 | `instance` | [_root_.IsCyclotomicExtension.ringOfIntegers](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/root-iscyclotomicextension-ringofintegers.md) | 844 | `declaration-track:29a73979c7a9d6dde27cdb42609c08d95f168d401106ca3af45e01ddd107f6e4` |
| 59 | `def` | [integralPowerBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/integralpowerbasis.md) | 851 | `declaration-track:2e43d8162aaf0cc3f933963913a36c0dd672482802e30ec581e755683df1bd16` |
| 60 | `theorem` | [integralPowerBasis_gen](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/integralpowerbasis-gen.md) | 856 | `result-track:750c52a5a99f309e85308a8539ee00ba7c1a3622cffcb025a2831a4a6c9f8051` |
| 61 | `theorem` | [integralPowerBasis_dim](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/integralpowerbasis-dim.md) | 863 | `result-track:c46765140d0e9a2ca5ff3cf69d724030a6a6a1aa35a527962b6ab2f8e7160242` |
| 62 | `def` | [subOneIntegralPowerBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/suboneintegralpowerbasis.md) | 870 | `declaration-track:f3c201d65318784ccc04574bdf734db15a57b9d311245ceaa5800f4b363f91e0` |
| 63 | `theorem` | [subOneIntegralPowerBasis_gen](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/suboneintegralpowerbasis-gen.md) | 880 | `result-track:9463170c0c49204f4e42e494b4eed96739f70188de2d39e0042f2e5a2b0bfa4d` |
| 64 | `theorem` | [NumberField.Units.dvd_torsionOrder_of_isPrimitiveRoot](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/numberfield-units-dvd-torsionorder-of-isprimitiveroot.md) | 896 | `result-track:384435c8e76dbf01ec35b03875ed4a3c1d7a7bc6a00e5d32213d613dfdbb7fc4` |
| 65 | `theorem` | [IsCyclotomicExtension.Rat.torsionOrder_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldCyclotomicBasicPublic.lean/declarations/iscyclotomicextension-rat-torsionorder-eq.md) | 910 | `result-track:f211ce372fcb5b97915ab6082d95557c5bf29f6437795973bacda450ec107925` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba9e6bb9b1aa0dcde7228969cca66a7ed4f391a89eb06cc84a856e0950effba6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
