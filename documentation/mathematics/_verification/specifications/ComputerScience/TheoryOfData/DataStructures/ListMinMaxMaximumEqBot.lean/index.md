# Verification target: List Min Max Maximum Eq Bot

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd19cc49825ac6982d62bc982709aa57d189e887",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantbcf0ebfd277e77330f4a228bc2425d66d4664fe469d241f27eeb55e30370d274.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd19cc49825ac6982d62bc982709aa57d189e887`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantbcf0ebfd277e77330f4a228bc2425d66d4664fe469d241f27eeb55e30370d274.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantbcf0ebfd277e77330f4a228bc2425d66d4664fe469d241f27eeb55e30370d274.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Induction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.MinMax` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WithBot` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [argAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argaux.md) | 36 | `declaration-track:3e26d500f0050e704cb00ffe9edf5f99a4038b0fdb57ae9c9a9402bde53df027` |
| 2 | `theorem` | [foldl_argAux_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/foldl-argaux-eq-none.md) | 40 | `result-track:c5fbf187f36c8b97e3b4205f5974aaf8d0ac21709fab4a4c5604c684e2c4b443` |
| 3 | `theorem` | [foldl_argAux_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/foldl-argaux-mem.md) | 49 | `result-track:c09fee87de46c1c5bc28fb3219a7721b1ab425616dce1ac4237b35c100b62a2c` |
| 4 | `theorem` | [argAux_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argaux-self.md) | 67 | `result-track:0d4bb974cebdb1e642ac02900424f845b89b06a65291d3785ad2c20de4c812b1` |
| 5 | `theorem` | [not_of_mem_foldl_argAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/not-of-mem-foldl-argaux.md) | 70 | `result-track:79c412a3ef1191cccdca10b63ac6a42c84f1cba4223504fa8d186a1dc97c1d24` |
| 6 | `def` | [argmax](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmax.md) | 98 | `declaration-track:eb4db75a62039fee579ce994bd4da4587d4dfb9c5797567bfaefc73c08eee0bb` |
| 7 | `def` | [argmin](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmin.md) | 104 | `declaration-track:b016b67da5899bc11af28f8eebe245bab076b038a7f04190f7a0e9e777b5ac90` |
| 8 | `theorem` | [argmax_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmax-nil.md) | 108 | `result-track:8e51aeda22217e813613695c6aa6dbb06f85b7b56c5f21f2d898d1f368ca0f9b` |
| 9 | `theorem` | [argmin_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmin-nil.md) | 112 | `result-track:b70cffe33bb9d0628812193464dd6291ed581656b8f2c6a13c1f2482a736d2d1` |
| 10 | `theorem` | [argmax_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmax-singleton.md) | 116 | `result-track:44e0938c87bc9351af1c4ed9580b79d042d3f7a033b6a5c20c872fee8b736a7c` |
| 11 | `theorem` | [argmin_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmin-singleton.md) | 120 | `result-track:303a61bcfdc90e10ca6ad78b62920851b579e44782e7d8812822e71b78fafbd8` |
| 12 | `theorem` | [not_lt_of_mem_argmax](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/not-lt-of-mem-argmax.md) | 123 | `result-track:5f7c5fd5441dde8cec8e40337960961c6f6273eb281622161d4c61b25ab3c385` |
| 13 | `theorem` | [not_lt_of_mem_argmin](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/not-lt-of-mem-argmin.md) | 127 | `result-track:b287026648551f54a56356256e733d4722fb1d3b50e5e2dc3299ab24eb774f25` |
| 14 | `theorem` | [argmax_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmax-concat.md) | 131 | `result-track:3056cead1da2c454f10ead8f92562102ad19765890bc45bd1c50fad8b5b679f4` |
| 15 | `theorem` | [argmin_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmin-concat.md) | 136 | `result-track:bac20edd4dbc2e8d7d529138093943c0aade01e8322619b23b63e907fa14f2ba` |
| 16 | `theorem` | [argmax_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmax-mem.md) | 141 | `result-track:9fd8ccf6d6920ec70b966eb743074ce901d59edc1eb1fa2550b0dee1e8d9c215` |
| 17 | `theorem` | [argmin_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmin-mem.md) | 145 | `result-track:5b06f065e33cc6abe7a214543efd2fca3c7e3b701b107e2ea1a307fcad1212c4` |
| 18 | `theorem` | [argmax_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmax-eq-none.md) | 149 | `result-track:61cbf60b68e3e91ca820b8c35dfcef8e1ea654eeec0428ba1ddb389ae6dd6069` |
| 19 | `theorem` | [argmin_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmin-eq-none.md) | 152 | `result-track:0724016a942c95f2f788ba1c825c8f7979af9f673d9ada948e535d8ab3d25b33` |
| 20 | `theorem` | [le_of_mem_argmax](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/le-of-mem-argmax.md) | 161 | `result-track:56f87f7e5cc0ef9e59688154986e220f076fa3d8eb2c5d46ec46ee1046d6366b` |
| 21 | `theorem` | [le_of_mem_argmin](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/le-of-mem-argmin.md) | 164 | `result-track:9c8034e490ebb22fa7a1c4a6d26773886bb426e7eb8d6e1d840bbebc61ace1ce` |
| 22 | `theorem` | [argmax_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmax-cons.md) | 167 | `result-track:6c6587eb66a1d41e9c57ef1efaade9e4324b5c28ee8980324df0878552b568e3` |
| 23 | `theorem` | [argmin_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmin-cons.md) | 181 | `result-track:c149cbbaadd7a10e4480dc72b48bfba20bced26f568450785d75759c5f728ffc` |
| 24 | `theorem` | [index_of_argmax](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/index-of-argmax.md) | 188 | `result-track:075ba2f6c567a2fc167ee6c273026081703306163c2d0b5da24ea582079a5a5e` |
| 25 | `theorem` | [index_of_argmin](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/index-of-argmin.md) | 209 | `result-track:7c34630733793135ecd4672c796074d0f15e51ad48b6de6facf592493ea5a4c6` |
| 26 | `theorem` | [mem_argmax_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/mem-argmax-iff.md) | 213 | `result-track:577b5709017fe6f705e8a2770fe0d3d20cb0b6801f88cd56af27f6b4d706f2b1` |
| 27 | `theorem` | [argmax_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmax-eq-some-iff.md) | 226 | `result-track:8db0aa2e4abac0ebc1531be1016d8be58cbc89bdf1223274323d93ed764d4b89` |
| 28 | `theorem` | [mem_argmin_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/mem-argmin-iff.md) | 231 | `result-track:27b4c934fb2a876ed8124240cbb9e4c236cd03bf3f800167b0e0fec8b3a1467f` |
| 29 | `theorem` | [argmin_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/argmin-eq-some-iff.md) | 236 | `result-track:49f02bf4ed943dfc6ee50bfbb37d724c2e9dd1dfa9529516b91a897a0587c3dd` |
| 30 | `def` | [maximum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum.md) | 251 | `declaration-track:9b14482d500e968718ff08c69811a5ebc9ce101fa5a92dfe6b54fff4595c3d3c` |
| 31 | `def` | [minimum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum.md) | 256 | `declaration-track:1618bddc7fa54461d125aa93dd6455df184c4c268f81b737a4cdde3d5a164691` |
| 32 | `theorem` | [maximum_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum-nil.md) | 260 | `result-track:b87d7171d50888f6cc9726439d7856f496b9d258c7d0555166cc293a15b1b1df` |
| 33 | `theorem` | [minimum_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-nil.md) | 264 | `result-track:86cb58e527fa72f7a3573eccd2886665912a0046eb52be054ee7f0dcbe3359a6` |
| 34 | `theorem` | [maximum_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum-singleton.md) | 268 | `result-track:04fb6b747c4f7de2016042c5cae7f24c7b77fc0fd1aaf8acdfc5841a88d3781f` |
| 35 | `theorem` | [minimum_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-singleton.md) | 272 | `result-track:bbd54fbde319e359a7882dc6871efa1728a832dded6e669ae50644410da85dfe` |
| 36 | `theorem` | [maximum_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum-mem.md) | 275 | `result-track:a81ef6bd69f0918e86805fd74be8bfa1f1f6ec9a9a9cac40bf91b52fa606e60c` |
| 37 | `theorem` | [minimum_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-mem.md) | 278 | `result-track:286aad8475cf6117352bb6e595836b58cdb3f7be152ed76c3cf3a08c1f582330` |
| 38 | `theorem` | [maximum_eq_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum-eq-bot.md) | 282 | `result-track:3771fae28d128e941df22529bdf6e24bd209d243dac1100bf16181dea3bc10ef` |
| 39 | `theorem` | [minimum_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-eq-top.md) | 286 | `result-track:0a2d39c822568e941af2e45204a85104484f3481fb915a0572dfcc16a736c1f2` |
| 40 | `theorem` | [not_maximum_lt_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/not-maximum-lt-of-mem-source-edition-2.md) | 289 | `result-track:d265b4fe989d3d55d45eab8181ce575974c31cbf0cb63a734949033e209d5aa9` |
| 41 | `theorem` | [not_lt_minimum_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/not-lt-minimum-of-mem-source-edition-2.md) | 294 | `result-track:b13fc6afb9276d5a3ff9350b1dca170bea52b95fc980e24fc8c1b3c6b9ca6767` |
| 42 | `theorem` | [not_maximum_lt_of_mem'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/not-maximum-lt-of-mem.md) | 299 | `result-track:403931f5e5c8bbda9a17d410ad4764a124f44ce6478a797e58a628e837325521` |
| 43 | `theorem` | [not_lt_minimum_of_mem'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/not-lt-minimum-of-mem.md) | 304 | `result-track:210a6bbad89def98b16950bab746054e13cddee239a586d47f4772f5679ac485` |
| 44 | `theorem` | [maximum_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum-concat.md) | 313 | `result-track:5df3d53b8f2f6f3ca6e57f149ff2fc1b84fc35524ccc23bf8dc5cff65555c347` |
| 45 | `theorem` | [le_maximum_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/le-maximum-of-mem.md) | 319 | `result-track:b4bb56c4b4c707d286ad5d749c589d91d236ecae818845b4c19a916f86a00f08` |
| 46 | `theorem` | [minimum_le_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-le-of-mem-source-edition-2.md) | 322 | `result-track:d5563b049422cec3200e08601621766cb5d2cdd9af00b92de860c727e0855ffa` |
| 47 | `theorem` | [le_maximum_of_mem'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/le-maximum-of-mem-source-edition-2.md) | 325 | `result-track:fd7b5dec3bd498d9ff833578ed01370fa766d08587f24754cb402ce3b87246db` |
| 48 | `theorem` | [minimum_le_of_mem'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-le-of-mem.md) | 328 | `result-track:6c77156b0658b6a4508250d5cd1efc2f934b8458375586ade20d32a713eb6ae0` |
| 49 | `theorem` | [minimum_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-concat.md) | 331 | `result-track:455298b8c54eb9d717c42660628d39688c637e9b84e00eb4065a1dc8adbe48ef` |
| 50 | `theorem` | [maximum_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum-cons.md) | 334 | `result-track:8b3961062aa82f5373e1c9e831136e6e9bd9dc32b3d17791608872dd38c4d962` |
| 51 | `theorem` | [minimum_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-cons.md) | 338 | `result-track:43de534b531ada37ca0d672a1564270aab904a0f42c9e83cc45c66aceaaae609` |
| 52 | `lemma` | [maximum_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum-append.md) | 341 | `result-track:c1d27286189559f58a48760b5e34158e90306c316f3efdfdd91eac8049a879d9` |
| 53 | `lemma` | [minimum_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-append.md) | 346 | `result-track:279585153771259cc6290aa6a8773f155809be6e3c12cde88603889b649bdf84` |
| 54 | `theorem` | [maximum_le_of_forall_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum-le-of-forall-le.md) | 349 | `result-track:2ffed407fb2e7856713f71e02587f71e2f1f8bf3d5bf15b6e1a3c21045029aac` |
| 55 | `theorem` | [le_minimum_of_forall_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/le-minimum-of-forall-le.md) | 356 | `result-track:c8bc3af6e672ee2239dafb49afa2fad3991d79c41057b8f02f33685d703e9b1e` |
| 56 | `theorem` | [maximum_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum-mono.md) | 363 | `result-track:8c20de728e627349446846d067d7cd2f6765278b9ec2904d87a92166728087e3` |
| 57 | `theorem` | [minimum_anti](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-anti.md) | 366 | `result-track:6b13a6db35b748a212182119d960589c24f5f2c185d67ee52a8e3fe91e78e390` |
| 58 | `theorem` | [maximum_eq_coe_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum-eq-coe-iff.md) | 369 | `result-track:65e55283f0d4eb7c921ac912de13fd37405456c0cf323adc87918c0f27c9276d` |
| 59 | `theorem` | [minimum_eq_coe_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-eq-coe-iff.md) | 375 | `result-track:4c06a2369b3009705cd02da80c231d14c560e5ab6217b1f5b462b9010a35efe0` |
| 60 | `theorem` | [coe_le_maximum_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/coe-le-maximum-iff.md) | 378 | `result-track:12a58574c6e381fbdc348f2dbd786a5d327a857b28f7caf9684b0ff7e3d0b6a7` |
| 61 | `theorem` | [minimum_le_coe_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-le-coe-iff.md) | 381 | `result-track:c78afcdb47c27ca824f116b37af93765c6f86a35dfea93a4e428d32521e20778` |
| 62 | `theorem` | [maximum_ne_bot_of_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum-ne-bot-of-ne-nil.md) | 384 | `result-track:8d8071f508d064b49280a7d0183693bae4c9c7220bc43ab0ea151af5909e9e0a` |
| 63 | `theorem` | [minimum_ne_top_of_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-ne-top-of-ne-nil.md) | 387 | `result-track:ba64b1d7fff5be12f62e3ad506236fe9d2a3f52efb83b81800dc454d45a5ebc2` |
| 64 | `theorem` | [maximum_ne_bot_of_length_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum-ne-bot-of-length-pos.md) | 390 | `result-track:444c4520619c9a56d9aae3a197896ceeeebca39d0fe52df02b9812aa7cc7efde` |
| 65 | `theorem` | [minimum_ne_top_of_length_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-ne-top-of-length-pos.md) | 393 | `result-track:a9052304ef9be7b96c572414285a7279d6cc1c1c31104d9e06e8228f3f4e0d89` |
| 66 | `def` | [maximum_of_length_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum-of-length-pos.md) | 397 | `declaration-track:653626b8fa9b99ba9c73918a2079a6ba23fa26e958e46cd2f1ffb372e3d4d3f5` |
| 67 | `def` | [minimum_of_length_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-of-length-pos.md) | 401 | `declaration-track:39428453449840c957a519f414a0ce6658ec3d242aec51fd3ef05b678c683de9` |
| 68 | `lemma` | [coe_maximum_of_length_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/coe-maximum-of-length-pos.md) | 405 | `result-track:040ae6e1fa915ae9a1a92b0fc7248e33830ad0ef4ef9d869f8ee1f4da0eadc11` |
| 69 | `lemma` | [coe_minimum_of_length_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/coe-minimum-of-length-pos.md) | 410 | `result-track:628df1b447178986a4d897873aa3234b6fe33f35b4657b920b5abf6c02c4470f` |
| 70 | `theorem` | [le_maximum_of_length_pos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/le-maximum-of-length-pos-iff.md) | 415 | `result-track:c47a1946d95d8866c7124c1a910b4f13bb407a537498133d725e0f4393ac51ba` |
| 71 | `theorem` | [minimum_of_length_pos_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-of-length-pos-le-iff.md) | 420 | `result-track:581a5c6dea25a4f65dcbda52b3f62e8d025c0e96ac2693ec565a9b3ddaa0870e` |
| 72 | `theorem` | [maximum_of_length_pos_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/maximum-of-length-pos-mem.md) | 424 | `result-track:da8793c5058501b85627223d33776810c8f7b40481cdd98454ce3a11abfe5150` |
| 73 | `theorem` | [minimum_of_length_pos_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-of-length-pos-mem.md) | 429 | `result-track:1246cc746bfcc023af2fa03a727bc439ac8954438a38102cbaf5ecca33d56df4` |
| 74 | `theorem` | [le_maximum_of_length_pos_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/le-maximum-of-length-pos-of-mem.md) | 433 | `result-track:21ef3b50a65fa76edab04614952f8678d060febba48a8e4276e037257fb35613` |
| 75 | `theorem` | [minimum_of_length_pos_le_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-of-length-pos-le-of-mem.md) | 438 | `result-track:6a3fad7d5a09e41bdd115dbf79bbb9a9ae1042d6f2500a1fadd2492a59653383` |
| 76 | `theorem` | [getElem_le_maximum_of_length_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/getelem-le-maximum-of-length-pos.md) | 442 | `result-track:bab354fdd89153bb69398181739faf6a41d6bb93096a8c3b8b930304aab089b7` |
| 77 | `theorem` | [minimum_of_length_pos_le_getElem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/minimum-of-length-pos-le-getelem.md) | 447 | `result-track:66518699de18abd4b1d095f91abe4c46b93c4dff24d51028b663ebc3802532dd` |
| 78 | `lemma` | [getD_max?_eq_unbotD_maximum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/getd-max-eq-unbotd-maximum.md) | 451 | `result-track:a05dab6f97daa23c8c1ac873df23480880188f1f4420ce59f3ab678bb0d0e0b4` |
| 79 | `lemma` | [getD_min?_eq_untopD_minimum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/getd-min-eq-untopd-minimum.md) | 469 | `result-track:74dce0d6f7c126a8a4d41b12315e91895f7b2bef48c12789c3bbd3b98b297654` |
| 80 | `theorem` | [foldr_max_of_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/foldr-max-of-ne-nil.md) | 488 | `result-track:290fcf8e68e4b6cdfac38fc97d6acdcb510d1051facb39256547b7072a28a397` |
| 81 | `theorem` | [max_le_of_forall_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/max-le-of-forall-le.md) | 496 | `result-track:7f5ffe94f4df3d13fd4d85ef9353d608de55ad41f9c384fa5afedbf4e2721714` |
| 82 | `theorem` | [le_max_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/le-max-of-le-source-edition-2.md) | 501 | `result-track:a71c2a7e7e2a50dff552e6700968d1ca6d496049a446d1ba9a3b1f982aa2c38c` |
| 83 | `theorem` | [foldr_min_of_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/foldr-min-of-ne-nil.md) | 516 | `result-track:ac2ba88172f496903b9ce2783cf1d0288af682f398f2350c7f099edef98f3b6b` |
| 84 | `theorem` | [le_min_of_forall_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/le-min-of-forall-le.md) | 519 | `result-track:ab712d86d004a4ebb282094e27ab2fb5e7385994372a80e71861daf0400f3a13` |
| 85 | `theorem` | [min_le_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/min-le-of-le.md) | 522 | `result-track:06aea4b3f1bf78c670ef65dd9f5361bd1363f508182d6f35f57c83f0678a6fc7` |
| 86 | `theorem` | [le_max_of_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/le-max-of-le.md) | 528 | `result-track:32f528c1280856985a6bf23ecb9a6801d040e7cc36e8bd2d5054936876475990` |
| 87 | `theorem` | [min_le_of_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListMinMaxMaximumEqBot.lean/declarations/min-le-of-le-source-edition-2.md) | 538 | `result-track:3f8baf40aff114ef32300a230ef26698fd7e5642a1fd28386254277f7da6d7ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64fe868168b6d20c36a1b08aa1a1ec4d07bafec9dff6f6511547e60e7f8c7cf1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantbcf0ebfd277e77330f4a228bc2425d66d4664fe469d241f27eeb55e30370d274.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantbcf0ebfd277e77330f4a228bc2425d66d4664fe469d241f27eeb55e30370d274.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
