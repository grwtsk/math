# Verification target: Boolean Subalgebra Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45fc4d57d3432abb17cb6a4137ed0d996e7bbc6c",
  "lexical_observation_count": 127,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant384ac00c27dbe687ce308415f2e10d70bc176de9c29ee7233d5dbc7be419e6be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45fc4d57d3432abb17cb6a4137ed0d996e7bbc6c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant384ac00c27dbe687ce308415f2e10d70bc176de9c29ee7233d5dbc7be419e6be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant384ac00c27dbe687ce308415f2e10d70bc176de9c29ee7233d5dbc7be419e6be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BooleanSubalgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/booleansubalgebra.md) | 33 | `declaration-track:7099148719b69d49271dabbde7481409038512b54a1321ce5b7641dc6e27e218` |
| 2 | `instance` | [instSetLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instsetlike.md) | 44 | `declaration-track:710c2f8ec87bfc0c56e0a97ead5b7e43489df92231c99069bcb9bacf8ed81669` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 48 | `declaration-track:e99b627aaafdffa94f4c47a3bb7b23a6b5b99552889b0b63d7adf05c0d6fdfc2` |
| 4 | `lemma` | [coe_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/coe-inj.md) | 50 | `result-track:af1b1e1bfabc8bb783870c016c909978e80da726210df9b63141be210b59babf` |
| 5 | `lemma` | [supClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/supclosed.md) | 52 | `result-track:e116432ac5ece44fbff8d6d5f4a1d065225a77be4509ae5b59335f5a80377985` |
| 6 | `lemma` | [infClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/infclosed.md) | 53 | `result-track:c901a3875900b720518757d1715ea9f84c51d01b64d17d2e2332cb7c19ec0513` |
| 7 | `lemma` | [compl_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/compl-mem.md) | 55 | `result-track:f44203abcb02e8d8410818a2fee9fc133b57017e9e0b7a5c666a344e065b8ca5` |
| 8 | `lemma` | [compl_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/compl-mem-iff.md) | 56 | `result-track:d210ca0bf4886c2da1323c366bc6c483ed6aed511236398b4bd83826c4dd9612` |
| 9 | `lemma` | [bot_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/bot-mem.md) | 57 | `result-track:aa1a97cc63ec32e8826b50e3555a141fe3be4b6cbc62ada86945bc9c2a98dfc7` |
| 10 | `lemma` | [top_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/top-mem.md) | 58 | `result-track:7c9c3e570dddb89cf72f680f65e8f8616d65fa212e31e59150df63524a01d254` |
| 11 | `lemma` | [sup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/sup-mem.md) | 59 | `result-track:18d77d3aeed4704deacfb3f636584ca77fff1e8875788bc6ae78973ee7abd7f5` |
| 12 | `lemma` | [inf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/inf-mem.md) | 60 | `result-track:5b2388f904e138c6538e0c7176d788bd7d18571af94e746c4ea8583f84e3d3f8` |
| 13 | `lemma` | [sdiff_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/sdiff-mem.md) | 61 | `result-track:86683ddc41616e47bcffd11eb28c31c0e94e5ae6a6ad2257c9df3753e7e1d03a` |
| 14 | `lemma` | [himp_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/himp-mem.md) | 63 | `result-track:03bd7fc56a87052d6cab29765b9e0fbd4c4cc48cbc55f951f74b8172fc43992e` |
| 15 | `lemma` | [mem_carrier](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-carrier.md) | 66 | `result-track:2fb7614aaa0c9ebb8545dc9c77f6b90d2c78e6b2d8150bf1ee2bc0db1dcfa431` |
| 16 | `lemma` | [mem_toSublattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-tosublattice.md) | 67 | `result-track:751136c66bdea242abc2d4e3af5d4770298ff8c37cd584207471c41f0757bd42` |
| 17 | `lemma` | [mem_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-mk.md) | 68 | `result-track:723731b49e9fac867411b2be712f8e908f18fd7078d681ab459c8d769c5552b7` |
| 18 | `lemma` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/coe-mk.md) | 69 | `result-track:4d69a8f707c4954bd9c049f2cb5c5e2213008795f2cd9f8d26a238b9dd52d14a` |
| 19 | `lemma` | [mk_le_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mk-le-mk.md) | 70 | `result-track:728d0bfcda3fd14211efb72bd57624f2044079c5db032f9863ec368246dce37c` |
| 20 | `lemma` | [mk_lt_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mk-lt-mk.md) | 72 | `result-track:28c00566dff33da199d36a49943edecb18a9127b1501d87916a782d4e472b78d` |
| 21 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/copy.md) | 77 | `declaration-track:cbeeafbe860b1afed371f2708830cfd10e8829e1262bace5b26e02f50c0f736b` |
| 22 | `lemma` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/coe-copy.md) | 83 | `result-track:6777575662fe8995226571dba0478132da1ca8edb75717c872ee355a5e1da0ca` |
| 23 | `lemma` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/copy-eq.md) | 85 | `result-track:4da25679f8f4024fe26c31a298c39c90902ba3117511a06434c88caef4f88974` |
| 24 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/ext.md) | 89 | `result-track:f476c6840817d8c4da9d4bac026ed754b00c777779cf5736b49088ca91631c86` |
| 25 | `instance` | [instBotCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instbotcoe.md) | 92 | `declaration-track:92db31f4f640d305ffb70496525a0ab8d52cdfaca738cbe9bbd68c6a68f7dd4c` |
| 26 | `instance` | [instTopCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/insttopcoe.md) | 95 | `declaration-track:0aec5f1c8afccacb8f30e0d6578a7b88c0cbd1af0a61c37ab9ceba54845120eb` |
| 27 | `instance` | [instSupCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instsupcoe.md) | 98 | `declaration-track:deaa9fa4030a0d6495b2fa416fa0f6cbebbc111a2c144f3c52ef7e6e1152ae7d` |
| 28 | `instance` | [instInfCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instinfcoe.md) | 101 | `declaration-track:c83e130ff0d5e3cfdff97d6bb5fdf230f1a59cf1f90254df1b22b7edf2d3d4f4` |
| 29 | `instance` | [instComplCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instcomplcoe.md) | 104 | `declaration-track:b945c033533445a94d8da11d72d9253d1f213ec445495374a1e572312bded02b` |
| 30 | `instance` | [instSDiffCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instsdiffcoe.md) | 107 | `declaration-track:e0a47863c134482f1cc006d14081d8ce7f504b55a5b77198b194545ca74d6ad9` |
| 31 | `instance` | [instHImpCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/insthimpcoe.md) | 110 | `declaration-track:02a191e2325c9f96f2aa4c4674ec5e9385599253d3d7e8051338cf7c8fbad811` |
| 32 | `lemma` | [val_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/val-bot.md) | 112 | `result-track:016668d1d45384cb3ccbc5feb68041ca1e2778db6ce64864e65f3c10e635b904` |
| 33 | `lemma` | [val_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/val-top.md) | 113 | `result-track:752cd234c72b00feb6d434371828991a573d657a48f278dd89269e6db1e8c0ad` |
| 34 | `lemma` | [val_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/val-sup.md) | 114 | `result-track:1d6f8fbdcd4058186bd03efaecd53355dc6827d70a9390c8adb58997a323c57d` |
| 35 | `lemma` | [val_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/val-inf.md) | 115 | `result-track:c3976125398bede5a8ac1259564679b2f6f2ae380ebf60529174293422ee74ed` |
| 36 | `lemma` | [val_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/val-compl.md) | 116 | `result-track:e9a225b3430d0c35c5a74cb3edb9fc9f79c7e69fcaf797ef0919377f6b33acdb` |
| 37 | `lemma` | [val_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/val-sdiff.md) | 117 | `result-track:85e56950b69bbb0949968d51fb8870e1fdffa6da769be747259a91cb99d1e1a2` |
| 38 | `lemma` | [val_himp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/val-himp.md) | 118 | `result-track:c6652879d14ef90ae02bd56cd3625b21de9d047e581de7b274a08f6e3884c005` |
| 39 | `lemma` | [mk_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mk-bot.md) | 120 | `result-track:42382cca1f559cf3f19e9dbb8c0df872722863167d80a59960d711d7f19a94a9` |
| 40 | `lemma` | [mk_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mk-top.md) | 121 | `result-track:d4c76c94eecd64b2dd8cc63f9b8b284e5726d90cc393a5876ec2e5ccc7805921` |
| 41 | `lemma` | [mk_sup_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mk-sup-mk.md) | 122 | `result-track:a2d6032406ff46769dd5e0f7c01d9ae22c4b132774830ca517652a56fb9804e7` |
| 42 | `lemma` | [mk_inf_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mk-inf-mk.md) | 124 | `result-track:a52a0f2454d05f53911c83e264e3dd0695020982d9cd1f1f40e4a2a2d92ccfc7` |
| 43 | `lemma` | [compl_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/compl-mk.md) | 126 | `result-track:c1e2b59c3a0b2648de8d30b1dbcabe595863d7079ea025abc58a37906c1e1b40` |
| 44 | `lemma` | [mk_sdiff_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mk-sdiff-mk.md) | 127 | `result-track:76fc7d0fc99d72964ce715e5cedb90eb52e2ac8206d7686938ddc9133c907bfd` |
| 45 | `lemma` | [mk_himp_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mk-himp-mk.md) | 129 | `result-track:529118adc5097718bc3feb6082ad5a1a003e96d563eaa572c1bddaae3eb7a1f2` |
| 46 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 132 | `declaration-track:e077dac24d7974c05a34aa888b5d56d334a991ebc7dce824fe867d18e7c7a872` |
| 47 | `instance` | [instBooleanAlgebraCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instbooleanalgebracoe.md) | 136 | `declaration-track:4b0a23affb44042a72b24958961b01d3884d389aa7c707f7bc2f30de497b4810` |
| 48 | `def` | [subtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/subtype.md) | 141 | `declaration-track:4afaad652496af80c44aefc3ca388ae76a3a4444df989fc729579cbcfde34905` |
| 49 | `lemma` | [coe_subtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/coe-subtype.md) | 148 | `result-track:5d12e0cad99c09ff1ca036545ecaa18518866f9c404b8b92e8cacd83199f7c56` |
| 50 | `lemma` | [subtype_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/subtype-apply.md) | 149 | `result-track:334a60674dc2614b3917e56072060b70afa4c878f74659e10e0ef8cdaa87f7c6` |
| 51 | `lemma` | [subtype_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/subtype-injective.md) | 151 | `result-track:b70bd9b824ad958580162b195647c303047787f72cd0f21b499b6554961162ee` |
| 52 | `def` | [inclusion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/inclusion.md) | 154 | `declaration-track:dd459a2cc58b89f6677f77fd67f43e6f47113e330568e92ef977742f9e7005bc` |
| 53 | `lemma` | [coe_inclusion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/coe-inclusion.md) | 161 | `result-track:64d00d74e9aaae20a357aa7dfd6035865f4452d76baa7de8fe85dff1f1a96486` |
| 54 | `lemma` | [inclusion_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/inclusion-apply.md) | 162 | `result-track:9eac07630eb547024668d2a1021f8d23a1059baefe311a67e279fd2b962b3b77` |
| 55 | `lemma` | [inclusion_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/inclusion-injective.md) | 164 | `result-track:8d53787cd600d5df2547a6838779feaef9e11df73c55a12c92ec74360e5da74a` |
| 56 | `lemma` | [inclusion_rfl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/inclusion-rfl.md) | 166 | `result-track:0c547f80c4d5c7ea21261ac8188cb7c7b21a787a405a60f5445f7a18c5d21ec7` |
| 57 | `lemma` | [subtype_comp_inclusion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/subtype-comp-inclusion.md) | 167 | `result-track:276bde40880d33fb37dfda9f11e23f5e038568af12ef459510203ccfb8818339` |
| 58 | `instance` | [instTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/insttop.md) | 170 | `declaration-track:5c0ff08cc0e645310c2b7cbcc97f138ca1077b0d6f30b84618a3c315ec8563c0` |
| 59 | `instance` | [instBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instbot.md) | 178 | `declaration-track:04b2c86f4c13855ac581cf9b67b868c7ca3e797462734ec06020cd6a03255456` |
| 60 | `instance` | [instInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instinf.md) | 186 | `declaration-track:b65399d52a4fa918f33a33811f1e6aaec53f262868994d6a78fcf28f079ec05a` |
| 61 | `instance` | [instInfSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instinfset.md) | 194 | `declaration-track:092732d58a4ecfd21dc0f91a0cb519f478c316c9f3b5435584ab089f258750e7` |
| 62 | `instance` | [instInhabited](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instinhabited.md) | 203 | `declaration-track:fb1c99d625a01c92d4016dfcf459ff8a0de6e015052653a444deaef397d3fb27` |
| 63 | `def` | [topEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/topequiv.md) | 208 | `declaration-track:e451b657831a3832840e8ab55622899eaf698c5f92682650b3d823d7b83a91ce` |
| 64 | `lemma` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/coe-top.md) | 212 | `result-track:f91e7e920e208fa26088f48105d1ac07623ceaec61cbd892712f48c126229026` |
| 65 | `lemma` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/coe-bot.md) | 213 | `result-track:40d11f4520e7ba3cdcfcd031751f494ea3e1d0659451e3dec720eb4029132bec` |
| 66 | `lemma` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/coe-inf.md) | 214 | `result-track:301aba2ca21e97d4576df2f9915e498d9f3ab8550802d24749077bb050837f4b` |
| 67 | `lemma` | [coe_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/coe-sinf.md) | 217 | `result-track:0fee8e0a4d8272d5e1dec426e8d720ad144d324794755fa69e05acf4a5448c82` |
| 68 | `lemma` | [coe_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/coe-iinf.md) | 220 | `result-track:1df003035efa1e80c3ca9b8c84f1302cda67172ccce07607e60990f3bcbb2ae8` |
| 69 | `lemma` | [coe_eq_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/coe-eq-univ.md) | 222 | `result-track:ed62d349ebb7640a879d3bb06131f7876c19b70128ee3d2cd8afd2141d3f5c2a` |
| 70 | `lemma` | [mem_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-bot.md) | 224 | `result-track:bfe2b2fca5c6ee3c58c8bcf8b6188854c3416e81f399f469cf273af648ad9c1a` |
| 71 | `lemma` | [mem_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-top.md) | 225 | `result-track:d481816962d4207960ee1ef87db1fa22dee66ef532226168a7300647b7f69cbe` |
| 72 | `lemma` | [mem_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-inf.md) | 226 | `result-track:901150e02f6fb8036c68d7551a56bebdf11b200b5ab4fc2b4c2ef5af8b5777a8` |
| 73 | `lemma` | [mem_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-sinf.md) | 227 | `result-track:50db373b7443561cbf6ee287933f448173304531d91f132498e4069d3d85c9a8` |
| 74 | `lemma` | [mem_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-iinf.md) | 229 | `result-track:0ad7331eb265fc4652c63716ed1f49b9ea30b3a971cb0e20d18be0eab1559610` |
| 75 | `instance` | [instCompleteLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instcompletelattice.md) | 233 | `declaration-track:e8b93f1a9f54f6fb565f4d3a85e2dcb7f9611b291b2afedbb1163a3eb7c9d6c0` |
| 76 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instance.md) | 245 | `declaration-track:2e69e6b93930c2e4e3b3d5e06bcb837a2962392d426f565a2c35a01c4b65b34e` |
| 77 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 246 | `declaration-track:592b997f065238b9e053544cd2fcd08c985de574450d129c8cdf0065e962dd78` |
| 78 | `def` | [comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/comap.md) | 249 | `declaration-track:0c18d55980ca1d4bcb81d2f4bb4efbc2f6a2e837ef4f5e9fff977eea2fe6625f` |
| 79 | `lemma` | [coe_comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/coe-comap.md) | 257 | `result-track:242d628d0719fa8d4f29b691ec19e956232d8e9f9beda5039b8b0705cc2d3dd9` |
| 80 | `lemma` | [mem_comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-comap.md) | 259 | `result-track:0fb1e6a600b64b1fa59ff938cd1dd599a3064acb9882565b4185061ad48db825` |
| 81 | `lemma` | [comap_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/comap-mono.md) | 261 | `result-track:3702c47af24ffece1bf9591ad1e9c3335c5d66de471797f89fba97b5445d7991` |
| 82 | `lemma` | [comap_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/comap-id.md) | 263 | `result-track:cb3b409a9f436dd8736bc56a4c4e2bac03776e790cd0564b374231657d1c3715` |
| 83 | `lemma` | [comap_comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/comap-comap.md) | 265 | `result-track:91f60e3e741299b7d5db5eeb7c48df106b6915e5ee88a6fb8bf4afa631a3b766` |
| 84 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/map.md) | 269 | `declaration-track:132f87818dec3250ef3fd30abaf90db2069be7c9f410c2653e4be125881f6673` |
| 85 | `lemma` | [coe_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/coe-map.md) | 276 | `result-track:6019117422eba929342135d8bbeb3db2254c075596eadd33f321abdab864ec0c` |
| 86 | `lemma` | [mem_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-map.md) | 279 | `result-track:b49d0dbdd4956d3cdc29e15a439481a6dea96eadf2fda5ac5e91b20b2a80f8d3` |
| 87 | `lemma` | [mem_map_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-map-of-mem.md) | 281 | `result-track:8977493a1e9546ba9f0ba82e21876cc723c9a8cc70a7f173e5c5982184d9d0b3` |
| 88 | `lemma` | [apply_coe_mem_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/apply-coe-mem-map.md) | 284 | `result-track:1918f90c8ddda4d23d419d0da55888020cba38dd99eba8d8962ba9ac09a06eca` |
| 89 | `lemma` | [map_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/map-mono.md) | 287 | `result-track:b4588a8832732ebeb351491ac505201c159b85531db0c9976b889bb3b9cc2bf4` |
| 90 | `lemma` | [map_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/map-id.md) | 289 | `result-track:1691b603233cb93a39cbfdb184bdf506426407043440e25f4e81de70b12bbcf9` |
| 91 | `lemma` | [map_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/map-map.md) | 291 | `result-track:c0bd96d5cf7f372e99a08c5d4942bcd7a20bf4bbaef0e486422ee2231399b987` |
| 92 | `lemma` | [mem_map_equiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-map-equiv.md) | 294 | `result-track:9b68ffd006f514611f732e4482e4234f2e93485b5887bd076a44b5893513cd25` |
| 93 | `lemma` | [apply_mem_map_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/apply-mem-map-iff.md) | 296 | `result-track:2da73dec854b28849da41abe592eca4162c3a469bac5d555e6854c10cfecdb9b` |
| 94 | `lemma` | [map_equiv_eq_comap_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/map-equiv-eq-comap-symm.md) | 298 | `result-track:ab5b97df18d6b4e01ae873e4b6f93f6ad103446352db3e21db5cbe5a3e096bde` |
| 95 | `lemma` | [comap_equiv_eq_map_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/comap-equiv-eq-map-symm.md) | 302 | `result-track:e5abd3fcc41f5e83399d7a4ed5840c4c4ff5a9efe1f8ce5522fffb51f61bdda3` |
| 96 | `lemma` | [map_symm_eq_iff_eq_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/map-symm-eq-iff-eq-map.md) | 305 | `result-track:228b343c841516bee91aa67dca3090bbd07c76be5cff1319f340048e2d5e3274` |
| 97 | `lemma` | [map_le_iff_le_comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/map-le-iff-le-comap.md) | 309 | `result-track:327f4b94f364e5fd94e2b5a5cfde915090ea109b31550d52e7407f18aed2f88c` |
| 98 | `lemma` | [gc_map_comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/gc-map-comap.md) | 312 | `result-track:d3d691ef797c93424c871c4663b7807b46f726f5c3a5bda0571e1147eac2c8b6` |
| 99 | `lemma` | [map_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/map-bot.md) | 315 | `result-track:c73ee6bae7b0b6774833813b6164a9d8a1aab87da2723fc04b4f0e6fd2b77f21` |
| 100 | `lemma` | [map_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/map-sup.md) | 318 | `result-track:32c603151a33b9a87e86161f4e3697d515a788d099f27a1d59782d815db4c7cf` |
| 101 | `lemma` | [map_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/map-isup.md) | 321 | `result-track:9c4cad0ceef8ebcb334d9e8b40aab7518d24d4607937deca8219db0692f93e16` |
| 102 | `lemma` | [comap_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/comap-top.md) | 324 | `result-track:134bb0dc13e90381222e406d90f0d190cbff31dd15f95a975d312bedfb7ff931` |
| 103 | `lemma` | [comap_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/comap-inf.md) | 327 | `result-track:86c91de66fb5017ebe3bc555f7223091c1245265706fd1e91943f3fc72bd4582` |
| 104 | `lemma` | [comap_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/comap-iinf.md) | 330 | `result-track:f7b3e18e6a5d233a08fd7cd9babcbae48015d0cab58edd51007329e25061c419` |
| 105 | `lemma` | [map_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/map-inf-le.md) | 333 | `result-track:eec24e0d26c4620471d67d335a18c464cd5a95e07f2a888535d8b557613b84d4` |
| 106 | `lemma` | [le_comap_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/le-comap-sup.md) | 336 | `result-track:5dd577c6d3596819c5f8f69cb5b996bcef98b61d6f8a246718976a002f5cb1f2` |
| 107 | `lemma` | [le_comap_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/le-comap-isup.md) | 339 | `result-track:cf58a0d01fd42a1f609d6c89e1c91de8d92912502c0ac96c00d4d94e7119da3c` |
| 108 | `lemma` | [map_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/map-inf.md) | 342 | `result-track:865337814ef784e70dc543993cd260a7fac90858b91afc3a55752519ab82f86f` |
| 109 | `lemma` | [map_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/map-top.md) | 347 | `result-track:86e3e78b404ae13ef1aee5a5eacee39f818854e4ee1e0c914ba5fe5564eebeed` |
| 110 | `def` | [closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/closure.md) | 351 | `declaration-track:a106208fa6414d8ebfdea24c0f61946b33309e5d97af994869bdbcc9daa9aca7` |
| 111 | `lemma` | [mem_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-closure.md) | 355 | `result-track:909c5375489ce91cb1e997530f2907dec64c51ccbbaf1fc3f9420f0a15506e40` |
| 112 | `lemma` | [subset_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/subset-closure.md) | 358 | `result-track:0eeb5bd7deba0173f2b2be319af29f58f19a7e478f85227981bf3f8ebf257e6d` |
| 113 | `theorem` | [mem_closure_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-closure-of-mem.md) | 361 | `result-track:d10d3cdaf8fde363ab58bfea4fee4ad9acbc047c0ca5cd7ef1ddd4ac44f84449` |
| 114 | `lemma` | [closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/closure-le.md) | 363 | `result-track:37de8cf35264fbab26a6a498f6b67d0b3a696601029fad1bbf3de9760db778b4` |
| 115 | `lemma` | [closure_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/closure-mono.md) | 365 | `result-track:7e195ea1c5c5307fb9c1fd8d6a485cbcad9573b33d329149b0ec105349d3432c` |
| 116 | `lemma` | [latticeClosure_subset_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/latticeclosure-subset-closure.md) | 367 | `result-track:16ec29e2c3e08e43d72d0bf00a5d0994de862389127d1311e31a364ace8a68cd` |
| 117 | `lemma` | [closure_latticeClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/closure-latticeclosure.md) | 370 | `result-track:15670cc7308bdece7887c114a9b213ef851038aca9995bcf7d63d2ed48a14471` |
| 118 | `lemma` | [closure_bot_sup_induction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/closure-bot-sup-induction.md) | 376 | `result-track:d68b040c0b0d0ca1a4640bcbaa955ffee7744126243837e8ec0a898be8498301` |
| 119 | `lemma` | [closure_eq_latticeClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/closure-eq-latticeclosure.md) | 390 | `result-track:60ed1143398c2cd17f56a539c97fd93c4b8218a329ca14da5565b191d779d248` |
| 120 | `theorem` | [mem_closure_iff_sup_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/mem-closure-iff-sup-sdiff.md) | 407 | `result-track:ebfe747f0e11710275e21ae5b2611335474e72ca2274e9ce6f5c103e7dbe6980` |
| 121 | `theorem` | [closure_sdiff_sup_induction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/closure-sdiff-sup-induction.md) | 426 | `result-track:6f3bc995d4c06144476425f21e36fa5c90bd720136781e8e965c5f583d851481` |
| 122 | `lemma` | [iSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/isup-mem.md) | 445 | `result-track:9eaa42dd9da1926fdf40afe849060b14c044ddb4b31a45203f96aa48066c5008` |
| 123 | `lemma` | [iInf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/iinf-mem.md) | 446 | `result-track:fea366d340eb01fa9876d5c712226c8b6c72f098a5b41f80bd78d88eefd72a0f` |
| 124 | `lemma` | [sSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/ssup-mem.md) | 447 | `result-track:ebf3efb8fb167c7dc796d5ae235740ede2dbe85407305e360359e45797c8c915` |
| 125 | `lemma` | [sInf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/sinf-mem.md) | 448 | `result-track:6b5ce501a11781c2a382a437c1a614dc049188aac8d52c9bf6ce59fc89775a6e` |
| 126 | `lemma` | [biSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/bisup-mem.md) | 450 | `result-track:a2887870d2b5cd9aacd8d180c4161c9e1b388144c0b042684b446022b52b83e1` |
| 127 | `lemma` | [biInf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespacedPublic.lean/declarations/biinf-mem.md) | 453 | `result-track:946161d9a29d9520dc93243c8f4530d92436db9f500a502eafcbca3c63d91705` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4d80e42002899f1af4ee90982c16fb3f124e813ae751efe39aa599fee036f6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant384ac00c27dbe687ce308415f2e10d70bc176de9c29ee7233d5dbc7be419e6be.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant384ac00c27dbe687ce308415f2e10d70bc176de9c29ee7233d5dbc7be419e6be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
