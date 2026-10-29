# Verification target: Consequences Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6718a5b2b25e4753f41d1454de228202f3cb531e",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6718a5b2b25e4753f41d1454de228202f3cb531e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Wiener` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Set.Ico_subset_Ico_of_Icc_subset_Icc](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/set-ico-subset-ico-of-icc-subset-icc.md) | 24 | `result-track:492c3b3322fadd2da184e195a7e57fe434420a52ac25b28ce64c8b261eeb1bf2` |
| 2 | `lemma` | [th43_b](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/th43-b.md) | 40 | `result-track:e4bde850fa2f8caa70317014bcde80f342fb048e1ba189106e1f799a363222c9` |
| 3 | `lemma` | [finsum_range_eq_sum_range](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/finsum-range-eq-sum-range.md) | 56 | `result-track:302f392b8d60aec95065d748281260e233fc9556433785d2131009e6f86d38fa` |
| 4 | `lemma` | [finsum_range_eq_sum_range'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/finsum-range-eq-sum-range-source-edition-2.md) | 63 | `result-track:6750cb8a1253467a9dc337c1ca5aa540805a5105ced36aa871b686b000ffdd2e` |
| 5 | `lemma` | [log2_pos](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/log2-pos.md) | 72 | `result-track:3747ced3f1976041a36a1d670a7021d3a40f550455f8e2c4076b0457744f0cb0` |
| 6 | `theorem` | [Asymptotics.IsEquivalent.add_isLittleO'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/asymptotics-isequivalent-add-islittleo.md) | 78 | `result-track:47e457b84d092741af64f96ed037411a941966d309ca2825e20b02d1222c83db` |
| 7 | `theorem` | [Asymptotics.IsEquivalent.add_isLittleO''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/asymptotics-isequivalent-add-islittleo-source-edition-2.md) | 86 | `result-track:503e34a4b030df0031a1adeb1fa7000a308ae2ba08092abd575eb434f773412a` |
| 8 | `theorem` | [WeakPNT'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/weakpnt-source-edition-2.md) | 93 | `result-track:fa5dc9cee2714e15883cc9104f8e5d588b6be94c10183e07c67b481ab962e720` |
| 9 | `theorem` | [WeakPNT''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/weakpnt.md) | 113 | `result-track:6e61497ef1127c6c816623c6eda99a95b3aab092dca197c2b39ada87f32646e7` |
| 10 | `lemma` | [isLittleO_sqrt_mul_log](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/islittleo-sqrt-mul-log.md) | 140 | `result-track:f7a76644b2e183cdbe323c67916f9436ec58ab66535c9530662825feed433a97` |
| 11 | `lemma` | [tendsto_floor_add_one_div_self](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/tendsto-floor-add-one-div-self.md) | 149 | `result-track:96eeb49bc2a7f454bc0614bd85ef78a6a40cc6d1d3e9c88259a00402d9565fdb` |
| 12 | `lemma` | [isTheta_self_div_const](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/istheta-self-div-const.md) | 157 | `result-track:d9e29bf10546fa552544d8050338b52e42baea0c83cfad023ae6cd96f655d0e5` |
| 13 | `lemma` | [filter_prime_Iic_eq_Icc](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/filter-prime-iic-eq-icc.md) | 162 | `result-track:dcf8b11645e165ce1ffabf5e6a90619cb489d6c159ad8f5e5ebb4e0b3d07f474` |
| 14 | `lemma` | [Icc_zero_eq_insert](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/icc-zero-eq-insert.md) | 167 | `result-track:c89467e88b042d6c0ac9fb6998b83e419fe0c973eb26dd97529523eb9fdd3272` |
| 15 | `theorem` | [chebyshev_asymptotic](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/chebyshev-asymptotic-source-edition-2.md) | 185 | `result-track:7d7f7ccde3fea2a36089535fe2b470b612a87ce81f5418b0da54f60e735db5cf` |
| 16 | `theorem` | [chebyshev_asymptotic_finsum](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/chebyshev-asymptotic-finsum.md) | 195 | `result-track:e19bf4cab492dc6796f7f62a1d4476fba721e3e39140f5537e9bc6ebca10e32d` |
| 17 | `theorem` | [chebyshev_asymptotic'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/chebyshev-asymptotic.md) | 225 | `result-track:5c4e782ee4687abec6694c765a0477aea4cf05f1c0a1880b6c17c74e50e37549` |
| 18 | `theorem` | [chebyshev_asymptotic''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/chebyshev-asymptotic-source-edition-3.md) | 255 | `result-track:cfd1b1661f3c5d50a1862497bea4dfb50c1738359df43d7a350eae0f023364ed` |
| 19 | `theorem` | [primorial_bounds](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/primorial-bounds.md) | 294 | `result-track:280ddb7d25a8cab9474f793096b757e3bf99595302ae6989e3585b2459d82e97` |
| 20 | `theorem` | [primorial_bounds_finprod](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/primorial-bounds-finprod.md) | 309 | `result-track:163a64b6edb106e80df5dcebd8ab2b9bb05f15948835cd942ca520e667069242` |
| 21 | `lemma` | [continuousOn_log0](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/continuouson-log0.md) | 330 | `result-track:9c8970c419330c1f89686060d060f3ffdab4e28e67daba824769c4fa2051db0b` |
| 22 | `lemma` | [continuousOn_log1](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/continuouson-log1.md) | 335 | `result-track:228ce7dd266be7a4e6c244f8f3381d6b6cd3860b314ab1c8bd44c634051e9bc0` |
| 23 | `lemma` | [integral_log_inv](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/integral-log-inv-source-edition-2.md) | 339 | `result-track:3348c29b9cadd325381e4131d891800a8395d7929d5a630e0a0627e9981147dd` |
| 24 | `lemma` | [integral_log_inv'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/integral-log-inv.md) | 391 | `result-track:21f0f65b0b6fb14e75948299840ff0496912a2ff3f7aab1daccb32579c9dffee` |
| 25 | `lemma` | [integral_log_inv''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/integral-log-inv-source-edition-3.md) | 401 | `result-track:567cec8d1be57cc7bfc235b630b740f4bcaaa273f8dcaaa8c0109417ba304e5a` |
| 26 | `lemma` | [integral_log_inv_pos](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/integral-log-inv-pos.md) | 407 | `result-track:72403e656a381580af16a2dd160b6662f09e1f70a4b319cdb54aa7607e3e2467` |
| 27 | `lemma` | [integral_log_inv_ne_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/integral-log-inv-ne-zero.md) | 429 | `result-track:200aacb6b9a8ff5198cdf5c188dac9faa5a3abe9edfbe7a5b7ed73dcea62b3b9` |
| 28 | `lemma` | [pi_asymp_aux](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/pi-asymp-aux.md) | 434 | `result-track:911d9723e45cd302300cef52a9c830134118944fd242ec1c242a28cf3adb4e5e` |
| 29 | `theorem` | [pi_asymp''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/pi-asymp-source-edition-2.md) | 440 | `result-track:f1346fcff258369e612f0ed13e7ce69cababe6920bdaaf44a187de7fcbaa51d7` |
| 30 | `theorem` | [pi_asymp](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/pi-asymp.md) | 795 | `result-track:0e42debd814c80f859e640638a86f5086f43dbf4871ec0598926d5c426efeadb` |
| 31 | `lemma` | [inv_div_log_asy](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/inv-div-log-asy.md) | 805 | `result-track:67f59861837ba05bb02676b31282d793acabe662f73605f95682a5cf19fbeded` |
| 32 | `lemma` | [integral_log_inv_pialt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/integral-log-inv-pialt.md) | 817 | `result-track:55d0ac1df137da568a755f8ced10fedd1d978835b9cd61a5c277434ed4af5786` |
| 33 | `lemma` | [integral_div_log_asymptotic](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/integral-div-log-asymptotic.md) | 827 | `result-track:d6acf4f2d723643173b1323cc78f4b41603db0f1c7ec4d5fcf56eb30a8e0e248` |
| 34 | `theorem` | [pi_alt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/pi-alt.md) | 883 | `result-track:509776aa68f99d807614ef4d288751cb39903929dcf92190d914c8ad48e69ebc` |
| 35 | `theorem` | [pi_alt'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/pi-alt-source-edition-2.md) | 909 | `result-track:a477fa654d327098242f1c4c3623c3a03c6ec226a980133b1cc6ca1a307e1ebe` |
| 36 | `lemma` | [pi_nth_prime](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/pi-nth-prime.md) | 924 | `result-track:f974809c54a988de0aacfdbc41dcb3e31bc73d3c66b6aad796ad0d427b5c8b80` |
| 37 | `lemma` | [tendsto_nth_prime_atTop](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/tendsto-nth-prime-attop.md) | 928 | `result-track:7c2f631adb3feba57f6b7eef9e94782d742dbddef64f51caf7b255fc0b4433e3` |
| 38 | `lemma` | [pi_nth_prime_asymp](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/pi-nth-prime-asymp.md) | 931 | `result-track:aec39ecbfcdd10e49d4e153f248928fcc04d2b2f80b8f1f6d512d2a593a06619` |
| 39 | `lemma` | [log_nth_prime_asymp](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/log-nth-prime-asymp.md) | 943 | `result-track:f2ed5f9cc9b29fef100969337d486cdc0c9e3b6e84d9292edfa0ad2f3f5bfb89` |
| 40 | `lemma` | [nth_prime_asymp](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/nth-prime-asymp.md) | 960 | `result-track:c868a8b4ebaf619cee4153e5b7e4f9c0605c40771bf5b88010447b5dbfee16f5` |
| 41 | `theorem` | [pn_asymptotic](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/pn-asymptotic.md) | 983 | `result-track:0e3115a0e6119042d44175ea7ad666800e43265fbb13fe59eafa269d6b62e1c2` |
| 42 | `theorem` | [pn_pn_plus_one](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/pn-pn-plus-one.md) | 1014 | `result-track:c0997f2bc85711ef8d76d09fd0757c261b1d450ff39a2dbe78bca3747413ed76` |
| 43 | `lemma` | [prime_in_gap'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/prime-in-gap-source-edition-2.md) | 1184 | `result-track:b200ab4d70a550db151b93feac70cdd9f6975f075b32d0d6a7fc44154ff9cdc9` |
| 44 | `lemma` | [prime_in_gap](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/prime-in-gap.md) | 1189 | `result-track:323b0737c8f3113d511317f4544b7ccdf81d215068eee3db4ebf09e630f6dd31` |
| 45 | `lemma` | [bound_f_second_term](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/bound-f-second-term.md) | 1208 | `result-track:996235f7ad29cfedcc6252298ee37c54b5ab3525a3cbf2a5d1aa02388c8e71a6` |
| 46 | `lemma` | [bound_f_first_term](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/bound-f-first-term.md) | 1238 | `result-track:61fb1d20b74c699690552c9565082450f06244856d2c70dbd138d8a5c392d6d1` |
| 47 | `lemma` | [smaller_terms](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/smaller-terms.md) | 1284 | `result-track:2b571e6e3e425f82e95c4dda86dce0a436d2ecf5ba9e6e9b0286347922837951` |
| 48 | `lemma` | [second_smaller_terms](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/second-smaller-terms.md) | 1313 | `result-track:bcbb69b3baa43952efd52c9703a614732ac71a29efbecab432793c0186bf9ea1` |
| 49 | `lemma` | [x_log_x_atTop](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/x-log-x-attop.md) | 1342 | `result-track:154548b324b479d96e9561d9206aa3ccff340118e41a129db8f20d62b4bdff26` |
| 50 | `lemma` | [tendsto_by_squeeze](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/tendsto-by-squeeze.md) | 1361 | `result-track:be76c2ef81e42edbc09ce79a2f71fa7d7037a416b0523d989621f18f4f2d6e51` |
| 51 | `theorem` | [prime_between](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/prime-between.md) | 1563 | `result-track:6541195978991514d430ba37763a6018dee085edf572940c51c4623b82556a44` |
| 52 | `theorem` | [sum_mobius_div_self_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/sum-mobius-div-self-le.md) | 1598 | `result-track:7e2823ff20febe7def7fea021fd8457bc64fb7728dec3eb8d61955a07c1d04b9` |
| 53 | `lemma` | [sum_mobius_mul_floor](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/sum-mobius-mul-floor.md) | 1657 | `result-track:121c7285d8ea5d1d5e086d66f259c8b0e163d2352a857e07df9ba4802b14e780` |
| 54 | `def` | [mu_log](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/mu-log.md) | 1672 | `declaration-track:33f8b639a2656f9590600c700b77bec0212f85eeb62a7faa6fc5dbcc77ed867d` |
| 55 | `lemma` | [mu_log_apply](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/mu-log-apply.md) | 1675 | `result-track:ad3bc5ea8e3f048e80fd3ba0380c28322cede57fce699d1c53f0841f8048afce` |
| 56 | `lemma` | [mu_log_mul_zeta](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/mu-log-mul-zeta.md) | 1678 | `result-track:f1c5e4d4bc24e88088196667b5a0d61764651ca1a873028142023c3d938b41d4` |
| 57 | `lemma` | [mu_log_eq_mu_mul_neg_lambda](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/mu-log-eq-mu-mul-neg-lambda.md) | 1685 | `result-track:228f3d42a34d02ec07a5089115e929b81a4b0bfaca4f80729efb23e38dafb5ab` |
| 58 | `lemma` | [sum_mu_Lambda](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/sum-mu-lambda.md) | 1688 | `result-track:e9293b40c866559767a6124aa1d0fdd28da4abc44c0f39a7bff6e3b0d7492b3b` |
| 59 | `lemma` | [M_log_identity](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/m-log-identity.md) | 1703 | `result-track:465219b755db07b59cd5326131cb7c05f6c1abddafb1fea993fbf1ce93fe3995` |
| 60 | `def` | [R](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/r.md) | 1731 | `declaration-track:f15f2095e815db71fc1a7fb6ac323ad2a87bb5309661ab30d1ea95ff8f6f94e5` |
| 61 | `lemma` | [R_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/r-islittleo.md) | 1733 | `result-track:810a909581acc548be51c347dbe24dfb86b78c6e1ceed83372467611049c1113` |
| 62 | `lemma` | [sum_mobius_div_isBigO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/sum-mobius-div-isbigo.md) | 1740 | `result-track:da209c84df00a5ba20fafcea615801337e34619fad9160f087c6a280b292efd8` |
| 63 | `lemma` | [sum_log_div_isBigO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/sum-log-div-isbigo.md) | 1751 | `result-track:7b9cffd12b3f057523115d8a3b6e6cd4a258be176398c03d7f5bc5703efc7dae` |
| 64 | `lemma` | [R_locally_bounded](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/r-locally-bounded.md) | 1773 | `result-track:b8775f5f9a30a9f3fb826dd345af4a9068ed242690e7bf08434ddf543f09f6b4` |
| 65 | `lemma` | [sum_bounded_of_linear_bound](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/sum-bounded-of-linear-bound.md) | 1790 | `result-track:d6392a62f2d20b11b96e16afbe96655bf3a09d3d21f3cafd3923abe5c58b7976` |
| 66 | `lemma` | [sum_abs_R_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/sum-abs-r-islittleo-source-edition-2.md) | 1816 | `result-track:45c4896f808d2b0237d2cac698c17f84cb9413358473e6acbe2644e49e0d157d` |
| 67 | `lemma` | [R_linear_bound](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/r-linear-bound.md) | 1856 | `result-track:b1e2bb4fea3e907df35923b5a8907171b78d5d61421762f1401f456c8231b1d3` |
| 68 | `lemma` | [sum_abs_R_isLittleO'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/sum-abs-r-islittleo.md) | 1864 | `result-track:2b3ebb4acde5bea92ca2a1d4b20488f84945e359d8c7ac69d0db2e5b2a17491e` |
| 69 | `lemma` | [M_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/m-islittleo-source-edition-2.md) | 1867 | `result-track:c93e4c0e2fe029394a1616c89dc355056e40b1f0dc5299dcc98c6c1f1f0971b6` |
| 70 | `lemma` | [M_isLittleO'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/m-islittleo.md) | 1929 | `result-track:8cc7883f96c93878ffe16cc69af2a39a19cd8b6c73c9a3d79d6feb2c2cc05d51` |
| 71 | `theorem` | [mu_pnt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/mu-pnt.md) | 1963 | `result-track:0d29567c50c98534b83d57714785bfd87d4f5899728359acc9f9c79aec953d8b` |
| 72 | `lemma` | [lambda_eq_sum_sq_dvd_mu](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/lambda-eq-sum-sq-dvd-mu.md) | 1983 | `result-track:b5cab417dd2ae1330a0c92c7dac3f457083b5c5fc2729a4447f6bd605b37c5e2` |
| 73 | `lemma` | [sum_lambda_eq_sum_mu_div_sq](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/sum-lambda-eq-sum-mu-div-sq.md) | 2095 | `result-track:06085821069b735a2bfd59306383c61fbe5a3d448e68a61c89776a3fb598fd06` |
| 74 | `lemma` | [sum_mu_div_sq_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/sum-mu-div-sq-islittleo.md) | 2132 | `result-track:ca5d08cd1561c279acdc88ee16fbf157069641a4e959b033678b0224373ef999` |
| 75 | `theorem` | [lambda_pnt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/lambda-pnt.md) | 2216 | `result-track:0364b0f6df69538c8ac28de578c5213a399989cd825287d6917f2edfe3d8ba8b` |
| 76 | `lemma` | [sum_mobius_floor](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/sum-mobius-floor.md) | 2253 | `result-track:e7411b553a27ef6aa180fbfecf3defa029eb3f2061922a508ae4c2bad384a513` |
| 77 | `lemma` | [sum_mobius_floor_tail_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/sum-mobius-floor-tail-islittleo.md) | 2263 | `result-track:b4af0645dd061d0bef4a5fbf02119e2ccf435ad94e51ed8bcf3f900210cad0d1` |
| 78 | `lemma` | [sum_mobius_div_approx](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/sum-mobius-div-approx.md) | 2354 | `result-track:966d27a83a955fb8fee44600ba95f934dba1c92033d21a523854c623c2afcbd3` |
| 79 | `theorem` | [mu_pnt_alt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/mu-pnt-alt.md) | 2400 | `result-track:e388a6613e8c62b0c01391528824a2b509d64a23df40087038fc99a4ef07b421` |
| 80 | `theorem` | [chebyshev_asymptotic_pnt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/chebyshev-asymptotic-pnt.md) | 2450 | `result-track:0bfdc7f22f9552a7004d6b08ea6748fa8c0bebaa33b5fcd3ea909f675f7f15cb` |
| 81 | `theorem` | [dirichlet_thm](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition1.lean/declarations/dirichlet-thm.md) | 2525 | `result-track:c34e0785ba40defd62148962fb4a163d22fb84a6216150a51aaaaa74731571fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aedd752b1fe616b8fde3bcae1ec2a1458e800cd41b799a18719279bc66cb8fa7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
