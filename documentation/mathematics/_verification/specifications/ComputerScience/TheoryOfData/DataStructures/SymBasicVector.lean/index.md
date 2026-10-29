# Verification target: Sym Basic Vector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "081e1cab31555e4ea39c204c2544cb554be2337d",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantccbd295146aea3d9c7f0634944222aa20136b44256eef3e3a7262d4b41293e28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `081e1cab31555e4ea39c204c2544cb554be2337d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantccbd295146aea3d9c7f0634944222aa20136b44256eef3e3a7262d4b41293e28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantccbd295146aea3d9c7f0634944222aa20136b44256eef3e3a7262d4b41293e28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Vector.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sym](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/sym-source-edition-2.md) | 42 | `declaration-track:af22e04aa07165f9b1f90b6ffa1d090a5a2283ca8ddd62e02408ada60585717d` |
| 2 | `def` | [Sym.toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/sym-tomultiset.md) | 48 | `declaration-track:d0df1cb100e3e965e07650653ea118b44364c4f749e20fdd11d055be98f625d9` |
| 3 | `instance` | [Sym.hasCoe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/sym-hascoe.md) | 51 | `declaration-track:2f0eb7501c0e1dfca36da71b1f8249871e4ebe67393ed22aeec2b9d79cdc75d3` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/instance-source-edition-4.md) | 56 | `declaration-track:93da3d558d7ef1c173b8e0b6aa179d314a04e9da1cb9aabff95896607ba31c1d` |
| 5 | `def` | [Vector.Perm.isSetoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/vector-perm-issetoid.md) | 63 | `declaration-track:b2560c4b2808a82948aa1849f25df3e1a78dfa4ea2daff6c6ffa08abcaf9ecd4` |
| 6 | `theorem` | [coe_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/coe-injective.md) | 73 | `result-track:df5b2c7e26b2944c4c2b9db08a6987f086aa2839ae1bc5dcfe3c7fe412441899` |
| 7 | `theorem` | [coe_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/coe-inj.md) | 78 | `result-track:7c3c70ed461654110e95dd02eb44cb925b050a3fae72703144541bbbdb35a05d` |
| 8 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/ext.md) | 83 | `result-track:ec459fbe2b154fc7401042d3df040fd83ec62fb3cbfc32566676eaf5a06457bb` |
| 9 | `theorem` | [val_eq_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/val-eq-coe.md) | 88 | `result-track:78226452d1a9b9b22654a3634bd626bc139af033d5cbc61cc99db1335b79bb57` |
| 10 | `abbrev` | [mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/mk.md) | 94 | `declaration-track:96ce9f6699c6960cf52ff69b3067b6ed6fa714e175f071def46268a75eeaac27` |
| 11 | `def` | [nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/nil.md) | 100 | `declaration-track:a379b6ef7491e0ff2db94af7f271d282c38b0e5a486e7000af5f21d327ecedcf` |
| 12 | `theorem` | [coe_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/coe-nil.md) | 105 | `result-track:c9c041baf30cfc0ecb6067f8b7a54b9eb3fd0c91dc018a83f180f82acaab06dd` |
| 13 | `def` | [cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/cons.md) | 112 | `declaration-track:c769b02b6a1a19a2669c9e816d929ea4bd4790c2dc4e60ccdd5cfddfc3213f9f` |
| 14 | `theorem` | [cons_inj_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/cons-inj-right.md) | 120 | `result-track:ed658756ed2dea8da59b20ef93248d702e3fc59bb51dcb66e510d3d350ece579` |
| 15 | `theorem` | [cons_inj_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/cons-inj-left.md) | 125 | `result-track:9577cebe9ee58bf21c7b99876cf9f7fd3436836b255f407b9452d95da40ebbb0` |
| 16 | `theorem` | [cons_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/cons-swap.md) | 129 | `result-track:ec2d54b154f86744c8b295e3415b2c2539957850730de32821b8e27c2fb33dc0` |
| 17 | `theorem` | [coe_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/coe-cons.md) | 133 | `result-track:d8c8e2c418aa1f9ec85322cf375b1383afbe726b7c8c520d3af8d8c28e7fb29b` |
| 18 | `def` | [ofVector](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/ofvector.md) | 140 | `declaration-track:1b12a2c142e07cf3e283d5eaa7f935735438cf2198b5a7c25158823e0de35589` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/instance-source-edition-8.md) | 146 | `declaration-track:e1970a48f217283107d9236ef205fa0fb96e427a41582e295d8220b7ee344e29` |
| 20 | `theorem` | [ofVector_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/ofvector-nil.md) | 149 | `result-track:4d71b527876c133059dfc00a7ac411961fa65418dea04bff8f8d92b9e5150ec7` |
| 21 | `theorem` | [ofVector_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/ofvector-cons.md) | 154 | `result-track:bab1d67ef9e6816ebabbfb7026a0d8cc85848f93573f32dabf9b7a4c3856b8ec` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/instance-source-edition-7.md) | 161 | `declaration-track:d884f5475a283167336ce62e279c052b4864da511e88e1d5233627f6015f095f` |
| 23 | `instance` | [decidableMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/decidablemem.md) | 164 | `declaration-track:686babc58804c36d5a64d490cb4b3909f1eecdd93aeeb1483d1cd59c2dce4db6` |
| 24 | `theorem` | [mem_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/mem-mk.md) | 169 | `result-track:0a0c3f6827ab0f9db9c77cfb1719d4c9fd572072a6cb1a5301b379a6c61359ca` |
| 25 | `theorem` | [mem_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/mem-cons.md) | 174 | `result-track:e57659cdb77b1ba65e7ba246377bc8c5e5a4541826a1e109fe9384ebd62b1554` |
| 26 | `theorem` | [mem_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/mem-coe.md) | 179 | `result-track:f98ca2e19adb028ffb889765df7f87e91ad619c93d77c5c3fa87e9305053aa32` |
| 27 | `theorem` | [mem_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/mem-cons-of-mem.md) | 183 | `result-track:fe62cae49e84f10aa0b2b8de32bb4e335d9c9e1ecfa46c1c9deb7bb30cc75ba3` |
| 28 | `theorem` | [mem_cons_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/mem-cons-self.md) | 188 | `result-track:60e779f6763eb54b23dd7b5f1c4715c000c694e98e60b7ff0a27acd022b930c1` |
| 29 | `theorem` | [cons_of_coe_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/cons-of-coe-eq.md) | 192 | `result-track:b6adb4b07be3eb6a328254b96512f11f8750f7477a32d97e9c009a14a8bbafba` |
| 30 | `theorem` | [sound](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/sound.md) | 198 | `result-track:a3b954fea4ef81175706a4fab1a3b18d02db14e43eb795a1ccce3425c100f5f8` |
| 31 | `def` | [erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/erase.md) | 204 | `declaration-track:3a08eb71b3b6e133ea7cb662a515bcfd81926e866d283d7277b9fe792bc78dcb` |
| 32 | `theorem` | [erase_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/erase-mk.md) | 209 | `result-track:c285c26ba6a2a5005c517ff0d1b6b1efc507f10e4d3202254e2b23cdadc79279` |
| 33 | `theorem` | [coe_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/coe-erase.md) | 217 | `result-track:3d3b00e9c915edf253c4ceeb24b4e59af5de249727e2f42a74c325cabfc3a991` |
| 34 | `theorem` | [cons_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/cons-erase.md) | 223 | `result-track:4e38e57adb612f17367047b9aca9876515f26a4e162230c7d759c4601b95de59` |
| 35 | `theorem` | [erase_cons_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/erase-cons-head.md) | 228 | `result-track:8668b4c2c841306e8c9f5d71ce29cc6f301716a315e9c58b49c13baf27239249` |
| 36 | `def` | [Sym'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/sym.md) | 235 | `declaration-track:6d0a0a0d93cb0780e240829f2fcaba1dd9fd87aa265551544d1c12d2e30ceb50` |
| 37 | `def` | [cons'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/cons-source-edition-2.md) | 241 | `declaration-track:d67d55e5f5946ccd85085066274fa0b229ce7b4484634b34f4d39f51424728ea` |
| 38 | `def` | [symEquivSym'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/symequivsym.md) | 250 | `declaration-track:a695d467665f2633fc75b8e47f61910156dc89e0330f4f80abd53db94dd3bb80` |
| 39 | `theorem` | [cons_equiv_eq_equiv_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/cons-equiv-eq-equiv-cons.md) | 254 | `result-track:d7dfc8ae4fb8efc9d7e45d255e42d9e18127ef4c2a23043da79e7c60a2fe7dab` |
| 40 | `instance` | [instZeroSym](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/instzerosym.md) | 260 | `declaration-track:a3ce28bb4e8de83a36d67237a3473c8ea87484d440a887764d2685b7ae133205` |
| 41 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/instance-source-edition-3.md) | 263 | `declaration-track:74c6891ee557cc5afefc4a3fb2474baafc61c424738448a211b5d959c765d66e` |
| 42 | `theorem` | [eq_nil_of_card_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/eq-nil-of-card-zero.md) | 266 | `result-track:4b2d2f2a99413bc163c61a3b2e83a91fdddec9770e6e4e736c50402da6ddc910` |
| 43 | `instance` | [uniqueZero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/uniquezero.md) | 270 | `declaration-track:cfd03385823a2d1e99d6ab8224742593a187f7c74f787a49c4378f752452ec59` |
| 44 | `def` | [replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/replicate.md) | 275 | `declaration-track:caf02ed2fa77f9970973a46ef9808fee0a9a621a16f34b0d5aac34f9ff12ac88` |
| 45 | `theorem` | [replicate_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/replicate-succ.md) | 279 | `result-track:3c7df3868174c1421fad1314391b3f66a6ad71649259d58d8d567770e83a9c95` |
| 46 | `theorem` | [coe_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/coe-replicate.md) | 283 | `result-track:9d1a7882171bb26f8107ab7ea381e011486c78bddce8cb18a5ebe85a5633ffe2` |
| 47 | `theorem` | [mem_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/mem-replicate.md) | 288 | `result-track:781339896056c5e403cfa07a7bd247fab0aefc19e03d9ee70641c2b0a00de8fc` |
| 48 | `theorem` | [eq_replicate_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/eq-replicate-iff.md) | 292 | `result-track:f66638d02dd9d3527fbb15678bc9a6cf262bf861b3fe7d31c71992fe43ea7662` |
| 49 | `theorem` | [exists_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/exists-mem.md) | 297 | `result-track:564762da415142f75849b50f0504624a79c9753d495a92477397a5bc59cb10d7` |
| 50 | `theorem` | [exists_eq_cons_of_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/exists-eq-cons-of-succ.md) | 301 | `result-track:93590b27bfcbff1db7d08522633880912c349d509484833e2cf233c91e991302` |
| 51 | `theorem` | [eq_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/eq-replicate.md) | 306 | `result-track:a99d662f1e55264490ead0ac1c16fb998931fae45f877230d6c1dd64879a2a55` |
| 52 | `theorem` | [eq_replicate_of_subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/eq-replicate-of-subsingleton.md) | 310 | `result-track:3581cfc428cc9fea080438ab70779e16cfd7adf0056a899a4e18a30f575d3011` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/instance-source-edition-6.md) | 315 | `declaration-track:9b0d140ed3d1e8ffcf978efe82926e7556cf7d9aee5d038ccd016f80e0d9545c` |
| 54 | `instance` | [inhabitedSym](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/inhabitedsym.md) | 323 | `declaration-track:c775b51d37ec9866bf4ab89cbc6fb5420c0788fca39452beab5e4a5299b6842b` |
| 55 | `instance` | [inhabitedSym'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/inhabitedsym-source-edition-2.md) | 327 | `declaration-track:f7857d7cbcccd1ec25ecb9274bdc780ab3e94451034c4f0b2f5ab2236822eca9` |
| 56 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/instance-source-edition-5.md) | 331 | `declaration-track:9883d0858b6d71b200624c71977c3dff2dc573649555283a92977653838ca733` |
| 57 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/instance.md) | 336 | `declaration-track:0016fe217b767e0e93cdc09c082e21deb7198aeb38423747240115486e9d67f5` |
| 58 | `theorem` | [replicate_right_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/replicate-right-inj.md) | 339 | `result-track:57768412811512a9b1cd09fe876bbe4d1727a3919b23be164d1ae7bf8e9d5755` |
| 59 | `theorem` | [replicate_right_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/replicate-right-injective.md) | 343 | `result-track:b35464f240eac938aa4407cc420ac5ee3e0c63a03b3f72d471442795132a2aa7` |
| 60 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/instance-source-edition-2.md) | 347 | `declaration-track:5e6a3761d6164334c01df28ee5badeedf2df5f0bf2d62ae861731d6f4e0eb538` |
| 61 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/map.md) | 352 | `declaration-track:42c4cff2d5fc374efea8e53f2ab91305e49743ff12bfcc9374101e673e586d37` |
| 62 | `theorem` | [mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/mem-map.md) | 357 | `result-track:ef9f1f741d5a64cef890424f20fd6b20a47a680649d4a65fcdee6b8cbb27d07d` |
| 63 | `theorem` | [map_id'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/map-id.md) | 364 | `result-track:1446d0f901f8c713df42da40a612716e344ddc9b7b6c93b935b49f06c831bd08` |
| 64 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/map-id-source-edition-2.md) | 368 | `result-track:29193301f272f337986288f134fe8065e5479f40ecfe1d0d1d62a1ccde2e4182` |
| 65 | `theorem` | [map_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/map-map.md) | 373 | `result-track:7f1bd6c54c8e4b16f26d331fffd4b27f6b8cab6f62f237fdcc488a3b4677645c` |
| 66 | `theorem` | [map_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/map-zero.md) | 379 | `result-track:f4eb0b898cf101d588cfe609d82397fb3c42486b89e4a17b944dbcd6ba7946cc` |
| 67 | `theorem` | [map_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/map-cons.md) | 384 | `result-track:2829d2a7ad0818c0fb3c82f4a43b1cfe77c5eed9805526f44c9498df9bf42eac` |
| 68 | `theorem` | [map_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/map-congr.md) | 389 | `result-track:a9aed2ebc31370795d6b669b5920a3564e9102186c35e9687db0b825473b6785` |
| 69 | `theorem` | [map_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/map-mk.md) | 394 | `result-track:6c64b475b9ad975c8b45dba4ca3c872c59748036cbb435f923c48ccf5317bb05` |
| 70 | `theorem` | [coe_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/coe-map.md) | 400 | `result-track:101beefef9e1ec0c4794688711fa97ce55797c2de4796ed2e6cc82b012f0bfdd` |
| 71 | `theorem` | [map_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/map-injective.md) | 404 | `result-track:cfe2bbeab138ab892376bc0218db2337128d7977d755756c2b4e4146d799ce32` |
| 72 | `def` | [equivCongr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/equivcongr.md) | 412 | `declaration-track:00881830e89621759ca45e0975c9180e1b82699a7f6b856ba25c45eea8bf705a` |
| 73 | `def` | [attach](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/attach.md) | 423 | `declaration-track:199485816b4547be305f5d923ef50d87a1630239a4f44600df21852aac3945a2` |
| 74 | `theorem` | [attach_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/attach-mk.md) | 428 | `result-track:ecb4041b0b3a6bf6d8641404abe015b2de6741d1a607735beef450fd643c9c1c` |
| 75 | `theorem` | [coe_attach](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/coe-attach.md) | 434 | `result-track:0d7a5cc6469e4a6718dcfb65f683daa5671b3786a3ea685bb810f5321862d8b3` |
| 76 | `theorem` | [attach_map_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/attach-map-coe.md) | 439 | `result-track:498a5719e361b55001dc607f29dda903bdb4aa817ab3b465ac00203a59cbf8b2` |
| 77 | `theorem` | [mem_attach](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/mem-attach.md) | 444 | `result-track:a8755149eee99ae52c08c98250a1ecea90ced7f68167e92b6dbe7bc4a4485575` |
| 78 | `theorem` | [attach_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/attach-nil.md) | 449 | `result-track:8428e78cbc0e8d4fb8bdb09b6ae74c1c948594ee031049f594bd4971ff951d35` |
| 79 | `theorem` | [attach_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/attach-cons.md) | 454 | `result-track:bb9ea7180a7874a6b9edaf3e118e4feaaabba8c6ced812725818b906e4e570b8` |
| 80 | `def` | [cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/cast.md) | 462 | `declaration-track:6f1f3b44bd9747fb313d706ba885e1f5943b49fe9abe21a29075ab27165756e5` |
| 81 | `theorem` | [cast_rfl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/cast-rfl.md) | 470 | `result-track:c10f1ac4dca6172adc2c37697019c5855132e6e57d6d59ec158d69b192c401ff` |
| 82 | `theorem` | [cast_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/cast-cast.md) | 475 | `result-track:76ad483b668de04c79dc12e93086548900200580124d9f8ae9c21cc3ce6aa3cd` |
| 83 | `theorem` | [coe_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/coe-cast.md) | 481 | `result-track:3c3a293d5809d0e13f79f2e1fed14cb371aa07c51c5e80013e2c2398b2c717c3` |
| 84 | `theorem` | [mem_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/mem-cast.md) | 486 | `result-track:9aa7e338659ac3a474a9407dc6136d3c888872f74ad6b6601df75a206b13e7cd` |
| 85 | `def` | [append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/append.md) | 491 | `declaration-track:5d04de1fd1ec5b317309ee27744757e3c20d7eaea11e04fd33f490a484abf60d` |
| 86 | `theorem` | [append_inj_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/append-inj-right.md) | 496 | `result-track:ac556e90d0a6bdb0a0605c207a310641b24b49fe43cb1ce3f6d876b1ca55adbd` |
| 87 | `theorem` | [append_inj_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/append-inj-left.md) | 501 | `result-track:cf411d2883f519cb304d5f459d4c6de42f109ffd04ccbfe1ab46644b7c2f11f9` |
| 88 | `theorem` | [append_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/append-comm.md) | 505 | `result-track:651b9e228ca41bda4b53d9e31ac5b28716fbcdcae9e351cc8ac6c71326deac99` |
| 89 | `theorem` | [coe_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/coe-append.md) | 512 | `result-track:d8cc51e5c101bd7e7f359b1068a50938c55a95fd7315c102ee878c575179e1db` |
| 90 | `theorem` | [mem_append_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/mem-append-iff.md) | 516 | `result-track:c63ed445404c3bcf053ed43d9e5748e0e735191e536ca02382aaed4591463116` |
| 91 | `def` | [fill](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/fill.md) | 523 | `declaration-track:c7c0972d7020afe23e44eeccf147102932ab01c6c3b79ee9cbfe63d0caa25e9e` |
| 92 | `theorem` | [coe_fill](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/coe-fill.md) | 527 | `result-track:2a36f8156702b17b1d83414dbe0a5111f4bb6965568cd8aa3969e28cefbd3ee2` |
| 93 | `theorem` | [mem_fill_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/mem-fill-iff.md) | 532 | `result-track:27291d5062581e0d2e07c2d8b34d3a558cc57cdf77c459b3ce603c2d208bd2b9` |
| 94 | `def` | [filterNe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/filterne.md) | 541 | `declaration-track:c6ef7dfcc6df90f9ac2f399d6ed2d2171ce15dada64d6f5eeb9fa41c7c5b8190` |
| 95 | `theorem` | [sigma_sub_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/sigma-sub-ext.md) | 553 | `result-track:6bc54c82ce87ed96125622a40031b34861042ef921fd3f6acde67f2e6ea5a8ca` |
| 96 | `theorem` | [fill_filterNe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/fill-filterne.md) | 562 | `result-track:2eb56639595a231fbf0903694cd00e69b779746dbebfe5eb8a3428f24a1e3740` |
| 97 | `theorem` | [filter_ne_fill](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/filter-ne-fill.md) | 574 | `result-track:929177cc3f92772f16db84431acce4d6bf96e59780c6f70da9ab6e43028e7979` |
| 98 | `def` | [encode](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/encode.md) | 601 | `declaration-track:717e7fd00e61286e602c0e71b9aec8303f8934cd064087ef2d6e364a541618c3` |
| 99 | `theorem` | [encode_of_none_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/encode-of-none-mem.md) | 610 | `result-track:5dffb78ae71a7dd0f7837fd3d49171750cb664f3a4a49c8a37bc457be4416830` |
| 100 | `theorem` | [encode_of_not_none_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/encode-of-not-none-mem.md) | 616 | `result-track:2cb0bff59605f1fb8c643d3bd8798a4fe6049b677db0aee944c20fa793914c12` |
| 101 | `def` | [decode](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/decode.md) | 626 | `declaration-track:4e3c2da60a7ce0f22852121f65b2b5370ca470c99f1928970f4ab22584c95781` |
| 102 | `theorem` | [decode_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/decode-inl.md) | 633 | `result-track:58badc6d88177a1a967c81f1e37662e979eff3150931887932c9cdbc45369c99` |
| 103 | `theorem` | [decode_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/decode-inr.md) | 638 | `result-track:d34cf14cdbd029819ccf50a5641f35a357006c1865b2f4fecb0e4c5d6315c443` |
| 104 | `theorem` | [decode_encode](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/decode-encode.md) | 642 | `result-track:74a9dc811e59bbc063e08142ad7dcfc45108b340643f38083804466bbd03cd0d` |
| 105 | `theorem` | [encode_decode](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/encode-decode.md) | 651 | `result-track:b834f43261c3bad3f7c395ea0a4f9b60f3c98afc2874712f1fa94719a3727dae` |
| 106 | `def` | [symOptionSuccEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicVector.lean/declarations/symoptionsuccequiv.md) | 669 | `declaration-track:12abf8d8a94d2d806be6ee4bb592a123c165293a46f7b36fb0f37db3cb7e5da4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49e5aaa6cc1bbdf29712f8f689e8369507b3375ff1fd886e060f7ab48a691d6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantccbd295146aea3d9c7f0634944222aa20136b44256eef3e3a7262d4b41293e28.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantccbd295146aea3d9c7f0634944222aa20136b44256eef3e3a7262d4b41293e28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
