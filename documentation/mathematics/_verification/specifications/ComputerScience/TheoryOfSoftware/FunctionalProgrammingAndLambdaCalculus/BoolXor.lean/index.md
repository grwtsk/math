# Verification target: Bool Xor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94264680eec4efbc4c0bf293805c8d05627d4549",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bool/Variantbb57681df0720b15b71e3b0add4c78e19c4960c427d4126e80a6db82a4dc8d22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94264680eec4efbc4c0bf293805c8d05627d4549`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bool/Variantbb57681df0720b15b71e3b0add4c78e19c4960c427d4126e80a6db82a4dc8d22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bool/Variantbb57681df0720b15b71e3b0add4c78e19c4960c427d4126e80a6db82a4dc8d22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.Alias` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [xor](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/xor.md) | 10 | `declaration-track:6316c2617d113f450111a0e7bc4f1ca2bd3775acb0df9e0ebaab7c63cbc4859a` |
| 2 | `abbrev` | [not](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/not.md) | 15 | `declaration-track:aa0213e2e6c555548bcd1c462e345a0382ae9a08693beb130a5e45b6e66d947b` |
| 3 | `abbrev` | [or](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/or.md) | 16 | `declaration-track:edbebe60cedcebe554e278afe4036402d1a79736120ef6ae0067835e28ff92f4` |
| 4 | `abbrev` | [and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and.md) | 17 | `declaration-track:8c167664e4e8c3a5af9db8105d48688e8e7b7efedb8f8e43c3ed94b5ee80371c` |
| 5 | `abbrev` | [xor](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/xor-source-edition-2.md) | 18 | `declaration-track:73bf625ee7d4fa3c1df92a915ac0bd79e906f9562bf32eee3ba14b1c35ff1b3a` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/instance-source-edition-6.md) | 20 | `declaration-track:ad1e198999c627c339a336f61f083622916d50480dacda727d15a51047813362` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/instance-source-edition-7.md) | 26 | `declaration-track:ba02b2c11aecc7c2894ac3abc8883717e6d7f26372a2c1d2b069c787b2884fc6` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/instance-source-edition-8.md) | 32 | `declaration-track:bdae8f7309ba7df7b6b53313bbb531ea6bd3b0f8ebecacfaddf3f53d87a31f7c` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/instance-source-edition-5.md) | 33 | `declaration-track:92ded3090fe11e5eaacad96f4f315b8216ce288d5e70a327a3925c05c2e56671` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/instance.md) | 35 | `declaration-track:09a37da455dbeabd3345f479aa26f8d41ec6da3be84810b4ca5d37e2244d0121` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/instance-source-edition-3.md) | 36 | `declaration-track:7cbd92aabf569be41980b26fe84553ced80e51df238530cc2f12a54d94af6432` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/instance-source-edition-2.md) | 38 | `declaration-track:7249a2e11d889a1eed7da3d1e605952fa7f04e6cdb3e0aae144614002d469502` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/instance-source-edition-4.md) | 39 | `declaration-track:8314b5ea43e58e2a46f1732818dbebc87bec10fd64c45e74befac7fdc734fffd` |
| 14 | `theorem` | [not_and_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/not-and-self.md) | 43 | `result-track:673a66693830a2f750eb13f7ebb01e240f12398b3e9c31618a8a5404d41b2999` |
| 15 | `theorem` | [and_not_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and-not-self.md) | 45 | `result-track:b1c6834966afb224ae879f39a3ee7f5ef4190fdc8a9d4cac1e873a308de03006` |
| 16 | `theorem` | [and_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and-comm.md) | 47 | `result-track:7712430e808bc10df0f4f9665290394046e285fa6afc73f754abdd35df409452` |
| 17 | `theorem` | [and_left_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and-left-comm.md) | 49 | `result-track:f455035fdb72fb29879a8b8a9e85c1c061becbcdbc0b3e6a2b3100ab6385fc20` |
| 18 | `theorem` | [and_right_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and-right-comm.md) | 51 | `result-track:5abbe71914bd491400c27de7d9624ae37e20408a1069f11980f9364116776a8d` |
| 19 | `theorem` | [and_or_distrib_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and-or-distrib-left.md) | 53 | `result-track:eb335c10d4ee38a0d771291f7af87ecccce29d34d64130ea4b322744da5308a7` |
| 20 | `theorem` | [and_or_distrib_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and-or-distrib-right.md) | 56 | `result-track:e0a18300d1da0b894944aab04ce50198818f9631f6b850b43c2eddb3db53f2d6` |
| 21 | `theorem` | [and_xor_distrib_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and-xor-distrib-left.md) | 59 | `result-track:1661dfeb605dca154472657c0bc9f2aca127efb5195fabeaa9e9652464cf9250` |
| 22 | `theorem` | [and_xor_distrib_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and-xor-distrib-right.md) | 61 | `result-track:16ebdbf5cfbca2b3b69dcaaa4f2ea17273c99ed66e400f87b13796d52cd44faa` |
| 23 | `theorem` | [not_and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/not-and.md) | 65 | `result-track:221bf1167baed646fbe6c2ea5b79694d5487b92deceb1838ab625d32447f2ccb` |
| 24 | `theorem` | [and_eq_true_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and-eq-true-iff.md) | 67 | `result-track:83f8e0e6c13190de4c88c7ad8e225341b85aae8137b3413fd91ee5adb9c58106` |
| 25 | `theorem` | [and_eq_false_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and-eq-false-iff.md) | 69 | `result-track:74c4f69abca3b4695ac5b30f6f54a38e28223b4b3497bba82d0f5a8b046d7116` |
| 26 | `theorem` | [not_or_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/not-or-self.md) | 73 | `result-track:6b861e33291298975ecfeea75f26d3c440d7e0e818127d1aa28e0e07658b737d` |
| 27 | `theorem` | [or_not_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/or-not-self.md) | 75 | `result-track:590c69996b36b67918524358173a43d59b2ea9c260abf082fac07c04620592af` |
| 28 | `theorem` | [or_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/or-comm.md) | 77 | `result-track:1aa7fd9cac3fd185086584b4d601ddd8eb2ae52985a14b11c10f3bc998637db0` |
| 29 | `theorem` | [or_left_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/or-left-comm.md) | 79 | `result-track:34497c8bd6ff08a1e5248a512808f6cf1d4eb7b8a8b61c8e11766ec9bdd3e271` |
| 30 | `theorem` | [or_right_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/or-right-comm.md) | 81 | `result-track:4fa15422dd3518401f3a1444118956611505212f273c0977c3bd78c095410628` |
| 31 | `theorem` | [or_and_distrib_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/or-and-distrib-left.md) | 83 | `result-track:5d276c23ccbb3db21dbaa85e1ae7f176de29b36026092d58fdf6f52f9579f3b0` |
| 32 | `theorem` | [or_and_distrib_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/or-and-distrib-right.md) | 86 | `result-track:55d9201541ea0a8aca019425c6498f1c4e2438f97a74c467099226aa63d5cc3d` |
| 33 | `theorem` | [not_or](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/not-or.md) | 90 | `result-track:41a7896596db84e95545deaf2e19be1386be4f8725baf464025f49a92165bd38` |
| 34 | `theorem` | [or_eq_true_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/or-eq-true-iff.md) | 92 | `result-track:992b81f66ca860562b8f4a35753a9b50f3cf4ceeee8312e2fdf52255c84ecf57` |
| 35 | `theorem` | [or_eq_false_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/or-eq-false-iff.md) | 94 | `result-track:d72d4c40b7f2f0f713e8f2c37a659eed4c81968d6cb5aecd252c99f275982746` |
| 36 | `theorem` | [false_xor](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/false-xor.md) | 98 | `result-track:b4fb827775144646ed7fc60c0f487863425d553f961720b0c76063e0d39699e5` |
| 37 | `theorem` | [xor_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/xor-false.md) | 100 | `result-track:768e869a326078520832de3e936e450a09566daedd0af0cfab636d85786b0096` |
| 38 | `theorem` | [true_xor](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/true-xor.md) | 102 | `result-track:90c5ef77eb3c4167026027949d020390a43f2ec5c93c1fbdd4f1e4fd0bf0d311` |
| 39 | `theorem` | [xor_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/xor-true.md) | 104 | `result-track:4c68cbe33bc86d8d471bbad69260c376378be209c87d25ec1cb63b00016c89cb` |
| 40 | `theorem` | [not_xor_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/not-xor-self.md) | 106 | `result-track:ecc5ea8ce91987c2b7f16203e12e1607bbad1934514fbf63dd94ced8b6bdc696` |
| 41 | `theorem` | [xor_not_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/xor-not-self.md) | 108 | `result-track:1b8231465c7dd08bd028fd9d310f59cd12a005be7ddcdaf469f3560cb12f8ad6` |
| 42 | `theorem` | [not_xor](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/not-xor.md) | 110 | `result-track:7e17ae2abbaf41bfa397dc64d3b59e3632621733ed09b66e5f5c811cfc6758a9` |
| 43 | `theorem` | [xor_not](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/xor-not.md) | 112 | `result-track:a65361d758d04a0e5425b89b4139d58d9b29f481cd1587e8bfad72576da5048e` |
| 44 | `theorem` | [not_xor_not](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/not-xor-not.md) | 114 | `result-track:fefcabcb563bbdf7fb7fb30cd5776f8a4fddbe5b5ba1cf6729205871e5592d2e` |
| 45 | `theorem` | [xor_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/xor-self.md) | 116 | `result-track:7a638e2614b515881eefd17b3215bee30aeb56849f7b6505dc96c1d625050032` |
| 46 | `theorem` | [xor_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/xor-comm.md) | 118 | `result-track:dd014f2e415d5c5788c7b03e96dca5df9d99e79cc4ddade19fe33bcfb5711677` |
| 47 | `theorem` | [xor_left_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/xor-left-comm.md) | 120 | `result-track:4e0bca4f66a175218c6e4c9d79f5cfd910a5d0053c2ce9372115237a3e6cbb2d` |
| 48 | `theorem` | [xor_right_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/xor-right-comm.md) | 122 | `result-track:69717635fd201a455820a9f737acc6c3d97aa63a6f67e7d7119a60c32cd9e290` |
| 49 | `theorem` | [xor_assoc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/xor-assoc.md) | 124 | `result-track:85dd1aa406e66f52ccd76fcc06d2fcd0d96fc2a6da714f5da93e4655c6ba01d7` |
| 50 | `theorem` | [xor_left_inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/xor-left-inj.md) | 127 | `result-track:666ac69f296beb4dec397b1a5aa1eccb23ced800efe20fbf6b4baae9da01baf8` |
| 51 | `theorem` | [xor_right_inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/xor-right-inj.md) | 130 | `result-track:2256afbada3686cf6a66d9f5f4f6e22f36fb05a7eee93059999ff94c8d0c944c` |
| 52 | `theorem` | [le_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/le-true.md) | 134 | `result-track:2a67a466eed56ac43e677cdacfce5dc101b0963d15eff9d645f5b911f33de4f9` |
| 53 | `theorem` | [false_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/false-le.md) | 136 | `result-track:9685cbaea2d86b658a9702e0c1d52472b3b1d46c310bfc7d1af86aeeeda0a004` |
| 54 | `theorem` | [le_refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/le-refl.md) | 138 | `result-track:6fe0640a81db232a2568521f7e50f09fd9ab34997f6f2bbefffc8aa710a21bbc` |
| 55 | `theorem` | [lt_irrefl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/lt-irrefl.md) | 140 | `result-track:588009db2d113530eb7bfa5da215911ae5febfc15185f6f88b92d96b45cb77e6` |
| 56 | `theorem` | [le_trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/le-trans.md) | 142 | `result-track:dea887a7db8bb115f9ce1bdc5518518aeb1aa3af0539e91d91001fc41124d7b0` |
| 57 | `theorem` | [le_antisymm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/le-antisymm.md) | 144 | `result-track:adc33f7b43505267dd0b3ca18e6f581d319ff713f29e6d56abc895494b48171f` |
| 58 | `theorem` | [le_total](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/le-total.md) | 146 | `result-track:385439233801367f8e3b258e3ee9c2fc1974af6fa1f4547498e4d512e11cbb01` |
| 59 | `theorem` | [lt_asymm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/lt-asymm.md) | 148 | `result-track:7582626b8e729324499f728b36a11c4ed112c7c291b6625080a9284b7674563f` |
| 60 | `theorem` | [lt_trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/lt-trans.md) | 150 | `result-track:7538e27420d011141225ae1e5a2ff35ffadcb8f0845663cee4488c1c72d75f18` |
| 61 | `theorem` | [lt_iff_le_not_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/lt-iff-le-not-le.md) | 152 | `result-track:0967a5b607a655f9b25edd2a7603d93bf19967c3396b5145074962d0e95c292d` |
| 62 | `theorem` | [lt_of_le_of_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/lt-of-le-of-lt.md) | 154 | `result-track:1e078bd16886231cde4a44e97a0c56e030cfdd68f9c5095b838aec72b4c9c23e` |
| 63 | `theorem` | [lt_of_lt_of_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/lt-of-lt-of-le.md) | 156 | `result-track:8de108e4e1a4a730a06e7d499520fd5fef5231d8086c3c186618f882ac17c785` |
| 64 | `theorem` | [le_of_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/le-of-lt.md) | 158 | `result-track:e77d182055a3de7342efd01d03d9d80bedb6cd831c67404a611294bf40bb2515` |
| 65 | `theorem` | [le_of_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/le-of-eq.md) | 160 | `result-track:ec38765f1c526408902a891bc200fd287c3d94c4ed6b141ff33233fd1068cc01` |
| 66 | `theorem` | [ne_of_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/ne-of-lt.md) | 162 | `result-track:95e27e0d8e692a175bd020cd6082134aca64eda290ae02a9a77f2badf8cad234` |
| 67 | `theorem` | [lt_of_le_of_ne](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/lt-of-le-of-ne.md) | 164 | `result-track:6f4ebd3f56e66d819d1c00daa38b7cee55c1618eccbff03a07f9d8e0a5c201e5` |
| 68 | `theorem` | [le_of_lt_or_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/le-of-lt-or-eq.md) | 166 | `result-track:ddf55a29c1adca923aff0743ab43b8045337dea6fdb18dc53f032e3e71e01fe5` |
| 69 | `theorem` | [eq_true_of_true_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/eq-true-of-true-le.md) | 168 | `result-track:a2e18497e1aced9e9a88c5fdf960458b7b368a362204ece13220110db7a5cafb` |
| 70 | `theorem` | [eq_false_of_le_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/eq-false-of-le-false.md) | 170 | `result-track:7b4e5352c2d8ae2ca8514bca73d189674ce963b5d5d366d1af09ad666fe31bd3` |
| 71 | `theorem` | [max_eq_or](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/max-eq-or.md) | 174 | `result-track:49a48d56b1f008aaf6d7a5a7caaf697bfb4fcb655e1c9ed0f3b9f419b0b3b384` |
| 72 | `theorem` | [min_eq_and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/min-eq-and.md) | 176 | `result-track:3ba2d22486ba2acd838f0e63ea5ed1b62c9c7d966bb9b9499fec02c05d32080e` |
| 73 | `theorem` | [not_inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/not-inj.md) | 180 | `result-track:124eeaca51f994fdcd04785560514bac49dc00ae52ffc316fb68eae118fcdb7f` |
| 74 | `theorem` | [not_inj_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/not-inj-iff.md) | 182 | `result-track:f83efac6d61931d7f5b5471fa31d18e8811f0d215c7b8123a804bffd0ff0c9c1` |
| 75 | `theorem` | [and_or_inj_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and-or-inj-right.md) | 185 | `result-track:fb494f1e56f61e7a7a9ce8411a336be1dbd8dea8b460eaf77f5bf9b1dff38b57` |
| 76 | `theorem` | [and_or_inj_right_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and-or-inj-right-iff.md) | 188 | `result-track:c5a94c712aa2101b482c0d8a1703e9253b3fbae1c037e4d547c3697f61301822` |
| 77 | `theorem` | [and_or_inj_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and-or-inj-left.md) | 192 | `result-track:da90421c24639ae115045b877a7b41c5b70550ea562a0beb8d778ff5af5a61fb` |
| 78 | `theorem` | [and_or_inj_left_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/and-or-inj-left-iff.md) | 195 | `result-track:331a8b968e8a7da7508426ef123102fc53018656d96e8a17b4c766c17c5e996c` |
| 79 | `theorem` | [false_eq_decide_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/false-eq-decide-iff.md) | 199 | `result-track:210987f544279d820b1694312089fbef9885a21ed3e4365df97fc996c621dc06` |
| 80 | `theorem` | [true_eq_decide_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/true-eq-decide-iff.md) | 202 | `result-track:1e2ef792519b0f6141ded153b536ff14827209e3c974804e30e1efe705e22dc2` |
| 81 | `def` | [toNat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/tonat.md) | 208 | `declaration-track:99fc325d097ebd0f8c93e46ce278ac80318b3364886a296bb4207b8cd5b50a1e` |
| 82 | `theorem` | [toNat_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/tonat-false.md) | 210 | `result-track:692bf6c95327feef72c1c876c9ffb571b345357b3af4709d4353ca4e62c3387b` |
| 83 | `theorem` | [toNat_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/tonat-true.md) | 212 | `result-track:4fc8d400a1f84dec9f6a09b8694bba8f64bdfc51ce3aa98089746f6df952d22c` |
| 84 | `theorem` | [toNat_le_one](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BoolXor.lean/declarations/tonat-le-one.md) | 214 | `result-track:492d8f9787ada8bcb633f7bfbdcfeb8e200634d8ad4ca7fd6780aa75662dc964` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22682f4f5130bb69adfbd7ea1b79dd881181822db2ce258289a32f26518f06b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bool/Variantbb57681df0720b15b71e3b0add4c78e19c4960c427d4126e80a6db82a4dc8d22.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bool/Variantbb57681df0720b15b71e3b0add4c78e19c4960c427d4126e80a6db82a4dc8d22.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
