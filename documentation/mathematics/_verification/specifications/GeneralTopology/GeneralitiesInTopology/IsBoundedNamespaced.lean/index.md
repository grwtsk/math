# Verification target: Is Bounded Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8035e7527d4598572e2c50940cc0b700f58f8da3",
  "lexical_observation_count": 108,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7b82b73521f9e39fbde3a3d89eeec9a6ce8a4d31a455005074008d5ab38555d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8035e7527d4598572e2c50940cc0b700f58f8da3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7b82b73521f9e39fbde3a3d89eeec9a6ce8a4d31a455005074008d5ab38555d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7b82b73521f9e39fbde3a3d89eeec9a6ce8a4d31a455005074008d5ab38555d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Cofinite` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBounded_iff](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isbounded-iff.md) | 39 | `result-track:aa692900430d4ff254468e5395558276282d560a735b6a76402b8ddc7de5e026` |
| 2 | `theorem` | [isBoundedUnder_of](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-of.md) | 44 | `result-track:8648cb292e3fdcb5912eb3e1cabe31330e26c054866d966eed1245e74d9c3f7a` |
| 3 | `theorem` | [isBounded_bot](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isbounded-bot.md) | 47 | `result-track:df95b00032f2434fc2a7f447b1dc8b68f3c1416d98fe29f7287fc5dd61f3c25e` |
| 4 | `theorem` | [isBounded_top](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isbounded-top.md) | 49 | `result-track:c04ff35cb50bd223be94f0b0d48956fe5e4cca2cfb68e1d10f6319b735bfb7fc` |
| 5 | `theorem` | [isBounded_principal](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isbounded-principal.md) | 51 | `result-track:d812cd05e133ba79584804f0b3e74909406b4926b5ea7f6fdf8ee7936eb2b6c4` |
| 6 | `theorem` | [isBounded_sup](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isbounded-sup.md) | 54 | `result-track:486a05b305b250d98ae80f6271e02a422d26e57e6b695153e6fe0d0c60530f3f` |
| 7 | `theorem` | [IsBounded.mono](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isbounded-mono.md) | 61 | `result-track:5ae30d3ab90a2b5d7092dad7365dd23e89c3d7823b5c012282ff019afc7a2f89` |
| 8 | `theorem` | [IsBoundedUnder.mono](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-mono.md) | 64 | `result-track:a08e236b0f49e3b8d14ceea5ef506d51c676e3e421f3d435cb4a5cb178505117` |
| 9 | `theorem` | [IsBoundedUnder.mono_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-mono-le.md) | 67 | `result-track:d28ed8c04eeff648087ffd62770ad7f2e966f99c36fd53ed556c4f9e87c93043` |
| 10 | `theorem` | [IsBoundedUnder.mono_ge](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-mono-ge.md) | 72 | `result-track:f20a7ee5eedd4560868303264e33c3dcd18c9c93cd954bb9d9f9d74f9d05d8fb` |
| 11 | `theorem` | [isBoundedUnder_const](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-const.md) | 76 | `result-track:259fb7094d89cc45c3a77dad383ab3ca8dd347e8f618ab310b5e2c46cf29adec` |
| 12 | `theorem` | [IsBounded.isBoundedUnder](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isbounded-isboundedunder.md) | 79 | `result-track:2f1029a2112952fa6fa771fa989d560f48ec91284012dd071c0d495711f85038` |
| 13 | `theorem` | [IsBoundedUnder.comp](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-comp.md) | 83 | `result-track:8f03a372e9c2174de55bdff17472f9f77c2912dfeb555ee64cad04593ab9c721` |
| 14 | `lemma` | [isBoundedUnder_map_iff](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-map-iff.md) | 87 | `result-track:fd4936e874c6cbcd2b44109ba1542d95c56a94aeb473692bece7bda1f07d15e9` |
| 15 | `lemma` | [Tendsto.isBoundedUnder_comp](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/tendsto-isboundedunder-comp.md) | 92 | `result-track:864faa93d814ebd77c62ffd3186c8f23f90756a92d9d906c2e31ae3ddfb9ea8b` |
| 16 | `lemma` | [IsBoundedUnder.eventually_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-eventually-le.md) | 100 | `result-track:24cd4300ce77743b5f9d3e77c6b8ed9877b936e79c893dd56f2f59779a5fe1bf` |
| 17 | `lemma` | [IsBoundedUnder.eventually_ge](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-eventually-ge.md) | 106 | `result-track:a7f7ac72f2ce75464611b2d118f8b0196fa6d48776b580868894619954678197` |
| 18 | `lemma` | [isBoundedUnder_of_eventually_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-of-eventually-le.md) | 110 | `result-track:ea3146b31c149427532c3fe1b7588a4ea9f681b4bde6c3c18e6964c9c694cff7` |
| 19 | `lemma` | [isBoundedUnder_of_eventually_ge](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-of-eventually-ge.md) | 113 | `result-track:5c0694398dc6c070d28546b2e001061a402d189a9a6093263256e894f72607cb` |
| 20 | `lemma` | [isBoundedUnder_iff_eventually_bddAbove](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-iff-eventually-bddabove.md) | 116 | `result-track:f24dc412295f5502b3173fe5ff1052645039d9d67bf03e8321eb16b382ee9692` |
| 21 | `lemma` | [isBoundedUnder_iff_eventually_bddBelow](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-iff-eventually-bddbelow.md) | 124 | `result-track:5fabce39e1ed194c3e5f7757dd12adb548256cdcfaa66a2a62ebfaf930c2338e` |
| 22 | `lemma` | [Is Bounded Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-source-line-128-occurrence-2.md) | 128 | `result-track:6aba5158aaf82f27df6de190862fbccb005b5051859c50fd8f879f4613f70fab` |
| 23 | `lemma` | [Is Bounded Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-of-range-source-line-132-occurrence-2.md) | 132 | `result-track:8822270f6c96f3c64b17cd49e26bc2aa84da20c573e9d98012ae30a094e9e05e` |
| 24 | `lemma` | [Is Bounded Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder.md) | 135 | `result-track:1fa5373cc05db9d92b7d0a6bc55ea49443a5ff1e4e3076cb29068abac4511880` |
| 25 | `lemma` | [Is Bounded Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-of-range.md) | 139 | `result-track:30b590b6a6e78bae0ecdb448b238f32a1852763a75ef61d36d883fde62fc23a9` |
| 26 | `lemma` | [IsBoundedUnder.le_of_finite](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-le-of-finite.md) | 142 | `result-track:68fbf2886aeb88aaf90353a09ca797ec123383e902b8b9e8927c2ade05351d57` |
| 27 | `lemma` | [IsBoundedUnder.ge_of_finite](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-ge-of-finite.md) | 146 | `result-track:532c28d72d46f2cd7e979bbff2457fd853e35ed57e9b68177b1a8cf8ad735278` |
| 28 | `theorem` | [Is Bounded Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-le-comp-source-line-152-occurrence-2.md) | 152 | `result-track:cba690b6a9932c73c742a4a8e992164ce19335bdddb4c48b58bcea7b7d9969b8` |
| 29 | `theorem` | [Is Bounded Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-ge-comp-source-line-157-occurrence-2.md) | 157 | `result-track:cbaea6367e967b506e98e384ce275332a03a70af76caf29bbd4eb21d6beaeb8c` |
| 30 | `theorem` | [Is Bounded Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-le-comp.md) | 162 | `result-track:14991f731e75ea4806ef27d00b011f07a96a502ee0ab3487de2ff92dc8be4b06` |
| 31 | `theorem` | [Is Bounded Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-ge-comp.md) | 167 | `result-track:322b9605a045f48507df14c46896eece13542ab568f455a0d3e1551af894fb31` |
| 32 | `theorem` | [not_isBoundedUnder_of_tendsto_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/not-isboundedunder-of-tendsto-attop.md) | 172 | `result-track:652c0781d3bf8858618e7b695935c27bcf75ceb9fccf4671d8c70ee7afc16ee9` |
| 33 | `theorem` | [not_isBoundedUnder_of_tendsto_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/not-isboundedunder-of-tendsto-atbot.md) | 182 | `result-track:5958adb618e1a34fe83ce62fc99a471810bccc3ffdf7423cbda44698da985ad6` |
| 34 | `theorem` | [IsBoundedUnder.bddAbove_range_of_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-bddabove-range-of-cofinite.md) | 186 | `result-track:8d48b4bf2a18b2972b0540768d25a4196972f77246e6e648fc1958d0f55726b9` |
| 35 | `theorem` | [IsBoundedUnder.bddBelow_range_of_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-bddbelow-range-of-cofinite.md) | 193 | `result-track:a15a0074d846e8c4f84b3644eaff7c7fc27d39eae89712fa4b2ca1ef86f9a537` |
| 36 | `theorem` | [IsBoundedUnder.bddAbove_range](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-bddabove-range.md) | 197 | `result-track:a30969c6f57377853e0d0490fad289d6a0d71efc10077493704e37ad0ab5f5fb` |
| 37 | `theorem` | [IsBoundedUnder.bddBelow_range](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-bddbelow-range.md) | 202 | `result-track:add5c9d4777a2563cd62a8b4b6bd4d5b8bc49fdbb7249fc3906820e489fc9fba` |
| 38 | `theorem` | [IsCobounded.mk](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscobounded-mk.md) | 210 | `result-track:299aa42faae86366d95303fe1142aca6bd56670ae5d48c77f3d44238e48211bb` |
| 39 | `theorem` | [IsBounded.isCobounded_flip](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isbounded-iscobounded-flip.md) | 217 | `result-track:f9dda400098b958f9550c0541c5be7b4a29ce78388dd4eacad4a088fd67ee6d3` |
| 40 | `theorem` | [IsBounded.isCobounded_ge](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isbounded-iscobounded-ge.md) | 223 | `result-track:f2064c98d26632790c47caeac4c910f84462b501deb3ee64823beb9b403b95ae` |
| 41 | `theorem` | [IsBounded.isCobounded_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isbounded-iscobounded-le.md) | 227 | `result-track:be7121eae282256d57827f38c161c9881c1dd9c03e57b3f2bf61a0c92cab2649` |
| 42 | `theorem` | [IsBoundedUnder.isCoboundedUnder_flip](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-iscoboundedunder-flip.md) | 231 | `result-track:f9d474a23a53132fe21e60a3a024cdcb1c111bf9e21899cd08e64eb42e524064` |
| 43 | `theorem` | [IsBoundedUnder.isCoboundedUnder_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-iscoboundedunder-le.md) | 235 | `result-track:ef9144fe588b5e7b86c1ee4bec3feb3c8980a864bd3657ecc9a938fb235b4192` |
| 44 | `theorem` | [IsBoundedUnder.isCoboundedUnder_ge](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-iscoboundedunder-ge.md) | 239 | `result-track:de98504e1e096265d3140e250c4f4464de05bd8e9ec4d1b2701b1b51a8889165` |
| 45 | `lemma` | [isCoboundedUnder_le_of_eventually_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscoboundedunder-le-of-eventually-le.md) | 243 | `result-track:51d063ac1ab58f05230467b3c1bb122f9ce184203ef4d5c0dd2a7c7b30af1a5d` |
| 46 | `lemma` | [isCoboundedUnder_ge_of_eventually_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscoboundedunder-ge-of-eventually-le.md) | 248 | `result-track:bab09821e9479533b41668ce469d5f222a1007c7e83d83057e0d8df2387da263` |
| 47 | `lemma` | [isCoboundedUnder_le_of_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscoboundedunder-le-of-le.md) | 253 | `result-track:546dd5667caf52639f3513311509205404eb2c48a2d38433ce98e0dcaf50966a` |
| 48 | `lemma` | [isCoboundedUnder_ge_of_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscoboundedunder-ge-of-le.md) | 258 | `result-track:394038c27fae864a4dcb5367d825aaf4bb770401c3b72529e68e3130ecb5573a` |
| 49 | `theorem` | [isCobounded_bot](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscobounded-bot.md) | 263 | `result-track:69874eaa33fcfca6d4e705674a1e792b48c04c546562fbeafcda47e40cf04356` |
| 50 | `theorem` | [isCobounded_top](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscobounded-top.md) | 265 | `result-track:61053c4cb30dadd16782f7e6c219a03e69cce8ddb19bb5464ebfc6dd10a51330` |
| 51 | `theorem` | [isCobounded_principal](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscobounded-principal.md) | 269 | `result-track:6c36aea8a6475284a0bd501c1d5f1c5f2e1cb7789f1e286bc47ba99b03806d01` |
| 52 | `theorem` | [IsCobounded.mono](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscobounded-mono.md) | 272 | `result-track:f21dcf219ba7f684a1005560ce39510f4b0845ef071694e9dadf0a136ecefb44` |
| 53 | `lemma` | [IsCobounded.frequently_ge](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscobounded-frequently-ge.md) | 277 | `result-track:13b2a8b74216a02f05511b153f8d671bc1b22097632a5ff98a09bea3da37c3b7` |
| 54 | `lemma` | [IsCobounded.frequently_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscobounded-frequently-le.md) | 288 | `result-track:48e7bd066e25c259b5dd5d97a045438e90a754e0a8b74aa5521a0bdbca061dcd` |
| 55 | `lemma` | [IsCobounded.of_frequently_ge](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscobounded-of-frequently-ge.md) | 293 | `result-track:a8ec4ca82bdcaceeebd1e8cec15f6f89cddfb6015a7f2a28ead67068ca98e233` |
| 56 | `lemma` | [IsCobounded.of_frequently_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscobounded-of-frequently-le.md) | 302 | `result-track:ed5e6abc9fb869744a1df7c0163da5e9d8f9c40e9408e09a3d45ab7c9a702ecf` |
| 57 | `lemma` | [IsCoboundedUnder.frequently_ge](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscoboundedunder-frequently-ge.md) | 306 | `result-track:739823727a51a06201f72875eed0c423617554ed8f43d1132d618166a6a60af1` |
| 58 | `lemma` | [IsCoboundedUnder.frequently_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscoboundedunder-frequently-le.md) | 311 | `result-track:755c388a7c14a6c1c9d34a3dd50d3bcd60962823f3f47d8d9276bb680118d3ed` |
| 59 | `lemma` | [IsCoboundedUnder.of_frequently_ge](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscoboundedunder-of-frequently-ge.md) | 316 | `result-track:58f66e8c9f56c87a560b2d76806c04aeeff28c9d7ad2ff63eb620f154c99349f` |
| 60 | `lemma` | [IsCoboundedUnder.of_frequently_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscoboundedunder-of-frequently-le.md) | 321 | `result-track:fe11222c6f5cf63ddf57d2a0d5f628073508b4742d75789e52506a8de546d68d` |
| 61 | `lemma` | [isBoundedUnder_sum](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-sum.md) | 335 | `result-track:d37462cfb3c056c47d54309a470fae9fda3bb6b893aee7ce9e6acc36ccc637b3` |
| 62 | `lemma` | [isBoundedUnder_ge_add](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-ge-add.md) | 350 | `result-track:86cbe4b4b6191dd3777213133df8ecf933f63d3ecef01942ab4f02770ca1953b` |
| 63 | `lemma` | [isBoundedUnder_le_add](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-le-add.md) | 359 | `result-track:68bd12420edb415a4834adaa74c769d2b021742e661ea11db8be0aeab7dcf128` |
| 64 | `lemma` | [isBoundedUnder_le_sum](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-le-sum.md) | 368 | `result-track:b4af889d7688e8f0ef8a8997067cfa932df560d8896819e4d7f9e15c2052c417` |
| 65 | `lemma` | [isBoundedUnder_ge_sum](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-ge-sum.md) | 373 | `result-track:e0f629707dc35187d547cfafb5ea55ad8b9efa351d3b06b209402c137b609e70` |
| 66 | `lemma` | [isCoboundedUnder_ge_add](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscoboundedunder-ge-add.md) | 387 | `result-track:f5c2a5b9a68fcbb413080515cf805c0683fda604372f36748d0520dfb0dfdbe8` |
| 67 | `lemma` | [isCoboundedUnder_le_add](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscoboundedunder-le-add.md) | 395 | `result-track:e58e9d001c8454cd8173f5f006a5e1dc5d8b49eeb72d5a372135a1f4eda907f0` |
| 68 | `lemma` | [isBoundedUnder_le_mul_of_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-le-mul-of-nonneg.md) | 407 | `result-track:5e7ce22d22f3a380f1ef8bfe591c020ffa8ff6c52fb922a5dc29d919ddeb1aac` |
| 69 | `lemma` | [isCoboundedUnder_ge_mul_of_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscoboundedunder-ge-mul-of-nonneg.md) | 421 | `result-track:96e857d1b4073749cd823bac5da18fa77581d0f6c42d5f887b2fdede661e731b` |
| 70 | `theorem` | [isBounded_le_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isbounded-le-atbot.md) | 439 | `result-track:e0277a91b84fc5846a9e7490e93364b155a2cf480ee7c39cc6dd2435f9651429` |
| 71 | `theorem` | [isBounded_ge_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isbounded-ge-attop.md) | 442 | `result-track:b95d959ee1538c792dfeaf6d301daa118b5a07a78cfcbc5c717597c3dbf3e9de` |
| 72 | `theorem` | [Tendsto.isBoundedUnder_le_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/tendsto-isboundedunder-le-atbot.md) | 445 | `result-track:8c0c54b85adb3488369c40c6f8f1c8e8d94d4f98273948639f2dfb855f702f5a` |
| 73 | `theorem` | [Tendsto.isBoundedUnder_ge_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/tendsto-isboundedunder-ge-attop.md) | 448 | `result-track:8e41b768d9ad3514892f4ed36b02ae6bc0cdef3d72790f32eba658fd0affc5fe` |
| 74 | `theorem` | [bddAbove_range_of_tendsto_atTop_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/bddabove-range-of-tendsto-attop-atbot.md) | 451 | `result-track:a317ef23b19e6128a8c1566a98c6247bcae6985d3612ee7a0118a436055f25b0` |
| 75 | `theorem` | [bddBelow_range_of_tendsto_atTop_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/bddbelow-range-of-tendsto-attop-attop.md) | 455 | `result-track:4f3e3b017d57f86a31b8717e51ea65dcec2446a227c77848deade4fdb6306c45` |
| 76 | `theorem` | [isCobounded_le_of_bot](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscobounded-le-of-bot.md) | 461 | `result-track:eda8af1855464f3b48a1872e44059051600b46693fb7cf9c161eaffdd59f809e` |
| 77 | `theorem` | [isCobounded_ge_of_top](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscobounded-ge-of-top.md) | 464 | `result-track:a99f6caff1600622a1a11a279e0e9636ccdca777cdebbafe687bd78eb5fbeab9` |
| 78 | `theorem` | [isBounded_le_of_top](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isbounded-le-of-top.md) | 467 | `result-track:98b1690ba228524ccac0dcd69b12f633ed44684e0ba1c7740232eb5e3a60b3cd` |
| 79 | `theorem` | [isBounded_ge_of_bot](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isbounded-ge-of-bot.md) | 470 | `result-track:c22d22c3e6a2f7ca99d45d350f240c0d00904305aa50f0212d52a3dec7365938` |
| 80 | `theorem` | [Is Bounded Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-le-comp-source-line-474-occurrence-2.md) | 474 | `result-track:594a3cae216ab7f6b6ebe8e1088232b9015fa1e2be000b230f44a9f5ada6d9ff` |
| 81 | `theorem` | [Is Bounded Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-ge-comp-source-line-480-occurrence-2.md) | 480 | `result-track:33918fed90debb3c87ed635ce50bead02d49891e1e723e695ec75a8cb936cd06` |
| 82 | `theorem` | [isBoundedUnder_le_inv](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-le-inv.md) | 485 | `result-track:ea4a1e42dd99ef6ce0cf55739d25590802f6c0fcfbd72d1539d3f27310e023dc` |
| 83 | `theorem` | [isBoundedUnder_ge_inv](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-ge-inv.md) | 491 | `result-track:98b7a94d42d775fb4f93ee2911baedcac2849a48e3e7805b305c4458181e13c2` |
| 84 | `theorem` | [IsBoundedUnder.sup](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-sup.md) | 496 | `result-track:a1b33fdef51ee34ce824c52f0ee912f9e485d1e08f90b1e37c047d78f2c0318b` |
| 85 | `theorem` | [isBoundedUnder_le_sup](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-le-sup.md) | 504 | `result-track:64313b60a3f3d39212017eae52088723604375ce04d64425932ddb78c735c337` |
| 86 | `theorem` | [IsBoundedUnder.inf](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-inf.md) | 512 | `result-track:ed5bbcf8aef9dcec59b73874528209dcb8b4efdb4ba58bd2eb611a4bd407bd60` |
| 87 | `theorem` | [isBoundedUnder_ge_inf](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-ge-inf.md) | 518 | `result-track:9b5739483635a48275b0539b799302b4082ef886b3ccc46e3fed59495163cc74` |
| 88 | `theorem` | [isBoundedUnder_le_abs](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-le-abs.md) | 523 | `result-track:7fc3fe60b1d4bc2b7abfcb349404fcfdcad09b6a1cf0ef42d79bf258b9ea23e1` |
| 89 | `macro` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/macro.md) | 534 | `declaration-track:24d70a484b528bf8d30422a73337375b15104b65150e03420816a0893673dd4d` |
| 90 | `theorem` | [Monotone.isBoundedUnder_le_comp_iff](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/monotone-isboundedunder-le-comp-iff.md) | 548 | `result-track:2d67bffb221d7b976152f86c63537621101cdd3cde16f48b816254346561daaf` |
| 91 | `theorem` | [Monotone.isBoundedUnder_ge_comp_iff](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/monotone-isboundedunder-ge-comp-iff.md) | 556 | `result-track:cca55c96255c6b1c4519f2480976f0a3d964a195aff7f6bddb4a28a19b2ee7a7` |
| 92 | `theorem` | [Antitone.isBoundedUnder_le_comp_iff](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/antitone-isboundedunder-le-comp-iff.md) | 561 | `result-track:c510f35308288b325121cca87f238b26dff0e203bbe87f516fe88ab81e53c4d4` |
| 93 | `theorem` | [Antitone.isBoundedUnder_ge_comp_iff](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/antitone-isboundedunder-ge-comp-iff.md) | 566 | `result-track:ca011ede6ba8be1c541226a7b0787f7356131368ff7b5423d6d27a81b1f04078` |
| 94 | `theorem` | [isCoboundedUnder_le_max](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscoboundedunder-le-max.md) | 575 | `result-track:3f047d844ccbc751a5b5399f3700e29a14a8841650a813e3f901ffe3b19971f3` |
| 95 | `theorem` | [isBoundedUnder_le_finset_sup'](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-le-finset-sup-source-edition-2.md) | 589 | `result-track:394e1650a82e689e960afe6e01a02e0f198dfbd2a2d5b3fc5531c407487ed321` |
| 96 | `theorem` | [isCoboundedUnder_le_finset_sup'](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscoboundedunder-le-finset-sup.md) | 600 | `result-track:cf7aba69fdc26b7c1e2fd1b8fb4f01f39bfc58bf3bca40e786059fc607f1bb0d` |
| 97 | `theorem` | [isBoundedUnder_le_finset_sup](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-le-finset-sup.md) | 611 | `result-track:23e3d3ba1045cb281c3e37c37ebfa698829db66f58e404198a68306994d2cfd3` |
| 98 | `theorem` | [isBoundedUnder_ge_finset_inf'](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-ge-finset-inf-source-edition-2.md) | 620 | `result-track:fcf0a04b9d1a9f71e3960fe3c3d25e96293f40a0237e93ae6b2d2c79e2e1d298` |
| 99 | `theorem` | [isCoboundedUnder_ge_finset_inf'](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/iscoboundedunder-ge-finset-inf.md) | 625 | `result-track:f6cbc94ba42f5812b37f80083e6ca1aa893471cd25d97a271af8bd568d9bcf01` |
| 100 | `theorem` | [isBoundedUnder_ge_finset_inf](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/isboundedunder-ge-finset-inf.md) | 630 | `result-track:c97ad015e6c2d22ab7a52eff46a102cfa1da193807c7ec5852395a2741b75eb0` |
| 101 | `lemma` | [Monotone.frequently_ge_map_of_frequently_ge](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/monotone-frequently-ge-map-of-frequently-ge.md) | 641 | `result-track:c22ff835e1ab7616a9805f5e950afbc52c2554af31eea450ed54abca938163b7` |
| 102 | `lemma` | [Monotone.frequently_le_map_of_frequently_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/monotone-frequently-le-map-of-frequently-le.md) | 650 | `result-track:1edc2178eafe81672a5f3289acf1d12d5fa762f487d364b4addce2a6413884c7` |
| 103 | `lemma` | [Antitone.frequently_le_map_of_frequently_ge](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/antitone-frequently-le-map-of-frequently-ge.md) | 659 | `result-track:a029377338842bb1ede16d65f8c17bfc43c09bcb60a36b89aa5fb714ee402849` |
| 104 | `lemma` | [Antitone.frequently_ge_map_of_frequently_le](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/antitone-frequently-ge-map-of-frequently-le.md) | 664 | `result-track:e48c36bed595d314aaaf9138fc97a13dd7dc536ca49db1873d0f24e47d27e899` |
| 105 | `lemma` | [Monotone.isCoboundedUnder_le_of_isCobounded](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/monotone-iscoboundedunder-le-of-iscobounded.md) | 669 | `result-track:12a785b20ca16e4d4845e61f44a39246b070cf1404b898db885bf65203fbbd99` |
| 106 | `lemma` | [Monotone.isCoboundedUnder_ge_of_isCobounded](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/monotone-iscoboundedunder-ge-of-iscobounded.md) | 675 | `result-track:fdcefa94913ea8eae1caed1d0353194499194ba425a7ff02cca989820bc97e54` |
| 107 | `lemma` | [Antitone.isCoboundedUnder_le_of_isCobounded](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/antitone-iscoboundedunder-le-of-iscobounded.md) | 680 | `result-track:6d2682ee8cebf78bf477a807402a82102d1be02ecf5e14df1283141088edb416` |
| 108 | `lemma` | [Antitone.isCoboundedUnder_ge_of_isCobounded](../../../../../GeneralTopology/GeneralitiesInTopology/IsBoundedNamespaced.lean/declarations/antitone-iscoboundedunder-ge-of-iscobounded.md) | 685 | `result-track:a87073239b442486cf39c87b0390234885a9d890a00efedb7df6787f828f90ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7429cf96d8dd62dee52c03b1d944cb660d29c5c14bc2597267bb59df736674cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7b82b73521f9e39fbde3a3d89eeec9a6ce8a4d31a455005074008d5ab38555d6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7b82b73521f9e39fbde3a3d89eeec9a6ce8a4d31a455005074008d5ab38555d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
