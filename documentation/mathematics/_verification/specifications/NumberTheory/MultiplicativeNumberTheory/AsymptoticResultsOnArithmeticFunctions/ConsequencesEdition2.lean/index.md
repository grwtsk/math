# Verification target: Consequences Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c61ae2baadd315460b22c4490f0640c924460c1e",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c61ae2baadd315460b22c4490f0640c924460c1e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 2; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Defs` — import line 4; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Wiener` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Set.Ico_subset_Ico_of_Icc_subset_Icc](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/set-ico-subset-ico-of-icc-subset-icc.md) | 16 | `result-track:343e210b82915940bedebe0a5eb31d60d9d198a7e06cf7a3a1a8f98949f145c7` |
| 2 | `lemma` | [th43_b](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/th43-b.md) | 32 | `result-track:f2488040184536e665b745798d396ce30077d6f8409da1d0978c1d5e57215c52` |
| 3 | `lemma` | [finsum_range_eq_sum_range](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/finsum-range-eq-sum-range-source-edition-2.md) | 48 | `result-track:8ae638fa5cab6965aabc6c115b6e198e6730641b9b8b11a036a5a015e88191cc` |
| 4 | `lemma` | [finsum_range_eq_sum_range'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/finsum-range-eq-sum-range.md) | 55 | `result-track:82e45f9c5564a4a2772ba6c25e0a4a17208aaf675f22f5972b91f3185448be37` |
| 5 | `lemma` | [log2_pos](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/log2-pos.md) | 64 | `result-track:0bfa70beb8de59fccc492705a4b00c1382301a7199ad93588464528665ffbb7e` |
| 6 | `theorem` | [Asymptotics.IsEquivalent.add_isLittleO'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/asymptotics-isequivalent-add-islittleo-source-edition-2.md) | 70 | `result-track:b4f696465fb42c752d5814a06d856ba0c61476360fd5937acd2ccf2e591c993a` |
| 7 | `theorem` | [Asymptotics.IsEquivalent.add_isLittleO''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/asymptotics-isequivalent-add-islittleo.md) | 78 | `result-track:98dc1a4e6fc369cc1685234577d645198725aab716de36b25e3932af99e8b4c1` |
| 8 | `theorem` | [WeakPNT'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/weakpnt.md) | 85 | `result-track:198232152bda9ccdce01927e013e8fd6cf69e3a336532ef84d7ef1263421df9e` |
| 9 | `theorem` | [WeakPNT''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/weakpnt-source-edition-2.md) | 105 | `result-track:a1f5a30769fd6f4724c014e90004ede814220fe551fc963e03726d9d2cd0cde9` |
| 10 | `lemma` | [isLittleO_sqrt_mul_log](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/islittleo-sqrt-mul-log.md) | 132 | `result-track:a939b6b48f10b3c7204e9d47d798474b6094343d657ea4a5bb2e457ed8f8c591` |
| 11 | `lemma` | [tendsto_floor_add_one_div_self](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/tendsto-floor-add-one-div-self.md) | 141 | `result-track:14b0ac640f5e6de47bfa4d4acca5540d15b88fda3534e2e25f8eba6c868e4715` |
| 12 | `lemma` | [isTheta_self_div_const](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/istheta-self-div-const.md) | 149 | `result-track:7f26e09a0c11fd098b79bf5dde37f7274f0872395ea8a053ada2511f081f0a11` |
| 13 | `lemma` | [filter_prime_Iic_eq_Icc](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/filter-prime-iic-eq-icc.md) | 154 | `result-track:b6ba1b2a7e7e326f1934fc58d71b4887a69e1566571c3d542712bc6a034ef27c` |
| 14 | `lemma` | [Icc_zero_eq_insert](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/icc-zero-eq-insert.md) | 159 | `result-track:667299699ee006ab99e9a8871a51a0c59e0e5e0a39da5bd5d824c1f6960b0bca` |
| 15 | `theorem` | [chebyshev_asymptotic](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/chebyshev-asymptotic-source-edition-3.md) | 177 | `result-track:51b75f4b93bb16732ab81ea5be297fd0bcf531952c91a84ef383c6745334a768` |
| 16 | `theorem` | [chebyshev_asymptotic_finsum](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/chebyshev-asymptotic-finsum.md) | 187 | `result-track:85cc678eb4ba8bffab28e68a29a462331979839b31ce7111e90ee86ac7d1265a` |
| 17 | `theorem` | [chebyshev_asymptotic'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/chebyshev-asymptotic.md) | 217 | `result-track:14c836e36785c242ca178efbc466567c773bf7bc9f878a0165aa7c95784adb40` |
| 18 | `theorem` | [chebyshev_asymptotic''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/chebyshev-asymptotic-source-edition-2.md) | 247 | `result-track:28c1ef6e329fb742a3c519a8669792c26d0a247586d5150d55df253c361982ba` |
| 19 | `theorem` | [primorial_bounds](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/primorial-bounds.md) | 286 | `result-track:859ba460e4ce5cab9718dd81ffa7fcbb9c74f5dcab7490d3aaea7ce776e39a3b` |
| 20 | `theorem` | [primorial_bounds_finprod](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/primorial-bounds-finprod.md) | 301 | `result-track:a6ad3fc0134af92fea07db8a49120d705520a9d7963fc0e77f4dee219f70d603` |
| 21 | `lemma` | [continuousOn_log0](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/continuouson-log0.md) | 322 | `result-track:b45d70f2b9b1d255cd834768fa68fad1a40338a1a30c9450181af811e8f540ee` |
| 22 | `lemma` | [continuousOn_log1](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/continuouson-log1.md) | 327 | `result-track:def85a292bb66cd6deb5721d5e6ffcaf78efd29edba8f7d608cbee75f2401399` |
| 23 | `lemma` | [integral_log_inv](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/integral-log-inv-source-edition-3.md) | 331 | `result-track:fd7ac270858e04bfbc0def4091ed1d1d08aefdda2fc01982e0097dd8fe90ac9d` |
| 24 | `lemma` | [integral_log_inv'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/integral-log-inv.md) | 383 | `result-track:c6ec27db1b2a564cd05e160019c617355bfcb2fb810aaec4e2c8882f69067f7e` |
| 25 | `lemma` | [integral_log_inv''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/integral-log-inv-source-edition-2.md) | 393 | `result-track:e81bd4d15fd88659acbbd4b8efe8503ffbe5aefcbc1363988cede2680cfd7cf8` |
| 26 | `lemma` | [integral_log_inv_pos](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/integral-log-inv-pos.md) | 399 | `result-track:64d3b02d71f64d0aeba81e62cd7a3ed3581b20519d9497296af30401bd5e9b7d` |
| 27 | `lemma` | [integral_log_inv_ne_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/integral-log-inv-ne-zero.md) | 421 | `result-track:338dfdc116cef5ed64434427b155e6e663e06c00bdac46685a1d16e360c39593` |
| 28 | `lemma` | [pi_asymp_aux](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/pi-asymp-aux.md) | 426 | `result-track:cc5b1ebdc35c76bee79fe684a7081da1b5c761ab86bb3c95d5bb54ecd0961897` |
| 29 | `theorem` | [pi_asymp''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/pi-asymp.md) | 432 | `result-track:418392425f1f70e1d84fbee18583f1b399173fff5feb990fcf84498d8f468879` |
| 30 | `theorem` | [pi_asymp](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/pi-asymp-source-edition-2.md) | 787 | `result-track:f77c1fb2702d94d410aa23fed126e1f7d6889f46249a443ea254deed92f780b4` |
| 31 | `lemma` | [inv_div_log_asy](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/inv-div-log-asy.md) | 797 | `result-track:2a7f8d77155ea4975ea65d6af7296c9eccc6941561a53e5795b9ae25778b39af` |
| 32 | `lemma` | [integral_log_inv_pialt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/integral-log-inv-pialt.md) | 809 | `result-track:28809671df32b37cf5a8b21871547c83a61e409c725128c5ebfd5a143d0bd12d` |
| 33 | `lemma` | [integral_div_log_asymptotic](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/integral-div-log-asymptotic.md) | 819 | `result-track:ed1c1a57acf3bcab2bda462bb9f13816d17e0d3e491b0d335c7bd220a403c61a` |
| 34 | `theorem` | [pi_alt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/pi-alt.md) | 875 | `result-track:016447a669c5e9cd429d0d9d9eb2314fcaab6801db56371bcbfa5c65b5a5719c` |
| 35 | `theorem` | [pi_alt'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/pi-alt-source-edition-2.md) | 901 | `result-track:a1d11994008570eda041865364d358b41ea9bbfa53855f1b024264e705dda7b3` |
| 36 | `lemma` | [pi_nth_prime](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/pi-nth-prime.md) | 916 | `result-track:e5683db46ecfa7939a8e9d640672fec3e32f84ccc03a586a4763d522be55e0a6` |
| 37 | `lemma` | [tendsto_nth_prime_atTop](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/tendsto-nth-prime-attop.md) | 920 | `result-track:88bd95f67a13d5d0a00236e36a2ec1de788f8d0298bf46476878bfa8898e9558` |
| 38 | `lemma` | [pi_nth_prime_asymp](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/pi-nth-prime-asymp.md) | 923 | `result-track:667e2028855441228f2e635133cfb90cfc4ce7bda1ba7dd78bbc435b270b2092` |
| 39 | `lemma` | [log_nth_prime_asymp](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/log-nth-prime-asymp.md) | 935 | `result-track:aee35d9c87d80bc276b3566ccf059bd92152a0f95212c30d0a8c028ae189a25f` |
| 40 | `lemma` | [nth_prime_asymp](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/nth-prime-asymp.md) | 952 | `result-track:8ff36bb64c7ed390ee5607918ae42dd548b6ecc2c84aba5726146bda2ca3a5a7` |
| 41 | `theorem` | [pn_asymptotic](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/pn-asymptotic.md) | 975 | `result-track:a354e4118116a1fec32ac6a9d72fa935adfde184c565bc2626e6ed3f727d363f` |
| 42 | `theorem` | [pn_pn_plus_one](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/pn-pn-plus-one.md) | 1006 | `result-track:5d546acf93dfc8dc327a729dd7b9f1ab9263c94a08c05ab28b79685880c07709` |
| 43 | `lemma` | [prime_in_gap'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/prime-in-gap-source-edition-2.md) | 1176 | `result-track:b1a0a956f4006cd6a2d4f02ec635bd3ee6ae2f1a1c6d98e9ff06eab5d93864fe` |
| 44 | `lemma` | [prime_in_gap](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/prime-in-gap.md) | 1181 | `result-track:2cc2b299152b3336dc26b6c8daee48fcbc2061532da3d3ebd383ebaaa8e6bdb3` |
| 45 | `lemma` | [bound_f_second_term](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/bound-f-second-term.md) | 1200 | `result-track:52a08067c5ad779da9c4e20befee47249783eddacfc8be698539d9b5175bd3a8` |
| 46 | `lemma` | [bound_f_first_term](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/bound-f-first-term.md) | 1230 | `result-track:e4fc16eaaf6e059b359e447ce117fa4bab86ceadca2b817e3617a603bf4ae2c6` |
| 47 | `lemma` | [smaller_terms](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/smaller-terms.md) | 1276 | `result-track:627b4343c5da550506d888fccda14d8e008c4f1662e5455e0874126888218963` |
| 48 | `lemma` | [second_smaller_terms](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/second-smaller-terms.md) | 1305 | `result-track:fc63fb22399c847f01e65c20b436464aa3600639bac030ad10d2dcd9a26b72c6` |
| 49 | `lemma` | [x_log_x_atTop](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/x-log-x-attop.md) | 1334 | `result-track:a6cea7878f8d7b8193ae7bd66a5d227041599561bc9e2e9e100f8fa46340a3cc` |
| 50 | `lemma` | [tendsto_by_squeeze](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/tendsto-by-squeeze.md) | 1353 | `result-track:56129b40139587c4280ea6f68210ad4cbe1973d9534cf5cb2d1d1ecaf6fd0c60` |
| 51 | `theorem` | [prime_between](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/prime-between.md) | 1555 | `result-track:62f2d090fab979b7220100a480efd3180d23105586941f8a26924f4dc5fe4656` |
| 52 | `theorem` | [sum_mobius_div_self_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/sum-mobius-div-self-le.md) | 1590 | `result-track:36d7a708e87383f265464a8cca9f05be270d2e1792e8cebf8dfb8d2fae951037` |
| 53 | `lemma` | [sum_mobius_mul_floor](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/sum-mobius-mul-floor.md) | 1649 | `result-track:568e624ede6141f3ed1e0626db7ebef91a5d51535308a6661f453dbd611426f4` |
| 54 | `def` | [mu_log](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/mu-log.md) | 1664 | `declaration-track:b2eb6868cc6a2d4b4821749e9c064c5f5e3d0293b637b9a4e1507a973ef4f2ca` |
| 55 | `lemma` | [mu_log_apply](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/mu-log-apply.md) | 1667 | `result-track:029e8148fd01ace6e0fc82256b70c61350e445fc397422e4e7e6db5e1e4af946` |
| 56 | `lemma` | [mu_log_mul_zeta](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/mu-log-mul-zeta.md) | 1670 | `result-track:7842d114009d1446b3a53c180c51e048e8aa5aa1042f9b417d3cf399fcc2292d` |
| 57 | `lemma` | [mu_log_eq_mu_mul_neg_lambda](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/mu-log-eq-mu-mul-neg-lambda.md) | 1677 | `result-track:fb91bfb347dd47c4e47bfe815daa8e6a810e571fb8a6f8bd302ec5df69a99551` |
| 58 | `lemma` | [sum_mu_Lambda](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/sum-mu-lambda.md) | 1680 | `result-track:7397f59a343fe2c422887c3d862f691a512fae2085c3314cb2352d4c05b5c1dd` |
| 59 | `lemma` | [M_log_identity](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/m-log-identity.md) | 1695 | `result-track:8846402934728f9de1d498c258ed26cd3a1648c3b7156587115a33e5ec8f1a11` |
| 60 | `def` | [R](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/r.md) | 1723 | `declaration-track:c7ecc8efc2d6f7d036408b6646eb9b89add85b240fe77e9c73a0a2787c7c0bb7` |
| 61 | `lemma` | [R_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/r-islittleo.md) | 1725 | `result-track:c062dec3389bdd51bb34ed40400db4e154fae10eb42bed6ffe01efafcfed010b` |
| 62 | `lemma` | [sum_mobius_div_isBigO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/sum-mobius-div-isbigo.md) | 1732 | `result-track:606c393cf3295dc53a3ab57c36e50b9b2f801652d339fdd6d6a097d345a675f8` |
| 63 | `lemma` | [sum_log_div_isBigO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/sum-log-div-isbigo.md) | 1743 | `result-track:d52272412d2d50612e0936e346fcc6c52e2aa9a7b255faa272d8f17a186b92c1` |
| 64 | `lemma` | [R_locally_bounded](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/r-locally-bounded.md) | 1765 | `result-track:9b0c0562fabf42402155a4960e5adb7390de0cd7db70731f040a2ac40ea16ebe` |
| 65 | `lemma` | [sum_bounded_of_linear_bound](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/sum-bounded-of-linear-bound.md) | 1782 | `result-track:36a8fabe1dbcb7620d2a47b8642a0d4cb81e06fc45722072f685087e4b10d943` |
| 66 | `lemma` | [sum_abs_R_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/sum-abs-r-islittleo-source-edition-2.md) | 1808 | `result-track:5670d5cf8c782397c95f304ec7c0ab290af490f96f8c97ccb599c0a6ec9fe61a` |
| 67 | `lemma` | [R_linear_bound](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/r-linear-bound.md) | 1848 | `result-track:4a2a90c4920a32b62ae319f36f4eaf535bb0cbeccc04fb9884426c3cf2790479` |
| 68 | `lemma` | [sum_abs_R_isLittleO'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/sum-abs-r-islittleo.md) | 1856 | `result-track:2c245e90202500eee7945c92be98c043a8376944decded5711a1b21f4207e558` |
| 69 | `lemma` | [M_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/m-islittleo-source-edition-2.md) | 1859 | `result-track:dbdcf18f68b628e26eb80b13bbf90a0f86ee95e363bb04a4d67b00d78daca4b6` |
| 70 | `lemma` | [M_isLittleO'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/m-islittleo.md) | 1921 | `result-track:2c51c36a8268cb7afff4f01fa19fe2344a86f7d53760c466b313c9df3c1d1b2d` |
| 71 | `theorem` | [mu_pnt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/mu-pnt.md) | 1955 | `result-track:0739f1a0a7cf10023eae76abcb3ff151f5534de2dab00b3b4354dc59ba8ea5da` |
| 72 | `lemma` | [lambda_eq_sum_sq_dvd_mu](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/lambda-eq-sum-sq-dvd-mu.md) | 1975 | `result-track:09980dbd83969af3e368392b3cf2e7d6b51f6c1728e769724ac8b43bf9713b8e` |
| 73 | `lemma` | [sum_lambda_eq_sum_mu_div_sq](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/sum-lambda-eq-sum-mu-div-sq.md) | 2098 | `result-track:ab87f724b88b3155ad9824a7ec7265a49c5f1c8c5e4317abc0c7547571666b83` |
| 74 | `lemma` | [sum_mu_div_sq_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/sum-mu-div-sq-islittleo.md) | 2135 | `result-track:a5b75adeafaf158c6d3a771d3419c4944f7a9ae717621962c774a164ecdeaffb` |
| 75 | `theorem` | [lambda_pnt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/lambda-pnt.md) | 2219 | `result-track:ad36cfec7b23e079cc046310bd6ba760c6857208c772d314ce677dd7a47e1c81` |
| 76 | `lemma` | [sum_mobius_floor](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/sum-mobius-floor.md) | 2256 | `result-track:071b3abfb1e4f42da0f3180909ad35d42fcf5b4a5839b05ceea2d8110b8ab6b5` |
| 77 | `lemma` | [sum_mobius_floor_tail_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/sum-mobius-floor-tail-islittleo.md) | 2266 | `result-track:2baa967ef645425f718442f2ddd42979fe31b12b153fe25724d3c1e9599b6119` |
| 78 | `lemma` | [sum_mobius_div_approx](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/sum-mobius-div-approx.md) | 2357 | `result-track:20f81c65edf580edebd849b2a6897b4450270ecb983fb716ce9a72aac4604211` |
| 79 | `theorem` | [mu_pnt_alt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/mu-pnt-alt.md) | 2403 | `result-track:d6855906551464ec52853fdd67d2481dc6b7f92c23b7ca0d9d0dbb5d92bacd6a` |
| 80 | `theorem` | [chebyshev_asymptotic_pnt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/chebyshev-asymptotic-pnt.md) | 2453 | `result-track:62d97e2f25db6c73a08521fb712b37deef71dc08ff1185a16f84b7f597da040b` |
| 81 | `theorem` | [dirichlet_thm](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesEdition2.lean/declarations/dirichlet-thm.md) | 2528 | `result-track:4ba7639ba496d97838480ae4cd511a80b16864cbba05bb35227c2b734a849b2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b0174b76ded87766691f4f088f2c6274fa03c02ba20c4a5da82afc95fb55c25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
