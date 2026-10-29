# Verification target: Lemmas Lemmas Namespaced Public Trichotomous

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fe823b210a027eebf877392112a4c42cb1876e5",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant7c2a36379fdc85ff2c18c0c845ea3ab070725bfa88141deb5854406021803596.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fe823b210a027eebf877392112a4c42cb1876e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant7c2a36379fdc85ff2c18c0c845ea3ab070725bfa88141deb5854406021803596.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant7c2a36379fdc85ff2c18c0c845ea3ab070725bfa88141deb5854406021803596.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-29.md) | 31 | `declaration-track:dd57c2375b60cf2971055a1535dc1364151e720632918bc4417dc384cf47d072` |
| 2 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-14.md) | 34 | `declaration-track:6ad63b8d0f70f42104984782a84840b7e9d8327251d0ce622390fd313cce6900` |
| 3 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-26.md) | 37 | `declaration-track:c5d214c688f6ce94272a2545598a90daa7701b7cb281844b54700386fefd08f5` |
| 4 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-6.md) | 40 | `declaration-track:31834bc5ca58dbdd9b11a382d0fa660348a69d6f545a2ef2e30ecc998f29f81e` |
| 5 | `theorem` | [Trichotomous.rel_or_eq_or_rel_swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/trichotomous-rel-or-eq-or-rel-swap.md) | 43 | `result-track:a4f2d794ff83298c3334cea5454ec7e6337fcbae60fc989d9e5968bd2066a495` |
| 6 | `theorem` | [trichotomous_of_rel_or_eq_or_rel_swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/trichotomous-of-rel-or-eq-or-rel-swap.md) | 49 | `result-track:a218f877086b323394d3990a5e3737d86727e83c920b8ee674fc1c3d94d28f6a` |
| 7 | `instance` | [Antisymm.trichotomous_of_antisymm_not](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/antisymm-trichotomous-of-antisymm-not.md) | 53 | `declaration-track:e964696d130b129179904e4202a1906d3db30dacc177e02f0a6ae2d43b67709e` |
| 8 | `theorem` | [Trichotomous.antisymm_not](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/trichotomous-antisymm-not.md) | 56 | `result-track:4036b2b9b3d244404beef8a615a0b79e39e5b90cb09c19a05e5a99052ba1bbb5` |
| 9 | `theorem` | [Total.rel_of_not_rel_swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/total-rel-of-not-rel-swap.md) | 59 | `result-track:e8588b89dc30188e0173363dce3a2f28e448ec262155524d3b5f34843cd43d15` |
| 10 | `theorem` | [total_of_not_rel_swap_imp_rel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/total-of-not-rel-swap-imp-rel.md) | 62 | `result-track:b9c096f656ba09b902a0c79aac465fcb8ec197b14bd7ad243cce8c4244095c36` |
| 11 | `theorem` | [total_of_refl_of_trichotomous](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/total-of-refl-of-trichotomous.md) | 66 | `result-track:b18fc284fdd3b2cc92d3fe27049b231334d896baca80755d3655cdcfd679177b` |
| 12 | `theorem` | [asymm_of_irrefl_of_antisymm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/asymm-of-irrefl-of-antisymm.md) | 71 | `result-track:339ce5b83b1a7400c6ee0445e91be487150dc5acc866bc07f96a41faa227e81e` |
| 13 | `instance` | [Total.asymm_of_total_not](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/total-asymm-of-total-not.md) | 74 | `declaration-track:ec15374dfc75a993e85614203dc0490b45502ec77fbd28004e548d29819b9ac6` |
| 14 | `theorem` | [Asymm.total_not](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/asymm-total-not.md) | 77 | `result-track:d44cb8ce7acc897fc3e657d0259bfe4948e955db764b46427f7bf8525066dc16` |
| 15 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-25.md) | 82 | `declaration-track:b3ae6ed322e0deabdca38eb44862a1f442843a44cd0ef9cbbe97c7d8315f6d10` |
| 16 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-17.md) | 86 | `declaration-track:6fb16d64166779c30631bb82da021beeebc703e94a7f8e4c7eafc329850203d8` |
| 17 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-11.md) | 90 | `declaration-track:4b9020afe841ea9700162e5b7de813b8a968d839d970d4aa9f2bcf593132f608` |
| 18 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-30.md) | 94 | `declaration-track:e5d74864f31af8eb600daa8efd472f169cdd28f7a6ac58d92456546ec42d9545` |
| 19 | `theorem` | [le_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/le-refl.md) | 103 | `result-track:040390613f0291b44eaa515f54a996f7417dcea6bea980558a5c2d132afeb60b` |
| 20 | `theorem` | [le_of_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/le-of-eq.md) | 106 | `result-track:49f2e949c43ad719c6893d6218050033220b423821d380e9460df1c8bef9d325` |
| 21 | `theorem` | [le_antisymm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/le-antisymm.md) | 109 | `result-track:b3cb84bd096e725e560395f4a616c47136f434fe8c80707f1d20619ad1517a8a` |
| 22 | `theorem` | [le_antisymm_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/le-antisymm-iff.md) | 113 | `result-track:75a22cb5b115b665c41c77b80b33a682375e2df95d841d7def85630be2e106e7` |
| 23 | `theorem` | [le_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/le-trans.md) | 117 | `result-track:e0b79a4cdd50afa79071aa7fce1fcb673e745e090a219ebd3476eb4a6ef5e6ba` |
| 24 | `theorem` | [le_total](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/le-total.md) | 121 | `result-track:ca8bbae55a1b3104ad88a1007d8d713b3da383bdc119dfe9a7a4bf86bf568727` |
| 25 | `theorem` | [le_of_not_ge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/le-of-not-ge.md) | 125 | `result-track:fff9732a27d23590a536f15dbbe8b472c3af479443883fbc7ada4834e47adf5d` |
| 26 | `theorem` | [lt_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/lt-trans.md) | 132 | `result-track:fd6112b8e7afdf2e1625878e618bcfbd197ea2939bb632937f880e7a37b90152` |
| 27 | `theorem` | [lt_iff_le_and_not_ge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/lt-iff-le-and-not-ge.md) | 136 | `result-track:5baf1a15ff60a7a08e47717d46168c882a5cef9fc3a9cf545802ec8c20be775c` |
| 28 | `theorem` | [not_lt_iff_not_le_or_ge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/not-lt-iff-not-le-or-ge.md) | 140 | `result-track:d7ef1071651d791e6e4efe4792c68a68fe886314fb7a35e9f1ae86bba98fa23c` |
| 29 | `theorem` | [not_le_of_gt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/not-le-of-gt.md) | 144 | `result-track:d1822308202b94d21e359d7924a08d2227e4539aca55a062f614c97d2d345323` |
| 30 | `theorem` | [not_lt_of_ge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/not-lt-of-ge.md) | 147 | `result-track:c3781567a77eddce005ecfe5ec992ad69d063f945f64bb3910ffe5e67cfb03dc` |
| 31 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-7.md) | 150 | `declaration-track:32f5c273203e452a3750610a1ff6981c4887fbe44214fc4b6fdf602595087d77` |
| 32 | `theorem` | [not_gt_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/not-gt-of-lt.md) | 154 | `result-track:eb3261f5c23a73140d01ea6b13bd4b387b076d0837395d1df0a5d34af3905950` |
| 33 | `theorem` | [lt_irrefl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/lt-irrefl.md) | 158 | `result-track:20fa3928cb752ddfc3bdaa48da87c761188474cc0528c51498df14ab5e2a32c8` |
| 34 | `theorem` | [le_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/le-of-lt.md) | 162 | `result-track:fc95a348b4e7de114c0982f3f6e22e4b53c5f0ec3058b384e090a97074f8f87a` |
| 35 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-24.md) | 165 | `declaration-track:afc8267018ede0ffc85f61d09f6615f3a940cf68aa29d60a5025f3418327c538` |
| 36 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-16.md) | 169 | `declaration-track:6d75b546d69730b494e96a644c725818ab2a1c4791045cb686f66627a5b4831f` |
| 37 | `theorem` | [instIrreflLtOfIsPreorderOfLawfulOrderLT](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instirreflltofispreorderoflawfulorderlt.md) | 177 | `result-track:c30be3a73c6f5bd597266a6976402a4dd3418ac431a5ff85a9e977fad9065244` |
| 38 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-19.md) | 180 | `declaration-track:73e7fec5e89fc38864cdd646d70eec2f43ed794dec078d7d7015f54dd42abc62` |
| 39 | `theorem` | [not_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/not-lt.md) | 189 | `result-track:a715be0499c4876548752b68481d42d123b18d889f17a56e4fb3adea9a366ae4` |
| 40 | `theorem` | [not_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/not-le.md) | 194 | `result-track:420c2f8334a06953cf0f40967afde3ea858818317341cb50e0f49301b1559cee` |
| 41 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-2.md) | 199 | `declaration-track:0f5fdae8e99ef7192eb1af2a73831a053734d8814cee90d0ae3384c1f19f7c00` |
| 42 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-23.md) | 205 | `declaration-track:9f6ec8db2042610102c9ff3fce211d19fd2fb7c9720d2393ce5c0825fc622680` |
| 43 | `theorem` | [instTotalNotLtOfLawfulOrderLTOfLe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/insttotalnotltoflawfulorderltofle.md) | 213 | `result-track:5c1b3518117593fd7284ba5c74dfc5105a1f19eac13bd1818b6a611e8b66094b` |
| 44 | `theorem` | [lt_of_le_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/lt-of-le-of-lt.md) | 216 | `result-track:48c1411d817235765ecc8e9f105dd376ccbbd34236c87fd49f2236eff1034d4e` |
| 45 | `theorem` | [lt_of_lt_of_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/lt-of-lt-of-le.md) | 225 | `result-track:d1b781f4f4262af7fe2cb72b4a8a5aa3cb663f5eed2f5af94f1a253314c03361` |
| 46 | `theorem` | [lt_of_le_of_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/lt-of-le-of-ne.md) | 234 | `result-track:2506a380a67865b2ed008ac177a28f115a64614f2a3b740ce521a87d0291c8f4` |
| 47 | `theorem` | [ne_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/ne-of-lt.md) | 242 | `result-track:57d6b2412aa6e658c2b5e1a834d9ed0f80eb69eef376f4cad857fb44db23543d` |
| 48 | `theorem` | [le_iff_lt_or_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/le-iff-lt-or-eq.md) | 245 | `result-track:0b1311fbe28d9e840aa9b511a1d1c8b63013b499e9e7868926e63986f06a5757` |
| 49 | `theorem` | [lt_iff_le_and_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/lt-iff-le-and-ne.md) | 250 | `result-track:f79d4bf6b6fda49d1480fa48e72c62db0040f2825f31e6cfd17e9e9d8fe15aa0` |
| 50 | `theorem` | [lt_trichotomy](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/lt-trichotomy.md) | 254 | `result-track:923944a7a9c0d3aed4917080895e60a31155d2cd1ff9d36380207ff38086d597` |
| 51 | `instance` | [instLT](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instlt.md) | 264 | `declaration-track:21d9eda3d12e68cc6efd8b028eb2c5bd22651bbf5f86696d11c5b48edccaafb7` |
| 52 | `instance` | [instLawfulOrderLT](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instlawfulorderlt.md) | 268 | `declaration-track:8b7945e9a1e6f7223f7e67e26015e1164c0cb83c1820004f1d93be09f62789b6` |
| 53 | `theorem` | [beq_iff_le_and_ge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/beq-iff-le-and-ge.md) | 277 | `result-track:612de6725effdbcfbaaa6e7a3444e70c8db5e4d70c4219a91238af8e38978b30` |
| 54 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-22.md) | 281 | `declaration-track:895d82835617ce20fc2b98025d8193694e5f4fb01acd5bada6645f4342095bc2` |
| 55 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-9.md) | 285 | `declaration-track:3fc1f8da3452dba374ef6713754eea3652a7edcf37da4a936a52e2a591eb8fb4` |
| 56 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-28.md) | 292 | `declaration-track:d53a602260f2947f7cfb72a0cfa55fd99351ea0b0ef28ff517ffa5429d5644e7` |
| 57 | `instance` | [instBEq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instbeq.md) | 304 | `declaration-track:eb4ddb377dfbee1fe2df1f2d8df2ac1c0fefd562e29f43c235da7b21b6d30b0d` |
| 58 | `instance` | [instLawfulOrderBEq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instlawfulorderbeq.md) | 307 | `declaration-track:a63a4fb7f8b2a5b64bc156ee2e9591f420dde9f077c2f2886caa1d18c3c4162f` |
| 59 | `theorem` | [min_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/min-self.md) | 316 | `result-track:a8771bace431eb3053da72cdc3a27fa4345b9eb4ae7df2ef8279efd3199c62e3` |
| 60 | `theorem` | [le_min_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/le-min-iff.md) | 320 | `result-track:262011933b7ca50d81881512f91f2a0ee1c212bdebd39994b28bb3fbdb8a58ea` |
| 61 | `theorem` | [min_le_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/min-le-left.md) | 325 | `result-track:54adda85d5f2e9d0d9c25c709366ebbbe09ad6b8d40f0dfde541c5f1b594835a` |
| 62 | `theorem` | [min_le_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/min-le-right.md) | 329 | `result-track:aac66bfb5466fd5db76c34c89a671057be1ad261d408e86e6b86ca23f3579a7f` |
| 63 | `theorem` | [min_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/min-le.md) | 333 | `result-track:6e20b9874bdc2bc5191b734e99055ccb87b8ebf5685f89cbd93dd3a28c33c331` |
| 64 | `theorem` | [min_eq_or](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/min-eq-or.md) | 339 | `result-track:fbba932e9b9218e082d5a2b0d8ebbb57cd4f29e5f42d28f39e4f1bb1bedc5e56` |
| 65 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-5.md) | 343 | `declaration-track:1f8cafb42bc72653fdf1281696307e5ccacccdc800062f82f24f79e17c1e4ba7` |
| 66 | `theorem` | [IsLinearOrder.of_refl_of_antisymm_of_lawfulOrderMin](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/islinearorder-of-refl-of-antisymm-of-lawfulordermin.md) | 362 | `result-track:689d7e6a938b0319485030fe055fc207a37e4563f71fccf5dc899b836e68588b` |
| 67 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-32.md) | 382 | `declaration-track:fb5700acae753703eec4714b6eef4d5d75c6de519a7320013bb44339d1b94b0f` |
| 68 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-18.md) | 386 | `declaration-track:728f41121e17dca11de74468689ff2a973061261952acaf3fb1f2a4aa2cf661f` |
| 69 | `theorem` | [min_eq_if](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/min-eq-if.md) | 390 | `result-track:58aefc8aca60f03f615d46183a732e3bbed13ab353c22900880aeb5a35b973b4` |
| 70 | `theorem` | [max_eq_if](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/max-eq-if.md) | 397 | `result-track:7f4401490de90b1f9624caf872495ffbe4f7a4e034bf7677bbf41046e173127a` |
| 71 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-21.md) | 404 | `declaration-track:8441078b13523dd1e5325b948a20ddbd921dbebf5bf81aa1b362d1208bda169f` |
| 72 | `theorem` | [LawfulOrderLeftLeaningMin.of_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/lawfulorderleftleaningmin-of-eq.md) | 415 | `result-track:0a400b791d663ff82d181fd8702fe4ee9897270c4e756ce13c5843b2538c5c2a` |
| 73 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-20.md) | 421 | `declaration-track:7d72ee8091eb83b5507092a6b20effffc3aef945d4d7c3ec8f6a98fdb23e69fc` |
| 74 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-8.md) | 424 | `declaration-track:3d38e3fa8f347995ee040639731c39057b9dfdfbbcc92398ff313a46e2514fee` |
| 75 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-27.md) | 433 | `declaration-track:c89f90afa2778916fc558306163bad035a00563826b82271fbbf77736f21a56f` |
| 76 | `instance` | [instMin](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instmin.md) | 453 | `declaration-track:0d4faae3017c2f33d6d4328f6e3cb2ed8de2c639d3caf596b20f20487b87c294` |
| 77 | `theorem` | [max_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/max-self.md) | 461 | `result-track:f75e400a0ccecde3a34062f7681bda40c71050e48f33f84ef2a89602f95734bd` |
| 78 | `theorem` | [max_le_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/max-le-iff.md) | 465 | `result-track:7f189ce925a90cc8082c58fca70194e75a6716c7d1154ee26a0748a11a27020a` |
| 79 | `theorem` | [left_le_max](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/left-le-max.md) | 469 | `result-track:9b76e4d04e554665092de78688df564d0d43839fd37fd7d08f012d9154f8a253` |
| 80 | `theorem` | [right_le_max](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/right-le-max.md) | 473 | `result-track:ee866704b414e0a9c7f3c93adfeff12bbd96f1c8b77ef7a75d1f2550c381e1d1` |
| 81 | `theorem` | [le_max](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/le-max.md) | 477 | `result-track:c18f1610a35dcba4f3c827cf1d9b558b7c709feb9af563a9573d677be9673bfe` |
| 82 | `theorem` | [max_eq_or](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/max-eq-or.md) | 483 | `result-track:960889a071c8dca46a4658cab0e9d567ee451f0a4bfa8079626e69b7bc578d5c` |
| 83 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-10.md) | 487 | `declaration-track:465f6df6144e1a4b5f20aea2b548c0cd0ed7682dbf390fbe45f916b0f4361918` |
| 84 | `theorem` | [IsLinearOrder.of_refl_of_antisymm_of_lawfulOrderMax](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/islinearorder-of-refl-of-antisymm-of-lawfulordermax.md) | 506 | `result-track:90432d281867deeba427d5acabc9dc74f360d20da99a348109e412259be0c1ba` |
| 85 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-13.md) | 526 | `declaration-track:5e9978280dcdc2f8db8f593e0a213efa9b4c0ecf9c38752ed34ae1258d35fcae` |
| 86 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance.md) | 529 | `declaration-track:020f7abd4b4ebefbf66a4624f92160a07ea6fa08a413629ce0425bd5999e3a66` |
| 87 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-31.md) | 533 | `declaration-track:f1ab0bce45991cd22d08f94eb5378c22d8d5cb7c6f3c8be6c2c5d27d019b1cd0` |
| 88 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-12.md) | 541 | `declaration-track:579b349f61d85324edea2d4daf363299dbf132b9e16c120efbd51d162722cd05` |
| 89 | `theorem` | [LawfulOrderLeftLeaningMax.of_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/lawfulorderleftleaningmax-of-eq.md) | 552 | `result-track:47bdb211ad3fd77d321202dfbc6b3c68358c3f8847844bdcbb6967d5ce8c8cf1` |
| 90 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-15.md) | 558 | `declaration-track:6be8430f36d3080045352fd1457970572dd544083b9721f3706e528b2b56d65b` |
| 91 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-3.md) | 561 | `declaration-track:15a4e9d182527e339006a0048983d695eb78f746e8eed69b5c8276a646e503b9` |
| 92 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instance-source-edition-4.md) | 570 | `declaration-track:1d70683c15266352adefb26d629202958803a0da5b84382b36e2909a27960d32` |
| 93 | `instance` | [instMax](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicTrichotomous.lean/declarations/instmax.md) | 590 | `declaration-track:922cfc6e9338858ab3f21cfdee13c71f592aecedd799a9854facbd887ff256de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e1814097c8b60243449b224d0a498979aa6739ae1ba99ba030eaa21c585729b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant7c2a36379fdc85ff2c18c0c845ea3ab070725bfa88141deb5854406021803596.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant7c2a36379fdc85ff2c18c0c845ea3ab070725bfa88141deb5854406021803596.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
