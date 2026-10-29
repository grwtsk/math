# Verification target: Fin Enum Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df6ac367ee03198aed115ea85df63dabd6be621b",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variante9c3c7687adaaedac32f2aca61d7bc7288952b79bf4fcad5f927e0b8f55c10e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df6ac367ee03198aed115ea85df63dabd6be621b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variante9c3c7687adaaedac32f2aca61d7bc7288952b79bf4fcad5f927e0b8f55c10e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FinEnum/Variante9c3c7687adaaedac32f2aca61d7bc7288952b79bf4fcad5f927e0b8f55c10e0.lean.json)

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
| 1 | `class` | [FinEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/finenum.md) | 38 | `declaration-track:261a4a535e32ed514e9ec612a11bc38d7d43188c13fc2847d51d9a75a3eae654` |
| 2 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/ofequiv.md) | 54 | `declaration-track:25b4c92a71a545918551e890839687fac0e8f92e3fcff10a958095d021025a93` |
| 3 | `def` | [ofNodupList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/ofnoduplist.md) | 61 | `declaration-track:1fe53da2a8fe2062a1ca3f0f42603e09d84ce024e91fd7c4773e1598cc555f65` |
| 4 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/oflist.md) | 70 | `declaration-track:b9d520f001481bcacb9d96cab71ddeea704f419527689446664cf99a808bebe6` |
| 5 | `lemma` | [card_ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-oflist.md) | 73 | `result-track:84e8d4f23f3d2143cc8139dd0956d8ddc355c42ed1db5efe8e326d35c472e7ed` |
| 6 | `def` | [toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/tolist.md) | 77 | `declaration-track:2dfc691d575cfd720369b30397cf8497a6ae004f1d74614e5d8c8becfac537df` |
| 7 | `theorem` | [mem_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/mem-tolist.md) | 83 | `result-track:63bcd097711c1431889e3cf3d74fc3c5f060440ca53165fec8c97422684dcb95` |
| 8 | `theorem` | [nodup_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/nodup-tolist.md) | 87 | `result-track:18c673b5d075a00a20a241eee1256f71327782a516a0db49492bd5c26a5fb056` |
| 9 | `def` | [ofSurjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/ofsurjective.md) | 92 | `declaration-track:de48b64df1b474bfdaf90237f6b97007a0a57e0c28f7d535d8a60f9d256579ee` |
| 10 | `def` | [ofInjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/ofinjective.md) | 97 | `declaration-track:665ba98a367a0ac70c31fde709cdf0fab5455fa93c29b271b55260b6f5df76b4` |
| 11 | `instance` | [Fin Enum Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instfinenum.md) | 106 | `declaration-track:f57d26f90d94961a0cd84012ffe79d0b3f9159b3e20e1f619452821069ca3ccb` |
| 12 | `theorem` | [card_ulift](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-ulift.md) | 110 | `result-track:2d74916ee10a5f1df27d377e133b65427aef495e41005e23337a9ee3d0591fc9` |
| 13 | `lemma` | [equiv_up](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/equiv-up.md) | 116 | `result-track:4daf2776f0ab0fe48cc28f7604258908bdce658f07ec772a9425e2ba79debb09` |
| 14 | `lemma` | [equiv_down](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/equiv-down.md) | 117 | `result-track:9cbda1a839a26ba7f5340b8c5696ac5a3161976556c8984ddec655b4addb0dd2` |
| 15 | `lemma` | [up_equiv_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/up-equiv-symm.md) | 118 | `result-track:2ff8b94fcf59cd48069cb27154b70bc90df022ba2e6387d07a116c2575dbeabb` |
| 16 | `lemma` | [down_equiv_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/down-equiv-symm.md) | 119 | `result-track:ca3850e9b9e92009d3d03febc408979670bf94e2902b4e28f4a730ef087d7dfe` |
| 17 | `instance` | [pempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/pempty.md) | 123 | `declaration-track:8da7d9ac4b1535684952a4b5ff343185b89f20b18e768ade8115fe63d0ac8827` |
| 18 | `lemma` | [card_pempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-pempty.md) | 126 | `result-track:1256f033d4dd64063c4171862349c46c6a8e74f189ce786295c8bb37d0a093e4` |
| 19 | `instance` | [empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/empty.md) | 128 | `declaration-track:9b3e4d50f80b567814fd98b41fa72ee3a82ba0b6dd0269760f88ff3ad1a9b2d3` |
| 20 | `lemma` | [card_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-empty.md) | 131 | `result-track:d3b9e3fd21f8d683455edebc490ccc6a0b7f397dd266f75d0793c641de00811b` |
| 21 | `instance` | [punit](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/punit.md) | 133 | `declaration-track:553f666f8e64d0574be8b3e9abbfa9565a28fd89b9172c18153fb1c6c83d08d8` |
| 22 | `lemma` | [card_punit](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-punit.md) | 136 | `result-track:e365bccba716665143e001c04b4222309164fedde15a707bf071276170f6a529` |
| 23 | `instance` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/prod.md) | 138 | `declaration-track:85865acd27efc89f03d066e173a97dfc1ec6a28ad2bcad924308f512e015328d` |
| 24 | `instance` | [sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/sum.md) | 141 | `declaration-track:9e2d4fa05a627860fad1793afef0c4521acaab0bb95ef26d1c01052487cbafb0` |
| 25 | `instance` | [fin](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/fin.md) | 144 | `declaration-track:519c00653411f05c38ea4dbde1ce76b4e7966647b48a82d35847bb30031af4c0` |
| 26 | `theorem` | [card_fin](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-fin.md) | 148 | `result-track:9c452e235364091d97628f9ed064db1ce0b7a05527638f885f249504879564ec` |
| 27 | `instance` | [Quotient.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/quotient-enum.md) | 150 | `declaration-track:1f26ba161810be57aee991254dfbbae01ef62bf571e0cd63d80be64b1697512a` |
| 28 | `def` | [Finset.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/finset-enum.md) | 155 | `declaration-track:34c6091ff1bfa279082c061bf5ab92720b20af5bc970309b206b5f038b107db3` |
| 29 | `theorem` | [Finset.mem_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/finset-mem-enum.md) | 162 | `result-track:9ba5d6588de8a5a866fa9bedc7fe0a38f34874e83b09da0ad17a91b7918ab4e6` |
| 30 | `instance` | [Finset.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/finset-finenum.md) | 173 | `declaration-track:9883cf2c153491e53f4a787cdc452144f5318ca67a4f80b2e29fb46198219497` |
| 31 | `instance` | [Subtype.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/subtype-finenum.md) | 176 | `declaration-track:b33755bd300c0a30574b65df60bdf353896a6dd6a1f9b0af083d87550101b76e` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 180 | `declaration-track:3dcf763e9082d2cdd39943c9f12a87a42cc1b5c7e74c9abde6ae5f64d6993d00` |
| 33 | `instance` | [PSigma.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/psigma-finenum.md) | 184 | `declaration-track:0916f26170b9d145976a0008679170ea03b9f1dfbdfdabd0164003dbe8ecc533` |
| 34 | `instance` | [PSigma.finEnumPropLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/psigma-finenumpropleft.md) | 187 | `declaration-track:56502c29fabf76f2013272282db98ece38453ef3f33d42b045a8a03a97f82f26` |
| 35 | `instance` | [PSigma.finEnumPropRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/psigma-finenumpropright.md) | 192 | `declaration-track:f5b710c917134b246068f08cc780a85e7ab4c333e12d5116a3b706f15ab5218c` |
| 36 | `instance` | [PSigma.finEnumPropProp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/psigma-finenumpropprop.md) | 197 | `declaration-track:00f857a13819d7fadcd00707dc933b54a06fb84aab6b9e51b37b52cbda6ec2a7` |
| 37 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 202 | `declaration-track:7a3258464658592d42259108d85f060a8c1fec5701d8980ae7d5309fb26cd484` |
| 38 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 204 | `declaration-track:6333aa47d5e0f4cf8654a01c774b9ff6e9d5de38f21ace7d610d7bc190b040fb` |
| 39 | `theorem` | [card_eq_fintypeCard](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-eq-fintypecard.md) | 209 | `result-track:dcb9245983c9ccc7dea087ea6fed1d57485d07a576786c0d81f92a7b017a41a9` |
| 40 | `theorem` | [card_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-unique.md) | 213 | `result-track:9d7ecaf0c8710a7c5898870501a36d94c6c7d3f767f554c984a86947a21cb067` |
| 41 | `theorem` | [card_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-eq-zero-iff.md) | 220 | `result-track:58bb148d17362997f255497131d414a5b9159518e00c74ea6d84a6b453d7aebf` |
| 42 | `theorem` | [card_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-eq-zero.md) | 224 | `result-track:3beebec2af550a386c61bf4664b31a8145b46bb902e40d0b8150fdd596456c87` |
| 43 | `theorem` | [card_pos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-pos-iff.md) | 228 | `result-track:526edb9ae4e9551c3f2f63dc50eb1c48d2ad2e095e63d6e239a3bbc6a85df8eb` |
| 44 | `lemma` | [card_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-pos.md) | 232 | `result-track:c090dfdc0e9a6c2ed72075c2e6eae7c9211118278bf6050921d5cc9e7ee17b27` |
| 45 | `lemma` | [card_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-ne-zero.md) | 236 | `result-track:4084e37aaa4003ccfe1a6c8e968ddb4612652cf1310f6f7d5b4895cc7b7ba4d5` |
| 46 | `theorem` | [card_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-eq-one.md) | 239 | `result-track:674df578fad7a6c89cffa9936c7bfe7414a1150986b1398bb8b35872e0d0ef43` |
| 47 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 242 | `declaration-track:6f5d78f07f475245750994e6501353a35e87aadc4f50c81a2223aa8a05b36dba` |
| 48 | `def` | [ofIsEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/ofisempty.md) | 256 | `declaration-track:5550084cae581c3d59a1912fbf9971fc1af0aa992fb52f6b95471abe2847af9c` |
| 49 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 258 | `declaration-track:b144eaa27c29221df637e1d5d11e2b27a1345e4a4adc0e92079472a476650b8c` |
| 50 | `def` | [ofUnique](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/ofunique.md) | 271 | `declaration-track:f1c265900368f8f2705b1dc0269c037cbcf34c31800efdcf1b4382ed6b91b7d9` |
| 51 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instance.md) | 273 | `declaration-track:0aa593db30e023335b82a4805916f2cb8533ed39b846ea992b2671319a83b290` |
| 52 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 277 | `declaration-track:890fc2f473dec002f135262408ebd30f482c76c218876cf82821008e72c001f6` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 281 | `declaration-track:ca02250216fde9fc77a3db47e351ed4732c994532b1a62c39c5a4fba6f32ca5a` |
| 54 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 285 | `declaration-track:297672abb4ffc44dc1e150656c6fa18b497f9ed466e6c2834d2e1b8ff91b9ccf` |
| 55 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 289 | `declaration-track:9263db3a0897881e4d54f4221680d6d7aeab9264fb86ecf06c1753c571845afe` |
| 56 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 294 | `declaration-track:b34467e69e424a23ad066b8e3f2143b6868d4e193a99a024fbc65b19d22e3a48` |
| 57 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 299 | `declaration-track:d642dd3948d0149b494ef3940a8996304cc45b466b47c16e5b8dfc2988fee1b2` |
| 58 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 304 | `declaration-track:a293a5adcfea04f05e6e93de4ae9fe92d26f1476bcf9820c96c98fe246c552fb` |
| 59 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 309 | `declaration-track:711027bb25e93e774bcdb24c3ae5dc8899891789be53a18ac007c639a9d52e3d` |
| 60 | `lemma` | [card_UInt8](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-uint8.md) | 313 | `result-track:35c629bfc8c509b2cccc27b745a9d9d2ef011a082dc8e396864814a8b64a4221` |
| 61 | `lemma` | [card_UInt16](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-uint16.md) | 314 | `result-track:256d44c0d612b4c37d3d85540945055280709beba3587a21d7ff877b867ed244` |
| 62 | `lemma` | [card_UInt32](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-uint32.md) | 315 | `result-track:70d5d32b981139cb26b0626eebd7ccb639e7daa4e9785781652533279fc65da3` |
| 63 | `lemma` | [card_UInt64](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-uint64.md) | 316 | `result-track:06c3f4e69a581463145c7c6a6d2cd546f30fd78faad26bec9baec5a55ac2a5bb` |
| 64 | `lemma` | [card_Int8](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-int8.md) | 317 | `result-track:5f2fea9cdb5fe31ac02840b7614d5cf406e0be57bd253f04b4da5b22564aaf02` |
| 65 | `lemma` | [card_Int16](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-int16.md) | 318 | `result-track:bf08cc44d0c961ad2813081496d49b84fb605c3baf27e5799eb189ad131a6343` |
| 66 | `lemma` | [card_Int32](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-int32.md) | 319 | `result-track:ab467c9c9e5c1180d9d816a9db49e5382a1244e4e4e0044dd1dbd9024b35c418` |
| 67 | `lemma` | [card_Int64](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-int64.md) | 320 | `result-track:7adf130c3c0d4de8beec10e1746750c9fae9d0ee4ae1fb4811c8c841917a2875` |
| 68 | `lemma` | [card_bitVec](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/card-bitvec.md) | 321 | `result-track:abcdef43cbcd762db90afdd0d18f0f0171dfa2158c1315429d1a85e56f7d5bbb` |
| 69 | `theorem` | [mem_pi_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/mem-pi-tolist.md) | 329 | `result-track:0e26f2926433e785424914df9941915a5b6bd4c8a1cf4b899f6677de5d52b0d6` |
| 70 | `def` | [Pi.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/pi-enum.md) | 334 | `declaration-track:eddc415155512c6c309701ae342401e69bde6ed3ba94936c57353ebb4589b2bb` |
| 71 | `theorem` | [Pi.mem_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/pi-mem-enum.md) | 337 | `result-track:f94d9beaeed6df4692c70d532c8554b7d2e79259d9781e67e8e73c3eb38c47a8` |
| 72 | `instance` | [Pi.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/pi-finenum.md) | 340 | `declaration-track:feb3d12f0397d288afff575844ec3aded15ba08f0498cf0447acb50606f3d4a5` |
| 73 | `instance` | [pfunFinEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/declarations/pfunfinenum.md) | 343 | `declaration-track:89694d98ac36c2fe9209f7a8b36957f83057f0a3cc95e9e1c2c0ddb47b221fb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6690c35e5875ccdbee0589e39dae80b75c717455134d833c12312c5b03613c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variante9c3c7687adaaedac32f2aca61d7bc7288952b79bf4fcad5f927e0b8f55c10e0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FinEnum/Variante9c3c7687adaaedac32f2aca61d7bc7288952b79bf4fcad5f927e0b8f55c10e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
