# Verification target: Nat Nth Nth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9062ecc0f5dd233f03b73050d057b5fa46a15d2a",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9062ecc0f5dd233f03b73050d057b5fa46a15d2a`.

Source path: `GRWTSK/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.GetD` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Count` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Monotone` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OmegaCompletePartialOrder` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nth](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth.md) | 51 | `declaration-track:ef646c0482d2df46d2a6fc83442834e0eba9c6b6136e6b966f22a22e4a6bcfa6` |
| 2 | `theorem` | [nth_of_card_le](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-of-card-le.md) | 63 | `result-track:c7a1526b2fd8dad5cb9f3be61872ff8e1e8cfcf3ff30795bd57997af685bf9a7` |
| 3 | `theorem` | [nth_eq_getD_sort](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-eq-getd-sort.md) | 66 | `result-track:041e1a18d92f039f7d0a63c8cc2c8b803d44dcd69455d7f09bd1271e5b302749` |
| 4 | `theorem` | [nth_eq_orderEmbOfFin](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-eq-orderemboffin.md) | 70 | `result-track:4b73f5eedb43672e3688901181005d44f4afbd9cd9ad367b11a6f6281f667489` |
| 5 | `theorem` | [nth_strictMonoOn](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-strictmonoon.md) | 74 | `result-track:2b73b1e3f7879f672806b67fed3370450eeacc7115ee9d32cf4ce3e4c3e6b665` |
| 6 | `theorem` | [nth_lt_nth_of_lt_card](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-lt-nth-of-lt-card.md) | 80 | `result-track:193a11f49c739c5567b0f942602c767b6bd800e6a25beb8fe09e65fbc5741da7` |
| 7 | `theorem` | [nth_le_nth_of_lt_card](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-le-nth-of-lt-card.md) | 84 | `result-track:9f2266974433f3b2f5abfb615b8810ea6257ddb81dbda3a4f813be4132b66d4a` |
| 8 | `theorem` | [lt_of_nth_lt_nth_of_lt_card](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/lt-of-nth-lt-nth-of-lt-card.md) | 88 | `result-track:1b3b90e3a1201f2c47be14bec2cedb651303b310b5de05a9e27240ae8652b862` |
| 9 | `theorem` | [le_of_nth_le_nth_of_lt_card](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/le-of-nth-le-nth-of-lt-card.md) | 92 | `result-track:8ee32ee4856db901c1100dcd88d6168fbfd3964a26ae1a3a16d25c1b8bbf2cb6` |
| 10 | `theorem` | [nth_injOn](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-injon.md) | 96 | `result-track:4e043f596fbe481f30b245a1d03c66848e3e1c0f73c3850aa4c29c57179c00c6` |
| 11 | `theorem` | [range_nth_of_finite](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/range-nth-of-finite.md) | 99 | `result-track:5c51c9f94f2139b82ea9d075de3ef9366358eb0963b158257439e7472402bb41` |
| 12 | `theorem` | [image_nth_Iio_card](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/image-nth-iio-card.md) | 104 | `result-track:0ad06ee38352e6c5e133f7c74cec2ec9f1af06a76bda322b7f8d80af95ee143c` |
| 13 | `theorem` | [nth_mem_of_lt_card](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-mem-of-lt-card.md) | 112 | `result-track:440fbea2e0ae96c0fa82d9fc38a66b7e3ed27588c3024ae270c5137d35df371a` |
| 14 | `theorem` | [exists_lt_card_finite_nth_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/exists-lt-card-finite-nth-eq.md) | 116 | `result-track:7ed26d8ae887880685a166591003205cb16c3a29480f804b5899f1074b166f4a` |
| 15 | `theorem` | [nth_apply_eq_orderIsoOfNat](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-apply-eq-orderisoofnat.md) | 125 | `result-track:5c612aae04ae37f4e8e937b487a7cd1466f0e49d32a8ea5ae046436f16623842` |
| 16 | `theorem` | [nth_eq_orderIsoOfNat](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-eq-orderisoofnat.md) | 129 | `result-track:076dd178ab3f97b8795310d445bbd242052075e7a1a9f2c9f440d447e28eaa57` |
| 17 | `theorem` | [nth_strictMono](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-strictmono.md) | 133 | `result-track:d1a60b65a9c59c956dc7a70390128c68432e59c5ca33e0bc06d28b29bd805b11` |
| 18 | `theorem` | [nth_injective](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-injective.md) | 137 | `result-track:81285768c98ea8abad4cdb571d888166e220f4b3007169bc2e3e8acc5ea8d12e` |
| 19 | `theorem` | [nth_monotone](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-monotone.md) | 140 | `result-track:01b5ec956a023a516fc4031710f9a42c3f1a64da5a03e2faf91178c3726184eb` |
| 20 | `theorem` | [nth_lt_nth](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-lt-nth.md) | 143 | `result-track:8440b58b4b937060cc673d68ac84b8e02416fc54db2328ab20fc76271a025a35` |
| 21 | `theorem` | [nth_le_nth](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-le-nth-source-edition-2.md) | 146 | `result-track:9d2da7cd813ef40789fd473bccd2f283a1f3f794fa9c115a626c0419ed7ce2e8` |
| 22 | `theorem` | [range_nth_of_infinite](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/range-nth-of-infinite.md) | 149 | `result-track:78cebaf89eda48474efd52bb715b0ba0101bf46bbe62732d2a9b2e5b08648e9c` |
| 23 | `theorem` | [nth_mem_of_infinite](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-mem-of-infinite.md) | 154 | `result-track:b97eb537adce6565b6f53510f351b974641563d4d995f23720cf39eeca0eff8f` |
| 24 | `theorem` | [exists_lt_card_nth_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/exists-lt-card-nth-eq.md) | 161 | `result-track:b81a7546d1f1196a05529a3a86c4b7a4653ca31ef408cec3c577b01d42f82112` |
| 25 | `theorem` | [subset_range_nth](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/subset-range-nth.md) | 170 | `result-track:522815208ca259b17257c51b2a2861346603b9646a20fae820202786cf34d4bc` |
| 26 | `theorem` | [range_nth_subset](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/range-nth-subset.md) | 174 | `result-track:aba772d7efb704868e8e546692a8757aa0a22911359b1fb42c564d07311c9a37` |
| 27 | `theorem` | [nth_mem](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-mem.md) | 178 | `result-track:80b1c82c5d00c4783d1122295968525d11adb7ea35c407343c36c28fe506cb91` |
| 28 | `theorem` | [nth_lt_nth'](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-lt-nth-source-edition-2.md) | 182 | `result-track:e111218c051ddae764ea9df761b977b359cd004dcada07a37550a822a4f75089` |
| 29 | `theorem` | [nth_le_nth'](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-le-nth.md) | 187 | `result-track:319b30b7a9ba2ab1da618cefb96f40301678b88bc72799aed956bb86088bb1c1` |
| 30 | `theorem` | [le_nth](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/le-nth.md) | 192 | `result-track:a398821b39b91f348cbc1b0b03a19f9de7b661f4fa8e428fcd4ba1cf53200dca` |
| 31 | `theorem` | [isLeast_nth](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/isleast-nth.md) | 197 | `result-track:d2b5e97dc349fda9c11b5e96a414d3b92b929877bfd7f6e375cd86c69204a028` |
| 32 | `theorem` | [isLeast_nth_of_lt_card](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/isleast-nth-of-lt-card.md) | 203 | `result-track:6861d4234f02d34ebf9eff21e83f2f93956663fa093ce34b71b1c172151d4376` |
| 33 | `theorem` | [isLeast_nth_of_infinite](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/isleast-nth-of-infinite.md) | 207 | `result-track:f7cd22d56b9dfc7ed8fa3b5c853d1cc614148635a76567f7b3eff6dcfad67c27` |
| 34 | `theorem` | [nth_eq_sInf](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-eq-sinf.md) | 215 | `result-track:29a2916d01daac6d18119d43be25ff9c5952e3e63583d484fb7e35152fb01796` |
| 35 | `theorem` | [nth_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-zero.md) | 225 | `result-track:dd95f63590005928ec3853a083539c898fb02b80248a6161549c26ab55f930e9` |
| 36 | `theorem` | [nth_zero_of_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-zero-of-zero.md) | 228 | `result-track:094a29464563e9c43f62bd075ee79261f0863ced8edc087355133130d37f0d6f` |
| 37 | `theorem` | [nth_zero_of_exists](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-zero-of-exists.md) | 230 | `result-track:9cb92ca793e9c1f58cd656f91f1045da60ebc201b65da0b93970ad8952d7b529` |
| 38 | `theorem` | [nth_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-eq-zero.md) | 233 | `result-track:b4944437ef4dcb39cae786a7ff259522561b064a9b9e250be9f8483811e282b8` |
| 39 | `lemma` | [lt_card_toFinset_of_nth_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/lt-card-tofinset-of-nth-ne-zero.md) | 241 | `result-track:751336a290fd8d8ca36dc40d40dad7e1a22a490884ad74ff77a0db41ac1f3191` |
| 40 | `lemma` | [nth_mem_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-mem-of-ne-zero.md) | 246 | `result-track:a7a8f7bfa933ecca73f316511b309abb22142580ecc3296afbeeee3d94abd3b8` |
| 41 | `theorem` | [nth_eq_zero_mono](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-eq-zero-mono.md) | 249 | `result-track:8c890399e02bc34d8d4290d031a699293015417e4ba6774c00badfe22312b58c` |
| 42 | `lemma` | [nth_ne_zero_anti](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-ne-zero-anti.md) | 253 | `result-track:39119a90eb084fa3ef692a27cdd0f0c674387d0429ac355f3d8522715dab72c9` |
| 43 | `theorem` | [le_nth_of_lt_nth_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/le-nth-of-lt-nth-succ.md) | 256 | `result-track:530ebe6a7cd99bee5b7d28bd095fce9cfd73678a71ffd025d81a6becbaa97718` |
| 44 | `lemma` | [nth_mem_anti](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-mem-anti.md) | 267 | `result-track:6ece75694fa40e0283a044a55e91823fdcea52f26317fd1125aa33b749922387` |
| 45 | `lemma` | [nth_comp_of_strictMono](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-comp-of-strictmono.md) | 279 | `result-track:5408c53caea99542140f396fba8daf2561dc1c8dea89c4d8cad692c91e5a7ba8` |
| 46 | `lemma` | [nth_add](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-add.md) | 306 | `result-track:ec006be2a8b95e9f72a31cbc40e46472e98aaa1f8e4622da0a131bb0125bfdbf` |
| 47 | `lemma` | [nth_add_eq_sub](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-add-eq-sub.md) | 314 | `result-track:a14d42105f87f89f37d157bbfc7e0ee6d7b66c036cc432f96dd053117bcdede5` |
| 48 | `lemma` | [nth_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-add-one.md) | 318 | `result-track:cabdbbb6338b6b62372af1db9affaade457ce4e5bd1ec8d29c16d46512723f60` |
| 49 | `lemma` | [nth_add_one_eq_sub](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-add-one-eq-sub.md) | 322 | `result-track:09a7d873b5f56bc50286e1b7b1536fd11c5fa1cd29ca22b0b4dc71dcf5a2ec96` |
| 50 | `theorem` | [count_nth_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/count-nth-zero.md) | 331 | `result-track:405da9106245337f2d1805127fe79f1b4353e8978955c337be069a746553d487` |
| 51 | `theorem` | [filter_range_nth_subset_insert](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/filter-range-nth-subset-insert.md) | 335 | `result-track:f1fe3eeef96c1d763b165539908f2755e74cf3c133e45c80c4a5fbd962a97989` |
| 52 | `theorem` | [filter_range_nth_eq_insert](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/filter-range-nth-eq-insert.md) | 343 | `result-track:4d861a8263d3bf66e74b7b048ada527876c1c869af2a108ccc78dd20c3efab4c` |
| 53 | `theorem` | [filter_range_nth_eq_insert_of_finite](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/filter-range-nth-eq-insert-of-finite.md) | 353 | `result-track:79bd9a8b3f367d7c3a75922a37a377784b92f0fda8e5619cc228318a4276ad8b` |
| 54 | `theorem` | [filter_range_nth_eq_insert_of_infinite](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/filter-range-nth-eq-insert-of-infinite.md) | 358 | `result-track:f679db07fc285c16813dbbb9db46aba349a8626f7d500e44cef530c8a8900651` |
| 55 | `theorem` | [count_nth](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/count-nth.md) | 362 | `result-track:4d6e958026347bcaebfe0b9d87a22d6205a8a8ee02ff585b8a1c377ff4e8452a` |
| 56 | `theorem` | [count_nth_of_lt_card_finite](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/count-nth-of-lt-card-finite.md) | 370 | `result-track:9e5af0a8676d3e47df94d3bceaa346a3648bea0054774df8f57dc551f01f9004` |
| 57 | `theorem` | [count_nth_of_infinite](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/count-nth-of-infinite.md) | 374 | `result-track:099d769a9b58cd66d87d11657025165f15991c0e59256c57e5dffa60cc962fe7` |
| 58 | `theorem` | [surjective_count_of_infinite_setOf](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/surjective-count-of-infinite-setof.md) | 377 | `result-track:3a49ff7120f735154a011e119b5edb2021b9f51afc1e1bcddac6f891770a38f5` |
| 59 | `theorem` | [count_nth_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/count-nth-succ.md) | 381 | `result-track:68c9d8834e78c35268361a6e478e17a215c5690e690efa33b48ef83b1ec874d7` |
| 60 | `lemma` | [count_nth_succ_of_infinite](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/count-nth-succ-of-infinite.md) | 384 | `result-track:22c9545a34115e6b1b7d564d0a7e8b2a556cdcef02829b50c86ac45b7c1ce305` |
| 61 | `theorem` | [nth_count](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-count.md) | 389 | `result-track:8d878fe65aba1e713090f4770c365bccaaf52efea558914a2943418bb3d50c0e` |
| 62 | `theorem` | [nth_lt_of_lt_count](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-lt-of-lt-count.md) | 393 | `result-track:82e50e98391519c730e7f38576c0ecde9f440ec4fbf679c4b932578035a1f0b8` |
| 63 | `theorem` | [le_nth_of_count_le](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/le-nth-of-count-le.md) | 398 | `result-track:25e98776887a2b9e6786e67c43f3ca392e8a42c58841ef92ef06142a4362b5d5` |
| 64 | `theorem` | [count_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/count-eq-zero.md) | 401 | `result-track:d293444c025c18b612381216ac22089622193382a7be2f9267dfeda4be3ba167` |
| 65 | `theorem` | [nth_count_eq_sInf](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-count-eq-sinf.md) | 405 | `result-track:b56250bee47c95cf58eee3332d28e8750c0f8a2fca8ff541697fb18c728361f9` |
| 66 | `theorem` | [le_nth_count'](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/le-nth-count-source-edition-2.md) | 412 | `result-track:c4710060ce37ac8f0cb725e0f1bbac298df33c51714047398110cd8b60a18935` |
| 67 | `theorem` | [le_nth_count](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/le-nth-count.md) | 415 | `result-track:2bcc9cbf96122c483ab583a89242c623b0b81c57f79576c2717da0e6c45dbacd` |
| 68 | `def` | [giCountNth](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/gicountnth.md) | 421 | `declaration-track:a7728741669eaa61fc6492efe2c2d80d36f7c6acd0b48c701383fd2a75384cc2` |
| 69 | `theorem` | [gc_count_nth](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/gc-count-nth.md) | 425 | `result-track:2a37a130938d18bf9ce968bcb4524fa6e3959c782a46d439bad2ecdf04fd6976` |
| 70 | `theorem` | [count_le_iff_le_nth](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/count-le-iff-le-nth.md) | 428 | `result-track:7e3a663f8b3d71482e5db6d37ac0809003a02eb66989e642006b85e5c59f033a` |
| 71 | `theorem` | [lt_nth_iff_count_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/lt-nth-iff-count-lt.md) | 431 | `result-track:53c57dc954fe7e2b6d03ffe20542a134decb56431d356d9caa89b934e4edadb4` |
| 72 | `theorem` | [nth_of_forall](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-of-forall.md) | 436 | `result-track:715b37eb5f3aad94c88ea530d4b705a10838b45942b63bd0696be42a787a5080` |
| 73 | `theorem` | [nth_true](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-true.md) | 439 | `result-track:ee20e23d84a67a1f9be79a49bbc5e04149e02d1176183c356222a2f42f2615c2` |
| 74 | `theorem` | [nth_of_forall_not](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-of-forall-not.md) | 441 | `result-track:e26fe0e661b50f0f4d80979a981a5b83fdc526d89c019c97148e6aa813abea13` |
| 75 | `theorem` | [nth_false](../../../../../NumberTheory/ElementaryNumberTheory/NatNthNth.lean/declarations/nth-false.md) | 450 | `result-track:ccc8b8459735a48e1a3a2cc91173dad56b050521eb92de40cc843d0eb7591dad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ce719e72fcb3a0da414b427d8832d4c1039466d7c271fe4f3dc5c7906b7dbb7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
