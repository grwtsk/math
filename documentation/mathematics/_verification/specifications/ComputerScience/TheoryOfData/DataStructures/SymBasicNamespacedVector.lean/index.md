# Verification target: Sym Basic Namespaced Vector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "beee8761f665607d6fe23ea9f71e38f4b32f46b2",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant803bd90ad43eb1c6470881b03eb3430b44dc79caccc452ae95dbfb1c4be79b87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `beee8761f665607d6fe23ea9f71e38f4b32f46b2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant803bd90ad43eb1c6470881b03eb3430b44dc79caccc452ae95dbfb1c4be79b87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant803bd90ad43eb1c6470881b03eb3430b44dc79caccc452ae95dbfb1c4be79b87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Vector.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sym](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/sym.md) | 50 | `declaration-track:78189b3135c8f7eca5fcad82f4b331e2f950107dacc783660dc32072c82036a7` |
| 2 | `def` | [Sym.toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/sym-tomultiset.md) | 56 | `declaration-track:1d7c9e726eb8deac2fa834c3547677951df39830714691327fab2e3ec1589c41` |
| 3 | `instance` | [Sym.hasCoe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/sym-hascoe.md) | 59 | `declaration-track:bc42b58013daf30f804ff329fba76af7f24176baa70dcfde868c838315ab506f` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/instance-source-edition-2.md) | 64 | `declaration-track:47be9c3e6aa9370519e5b739c7a774477adada0a7caf8969fb815aa3b1452b94` |
| 5 | `def` | [Vector.Perm.isSetoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/vector-perm-issetoid.md) | 71 | `declaration-track:c7f7dce6d66da93afad7e38df083cea4d701ec3102dc08fd45573b7d69a66220` |
| 6 | `theorem` | [coe_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/coe-injective.md) | 81 | `result-track:365cbf72256cd51fe348d6535b2b2c7ac7ce79d4b6e7f04665259a438e988f72` |
| 7 | `theorem` | [coe_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/coe-inj.md) | 86 | `result-track:d669524465369d1d17cd2d5d33506d1883593b46c78ab5af95b9fd3fcb4045dc` |
| 8 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/ext.md) | 91 | `result-track:33cbcf728ab1114345bc3ef27d0cf37730821f2c3cb5011793685eab711c27d2` |
| 9 | `theorem` | [val_eq_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/val-eq-coe.md) | 96 | `result-track:7fb378b0321d7ebb7bd72a1fd46cc0007ece7c55e8a4e9535f8d2460eb0e7221` |
| 10 | `abbrev` | [mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/mk.md) | 102 | `declaration-track:e63fdaea48afdab65f1b4085e2dd8591e8945b05691030a3407a733134a8a820` |
| 11 | `def` | [nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/nil.md) | 108 | `declaration-track:4aed7793d95158f352527a29cf6d7f4306e157cecf47d205a3ff140e6464c4a9` |
| 12 | `theorem` | [coe_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/coe-nil.md) | 113 | `result-track:bbbbe54b8d23aff305167d6278c7cb1305749fbdb574eeea9100ee304e4a0aa0` |
| 13 | `def` | [cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/cons-source-edition-2.md) | 120 | `declaration-track:61ac181e7b6adf8666fe9215affffac20d49a71a3f1d740ff12e01fdc06d93de` |
| 14 | `theorem` | [cons_inj_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/cons-inj-right.md) | 128 | `result-track:54c55e263e681d4b2c203a292dcde8160189e720c50fcf98780aea9f0d8105b5` |
| 15 | `theorem` | [cons_inj_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/cons-inj-left.md) | 133 | `result-track:a3615d2e8b89b3dea1821f4b7fe0b217b234b2778566866c5b866be9609c3fa7` |
| 16 | `theorem` | [cons_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/cons-swap.md) | 137 | `result-track:8e8c7bc780a0935fb5af2307ed9314f5bf18f0c3a6d7a0c9f607438221fbf298` |
| 17 | `theorem` | [coe_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/coe-cons.md) | 141 | `result-track:2481c96cf670241457bfd89b77754ed61208c6d1ebc0a69e4a98eb55a8f2342c` |
| 18 | `def` | [ofVector](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/ofvector.md) | 148 | `declaration-track:6564c880b1b225cc97e05091cedf1f59d55866d0d2333c3fb667d24ddb355a22` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/instance-source-edition-5.md) | 154 | `declaration-track:5c3bd74bc3dc7fd57b245ce0153ec37cb312032283674e7975aa678459c8ffda` |
| 20 | `theorem` | [ofVector_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/ofvector-nil.md) | 157 | `result-track:91852ceab50339bff0333517eb545c227bd28b5389ae69a0d84bbfde9686f3b4` |
| 21 | `theorem` | [ofVector_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/ofvector-cons.md) | 162 | `result-track:56aa40cabe2a76b3cbdfb530662f93d515aae8335adf8b5dd3e7ebf12561cc37` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/instance-source-edition-6.md) | 169 | `declaration-track:825f7fca53e70de00c2cef369abaa5ca49c37d570827f54f518b9dfbdfe42fce` |
| 23 | `instance` | [decidableMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/decidablemem.md) | 172 | `declaration-track:e9683c0c6ff72c8e831c7aff544edf1fd751ddc55cb2689ac0949ce3172ff926` |
| 24 | `theorem` | [mem_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/mem-mk.md) | 177 | `result-track:8c5e2cc26795d681f89981edea259fe17e1a675bc92c8daa528c4b1a00c373cf` |
| 25 | `theorem` | [mem_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/mem-cons.md) | 182 | `result-track:5a9f8c00d938c9494a4b48277ac3c6b23114c41c946e5c1c09696d1e1f7efa48` |
| 26 | `theorem` | [mem_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/mem-coe.md) | 187 | `result-track:b2bd072f15f6f1f4e935165d90b2a1b639aabbbd0e4bbab1ccadbd2eda5e501e` |
| 27 | `theorem` | [mem_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/mem-cons-of-mem.md) | 191 | `result-track:e85f178e13ed211a6feb83581332e826ff74d16da2dbee9b6498718e1d757d94` |
| 28 | `theorem` | [mem_cons_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/mem-cons-self.md) | 196 | `result-track:bc1915392c3feb559f3de6062764e769d12eac6f66eb0296d4c0a245706389f0` |
| 29 | `theorem` | [cons_of_coe_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/cons-of-coe-eq.md) | 200 | `result-track:ad02c40783c5331cc928fc825032ae7203c91ed4b2fc7e5869ff0fae6f2d17b1` |
| 30 | `theorem` | [sound](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/sound.md) | 206 | `result-track:98141f5560c7bd2d14f57c5140b581a7313935784696c4278bd7d3f077aefa83` |
| 31 | `def` | [erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/erase.md) | 212 | `declaration-track:155870897e736b1955ea3665457d3c2a7c7e6ec9e37db30160af1706bc2ffb73` |
| 32 | `theorem` | [erase_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/erase-mk.md) | 217 | `result-track:3130f773e20225df629a9c57e2be070165f39d98c1304ca28599f11f1211859d` |
| 33 | `theorem` | [coe_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/coe-erase.md) | 225 | `result-track:605da323469069ce60e79ebe5dcbb16d35eda3f89faee6dd678161fb8213449b` |
| 34 | `theorem` | [cons_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/cons-erase.md) | 231 | `result-track:9a2480bf1dece0bebef5a53228bcf0ed00537000705b0742a25183a1206d713a` |
| 35 | `theorem` | [erase_cons_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/erase-cons-head.md) | 236 | `result-track:f5f77990279241fb13851d19d89e07b72e5d047b913b7b205b65934285a1f6c6` |
| 36 | `def` | [Sym'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/sym-source-edition-2.md) | 243 | `declaration-track:79828ec85cac5bcc834bd8d1a826d686985c8d8f2f9827c24f593dfecec7fb9b` |
| 37 | `def` | [cons'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/cons.md) | 249 | `declaration-track:436081b15c48f7a8e86a468ee0004ff62eb37f0ee64265cd33116790c14c9568` |
| 38 | `def` | [symEquivSym'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/symequivsym.md) | 258 | `declaration-track:d0c6f1c46446e19d5026be4c41f5547c0e41bd7a36cb758bf6362d24bf173057` |
| 39 | `theorem` | [cons_equiv_eq_equiv_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/cons-equiv-eq-equiv-cons.md) | 262 | `result-track:c6b2a8fa0eb4137d75df7063e2b8b2d72f9e17328fa943f74b0b9dd23ecf4db0` |
| 40 | `instance` | [instZeroSym](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/instzerosym.md) | 268 | `declaration-track:1ae4b61af5f6846ef12d33d00fe62d2a5adbe46d81d40f33518557bd912ab370` |
| 41 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/instance-source-edition-3.md) | 271 | `declaration-track:4c09404a1eccd14124a4f0777608b39d82b8cc70251fb6050983be9d9c2eed9d` |
| 42 | `theorem` | [eq_nil_of_card_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/eq-nil-of-card-zero.md) | 274 | `result-track:fdaec434c6fd22af57773cd9e3336db075f468ed35179f8ddd4ce04c2e632f6f` |
| 43 | `instance` | [uniqueZero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/uniquezero.md) | 278 | `declaration-track:a4cbe762544485730fb639a858d7af6d8108c626a16e9f934f12b72fb463f431` |
| 44 | `def` | [replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/replicate.md) | 283 | `declaration-track:defb1744ba8d7f677391d816663bf88be6ba565de9ec99eed7e62df98709b0fa` |
| 45 | `theorem` | [replicate_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/replicate-succ.md) | 287 | `result-track:2aaf8b0726497227161e1228d774a3c9c29506a8e4ba2082c941d3296f6a21ba` |
| 46 | `theorem` | [coe_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/coe-replicate.md) | 291 | `result-track:c5afa272bfcc0a5314da1f9c63f297bea551de5c82da614802d5194a4bcaeb76` |
| 47 | `theorem` | [mem_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/mem-replicate.md) | 296 | `result-track:8bb16f97b2c8d99db6af154311f27fbd4a9eb4a9b9bec9bcd2b10ebb1250ccf1` |
| 48 | `theorem` | [eq_replicate_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/eq-replicate-iff.md) | 300 | `result-track:f55f3273f3df844f7c9d32ad6a13fec7c2745d9397a0f9f78be9fdbe8b01f6a2` |
| 49 | `theorem` | [exists_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/exists-mem.md) | 305 | `result-track:bad89a750de65404a8f560edaf8db8bbd3d2dc1d094a3a5b6f9e87b310c40dc2` |
| 50 | `theorem` | [exists_eq_cons_of_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/exists-eq-cons-of-succ.md) | 309 | `result-track:5a10b6c3474cc2cc609476be05d619f203b9a435191bc6e1282f4b302d8b976e` |
| 51 | `theorem` | [eq_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/eq-replicate.md) | 314 | `result-track:225cde2c09d880cd8dad125f192a783219e4612b3804e08de2fe6113016c0660` |
| 52 | `theorem` | [eq_replicate_of_subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/eq-replicate-of-subsingleton.md) | 318 | `result-track:f98210aef46bfcd042bbb68e8ad063c979f860b5043d1ca817e77f21a5841454` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/instance-source-edition-4.md) | 323 | `declaration-track:5a7181dfe42cb4ae8aa7e9adfc1522326af7fb4a29f68a66d4ac22babce0ccbb` |
| 54 | `instance` | [inhabitedSym](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/inhabitedsym-source-edition-2.md) | 331 | `declaration-track:65d16bfcbee998a050f7f4ff00eeb7f246604ea448cd08519b8ef0edd3a329ff` |
| 55 | `instance` | [inhabitedSym'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/inhabitedsym.md) | 335 | `declaration-track:572d97e4c08b214ef4e281bb46267138f0afb3aec47f2cc160692bbcc43ee5ba` |
| 56 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/instance-source-edition-7.md) | 339 | `declaration-track:8b1227ab0fe41b033e2fd582ae1dafb416850dc6e40206c0e859358ebfd0d2d5` |
| 57 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/instance-source-edition-8.md) | 344 | `declaration-track:8cb4797580a9a7313dbb256532d96fb6d005ef390f10b7e1e6817b68003b11ec` |
| 58 | `theorem` | [replicate_right_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/replicate-right-inj.md) | 347 | `result-track:8b0904f1fa60ca1bf9e6393709082ed2ecd1b37a81583e0edcc7cc47a0048b3e` |
| 59 | `theorem` | [replicate_right_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/replicate-right-injective.md) | 351 | `result-track:06a77b6f6c046785e9e81aba126a07f944094d7a603c1c0dc27b07cfe583496f` |
| 60 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/instance.md) | 355 | `declaration-track:2b6be5d00b2310e295039daecf41f708e47e70a1511b66b9f46e087ae9dd4141` |
| 61 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/map.md) | 360 | `declaration-track:cefc91b5e945325b17b0db249507857a69227a788ddbd547b14ed904b58bfeee` |
| 62 | `theorem` | [mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/mem-map.md) | 365 | `result-track:213ffe75234144d0ea474c872299692f697ebe74c2668daace5658edfea7d41f` |
| 63 | `theorem` | [map_id'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/map-id-source-edition-2.md) | 372 | `result-track:db8059ebd3f48f7008428a4b5a4b21d68a65c016214ff7e4cdb21baff6fe7f6b` |
| 64 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/map-id.md) | 376 | `result-track:45b313f1cc49da27550f7b6d7f2a3e1e068bf0effc50a0f533d56d38fc31e211` |
| 65 | `theorem` | [map_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/map-map.md) | 381 | `result-track:c890f81bcd71f44997fac7909a5bf0e507a3fd640f0bd1119b095aa8626b3a20` |
| 66 | `theorem` | [map_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/map-zero.md) | 387 | `result-track:594dac6450b85fd5ecf88854c070ce95d75f1ec4e5d35deb9a8911e1d8810516` |
| 67 | `theorem` | [map_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/map-cons.md) | 392 | `result-track:8804f41b9b0ff20955b418817764a1cffd982360669898f4361676d09916188a` |
| 68 | `theorem` | [map_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/map-congr.md) | 397 | `result-track:52092ac8cbb43bafb2de5b9086c18dd65d70b40bd7d6435cb5cc747c207564c8` |
| 69 | `theorem` | [map_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/map-mk.md) | 402 | `result-track:9c9ba47f788eeb80bbf0d472c3ec95ecefd904b06eee5e4986545b2bc6529027` |
| 70 | `theorem` | [coe_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/coe-map.md) | 408 | `result-track:7673059a4925409c8bd94bb7176c700e9b87bc5ba87322be5057f82ef53210a2` |
| 71 | `theorem` | [map_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/map-injective.md) | 412 | `result-track:89235766e8a4c68f27dc83a2a4e69b0a732418f2a207798fc1d17f46cc3e5911` |
| 72 | `def` | [equivCongr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/equivcongr.md) | 420 | `declaration-track:a68276605894a60df492a3580bd6c10835dbff812a751faa237df7ab359a9c42` |
| 73 | `def` | [attach](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/attach.md) | 431 | `declaration-track:953282237405b6a91fde28322c59f2cf1f57d9d7ab60bac08c6c080d9ece7f75` |
| 74 | `theorem` | [attach_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/attach-mk.md) | 436 | `result-track:f313d14c7e17f545ccb5c544b021fbbfc1b9b44d80f7011633ed64807c4d8558` |
| 75 | `theorem` | [coe_attach](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/coe-attach.md) | 442 | `result-track:f66037dd27670356503fc1b29d08dd4afa1f632c914e28f6b399d38a210c3b96` |
| 76 | `theorem` | [attach_map_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/attach-map-coe.md) | 447 | `result-track:f19f1819c441b74726b766773011a4624b119796251239b7ad53337ac363e69f` |
| 77 | `theorem` | [mem_attach](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/mem-attach.md) | 452 | `result-track:7e8fec3591c24d4a8244d0ff336796bd02af04316ce758d9471fd96766aac72a` |
| 78 | `theorem` | [attach_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/attach-nil.md) | 457 | `result-track:999f819bb5a17e25955b7502c9afd9cfe45d65cba280ff7aa48086513b743290` |
| 79 | `theorem` | [attach_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/attach-cons.md) | 462 | `result-track:c63506ccfe6c4f5ee6cd783fd31ea7cf9d2e7dfd7273c106e6b2a913cb055e7c` |
| 80 | `def` | [cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/cast.md) | 470 | `declaration-track:3df6f71a80e0573c5a9589b2b76734d86daf3d5b6dcab180b5a35b51040015a9` |
| 81 | `theorem` | [cast_rfl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/cast-rfl.md) | 478 | `result-track:d8dcd3668f6f201ed6a8c75fe58df4f6c9051f90b9407a7d1323da15af582b94` |
| 82 | `theorem` | [cast_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/cast-cast.md) | 483 | `result-track:d16e4d106dc38d91a5509e0e834d4df149229b4a31f4814f58ed26c810357b7c` |
| 83 | `theorem` | [coe_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/coe-cast.md) | 489 | `result-track:09a7b307b8e8f45b1876b391223167d5553ee483d741d934f5bfcb60d76214a5` |
| 84 | `theorem` | [mem_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/mem-cast.md) | 494 | `result-track:015e0a75b50fcb0360245b0fc73c0b298b27dc73a92cffa8d091c07f7658646e` |
| 85 | `def` | [append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/append.md) | 499 | `declaration-track:6069f5bb1c522a5f725418b453e2ed50d076e89c2a860308bb6b732f26889218` |
| 86 | `theorem` | [append_inj_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/append-inj-right.md) | 504 | `result-track:50149f34cd0024e1d4e9f27144129704880f1e263a841131289d19f388f8e29b` |
| 87 | `theorem` | [append_inj_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/append-inj-left.md) | 509 | `result-track:9e36643a017f653a4978dcca0c09c2f82745418ec3167a317361c83f9b17bb20` |
| 88 | `theorem` | [append_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/append-comm.md) | 513 | `result-track:197023af9e4788d00201082b17bb2ab94b87146080c9f8b72ba7a8ab3bb6eb78` |
| 89 | `theorem` | [coe_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/coe-append.md) | 520 | `result-track:a0e59fd4985d3c531697fe6a8682cf0eafc7e16eb787de6d3da7baeefceae666` |
| 90 | `theorem` | [mem_append_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/mem-append-iff.md) | 524 | `result-track:771009f91e2f5d6b4504f06931f86624896ce69c0b3a7bbb607510881ce343e8` |
| 91 | `def` | [fill](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/fill.md) | 531 | `declaration-track:94225a091ac4d49bce1c0cb70f03eed8a94bf4aefe93a625b5292d3576df0842` |
| 92 | `theorem` | [coe_fill](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/coe-fill.md) | 535 | `result-track:e58f3c61070835d2f79bf3067f2826744242d7eb261c0b6e79047129f05e05be` |
| 93 | `theorem` | [mem_fill_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/mem-fill-iff.md) | 540 | `result-track:0493ee120c8da610c57d70c375cdf138665ed16159bedc531b01c33a438ee70f` |
| 94 | `def` | [filterNe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/filterne.md) | 549 | `declaration-track:1a5f334fb91183e70759eb0da1b0ddf5870b383b0ba8ab8ddc72e60bc5dde4ec` |
| 95 | `theorem` | [sigma_sub_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/sigma-sub-ext.md) | 561 | `result-track:ad4f14f35046b1a5ddf5b103af91bb4f0a57fd1df69a3caeba746ab8bca373a4` |
| 96 | `theorem` | [fill_filterNe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/fill-filterne.md) | 570 | `result-track:aa4073a6dce7013447c983ee03eb3a2f69f66aa81dd437379ec92db1e4ddfba0` |
| 97 | `theorem` | [filter_ne_fill](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/filter-ne-fill.md) | 582 | `result-track:6cc8ae7f8bd12a30b9a09a1f957ece3c1ea7bdb973023f3b07129be9398396fb` |
| 98 | `def` | [encode](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/encode.md) | 609 | `declaration-track:793e509160108f82c8254b4295833383ebd15183cba588b8e447441e2c4e602f` |
| 99 | `theorem` | [encode_of_none_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/encode-of-none-mem.md) | 618 | `result-track:5b8651b7bfd897b5b5eaaa6b7cff6f7eb1b43067f99754876f1e9babff142da4` |
| 100 | `theorem` | [encode_of_not_none_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/encode-of-not-none-mem.md) | 624 | `result-track:2a03dab2efeadb66cb86cb9c9a357d7007124ed7d88b075fe9fcf0620f95e579` |
| 101 | `def` | [decode](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/decode.md) | 634 | `declaration-track:26ac11c0069ccfe7f6755f6fd3aadfa0d70a223a49253808a1d82585ede05622` |
| 102 | `theorem` | [decode_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/decode-inl.md) | 641 | `result-track:f7fd61b8978c6e134a8641ba6f75f78902de057aea94d3cffd6569d4a27ea034` |
| 103 | `theorem` | [decode_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/decode-inr.md) | 646 | `result-track:58290c7612b67787cc9d99e473b36cd21defd24878d9338cc98605b5c25c553e` |
| 104 | `theorem` | [decode_encode](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/decode-encode.md) | 650 | `result-track:1e4b65807dd32f193382aeb35fefb21467115c201f374c43a2fe55f5832e9326` |
| 105 | `theorem` | [encode_decode](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/encode-decode.md) | 659 | `result-track:94a1c35cefa923ae7dfa66fcd488799c1a640c07fbc710ec7a4e6c16f073f1c0` |
| 106 | `def` | [symOptionSuccEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/declarations/symoptionsuccequiv.md) | 677 | `declaration-track:b2320a94a21d248c6be9a37aa26fd857f28b0dfd577d6c3a030d4d8b8c425077` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5a8b4f7665004d82e3ff6bb6df5bf3fa31d46df99361a1b4dc8c063a16a0406 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant803bd90ad43eb1c6470881b03eb3430b44dc79caccc452ae95dbfb1c4be79b87.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant803bd90ad43eb1c6470881b03eb3430b44dc79caccc452ae95dbfb1c4be79b87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
