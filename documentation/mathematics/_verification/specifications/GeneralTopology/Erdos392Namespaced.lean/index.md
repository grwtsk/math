# Verification target: Erdos392 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
  "lexical_observation_count": 113,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Erdos392Namespaced.lean/index.md) · [Full source](../../../../GeneralTopology/Erdos392Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Stirling` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Bertrand` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Consequences` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LogTables` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Factorization](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization.md) | 31 | `declaration-track:109cc56186ab42b5242318d524c91686129e59765b01f208888c94a53beb87b9` |
| 2 | `def` | [Factorization.sum](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-sum.md) | 36 | `declaration-track:c9b9d69c7c472aa33defbcaaee72a8a0d8d107762ad50983a9dd85b76c866a0e` |
| 3 | `def` | [Factorization.prod](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-prod.md) | 40 | `declaration-track:dd435242548af7857e047f02cec923c689d71b3aa80100a1e7175d821be5e94f` |
| 4 | `def` | [Factorization.waste](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-waste.md) | 49 | `declaration-track:1e723846dc54b7d7dbbfa0c794842f16260a91a58633eb589b13c3338ffeb041` |
| 5 | `def` | [Factorization.balance](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-balance.md) | 58 | `declaration-track:108bca1e9cc8bd881eccf0ec68ed299f64e696b2b8da8ee1066a05f5cefed7dc` |
| 6 | `def` | [Factorization.total_imbalance](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-total-imbalance.md) | 67 | `declaration-track:d33293da10a25be6d0a022ae4f4857d50bd715826d43959d155a30216fa9c882` |
| 7 | `lemma` | [factorization_multiset_prod](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-multiset-prod.md) | 71 | `result-track:595281e1eabc2d7475ced286b749124cbfe4d4afda970a93805fc8a98f744b31` |
| 8 | `theorem` | [Factorization.zero_total_imbalance](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-zero-total-imbalance.md) | 85 | `result-track:54d6aab3a1d1da74837a04dec5585dab74d480d56e9e7296d23e9a5bc8598ba6` |
| 9 | `theorem` | [Factorization.waste_eq](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-waste-eq.md) | 111 | `result-track:ff4aa45446d7088a358024621a326be06aacdadd83d1a66e200e1793cb9bfb14` |
| 10 | `def` | [Factorization.score](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-score.md) | 138 | `declaration-track:5dc55693f36861620bd1bbc647515cf0aab9d144238d13d2cf6a1952cdd6ae69` |
| 11 | `theorem` | [Factorization.score_eq](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-score-eq.md) | 152 | `result-track:f491ba60b05d37a7153633ba8a6d22e115526bcbc1d57d60fb752ce43fc89b1e` |
| 12 | `def` | [Factorization.replace](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-replace.md) | 159 | `declaration-track:ecb4301cd5ec3e71a893205df9ba26b38bababe03e59e347db1dda25609761da` |
| 13 | `lemma` | [Factorization.replace_sum](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-replace-sum.md) | 175 | `result-track:c14d3b62ffad2703e2c623d5adea48b9e36ff0c32344da3ca0ad191d68a5d5dd` |
| 14 | `lemma` | [Factorization.replace_balance](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-replace-balance.md) | 185 | `result-track:082b61c088c20376defb553ea282739a842edf34f51aafc5e97f942b0f491586` |
| 15 | `lemma` | [Factorization.replace_div_balance](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-replace-div-balance.md) | 195 | `result-track:c3b6cdd4110a437a0b7494334a4b0f3f079b1a5c9f53d820300dd0bbcdbef7f2` |
| 16 | `lemma` | [Factorization.replace_div_total_imbalance](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-replace-div-total-imbalance.md) | 219 | `result-track:891576110580f9d31b1f77e5d1109bbe468b76b6e5edcb9a8c9b9005ab8e7236` |
| 17 | `lemma` | [Factorization.replace_div_score_le](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-replace-div-score-le.md) | 238 | `result-track:408174ddcc058a5a392972f1ebfd0e3cb1d56fa97f7f1b971ccd8992221b3d18` |
| 18 | `def` | [Factorization.addFactor](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-addfactor.md) | 332 | `declaration-track:7a8746d217f3992552ff5b16f0b0f65c751d6ef13eb555a93782b2b14b8fc7ce` |
| 19 | `lemma` | [Factorization.addFactor_balance](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-addfactor-balance.md) | 340 | `result-track:41c16e28441ebf4cbc6a6119ffa1f1e23c8d34eb48835cc101181dc59ca45460` |
| 20 | `lemma` | [Factorization.addFactor_waste](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-addfactor-waste.md) | 346 | `result-track:1f57d48965a88b25820f4aee7bdc39913018e56bbb109f36b1eed944b9fb23df` |
| 21 | `def` | [Factorization.deficitMultiset](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-deficitmultiset.md) | 351 | `declaration-track:38222f01d137745449849704cc6aef88e988f41683d25ce0f6e20abb65011968` |
| 22 | `lemma` | [Factorization.mem_deficitMultiset](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-mem-deficitmultiset.md) | 356 | `result-track:3cfaebe113368f07ed0b7e1c4f9a3e9a4db6caa2d74eaf44878f5aebf776bf4d` |
| 23 | `lemma` | [exists_submultiset_prod_between](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/exists-submultiset-prod-between.md) | 365 | `result-track:3649b5c5f6348fd10d60e1e0fe59e9aefb1f2de9016ed881918a4bb2bfe3e330` |
| 24 | `lemma` | [Factorization.deficit_implies_le_n](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-deficit-implies-le-n.md) | 379 | `result-track:71d83e4cf76e3cd66a50f5be8e1208d206cc9661c123d6d37c6a35959c93c144` |
| 25 | `lemma` | [factorization_prod_eq_count](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-prod-eq-count.md) | 384 | `result-track:417ba43235853025bd5034c7207e1eeb343959bc54e2a8c9086c9440855336b8` |
| 26 | `lemma` | [Factorization.deficitMultiset_prod_pos](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-deficitmultiset-prod-pos.md) | 398 | `result-track:6ae22501bfeb1439fbca5ea1bc853006a1c5c00906cbe6a17ef1e968dc624298` |
| 27 | `lemma` | [Factorization.count_deficitMultiset](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-count-deficitmultiset.md) | 406 | `result-track:f024c615a9d4eb627a724190c2e09542ec302709d6c37ff84d8338409208222b` |
| 28 | `lemma` | [Factorization.addFactor_deficit_balance_eq_zero](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-addfactor-deficit-balance-eq-zero.md) | 416 | `result-track:b3d67bebf0ae64bf09a97df9d4a0d8cffe7f59b1d681e6b0eb9c91611b6c3685` |
| 29 | `lemma` | [Factorization.lower_score_3_case1](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-lower-score-3-case1.md) | 440 | `result-track:dd9e11081293b249165a0b3db9da324b6c3c8d8ce46792a87665a097c1efd3b8` |
| 30 | `lemma` | [Factorization.addFactor_submultiset_total_imbalance](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-addfactor-submultiset-total-imbalance.md) | 487 | `result-track:9507e7415a4e10cb477e2b767cb15a2534ae20844266a5cd9954c47327010d9c` |
| 31 | `lemma` | [Factorization.score_sum_change](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-score-sum-change.md) | 537 | `result-track:6027a7c95ea1c536e55dc57cd603347b5dfdb19fbe796deafd32e70aa5f7e3bd` |
| 32 | `lemma` | [Factorization.score_sum_change_multiset](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-score-sum-change-multiset.md) | 558 | `result-track:80d8c28b8e3c9a5a592d759d6030405a2a7aee504210d926cb3305c3f4287304` |
| 33 | `lemma` | [Factorization.score_le_of_add_submultiset](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-score-le-of-add-submultiset.md) | 606 | `result-track:a0cd0f0a86e8a86b85eaa5db4dcdb419e16ab84a0d89676bd946c71876775a4f` |
| 34 | `theorem` | [Factorization.lower_score_1](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-lower-score-1.md) | 664 | `result-track:236dbb70d8bbccaef3e978785ba02b3bdb854359641e9f1bb7e17d625c5038d1` |
| 35 | `theorem` | [Factorization.lower_score_2](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-lower-score-2.md) | 682 | `result-track:054d00169390efed58633a3388ba68386e36c47d539b43d7a5d47830fc81c77d` |
| 36 | `lemma` | [Factorization.lower_score_3_case2a](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-lower-score-3-case2a.md) | 761 | `result-track:0b2bb09a5d3c93294bd7f82a731d6fcff5cce724fbc1ecf2ecfc829e9a9248f9` |
| 37 | `lemma` | [Factorization.lower_score_3_case2b](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-lower-score-3-case2b.md) | 807 | `result-track:9eda3d4fa048d7d4f2513ae7d790bd1ff688cd9a03bd5db5642b5a4280a37211` |
| 38 | `lemma` | [Factorization.lower_score_3_clean](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-lower-score-3-clean.md) | 831 | `result-track:91dd0cc10f397392da3fab2f7a101f7012c04fbe19c46fc0f14e86432b063030` |
| 39 | `theorem` | [Factorization.lower_score_3](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-lower-score-3.md) | 855 | `result-track:2938cbeae17789c393e0cdd7e97aad78a23d1b9a72152608fd5dd070b0fbfb9b` |
| 40 | `theorem` | [Factorization.lowest_score](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-lowest-score.md) | 881 | `result-track:17ef01310a2d0c2c2866d4185af4b11453fc9c26becb1d0d0ea2a53f8c5c4ac7` |
| 41 | `theorem` | [Factorization.card_bound](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/factorization-card-bound.md) | 915 | `result-track:7a1587b18e58a10d9cf6b990e6f31d2d8cb1afb8d3bfd2639d1d57a4b7ee9d39` |
| 42 | `structure` | [Params](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params.md) | 925 | `declaration-track:497725ae22bc144c1f4d4f45d7027fcaae70101898b334378ff963b9506e82a6` |
| 43 | `def` | [Params.initial](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial.md) | 940 | `declaration-track:69deb629756a465cfceb4a712fe391ec1b8b5c05f5063ee833128f79a821ea42` |
| 44 | `theorem` | [Params.initial.card](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-card.md) | 958 | `result-track:c6ad6a14e51d497798ebb4d861f3720e9ae60900cdf85218365b18364b83daa2` |
| 45 | `lemma` | [Params.initial.mem_range](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-mem-range.md) | 970 | `result-track:0f2636e37ed5d51dd5479983a9aeb07bdad2fc3f35c7d6da03e31876265832d6` |
| 46 | `lemma` | [Params.initial.div_le](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-div-le.md) | 977 | `result-track:4071c04dec1210182c7a0dc5b3a27a3c3a085fcf8c58160b1b471ae7835c0175` |
| 47 | `theorem` | [Params.initial.waste](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-waste.md) | 999 | `result-track:c827d3460b1f5713a07f2fe89f51cb8178cd798ede332087b335db0e03c9885a` |
| 48 | `theorem` | [Params.initial.balance_large_prime_le](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-balance-large-prime-le.md) | 1027 | `result-track:70d79973919f40dfd9bc986d187842d3378806dc650fee5aa6ea8c2607ebfa0e` |
| 49 | `lemma` | [Params.initial.factorial_factorization_eq_div](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-factorial-factorization-eq-div.md) | 1043 | `result-track:649e6b3bc03f1164fba68f7bfe64bb1627209592d3a874875098257abcdeb213` |
| 50 | `theorem` | [Params.initial.balance_large_prime_ge](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-balance-large-prime-ge.md) | 1067 | `result-track:f507f96d8dcf1dacdc5755e8757a26bff5a0edd1dcb550b64f5644f8580f4250` |
| 51 | `lemma` | [Params.initial.count_multiples_le](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-count-multiples-le.md) | 1098 | `result-track:10dad7fdae1d4e965c2fc679a8428c958384b45e029f00e52ea7523043626795` |
| 52 | `lemma` | [Params.initial.count_bound_aux](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-count-bound-aux.md) | 1120 | `result-track:27667edbacfcb89df718892af87861bc89757ccf7f562f9f9b4d23fecd6367cc` |
| 53 | `lemma` | [Params.initial.sum_valuation_le_M_mul_interval_count](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-sum-valuation-le-m-mul-interval-count.md) | 1132 | `result-track:ab4a42e6d9b30d789a2268255cd779c7d464f8368f07b094b2717289580465c0` |
| 54 | `theorem` | [Params.initial.balance_medium_prime_le](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-balance-medium-prime-le.md) | 1168 | `result-track:68f16dc604a5986b8c66dccc6e328bc73a3c0ed1fda0ec399b17e88692c65bc6` |
| 55 | `lemma` | [Params.initial.smooth_of_multiple](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-smooth-of-multiple.md) | 1186 | `result-track:08c38a8b7f7bb0efed271c4d31dda59835567e9538b0ea3f9118b16d10847e80` |
| 56 | `lemma` | [Params.initial.valuation_eq_one](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-valuation-eq-one.md) | 1202 | `result-track:48ea02159ed35eeb1277fa717d99bfa8aece68a8cb3fcbceb7274ee517e9bf83` |
| 57 | `lemma` | [Params.initial.count_multiples_lower_bound](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-count-multiples-lower-bound.md) | 1213 | `result-track:a24aa0024fbc1fb96b3f93b2a14e6839575ef1a6e89f0ac76b34b9e5777f45a8` |
| 58 | `lemma` | [Params.initial.valuation_eq_indicator](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-valuation-eq-indicator.md) | 1249 | `result-track:f456fb1f9d190059a13026543e5acbc3b78c7a8490eedd00df06c66c1fceffec` |
| 59 | `lemma` | [Params.initial.sum_valuation_eq](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-sum-valuation-eq.md) | 1259 | `result-track:fa6fb8896444617650e3b8d7095f55e36d4e262763f43d9bade768c2ce38090b` |
| 60 | `theorem` | [Params.initial.balance_medium_prime_ge](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-balance-medium-prime-ge.md) | 1291 | `result-track:f4afde7e0e0beca10d9a8c8a08826c4b2a221a1b637168d9fac9e0e3c5a973eb` |
| 61 | `lemma` | [sum_factorization_eq_sum_multiples](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/sum-factorization-eq-sum-multiples.md) | 1304 | `result-track:2240794781dce9e1582044e598e9216618687055e929bee5f334f2938757521e` |
| 62 | `lemma` | [Params.initial.term_bound](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-term-bound.md) | 1326 | `result-track:6fa041cfcf289dd6a99f7d861264918bd2dfa6d9dc25cf34cf2a017e36dbabdd` |
| 63 | `lemma` | [Params.initial.sum_valuation_le](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-sum-valuation-le.md) | 1344 | `result-track:690c56afb3ce97c81d8ab9d065c2bbf8aa99e007f286b72ba6a51032b625c6d2` |
| 64 | `theorem` | [Params.initial.balance_small_prime_le](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-balance-small-prime-le.md) | 1371 | `result-track:d8868ac54ec54eae8b569747ae29241b4e29e5da1168c4541dd2e811671d5b9f` |
| 65 | `lemma` | [Params.initial.smooth_of_dvd_small_prime](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-smooth-of-dvd-small-prime.md) | 1437 | `result-track:720299835cf396db2735a4a108cd2e08d3839ed25915722a2525458dd7155c7d` |
| 66 | `lemma` | [Params.initial.sum_valuation_eq_small](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-sum-valuation-eq-small.md) | 1464 | `result-track:585aabcb916732c744a7bf8afba849d21ce1179a0ae6e3c6263a5e875bc9b6db` |
| 67 | `lemma` | [Params.initial.balance_ge_neg_M_mul_log](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-balance-ge-neg-m-mul-log.md) | 1523 | `result-track:452175f792db7ce7166bb0ac690a7123f2d144cb0c241bf6af150c645a72cae5` |
| 68 | `theorem` | [Params.initial.balance_small_prime_ge](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-balance-small-prime-ge.md) | 1546 | `result-track:f64401239eff6c862b31f97162fb5a167c39ee32e476d1b53098481b3ac9403d` |
| 69 | `def` | [Params.initial_full](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-full.md) | 1572 | `declaration-track:025ed2b63f04d22dce244a38475c901f0048ac785aa74d01bf72201db8202231` |
| 70 | `def` | [Params.rough_set](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-rough-set.md) | 1584 | `declaration-track:c96d4572f64d46649ab5dc1c08183d48fc7ab54236cb8565fee959e9ad6e4a91` |
| 71 | `lemma` | [Params.initial_full_balance_eq](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-full-balance-eq.md) | 1589 | `result-track:1662484273944b6dca0460d490891c3c267df294c0e2a5027970c2d231609b3f` |
| 72 | `lemma` | [Params.initial.count_multiples_lower_bound_pow](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-count-multiples-lower-bound-pow.md) | 1596 | `result-track:e9cb10fd288cb4232bc978ca622d41566ed5797748a8977a8859d5c9eb345a14` |
| 73 | `lemma` | [Params.initial_full_term_bound](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-full-term-bound.md) | 1601 | `result-track:d1ffa0596b2199e6d6f742042809b903c84d6d5d27d97dd33a301f404bbf1c95` |
| 74 | `lemma` | [Params.initial_full_sum_valuation_eq](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-full-sum-valuation-eq.md) | 1611 | `result-track:0bc5adf25e951b86236b4c8176714f74e361201794fa0ce4339c5d14af5854f0` |
| 75 | `lemma` | [Params.initial_full_balance_ge](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-full-balance-ge.md) | 1634 | `result-track:fd135647fec40de87c5a401ccd168b93062b6181ccadc16cc511ac7d265c2f09` |
| 76 | `lemma` | [Params.initial_balance_eq](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-balance-eq.md) | 1667 | `result-track:9ffb2139580fa4dd1e391afc54dd76e5a49806c85458e5358b4bd76bee3eb65b` |
| 77 | `lemma` | [Params.exists_large_prime_of_rough](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-exists-large-prime-of-rough.md) | 1696 | `result-track:02805686c162f3bd0df2c9768ac20bc7da5e7033d43bd9b56f45eca975d377f1` |
| 78 | `lemma` | [Params.valuation_eq_one_of_large_prime](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-valuation-eq-one-of-large-prime.md) | 1706 | `result-track:7c321735ed217a6d300ea0b14325957a67673ae5456b6e1319064061b7140f25` |
| 79 | `lemma` | [Params.rough_set_structure](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-rough-set-structure.md) | 1718 | `result-track:b69725f0a476981fb5e6b4272e23cdb1f51aba0d5c97c726b1b1287827e1b46d` |
| 80 | `def` | [Params.rough_q](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-rough-q.md) | 1740 | `declaration-track:4196edfb959984cdce59c729f828e623ab4747867a44bb600ea774eea24f48d2` |
| 81 | `def` | [Params.rough_k](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-rough-k.md) | 1744 | `declaration-track:cdca2110f1c20a0c7868cc723658cbca3bad875a89e0cee5a330a4c743884eac` |
| 82 | `lemma` | [Params.rough_qk_prop](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-rough-qk-prop.md) | 1749 | `result-track:adc7066978167965dbdfeb115fb6c1220757810082bbd8bf53edc2c70b3c6058` |
| 83 | `lemma` | [Params.rough_set_card_le](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-rough-set-card-le.md) | 1757 | `result-track:242e895230ae219f48e8ac4228b56fe84c219be354688b83599332b9e97c8057` |
| 84 | `lemma` | [Params.rough_valuation_eq_k_valuation](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-rough-valuation-eq-k-valuation.md) | 1786 | `result-track:367c0da94e000884ef01c50aec7f4a6eac889a932bc9a699fd88d6f284172361` |
| 85 | `lemma` | [Params.rough_valuation_le_log](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-rough-valuation-le-log.md) | 1807 | `result-track:6cc1acd0b912f5332dd5a44c39395158abcb02c302ca678e18bf8eb5adc6f030` |
| 86 | `lemma` | [Params.rough_valuation_sum_le](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-rough-valuation-sum-le.md) | 1819 | `result-track:f96518b997e83ba020f9dea46899825988bc087793f55519b7705c8ebdc35897` |
| 87 | `lemma` | [Params.L_sub_log_ge_one](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-l-sub-log-ge-one.md) | 1827 | `result-track:9858a98903eef40cc775536fbcc5b70ad9e415cb75945b98f05c6edc4df25206` |
| 88 | `lemma` | [Params.primeCounting_ge_log](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-primecounting-ge-log.md) | 1835 | `result-track:a8d76267526d5bdcab83fae75fda9bd672b77c45210c740c953104ef0347562f` |
| 89 | `lemma` | [Params.balance_inequality_aux](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-balance-inequality-aux.md) | 1891 | `result-track:1666f3aaf4a1f3d76896d4818e7aa27b71f0c202daadd0576aeae720ba119d66` |
| 90 | `theorem` | [Params.initial.balance_tiny_prime_ge](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-balance-tiny-prime-ge.md) | 1915 | `result-track:d074a4bbb90db1ace513acd3b85f6934ea06a914b415073930e0942f5ad61390` |
| 91 | `lemma` | [Params.initial.score_bound_aux_balanced](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-score-bound-aux-balanced.md) | 1936 | `result-track:ce20812679bfec5113e721c11b7b6df6ad8a8c36b0db03ae3cd43bb92077dabb` |
| 92 | `lemma` | [Params.initial.score_bound_aux_imbalanced](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-score-bound-aux-imbalanced.md) | 1985 | `result-track:079ad8804e030808f68ff8370eccba59fa2aebbb9e663442b5b1ce6e8c4125b8` |
| 93 | `theorem` | [Params.initial.score_bound](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-score-bound.md) | 2358 | `result-track:9936a7d854e17ab4343fe11b1636b2fc92a515484de360f47f0580052b845699` |
| 94 | `theorem` | [Params.initial.bound_score_1](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-bound-score-1.md) | 2379 | `result-track:2e1d4cf01c367f66185e993a7e440ba87c2f76e7b98256c90b4b49ced4590b15` |
| 95 | `theorem` | [Params.initial.bound_score_2](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-bound-score-2.md) | 2418 | `result-track:60101eeb092fb3b7dab74a1806dd58e185d40dde740d0f21eb9473d0ee3e1495` |
| 96 | `theorem` | [Params.initial.bound_score_3](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-bound-score-3.md) | 2509 | `result-track:879a3b9eca26667bcdb112493abbb26ea4fe8152701ae2c2f2becc1d719ac11a` |
| 97 | `lemma` | [prod_one_sub_one_div_prime_tendsto_zero](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/prod-one-sub-one-div-prime-tendsto-zero.md) | 2590 | `result-track:295524d516bc04faeff5c14c362c0bb15a351c79074fd83c01433c9028500f5a` |
| 98 | `lemma` | [exists_phi_div_self_lt](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/exists-phi-div-self-lt.md) | 2619 | `result-track:f8c59dc4b2e347406386d7eecb65f0ecb15611d5e992af71afef348f6bf0dacc` |
| 99 | `lemma` | [primeCounting_is_o_id](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/primecounting-is-o-id.md) | 2644 | `result-track:5a799ca26e5b840b47bb3d3f52ff92ccddfff58dfdaa6140ea73ea9a685bbc3d` |
| 100 | `lemma` | [large_range_split](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/large-range-split.md) | 2680 | `result-track:def523010281a36b618b97bf6d37c86ce50d64e1f1e678566a6a346d95bf1292` |
| 101 | `lemma` | [large_prime_sum_split](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/large-prime-sum-split.md) | 2685 | `result-track:b4fb8e813e4a142eea05d4f846068ecc9dee6a637f25ebfa0aa5582ed4111c88` |
| 102 | `lemma` | [boundary_term_le](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/boundary-term-le.md) | 2698 | `result-track:0deb70cafddb9e4904aba90766fe73467912f90ae3149a2c31a90665803c2d9a` |
| 103 | `theorem` | [Params.initial.bound_score_4](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-bound-score-4.md) | 2746 | `result-track:d13897e7a4cbe5ef742cc4a39a1c023824ac3962f96dbae96ea6fc61fdc2eb9f` |
| 104 | `lemma` | [primeCounting_le_bound](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/primecounting-le-bound.md) | 2809 | `result-track:8c4a5df7029e0ee8aa76b813d68637836ccae4a175ad9415bce2096fb7749511` |
| 105 | `lemma` | [tendsto_primeCounting_div_id_zero](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/tendsto-primecounting-div-id-zero.md) | 2860 | `result-track:00f55f837f557486b649285beb6eb9b492a1ca7b3a32a957dfe5f97844a7d5ed` |
| 106 | `theorem` | [Params.initial.bound_score_5](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-bound-score-5.md) | 2887 | `result-track:37f349e4129373391d2724e86dbc72c1530d2c4194211cecf1aac44640bc020a` |
| 107 | `theorem` | [Params.initial.score](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/params-initial-score.md) | 2933 | `result-track:9737d3c674d3f8404c95e9a826c77a132b90c0e8d7a231374dc76d36a8ebc98e` |
| 108 | `theorem` | [Solution_1](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/solution-1.md) | 3024 | `result-track:880a6d4f650191b2ecf685bf376820de06fd34ad5ef913bb0ada83ba3550b35f` |
| 109 | `def` | [pairProd](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/pairprod.md) | 3094 | `declaration-track:90bf206f0f3327e2cbecc8149a998d946bccc7c0d0cc4d1ccbbffff25fbf58f7` |
| 110 | `lemma` | [pairProd_prod](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/pairprod-prod.md) | 3100 | `result-track:34c46ff7395d8ecdb5e7fd5736807620daabbcbea882dd28d50bdca25da9abe1` |
| 111 | `lemma` | [pairProd_length](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/pairprod-length.md) | 3107 | `result-track:e48b9c5d713842c62062392775c2f115892c37b1848321f248c6b801da0f53f1` |
| 112 | `lemma` | [pairProd_bound](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/pairprod-bound.md) | 3114 | `result-track:0f32230e3010ca1d90adfc2373a5be7d396a181fc795545ad0755a624ad6e3f5` |
| 113 | `theorem` | [Solution_2](../../../../GeneralTopology/Erdos392Namespaced.lean/declarations/solution-2.md) | 3140 | `result-track:db309554bfe4ca469e4d5b6734c22f00f9f3f193a93c872bf5c67f38dd120cc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b68a53cfa8f562df7a0199d92dce2184f732570b9230059e7fdaf8c9eecf5e63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
