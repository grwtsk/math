# Verification target: Consequences Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d55aed8d28b87d0341356666e0dbf58ba828e44",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d55aed8d28b87d0341356666e0dbf58ba828e44`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean.json)

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
| 1 | `lemma` | [Set.Ico_subset_Ico_of_Icc_subset_Icc](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/set-ico-subset-ico-of-icc-subset-icc.md) | 24 | `result-track:48340ab17b22830fb4cb04427263359ddce94a6839d053298e8aea9706eee109` |
| 2 | `lemma` | [th43_b](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/th43-b.md) | 40 | `result-track:188c43ca54e27c7fd79994f80c77e96adbaf59c695f8721ac2931727da075172` |
| 3 | `lemma` | [finsum_range_eq_sum_range](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/finsum-range-eq-sum-range-source-edition-2.md) | 56 | `result-track:77fb3ff8425b820b7dcd3e5cf53f92b1f2900eafb8ab00143c69fceecffc0623` |
| 4 | `lemma` | [finsum_range_eq_sum_range'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/finsum-range-eq-sum-range.md) | 63 | `result-track:3a166ffef535098b1b6d87af83663572dc54c6b834a34ebd31e03d39d68e50fc` |
| 5 | `lemma` | [log2_pos](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/log2-pos.md) | 72 | `result-track:fab290b75a1774fc2ee69783fc88a65a017ba4c63f787d0ae996953485904d21` |
| 6 | `theorem` | [Asymptotics.IsEquivalent.add_isLittleO'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/asymptotics-isequivalent-add-islittleo-source-edition-2.md) | 78 | `result-track:59c38e8c3cab9b0e20ae858a014bc089fd24e0dce238885ba9172f05b162f7cf` |
| 7 | `theorem` | [Asymptotics.IsEquivalent.add_isLittleO''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/asymptotics-isequivalent-add-islittleo.md) | 86 | `result-track:2da439aae7afd7096ed8e5b978be810d35175b80b167db552113bab60b20df24` |
| 8 | `theorem` | [WeakPNT'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/weakpnt-source-edition-2.md) | 93 | `result-track:05a04ab093f281cadcda867e047f6011c863e4498a1f1165683ef4ced002018a` |
| 9 | `theorem` | [WeakPNT''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/weakpnt.md) | 113 | `result-track:00fcb6ae64c6d5b9fa461a56ce8f36de829eb29b92e41d892a8ed090802a96af` |
| 10 | `lemma` | [isLittleO_sqrt_mul_log](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/islittleo-sqrt-mul-log.md) | 140 | `result-track:58ba6fe64f6ca53329a04f02ebee5364801ffd15313b001ff7412739e2912c3f` |
| 11 | `lemma` | [tendsto_floor_add_one_div_self](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/tendsto-floor-add-one-div-self.md) | 149 | `result-track:25c42f84ca1d6bb2d0d72322a2990fe738cadb5b26e2b3e0664c76992b9ae5e0` |
| 12 | `lemma` | [isTheta_self_div_const](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/istheta-self-div-const.md) | 157 | `result-track:b9bc4f6081e4b8be086dc60d3d9081ea7b160781024ef8cb00ce9cf4c16c4adb` |
| 13 | `lemma` | [filter_prime_Iic_eq_Icc](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/filter-prime-iic-eq-icc.md) | 162 | `result-track:d9975ec42d931d3170ea24d68bb7d4a5e57434344ab794215693bbe8dbf09576` |
| 14 | `lemma` | [Icc_zero_eq_insert](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/icc-zero-eq-insert.md) | 167 | `result-track:7002e95d8b3448e8fd3ba8918f529f8725cf4515a057bf90914469e64032313c` |
| 15 | `theorem` | [chebyshev_asymptotic](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/chebyshev-asymptotic-source-edition-2.md) | 185 | `result-track:296119e8e2ae244e75c15ac209f295130c44c6b931beea7bcde30e5374f0f433` |
| 16 | `theorem` | [chebyshev_asymptotic_finsum](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/chebyshev-asymptotic-finsum.md) | 195 | `result-track:0d23b7f84c743ae1a3528c30e52bbc18b512533cf5f2915523e5a58f84ab0fce` |
| 17 | `theorem` | [chebyshev_asymptotic'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/chebyshev-asymptotic.md) | 225 | `result-track:21224a79ced69df8be0776a7ddb3400f1031dae1600709a1565a9ce5f26c02c4` |
| 18 | `theorem` | [chebyshev_asymptotic''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/chebyshev-asymptotic-source-edition-3.md) | 255 | `result-track:f988e5a7ca34afb877b9389615fae6ba22b5f49130ee27e10ba326a5c3ce3ce7` |
| 19 | `theorem` | [primorial_bounds](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/primorial-bounds.md) | 294 | `result-track:d0f5ea2eaed1ec9bac40ba200f9dbaf011184c2a1b0e2191712e586c4b6c701e` |
| 20 | `theorem` | [primorial_bounds_finprod](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/primorial-bounds-finprod.md) | 309 | `result-track:9136d168a56e190c5457feb41224c7cbbc9ed482696e253f18ffe3eab430edc9` |
| 21 | `lemma` | [continuousOn_log0](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/continuouson-log0.md) | 330 | `result-track:17708fa7bfb4db64b98cb2a668d3c9567757c862a7d2b1936e3f1109ee76563e` |
| 22 | `lemma` | [continuousOn_log1](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/continuouson-log1.md) | 335 | `result-track:9c1c109539b2af4cf617074c9d62b1de600d8fae1024d7cd3d8c4fca4046ec1f` |
| 23 | `lemma` | [integral_log_inv](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/integral-log-inv-source-edition-3.md) | 339 | `result-track:2d2eadfc7b94bed1212d4e0fe8b0368d4db4271591a75418fd149c16abc35543` |
| 24 | `lemma` | [integral_log_inv'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/integral-log-inv-source-edition-2.md) | 391 | `result-track:2470670d5108ccc7fb2faea1691b70e1d16bea879bbde5d90d45c83a7232ea48` |
| 25 | `lemma` | [integral_log_inv''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/integral-log-inv.md) | 401 | `result-track:1d4c3aa5a1d367c7e3c5cb57a5b318f782f55a39d5ffe31dc668f13aeb596ca2` |
| 26 | `lemma` | [integral_log_inv_pos](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/integral-log-inv-pos.md) | 407 | `result-track:56c36947622f8c08aad76b45933d99b537c4b6a0aa2a997e63dac966e73fe6c2` |
| 27 | `lemma` | [integral_log_inv_ne_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/integral-log-inv-ne-zero.md) | 429 | `result-track:d6bcac710e7e0031453f97d757876e27532b67618782e5c3b91355170c690568` |
| 28 | `lemma` | [pi_asymp_aux](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/pi-asymp-aux.md) | 434 | `result-track:bd8f6f7062ac2b4856f5a9cf6bd8ab0b15233847af1f681a671b61b4e3c37eab` |
| 29 | `theorem` | [pi_asymp''](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/pi-asymp-source-edition-2.md) | 440 | `result-track:5d44f7cce937ce382dd5c8906589b771c1add0f4432c7c09b9f121d76d8a7b95` |
| 30 | `theorem` | [pi_asymp](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/pi-asymp.md) | 795 | `result-track:4a726dba3db552d9781a0347caa03ae780aaab28b39c7854d40221504f832e2a` |
| 31 | `lemma` | [inv_div_log_asy](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/inv-div-log-asy.md) | 805 | `result-track:5f0632c07e5b58e089ae42cb87f5b4fa0480c78915cc666824de81df8fa321bb` |
| 32 | `lemma` | [integral_log_inv_pialt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/integral-log-inv-pialt.md) | 817 | `result-track:096746889d8d7ee01ef0e182a05fad18ffb420c1b48483cf80d730c8b26de167` |
| 33 | `lemma` | [integral_div_log_asymptotic](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/integral-div-log-asymptotic.md) | 827 | `result-track:f171ae5759b8d7b08f16d32c44c1a945f5dc0bd0296497e823f568f16849fdad` |
| 34 | `theorem` | [pi_alt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/pi-alt-source-edition-2.md) | 883 | `result-track:c336baf9fb3ca6a4413e7cac9e18e70a641381f5ebfc33d2cdf8fa8ab22fc1a8` |
| 35 | `theorem` | [pi_alt'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/pi-alt.md) | 909 | `result-track:9d8ea044dba65957de871993d6e54379d4deb62109683a7b09b0f740f9257cf0` |
| 36 | `lemma` | [pi_nth_prime](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/pi-nth-prime.md) | 924 | `result-track:d6126ea4191d90151d3a249586defd970944ee1a8dfae0aa1468c20ead5173ee` |
| 37 | `lemma` | [tendsto_nth_prime_atTop](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/tendsto-nth-prime-attop.md) | 928 | `result-track:ebf9b1050c7b8dcb2f803000af2c71f71fc11d7967d4d93e5059b98f2aa06023` |
| 38 | `lemma` | [pi_nth_prime_asymp](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/pi-nth-prime-asymp.md) | 931 | `result-track:0023f7f192cfee4a32dec09e6b1f538c355b6fffb53a01e9bc14cb9fd0ba044a` |
| 39 | `lemma` | [log_nth_prime_asymp](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/log-nth-prime-asymp.md) | 943 | `result-track:8bcfce456ec08d72f73e107ec1d39b3174cb23bd030de24c9aa9b64fb9ac0ad9` |
| 40 | `lemma` | [nth_prime_asymp](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/nth-prime-asymp.md) | 960 | `result-track:c08f1498b252afed6ec1b2078910139ebf4078c7014141d8c2a6c1a695881dc0` |
| 41 | `theorem` | [pn_asymptotic](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/pn-asymptotic.md) | 983 | `result-track:c9c42cf319ef5667b3472472e461d59f3aa5e13a751585184222f81a0b6b353f` |
| 42 | `theorem` | [pn_pn_plus_one](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/pn-pn-plus-one.md) | 1014 | `result-track:066d393e4199cbac9e80683e0b8662b36bedbd0a85a2f47cca8edf93f753584f` |
| 43 | `lemma` | [prime_in_gap'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/prime-in-gap.md) | 1184 | `result-track:2bef6c8f33881b9467b5f1cc76aa6a6ff838f8e127644ce32a21240b61e9b97f` |
| 44 | `lemma` | [prime_in_gap](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/prime-in-gap-source-edition-2.md) | 1189 | `result-track:7888e4b4735ab33587dade6d731198ae4868234abcb468b622c42abc753e18fa` |
| 45 | `lemma` | [bound_f_second_term](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/bound-f-second-term.md) | 1208 | `result-track:d1543b8cb06ccb56cd1f3d0be1ef83b689883765150bf0b1255104c44e9410aa` |
| 46 | `lemma` | [bound_f_first_term](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/bound-f-first-term.md) | 1238 | `result-track:e2084e3b950bbd6c0829fe5ac776e5df41b9ab1e3bbebbf202d307c0a269ece7` |
| 47 | `lemma` | [smaller_terms](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/smaller-terms.md) | 1284 | `result-track:b4c8e0a49e1ef58a581c0bcffea4fe16d98351588901215a5916225edac26758` |
| 48 | `lemma` | [second_smaller_terms](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/second-smaller-terms.md) | 1313 | `result-track:a2de6f5ea094ba6eb9e5af381c9f04e7079f1bfe7b310a3a84a9814dce0fa724` |
| 49 | `lemma` | [x_log_x_atTop](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/x-log-x-attop.md) | 1342 | `result-track:fc677e6e2ad4d21d9e6b3dc18ca61b070ca6cc7de3bf2383ad14066e75f458de` |
| 50 | `lemma` | [tendsto_by_squeeze](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/tendsto-by-squeeze.md) | 1361 | `result-track:5cc02f7f8c08525a284d203187faff62c6c15e56e95ae2b8ccc9ea46bfa76c82` |
| 51 | `theorem` | [prime_between](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/prime-between.md) | 1563 | `result-track:8a433e77fea437cf467ffa8d6af83ef2ba06818bf43cc44d7400b12788ea1a6e` |
| 52 | `theorem` | [sum_mobius_div_self_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/sum-mobius-div-self-le.md) | 1598 | `result-track:6357dfc79a51ff38c09f32931f8cfc90a99a59654984dd5cb49d79a99b1d913b` |
| 53 | `lemma` | [sum_mobius_mul_floor](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/sum-mobius-mul-floor.md) | 1657 | `result-track:e494e24f22d025d29bad28b23364ba8f3c06b07e9be7281d585f5cf2b30e9cce` |
| 54 | `def` | [mu_log](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/mu-log.md) | 1672 | `declaration-track:5930deef2ec1dfa98069df1125fc44a4387983b0aca56976dcda630a9d7a96f6` |
| 55 | `lemma` | [mu_log_apply](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/mu-log-apply.md) | 1675 | `result-track:7ce9629f728569a1f37515c7210e7c15fbe592c455cd619447d7a613ea2941e7` |
| 56 | `lemma` | [mu_log_mul_zeta](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/mu-log-mul-zeta.md) | 1678 | `result-track:69126b37336bfec59dda80c585cd700f2c0183aa3c7f0f26919572fd9db152b4` |
| 57 | `lemma` | [mu_log_eq_mu_mul_neg_lambda](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/mu-log-eq-mu-mul-neg-lambda.md) | 1685 | `result-track:bc9e655a7036f2b389569f33fc7de48f2e2a262e846630773d8f403c739a486d` |
| 58 | `lemma` | [sum_mu_Lambda](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/sum-mu-lambda.md) | 1688 | `result-track:7432977838516d6ecffcb9d82548eec08edcb34311475346f14d254057d803b2` |
| 59 | `lemma` | [M_log_identity](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/m-log-identity.md) | 1703 | `result-track:186993684a23c9182b25606e8c1a6af40da7a989d216129be52c6a807a60cf02` |
| 60 | `def` | [R](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/r.md) | 1731 | `declaration-track:4a152bec319de36a8910cbafc3679e2012d307410dacc83a6d4efcd93bf9888c` |
| 61 | `lemma` | [R_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/r-islittleo.md) | 1733 | `result-track:3a090dd5ddf6029f06bd261282ef7c6ba4f138990633234bc6906276c3ec5e34` |
| 62 | `lemma` | [sum_mobius_div_isBigO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/sum-mobius-div-isbigo.md) | 1740 | `result-track:3f2383d88924831a673c113495b0a4afea7093d226c2c57ac32e8abaff34a3b8` |
| 63 | `lemma` | [sum_log_div_isBigO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/sum-log-div-isbigo.md) | 1751 | `result-track:51f1c3ec7ae79e9b07170701197e858732e1e2d52dc857f15db41405be94a106` |
| 64 | `lemma` | [R_locally_bounded](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/r-locally-bounded.md) | 1773 | `result-track:939afbd5bdb145fd8f3f02acf8c8855b7938e7a8f5e002ab82ecd26231e2409d` |
| 65 | `lemma` | [sum_bounded_of_linear_bound](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/sum-bounded-of-linear-bound.md) | 1790 | `result-track:0ebd10f692df6a3215bdf63860ed802a193ac9db56600633fc811ded9447a19b` |
| 66 | `lemma` | [sum_abs_R_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/sum-abs-r-islittleo.md) | 1816 | `result-track:10e40170f6144dcb736878d2a468340d37653dc4bdab786c4ac879d57b5ff61c` |
| 67 | `lemma` | [R_linear_bound](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/r-linear-bound.md) | 1856 | `result-track:942e5272ffc9f932938f8d4fb9309851acfb00fc2378e3eca07d4d8fe3433ab6` |
| 68 | `lemma` | [sum_abs_R_isLittleO'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/sum-abs-r-islittleo-source-edition-2.md) | 1864 | `result-track:3ebd3bd6a8064cda1fd2950a869369bf3a47d57750ba745f51f45e76d0ecc2e2` |
| 69 | `lemma` | [M_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/m-islittleo.md) | 1867 | `result-track:35a150f4da86a2b57e46605c15be73af2b6c4ce5e597e07f647e5155f8b9a5f5` |
| 70 | `lemma` | [M_isLittleO'](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/m-islittleo-source-edition-2.md) | 1929 | `result-track:c6a7af319a7bae2d08bce9da31d95f579b38f03be5263cccf5fdd918fed6cdf2` |
| 71 | `theorem` | [mu_pnt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/mu-pnt.md) | 1963 | `result-track:01edb20e4747686559edd06675812f314dc98fd8b95813203de160a19fc3984a` |
| 72 | `lemma` | [lambda_eq_sum_sq_dvd_mu](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/lambda-eq-sum-sq-dvd-mu.md) | 1983 | `result-track:c2ce0eab8856b4d536b379b01f1330b57fe6020d500fb8bebc74499771597d75` |
| 73 | `lemma` | [sum_lambda_eq_sum_mu_div_sq](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/sum-lambda-eq-sum-mu-div-sq.md) | 2106 | `result-track:feada8ae506e0af08633dbb005be5a6ee5aa5d9757869267bb1e27569610918d` |
| 74 | `lemma` | [sum_mu_div_sq_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/sum-mu-div-sq-islittleo.md) | 2143 | `result-track:021e5c83afe0d5146efc37268b7f1dfb94223e6fb1fbc5cea67a1e2abe51e18e` |
| 75 | `theorem` | [lambda_pnt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/lambda-pnt.md) | 2227 | `result-track:f404b52fc73c1ec7ed77bf1a8354e6a961f9a482c61e601b2d90ccfb2772f328` |
| 76 | `lemma` | [sum_mobius_floor](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/sum-mobius-floor.md) | 2264 | `result-track:fbb01c06dd2102c24f659c925744de19a8a1ba4a17a1cc1233edf37562649b0e` |
| 77 | `lemma` | [sum_mobius_floor_tail_isLittleO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/sum-mobius-floor-tail-islittleo.md) | 2274 | `result-track:5db70b7785c8ef45d3af1926a6af9fc8b15977a52e3a5d338d1d95151f1c3de0` |
| 78 | `lemma` | [sum_mobius_div_approx](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/sum-mobius-div-approx.md) | 2365 | `result-track:f55394923691bf91155fdfeb650d6a1d7913bce1b41206d81f1440b345edef04` |
| 79 | `theorem` | [mu_pnt_alt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/mu-pnt-alt.md) | 2411 | `result-track:cef63d73c593af03299ad8640eaa6b4e174dd66f2947fd4082f64b1c69b5e0e4` |
| 80 | `theorem` | [chebyshev_asymptotic_pnt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/chebyshev-asymptotic-pnt.md) | 2461 | `result-track:c0460f43faaf9ae2e61cca7e2a0170e6d658da32ceb4f8d6e98bcc5e59f3c7d2` |
| 81 | `theorem` | [dirichlet_thm](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConsequencesNamespacedEdition2.lean/declarations/dirichlet-thm.md) | 2536 | `result-track:4166b8fb57be4f0864cd5d94edffdb1cf77be77aac6263d0f90c03fb98f314bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5faaf1dedc72dd28e37976f62a2e39ca6211046948762c79d6d382f03a1e86e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
