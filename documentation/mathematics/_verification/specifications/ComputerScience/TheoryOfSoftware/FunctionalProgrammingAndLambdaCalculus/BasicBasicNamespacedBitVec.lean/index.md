# Verification target: Basic Basic Namespaced Bit Vec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4819fdc345bad844337e9dc990a19cce2f6be02e",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e4a3a9a4a9b891be3d80e6a10a1efccbc23c08b9c581a496e81d99cea33ba99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4819fdc345bad844337e9dc990a19cce2f6be02e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e4a3a9a4a9b891be3d80e6a10a1efccbc23c08b9c581a496e81d99cea33ba99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e4a3a9a4a9b891be3d80e6a10a1efccbc23c08b9c581a496e81d99cea33ba99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Data.Int.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Bitwise` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Tactic.Alias` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitVec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/bitvec.md) | 37 | `declaration-track:6c77d3dce2dddfcd49a189d81c0879e4641eb5b8e367ff8b992e949d3e9ec3a8` |
| 2 | `def` | [cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/cast.md) | 49 | `declaration-track:ad6e549a57d84df07c800f4874ba81bed936162a202172ad4fc4b463c62b4605` |
| 3 | `def` | [ofNat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/ofnat.md) | 54 | `declaration-track:aa0160c7aaeaeaf45f6f1bb8b987650ee9f52cc32d192802daa12d65a2ffd7af` |
| 4 | `def` | [toNat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/tonat.md) | 63 | `declaration-track:93c0114fc96312c6be429505db4971876ced40824a0949d4279e58149956c378` |
| 5 | `theorem` | [isLt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/islt.md) | 66 | `result-track:b7d4dbc783c5eb2ac59d6bba9f2816e60dc32b4f17455af7668ffe625e6784a5` |
| 6 | `def` | [getLsb](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/getlsb.md) | 69 | `declaration-track:2de4299292e7b4c516b892a831aea0015c0722548338a262560b2dca2843627e` |
| 7 | `def` | [getMsb](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/getmsb.md) | 72 | `declaration-track:01d2c9480b367343b763bfe474740c8ff78b0dcccec71bcfe29a1410a773ac96` |
| 8 | `def` | [msb](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/msb.md) | 75 | `declaration-track:fbf432002e8effb310b613665f0dae83dad787651f521af0973d52a61c2af2b1` |
| 9 | `def` | [ofInt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/ofint.md) | 78 | `declaration-track:fcc0a80cbd8c0d3ea661cc88d6f5404f708cfd32e68fd4581707b7861da11469` |
| 10 | `def` | [toInt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/toint.md) | 84 | `declaration-track:390a66b8d0a5c921d608a8141e2676de8a1be84603c0a63029e7b81a38767d33` |
| 11 | `def` | [zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/zero.md) | 88 | `declaration-track:f52e48d5a7865269e17098d0dba659788592bcb20733d3216f2c159354794c5e` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-10.md) | 90 | `declaration-track:98a9f3ad28c6ddbddd4f178f66298b1af6a24f43d93f43c61dd10de0285379bf` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-22.md) | 92 | `declaration-track:fa87a33693c41c4beb43f1c4dd700d6a72d14f6cf5dccb705c20d0a4328d090d` |
| 14 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/macro-rules.md) | 96 | `declaration-track:7320a1eaf11dfe9d4f89a150703eaba53bbc1118032c31937432fccdc924496d` |
| 15 | `def` | [unexpandBitVecOfNat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/unexpandbitvecofnat.md) | 102 | `declaration-track:9da53219c984dd8d8397e816ed59d50790022f21c94e1a86124e9a9953997ae8` |
| 16 | `def` | [toHex](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/tohex.md) | 107 | `declaration-track:0b7d01d160edae3b0d41963ea2f194dfdfbeeaa89f39d153b2ff44f9c1429090` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-2.md) | 112 | `declaration-track:40e3c0273f235675b6187e5a54e971b1001c2e6d87dc04561c14fa7758b67856` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-8.md) | 114 | `declaration-track:86a4d136d81be2cbaa6d72b06ccc56dba51344e8f7875bf42c9afd1ce8bb7056` |
| 19 | `theorem` | [ofNat_eq_ofNat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/ofnat-eq-ofnat.md) | 118 | `result-track:e912a08f9793cbd566ac404aa5b9862663df45b0b72abccc2c8e62541232e5ef` |
| 20 | `def` | [add](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/add.md) | 126 | `declaration-track:5a9c378fe5953f2e6d172b3e87e2ec8cf5afa371fded143c27a62aab2ff3dde9` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-13.md) | 127 | `declaration-track:b3157a00a9b6e68ec7a46bd4c0423689556243ea77efbd9597e86e484b9a1b0d` |
| 22 | `def` | [sub](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/sub.md) | 133 | `declaration-track:faff8cef41430139b524a627e9f400a3c14f2d6fde3ff52f664317b7df554799` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-7.md) | 134 | `declaration-track:6e06a7fc94d0a46f238d84de9ce5dcbe3b857e116b585675828dd091aa7bb3ee` |
| 24 | `def` | [neg](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/neg.md) | 142 | `declaration-track:8708ed83ab326a2aaaa43e752ff0f33d571e565a07574e1a18168269520ab8fc` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-5.md) | 143 | `declaration-track:5edbed6d00237944833db8b031fc9c32d2b8970f3e5cca7ddc813436631c274b` |
| 26 | `def` | [allOnes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/allones.md) | 146 | `declaration-track:afc9e95ccc64a595ba7e0a72b684d15b94e0d866d1a53aa644ddabfad7dbe665` |
| 27 | `def` | [abs](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/abs.md) | 151 | `declaration-track:895d78bcea44a3ec8dadb6c3e6eb0a7935cc47fc69f081f528fc567e577b95c4` |
| 28 | `def` | [mul](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/mul.md) | 159 | `declaration-track:7d972911ed2734ab589af25a2edb7ee009498961bafa0bdb69ded5ebbabce796` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-4.md) | 160 | `declaration-track:537c708af85873a37bbe959ac22114a5d34a7d3be9ac8f907f36a0ec817a904f` |
| 30 | `def` | [udiv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/udiv.md) | 165 | `declaration-track:788478d14a80dde856420639be8de1192eb92f6ddc5b5253190e53125218cc34` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-15.md) | 166 | `declaration-track:b8f10bea861b09a682cb2abf62bdbae26e09f0a79fecc189410c19fb8c078421` |
| 32 | `def` | [umod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/umod.md) | 173 | `declaration-track:9b7337f23a98b3a148e13c35bffa88c21ba9276ae8951beb109c0666361a8a8a` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-9.md) | 174 | `declaration-track:98542d7a9b4b74c12afe246c75b319dca7639a46543b94747a316db027fab8d5` |
| 34 | `def` | [smtUDiv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/smtudiv.md) | 183 | `declaration-track:cd746548fa0154a579e006cbdc47ea23476920ee1a96a66a304b2f43ad71d6e8` |
| 35 | `def` | [sdiv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/sdiv.md) | 196 | `declaration-track:3104c0efd866f5b674143993744c9eb97fd1a98704cce315d119b18246070a22` |
| 36 | `def` | [smtSDiv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/smtsdiv.md) | 210 | `declaration-track:fde850458853e67dd3b58f3f61623907b7492953f3fbc48f21d4092425c1c99d` |
| 37 | `def` | [srem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/srem.md) | 222 | `declaration-track:4a5cdc65b76ad75a0798ff94f5d427ceb71ed156bde027b3b8a802f9c8a39848` |
| 38 | `def` | [smod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/smod.md) | 234 | `declaration-track:8bbed6adc8cdfbe3a04ec1cc351c446e22b5ae7a9b5bb944089d13b19f87c35e` |
| 39 | `def` | [ult](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/ult.md) | 250 | `declaration-track:5313cdc26bd93c91d98999655035ddef7ece1ced235c158535f323a7960a795e` |
| 40 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-20.md) | 251 | `declaration-track:ddac3f2940dd723a4375eb0e6109fdd2292cb040925ae07cbf7750f59e93c71e` |
| 41 | `def` | [ule](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/ule.md) | 258 | `declaration-track:4e05b28eb4d6db38b6717430116e7b33bfb25728ba2db7872e2bfabbd2a16911` |
| 42 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-19.md) | 260 | `declaration-track:d9864688ead2330ab6cb0ae4220d8ff673def6fba39698dd83e667de3a07702a` |
| 43 | `def` | [slt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/slt.md) | 271 | `declaration-track:4e4a6060e65242dfc5573742fb6a3ef3a5aab3bfba3cbfd3cfb9cccc86363a00` |
| 44 | `def` | [sle](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/sle.md) | 278 | `declaration-track:c4a845658f49d9a9d7d8cf7d4af5214dbf2eab72a3e68e43a3ab53de1b0f2834` |
| 45 | `def` | [and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/and.md) | 289 | `declaration-track:7e57263c03d6ea5bd6e00d082be631508a7bc28898fcf39f862c2f2546b4cc3e` |
| 46 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-14.md) | 291 | `declaration-track:b4dbee1b6f39053bfea829c771e02436281d0686e3d5cee891162d23b3f7d04b` |
| 47 | `def` | [or](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/or.md) | 302 | `declaration-track:8a9ffe024e19279154f31a870b5e0ca97fd279ac040604bebda0b0574b056fa6` |
| 48 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-6.md) | 304 | `declaration-track:653222466c923c01bc68154d9eaef8788351699c455e1a7fc0233f10a3949fa8` |
| 49 | `def` | [xor](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/xor.md) | 315 | `declaration-track:b281506ba19e0e1dbaa515cdee8df7607edff46749dc42e3e9b9f5e603367721` |
| 50 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-3.md) | 317 | `declaration-track:4d1eb32caac0bb66f7bff9340e93fc01e355fc776cc99b7fa7efb533dc670b8e` |
| 51 | `def` | [not](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/not.md) | 327 | `declaration-track:9543e9b4f43789da25d0244e1b919778c89d6047bb667144a14184746a004e97` |
| 52 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-12.md) | 328 | `declaration-track:a8fc1bfbf8a7b7801e5353146e053817162d4787f30caff0c31fc87c22af1c02` |
| 53 | `def` | [shiftLeft](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/shiftleft.md) | 336 | `declaration-track:847ff3b178f7f1a5f58d7857802c728b52f27779d010e26ac49e5415a48f68ce` |
| 54 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-18.md) | 337 | `declaration-track:ceea5d5f2f183e7c21c86766fd05b1fe695cba86eafb760539e161426ee5f790` |
| 55 | `def` | [ushiftRight](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/ushiftright.md) | 345 | `declaration-track:74265b3858efd3c3348063bed7da906723c138aa4fd5b736cf40be360a14668f` |
| 56 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-17.md) | 346 | `declaration-track:c30946c5db032e74bd3f750b879fe2ee3dbf1e19ef3e8dfa3308666674f4e0b0` |
| 57 | `def` | [sshiftRight](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/sshiftright.md) | 355 | `declaration-track:58f3cc761a8501195f168e3749c1dab90568f2db0b7ed65b06a69e9b685dbe35` |
| 58 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-16.md) | 357 | `declaration-track:bb9dd8290c4825aadbb421d9ec8d142bba0d89f1929f4822f3eae139daa3b1da` |
| 59 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-21.md) | 358 | `declaration-track:e75351df0ab1fc0c74ad3c6bbc9e318ce9f762560f57a86e33c7b06ae826bff7` |
| 60 | `def` | [rotateLeft](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/rotateleft.md) | 369 | `declaration-track:e49fe588859d36e406e7b43126ddce1369c6ac0c524ef2d0c2fc0acc51c99cdf` |
| 61 | `def` | [rotateRight](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/rotateright.md) | 380 | `declaration-track:08d879bb5597d8aff2b6ab03e91338b0324af34dfb64b2497ace80825f6bcc87` |
| 62 | `def` | [zeroExtend'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/zeroextend.md) | 385 | `declaration-track:100481ddc13f5206e5dc1a5e9b3908217490fc83698ddb32f24212b8f8b2a394` |
| 63 | `def` | [shiftLeftZeroExtend](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/shiftleftzeroextend.md) | 394 | `declaration-track:76f42e47edf459a4155a7a5d769df9e8013c79c3fd1b376b45f117f94a70d016` |
| 64 | `def` | [append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/append.md) | 407 | `declaration-track:8ba25cb36a4f90e7f123e4232ff5fb07150fd948d68c4d3229313eb85f001275` |
| 65 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance-source-edition-11.md) | 410 | `declaration-track:a1771822eece4dd53b8e79fb234470095a7459f7ac25acf140445b0b626465ee` |
| 66 | `def` | [extractLsb'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/extractlsb.md) | 417 | `declaration-track:aefcf68ef09b26764c880b1352ae517bd67dd7439a21a8f770bbe61f1f6a4c96` |
| 67 | `def` | [extractLsb](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/extractlsb-source-edition-2.md) | 425 | `declaration-track:dd6561dd6d1c98edfbd172a56ca0441b5c9a109b08c513f49de0c5b0adc8459a` |
| 68 | `def` | [replicate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/replicate.md) | 429 | `declaration-track:52debc7cf12d88ab416a92f477402cfcb8dcebd23db0b9043b19d3d9bf0795ca` |
| 69 | `def` | [fill](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/fill.md) | 437 | `declaration-track:56089848a49bcf7545a180fdc895bb25f10628f5e0e867482cb3d149b3a4e8dd` |
| 70 | `def` | [zeroExtend](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/zeroextend-source-edition-2.md) | 445 | `declaration-track:37c21857f3ff2977acb39ed54a7c8cd666834629017130412482080ca373f2d4` |
| 71 | `def` | [signExtend](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/signextend.md) | 463 | `declaration-track:9225863c65b7202c69a2d50fa0abc8e05fab020cd3169a00561f8b4bd7f28ecd` |
| 72 | `theorem` | [append_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/append-eq.md) | 466 | `result-track:c818ccf05c471d21f4df503291a55aa13cf3fb7f5f15cd392baedcf9d3080fab` |
| 73 | `theorem` | [shiftLeft_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/shiftleft-eq.md) | 467 | `result-track:32586bfaa0c807e494e12ca30574e8ede976e33218b2b7d332ac1f379f3c4163` |
| 74 | `theorem` | [ushiftRight_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/ushiftright-eq.md) | 468 | `result-track:475edf5fd0bf4b8e70139a4c9eea3c6681eb03300b5ebe6857b5d7fb7a1d5ab1` |
| 75 | `theorem` | [not_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/not-eq.md) | 469 | `result-track:1a7bf9461ce2495f290c37bd2590058e0ab9bb4df444b186bc3a580843c465af` |
| 76 | `theorem` | [and_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/and-eq.md) | 470 | `result-track:437e0cff92b00ccb66c8fdbc392a6a43f3d155a993ad5c14f99f731a9b685692` |
| 77 | `theorem` | [or_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/or-eq.md) | 471 | `result-track:00b203f32160520148302722dabd576c54911d76e6fb66542f29429f02e94856` |
| 78 | `theorem` | [xor_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/xor-eq.md) | 472 | `result-track:c8ff7cb3aada896ab51abad77c07f3f250d77b109cef5e79f3e7d7915a6f2cfa` |
| 79 | `theorem` | [neg_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/neg-eq.md) | 473 | `result-track:b78ff254a0f8cd7d340d5aa02103bb8d1a94f03490150f2a5092221ab80f0776` |
| 80 | `theorem` | [add_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/add-eq.md) | 474 | `result-track:7cb4022549251694021d78b01e484bebc8b1cde5e5fedb0c0cf92f285830f513` |
| 81 | `theorem` | [sub_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/sub-eq.md) | 475 | `result-track:183e38515698d41e4032224833ed254c3ea85676d4ae81050f28b90c7733556e` |
| 82 | `theorem` | [mul_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/mul-eq.md) | 476 | `result-track:52d73fd3c3f37b981ebac141f36d85c5dbe54e9c368856c0ee58d2c301661bfa` |
| 83 | `theorem` | [zero_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/zero-eq.md) | 477 | `result-track:cdb7668c9de798d09b7b3399944adecbaadc9db21d6873c11f8a733e3af0e904` |
| 84 | `theorem` | [cast_ofNat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/cast-ofnat.md) | 479 | `result-track:a7759346c16533ef9c073ea5f1a426c82324079b8440270676960c685c16ba30` |
| 85 | `theorem` | [cast_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/cast-cast.md) | 483 | `result-track:405166aad1256aedcfba63c98c8106d94c17dbec429e33335c9325b3ffdea875` |
| 86 | `theorem` | [cast_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/cast-eq.md) | 487 | `result-track:aca98b85413ba1bc015fde7fbdd535fc5e79c0d9f880301f012435673e9b2e65` |
| 87 | `def` | [ofBool](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/ofbool.md) | 492 | `declaration-track:ca3eaa0e2838752fdf88ad392efc89bb07b942785017cdff898e7256c48a4642` |
| 88 | `theorem` | [ofBool_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/ofbool-false.md) | 494 | `result-track:6b631eee44943ed48c462a6c917cf580cc1bbfc0d0c2e59aa2c6c512e5b32500` |
| 89 | `theorem` | [ofBool_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/ofbool-true.md) | 495 | `result-track:1e7189aa0c3a647068c2a4724959762835d7ee0982885f10a0e3a3c03385b29a` |
| 90 | `abbrev` | [nil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/nil.md) | 498 | `declaration-track:c1f647a44a05826ab9274f11c55313ac3bf688d5f97b162e166707f66c4c5292` |
| 91 | `def` | [concat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/concat.md) | 510 | `declaration-track:8498c40dcd0ec4d13cb375fbc2dac838964b0b9373437ef57eee32fdbe45ded5` |
| 92 | `def` | [cons](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/cons.md) | 514 | `declaration-track:fa9b9c411c037cdcf054e9ae72c6c448a38ab214f04436901d520a475f7d9ef6` |
| 93 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/instance.md) | 518 | `declaration-track:1412c9d66b93f77a04293e6d92e6694291a92183958271e10ac7655aef662d4b` |
| 94 | `theorem` | [eq_nil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/eq-nil.md) | 522 | `result-track:1c86a5f4dc11a069c022ad257fd8aefc4ae67bd61fd633d3baaf4fa454f51f51` |
| 95 | `theorem` | [append_ofBool](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/append-ofbool.md) | 525 | `result-track:ea31d462e987c7e8e6f1ca2515880c5588ec6bdea3640c09abf24809d9293526` |
| 96 | `theorem` | [ofBool_append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBitVec.lean/declarations/ofbool-append.md) | 529 | `result-track:d0d86459f258dbe48e1f172ef037c2812104130bde29f1842dd037e3a6502305` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfd18f9b60aee36601a678fbdab4ff6ba2e772b79cb07f87ce1dfdb7105f0ea4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e4a3a9a4a9b891be3d80e6a10a1efccbc23c08b9c581a496e81d99cea33ba99.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e4a3a9a4a9b891be3d80e6a10a1efccbc23c08b9c581a496e81d99cea33ba99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
