# Verification target: Bool Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95a1b799df30eed8a8da14b13564acb8d1482600",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8d9633789a3a7c3960dcbb3882445b71165678e3b26cf067661612d9e8563678.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95a1b799df30eed8a8da14b13564acb8d1482600`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8d9633789a3a7c3960dcbb3882445b71165678e3b26cf067661612d9e8563678.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8d9633789a3a7c3960dcbb3882445b71165678e3b26cf067661612d9e8563678.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [true_eq_false_eq_False](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/true-eq-false-eq-false.md) | 41 | `result-track:bc84706130096404ca7b926deab45d50c8713c1ffda8ab7022cf0ee8d03749be` |
| 2 | `theorem` | [false_eq_true_eq_False](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/false-eq-true-eq-false.md) | 43 | `result-track:7837afde8f72db4d69ad6741f099f866b79112105fa966a91d46d0888d30681e` |
| 3 | `theorem` | [eq_false_eq_not_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/eq-false-eq-not-eq-true.md) | 45 | `result-track:2563db3342781a6d1d692821a58f7f0ad945b2d667260baa5cf15567086d5968` |
| 4 | `theorem` | [eq_true_eq_not_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/eq-true-eq-not-eq-false.md) | 47 | `result-track:d2a93ea81ab2dd0f1b3e043ec905cdcb27d3ecbcb0d20d4f77e2322dffd15a18` |
| 5 | `theorem` | [eq_false_of_not_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/eq-false-of-not-eq-true.md) | 49 | `result-track:a27b552c6b5feedb8ea6f5479b87d950c5a45d5e3f7ec07edab99b05e2118297` |
| 6 | `theorem` | [eq_true_of_not_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/eq-true-of-not-eq-false.md) | 52 | `result-track:41dec2f526264ebb50acd596c1ce86db2468bc339f9b142d2efe5109a88f7cd8` |
| 7 | `theorem` | [and_eq_true_eq_eq_true_and_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/and-eq-true-eq-eq-true-and-eq-true.md) | 55 | `result-track:3d0946e1abf13fb60044d48f068525048918cf903fc0020345e8b044ec1e9e96` |
| 8 | `theorem` | [or_eq_true_eq_eq_true_or_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/or-eq-true-eq-eq-true-or-eq-true.md) | 58 | `result-track:d0f68c0dd81616504a7a197f08de0e5753d6935339d4dec1f5bb8df9a8cfd16e` |
| 9 | `theorem` | [not_eq_true_eq_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/not-eq-true-eq-eq-false.md) | 61 | `result-track:bcf22411125151f66ea72b86a37f53d2e9a00ce5ad7a48b9ce14cec3c0ed0a0b` |
| 10 | `theorem` | [and_eq_false_eq_eq_false_or_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/and-eq-false-eq-eq-false-or-eq-false.md) | 63 | `result-track:fe844fb196f20736e2630e7771ae6cea87db7893e4fb26986344627507898c67` |
| 11 | `theorem` | [or_eq_false_eq_eq_false_and_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/or-eq-false-eq-eq-false-and-eq-false.md) | 66 | `result-track:fbdbf6bc3a99118cf43f14241858c4cb6b1d71909b90509589da9432334b7164` |
| 12 | `theorem` | [not_eq_false_eq_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/not-eq-false-eq-eq-true.md) | 69 | `result-track:1bf08f4b6ef0430a4b36b9588da188368786363bd698a89e512edcc7062721bf` |
| 13 | `theorem` | [coe_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/coe-false.md) | 71 | `result-track:f61abc88e53b32f358b858589d465deffa352d26bb185df5227dd9a3d96d8756` |
| 14 | `theorem` | [coe_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/coe-true.md) | 73 | `result-track:fd4331801ad9dbcb342c7d32766483b36cd408c6007f00de44ab0ad0a7596fe9` |
| 15 | `theorem` | [coe_sort_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/coe-sort-false.md) | 75 | `result-track:7938cc41929a03f0cc1ad9f59eeef5e43233f150ef932455a950a481d9e07df3` |
| 16 | `theorem` | [coe_sort_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/coe-sort-true.md) | 77 | `result-track:07930c4615e4e3b2e603ec559e7b81f0209025a69bb64ab9efc01e99926a1e13` |
| 17 | `theorem` | [decide_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/decide-iff.md) | 79 | `result-track:ae14867a93196aa28d86611d2d294a806815df59bca7238b3c509ac965c5d9af` |
| 18 | `theorem` | [decide_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/decide-true.md) | 81 | `result-track:e6258ca900db4fe37a44afe9b2c59d97183a6be05bfbc666d9085d88c2581897` |
| 19 | `theorem` | [of_decide_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/of-decide-true.md) | 84 | `result-track:1bd27e1950a692565d29cbac948ccfc21a4f7c81cc9f4d63de99fbd4d27ba438` |
| 20 | `theorem` | [bool_iff_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/bool-iff-false.md) | 87 | `result-track:564bc44aecffb9413b549dfaed9c88085b4b609971ac6f726cdcaa54337005cf` |
| 21 | `theorem` | [bool_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/bool-eq-false.md) | 89 | `result-track:5657190a14357f6498f75b0816591b646aa90669d29fc78ab1190289064b1db1` |
| 22 | `theorem` | [decide_false_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/decide-false-iff.md) | 92 | `result-track:29c63334cd8ce400730c3eeba22edcbb42a802888f66e66b5bf49bcbb75048b2` |
| 23 | `theorem` | [decide_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/decide-false.md) | 95 | `result-track:529832c92bd6dea2cddaaf6d66af2d1ea1e840ed773eec008885bca1cfac485b` |
| 24 | `theorem` | [of_decide_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/of-decide-false.md) | 98 | `result-track:07f2f4323dded9a81a98132f03f722f146982255d9da9d5bc94f5c28618d23e1` |
| 25 | `theorem` | [decide_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/decide-congr.md) | 101 | `result-track:116c5e308ffa91f1302a7ba8ba7c842499548e81399d692919e0f7789c774230` |
| 26 | `theorem` | [coe_xor_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/coe-xor-iff.md) | 104 | `result-track:4295b1d125cdac556fabadfafda4752f1aa14353933b288e9315935c4e122267` |
| 27 | `theorem` | [dichotomy](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/dichotomy.md) | 108 | `result-track:0ba59712020dbbc612f566c351f1cf193ed926d4bcbc14e9c7c6156af04cb2a4` |
| 28 | `theorem` | [not_ne_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/not-ne-id.md) | 110 | `result-track:9d6fa1c85cd14adfb257e4fa6f1e26a900d45464af1c18c8074f0f102657c150` |
| 29 | `theorem` | [or_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/or-inl.md) | 112 | `result-track:5c316d4f90394a9171a2e407fc815cdc3d23683348e19d2df4412d836aae0ecd` |
| 30 | `theorem` | [or_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/or-inr.md) | 114 | `result-track:293b9d419fa76dd86892711be9d3fea9af3eef6e468a12ba66fe112d1df191f8` |
| 31 | `theorem` | [and_elim_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/and-elim-left.md) | 116 | `result-track:e764e3ee5971ebe5c040e43b9f3c0d97e74c9b62103214f0290fc54b488014e5` |
| 32 | `theorem` | [and_intro](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/and-intro.md) | 118 | `result-track:c172031b0e5db8dc0c656d1234a57c44047a77f3add6bddacde90cd91104c83b` |
| 33 | `theorem` | [and_elim_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/and-elim-right.md) | 120 | `result-track:f1738c91789a50a96f7f5ef5f88469d57df5c210de56961a80b4a5bc74114a83` |
| 34 | `lemma` | [eq_not_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/eq-not-iff.md) | 122 | `result-track:b94a314317579f9bc105022c5d9492c11212f9decb98d133db69b6180d234f44` |
| 35 | `lemma` | [not_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/not-eq-iff.md) | 124 | `result-track:70fe3afea507ac118c5cd081bb4c431d232f07610323d50defdbcf591dbc0d88` |
| 36 | `theorem` | [ne_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/ne-not.md) | 126 | `result-track:717c6b914a657f734da88023739fa4b38494115417479c6c9efb7e6b404df9f1` |
| 37 | `lemma` | [not_ne_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/not-ne-self.md) | 129 | `result-track:001d37d2a304c0582cba5fed5c558886b3e7d5e32095c9721d96dd1414229c63` |
| 38 | `lemma` | [self_ne_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/self-ne-not.md) | 131 | `result-track:c3426df3d3c306ef216fc5a2b91fff902202490165ad81a3a4cf0740e39a6faa` |
| 39 | `lemma` | [eq_or_eq_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/eq-or-eq-not.md) | 133 | `result-track:f9ceced3339ab7120bc11ba4d79b34e4723c76fd6fe9da3965e822d4d2636cbd` |
| 40 | `theorem` | [not_iff_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/not-iff-not.md) | 136 | `result-track:660bd9d19183c146c1b92f897b9587507b36860756540529964991174cf277f2` |
| 41 | `theorem` | [eq_true_of_not_eq_false'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/eq-true-of-not-eq-false-source-edition-2.md) | 138 | `result-track:a2192e2fe0a31010886212e398d6de36a79d985ffcb5ada8625d64ab0ef1ca48` |
| 42 | `theorem` | [eq_false_of_not_eq_true'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/eq-false-of-not-eq-true-source-edition-2.md) | 140 | `result-track:de1546e4d514ac8c6f994ce1ad87b5e27e55ec9703da7658c2efd75cb280f334` |
| 43 | `theorem` | [bne_eq_xor](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/bne-eq-xor.md) | 142 | `result-track:6fa1533c97efd5b9005f61f133b66d3ab9ea3983d39681d1cef96101d70c0f60` |
| 44 | `theorem` | [xor_iff_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/xor-iff-ne.md) | 146 | `result-track:0c6e18e03661bc14749c1fbc0a56c458c668210d93943b0e8aa9b1f6499dc01a` |
| 45 | `instance` | [linearOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/linearorder.md) | 150 | `declaration-track:f69731865802d004698acb3344cb08498baed710714175c9a532d5aab56da9aa` |
| 46 | `theorem` | [lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/lt-iff.md) | 162 | `result-track:4d68680cd3e3b5f19143d7b2d9ef135eaa2ea5ba028058e8e8e53fa1a4d6d8dd` |
| 47 | `theorem` | [false_lt_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/false-lt-true.md) | 165 | `result-track:3a7eff175dbc841caf863d58e75de14eead3fe850b5d44df64fb73e8cd137fb5` |
| 48 | `theorem` | [le_iff_imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/le-iff-imp.md) | 168 | `result-track:719d8b01374717e2d3fac35a02ad7bfd73f7aa3a55a6af2eceb42f3204ab136a` |
| 49 | `theorem` | [and_le_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/and-le-left.md) | 170 | `result-track:2492b1ef422c7562ff9cd097a362f1b02e3056acbf0a2f02b6f314039a7c13de` |
| 50 | `theorem` | [and_le_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/and-le-right.md) | 172 | `result-track:499f75cf813fc76b3fe8c913f240e028988a99b24685490303af5a0128db8dd6` |
| 51 | `theorem` | [le_and](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/le-and.md) | 174 | `result-track:53d6797e7a641dfc93fbc5fe7435538025ade850e589b57fb715aa13def78e37` |
| 52 | `theorem` | [left_le_or](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/left-le-or.md) | 176 | `result-track:c6b9850b2582c87b7d2dbec6056832dbdbd9898fbe9faf69af2ac4c47bd5ff03` |
| 53 | `theorem` | [right_le_or](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/right-le-or.md) | 178 | `result-track:c149ae9c7533600d31dd34d8cc7e88e304f02f63c6ebb7673dd3fc918f88f6a4` |
| 54 | `theorem` | [or_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/or-le.md) | 180 | `result-track:e0415fe0f68e299f72cefc2e4b089a92b413d16bddf0d4ed022c2e7c4a08a065` |
| 55 | `def` | [ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/ofnat.md) | 183 | `declaration-track:b772d0e3f24bb821ee690d13515add6526894573111eb251ee2255912b851a69` |
| 56 | `theorem` | [ofNat_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/ofnat-zero.md) | 187 | `result-track:40b75785be74c3bee6ae54c0a02c679100c0ac060f1a862dfee067fbe6f4210f` |
| 57 | `theorem` | [ofNat_add_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/ofnat-add-one.md) | 190 | `result-track:c34cfaa3194a0fc467bb2bed7f1ca2ddb595787c7485e9aeb4ba714ea174a756` |
| 58 | `lemma` | [toNat_beq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/tonat-beq-zero.md) | 192 | `result-track:a51b949eb5956fc73d57f9dfe119f81424c745d7f0d3f095dab577ef8389d98f` |
| 59 | `lemma` | [toNat_bne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/tonat-bne-zero.md) | 193 | `result-track:8c322bddc4b8bb728bcbdd9e7bbe00f62d6b9e10258ce78ed44b373bed8a9a9a` |
| 60 | `lemma` | [toNat_beq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/tonat-beq-one.md) | 194 | `result-track:3d70f556251abf952e296f35c04d2b003ac1157ec58b5b1ea5051897d50518cf` |
| 61 | `lemma` | [toNat_bne_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/tonat-bne-one.md) | 195 | `result-track:4150daf821b780ad13b35038fecf0cf0e5937aef3472f0a3dcde2896f06a7d88` |
| 62 | `theorem` | [ofNat_le_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/ofnat-le-ofnat.md) | 197 | `result-track:829ee3d57ed4c58ac099ac87157260bce1299756eeb541bb28a3d0d4b961396d` |
| 63 | `theorem` | [toNat_le_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/tonat-le-tonat.md) | 203 | `result-track:3fe228073333d4ec529e82b2ece6a2edd8414e2a58f466f957d39bd7f17f2dae` |
| 64 | `theorem` | [ofNat_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/ofnat-tonat.md) | 206 | `result-track:e69642d174ee8a08a9e7e57a9c84865aa99c5e4dd347634b3974c32c4b86f837` |
| 65 | `theorem` | [injective_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/injective-iff.md) | 209 | `result-track:1709c0684bf84a6a02ded643e2c6e637ad276c2c40a73773b352e62f5d9cd50d` |
| 66 | `theorem` | [apply_apply_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/apply-apply-apply.md) | 213 | `result-track:4babbd7a49b0e0479f76ba2b6968d69db030105431d74276131c8686e988e6eb` |
| 67 | `def` | [xor3](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/xor3.md) | 217 | `declaration-track:d06d4e4b7d3e8f1f8c0bff809454c5a8d2587e462d8b8b2caf20b81b3579f8e0` |
| 68 | `def` | [carry](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicNamespacedPublic.lean/declarations/carry.md) | 221 | `declaration-track:34432d10b8590f1efa216a28297683f1b805b06313b4c030fa1eb78b9ba69372` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b064faa45b7f5bf01e0419e4303d4e104bd337d041ff30fce83bcbf9e207f142 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8d9633789a3a7c3960dcbb3882445b71165678e3b26cf067661612d9e8563678.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8d9633789a3a7c3960dcbb3882445b71165678e3b26cf067661612d9e8563678.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
