# Verification target: PEquiv Symm Bijective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2da81e210cfe5c6f882911e9886e2932d12c9b92",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantdf62ad2f1dbfbafbc350369a990bc2ca429b828fd3826bb99c71544af86006e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2da81e210cfe5c6f882911e9886e2932d12c9b92`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantdf62ad2f1dbfbafbc350369a990bc2ca429b828fd3826bb99c71544af86006e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantdf62ad2f1dbfbafbc350369a990bc2ca429b828fd3826bb99c71544af86006e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Option.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Congr` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Contrapose` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/pequiv.md) | 50 | `declaration-track:b9aa0b2731cef8f29c824c288d71b76ed7d8b663b68497c8101372cd801a6b36` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/instance-source-edition-4.md) | 69 | `declaration-track:a8bdb41ce6749c7fbfdb848cb0241329f16db5dde4d1a10c96a5604b58c076ba` |
| 3 | `theorem` | [coe_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/coe-mk.md) | 76 | `result-track:d0247acdc146b0668d676e8eb6fc2b300f311dfc4b1a844619399d2b782c45e9` |
| 4 | `theorem` | [coe_mk_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/coe-mk-apply.md) | 79 | `result-track:b5f27babacf6bf1aa57708698fa6aacdb68e2e60d76f6db81de90b635a9b28b1` |
| 5 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/ext.md) | 83 | `result-track:8b3e693a42590ae2e236bb2a2887371756582b3576bab7c939b6672e96e2105c` |
| 6 | `def` | [refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/refl.md) | 88 | `declaration-track:4ac65357b31f11e4fadcc9c9c4d4ba259a51e5a035b6859b00d9128b7ae9e22a` |
| 7 | `def` | [symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/symm.md) | 95 | `declaration-track:5c8afd065a7aed199f6617115a6f6ff931172f05907a48aeea6a0379344a850c` |
| 8 | `theorem` | [mem_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/mem-iff-mem.md) | 100 | `result-track:8083cbde4ef74523673471e2eabc545fa7e2a41b51704729a36c634959e3b7e2` |
| 9 | `theorem` | [eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/eq-some-iff.md) | 103 | `result-track:c1af6163a2a4a2291000f36df41d9d37a90c8aae346471ee0a2332f5f604c68b` |
| 10 | `def` | [trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/trans.md) | 108 | `declaration-track:5c429ce80b479a6c22df7a8ccf273421d316d606c3001273c0059b708ba3c212` |
| 11 | `theorem` | [refl_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/refl-apply.md) | 115 | `result-track:12ca8659e457c8b7b2245a413e2bb909947f4dbb37af750c60ea938aaf73b787` |
| 12 | `theorem` | [symm_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/symm-refl.md) | 119 | `result-track:71554c78e65b12f9e5fa127c8b16e9871b64642db5093f61ff0c2d2bed942a78` |
| 13 | `theorem` | [symm_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/symm-symm.md) | 123 | `result-track:25b070450de6fca058ec03563c3f8197ce91535ce27307d918a33d5c0a88deaf` |
| 14 | `theorem` | [symm_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/symm-bijective.md) | 125 | `result-track:f6d467fe397c3ab76d6f2d2e005ae0d28d5f8f78f0e6fddf752881a096060f82` |
| 15 | `theorem` | [symm_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/symm-injective.md) | 128 | `result-track:fea19667a715a5ff93a019cc0b3513e271b41c42fe119c2d711e8e8df16dbc81` |
| 16 | `theorem` | [trans_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/trans-assoc.md) | 131 | `result-track:8a8fc9c34313edf5d09d20ed3f2d7a57626cc803ed8979549fc1e225b5a75237` |
| 17 | `theorem` | [mem_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/mem-trans.md) | 135 | `result-track:8aeac76f2af3eae6df4bb3747c7a54fefe1f8fef3fba71efa9241874526722ff` |
| 18 | `theorem` | [trans_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/trans-eq-some.md) | 139 | `result-track:61dcbb5357b32940a332173e7e18372f95e52e983c6bd1398d565d1e3ede3384` |
| 19 | `theorem` | [trans_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/trans-eq-none.md) | 143 | `result-track:94c58e0fd4c8009f4719c24ebac7f4df543c4c62702787d079f1571102ad9096` |
| 20 | `theorem` | [refl_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/refl-trans.md) | 150 | `result-track:1da0ec1310dd508e32a4273257b1942cbb06bcc2fee834aa5887da5cc0bd5f37` |
| 21 | `theorem` | [trans_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/trans-refl.md) | 154 | `result-track:67ab08158df46e7f333ecb1bd286bbd0db891a23f4535036ecf0cb3db705592f` |
| 22 | `theorem` | [inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/inj.md) | 157 | `result-track:f800342c15a05c5d7bdc0a989fc57b2c8d93640d8f5701d7a09348e967e04b89` |
| 23 | `theorem` | [injective_of_forall_ne_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/injective-of-forall-ne-issome.md) | 161 | `result-track:e26cf3d8660816e97aae9ebb200385b8e021d96387f701c8a91bac563bf586b5` |
| 24 | `theorem` | [injective_of_forall_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/injective-of-forall-issome.md) | 174 | `result-track:026ce52669fc638af49632a84d34aaf08b0ea958281938e4c8d8d715e2eeba31` |
| 25 | `def` | [ofSet](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/ofset.md) | 184 | `declaration-track:84500c4cae00c04ebff4c04893accd2749f7f082bb27b95cc52c43b7b5e7c627` |
| 26 | `theorem` | [mem_ofSet_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/mem-ofset-self-iff.md) | 195 | `result-track:0bb54195d1b17a429a2c4c5f3102570a32da74e1d3a6335680ddf9725e0337cc` |
| 27 | `theorem` | [mem_ofSet_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/mem-ofset-iff.md) | 198 | `result-track:f86357504e2d6d661488620ad503efbdcd4e049cb9443aa3bfb5a64a72de01d8` |
| 28 | `theorem` | [ofSet_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/ofset-eq-some-iff.md) | 210 | `result-track:f7894b956b93dfcb302f723e2e1c9a322caf3dac7a349643538c6c6290b1c82d` |
| 29 | `theorem` | [ofSet_eq_some_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/ofset-eq-some-self-iff.md) | 214 | `result-track:47a884065bf9a49ef463f7c6e27bbba8384bb57ea3965cbdab3b14ff31871c2a` |
| 30 | `theorem` | [ofSet_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/ofset-symm.md) | 219 | `result-track:387deab9a183be9b0687dac80aaa0b9a589152cfa433b9b360a600845aab9537` |
| 31 | `theorem` | [ofSet_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/ofset-univ.md) | 223 | `result-track:72fcbef2b9edd4edcd0f16c9ec82b6120aed8f60be0e09086e375f7f0ddcce53` |
| 32 | `theorem` | [ofSet_eq_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/ofset-eq-refl.md) | 227 | `result-track:1856b3192e7fc0457d36b2669a1798b2f06728a0d4a61c5e6928e04fe5831bed` |
| 33 | `theorem` | [symm_trans_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/symm-trans-rev.md) | 237 | `result-track:f8bba8c5c509e0ce65fc79d157f63c2192c4546fa15cce16f9346e42c418bec3` |
| 34 | `theorem` | [self_trans_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/self-trans-symm.md) | 240 | `result-track:6c2b592fea0f0c2a1877b6071883d80c23778bcd3c0b438c0721cabd125c7662` |
| 35 | `theorem` | [symm_trans_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/symm-trans-self.md) | 250 | `result-track:b6ef8099dba9a8c12aaffa02d70cd0f11c9c32cc0716fd7fe58ac26a13558e32` |
| 36 | `theorem` | [trans_symm_eq_iff_forall_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/trans-symm-eq-iff-forall-issome.md) | 253 | `result-track:ad524329c26c6349ce60c62f3a9ca0e348416cc1bdcf9114a12e9d530f3ca3c6` |
| 37 | `instance` | [instBotPEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/instbotpequiv.md) | 257 | `declaration-track:3447054af110f666e732a02d6d36f74ecb6aff1f7e1da26d24df46a734cca0ab` |
| 38 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/instance.md) | 262 | `declaration-track:0b061fd10e1e5f94634f1d73a3e59385d8bf994f251c2bf928a193a1de2a710c` |
| 39 | `theorem` | [bot_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/bot-apply.md) | 266 | `result-track:7802bad1d1f1aa91fb5128bd6e723b7b7561fbc162303c271ead787ff12591a0` |
| 40 | `theorem` | [symm_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/symm-bot.md) | 270 | `result-track:9e519c50522e0d6ccdea43160c345f40db97d881cce6d732e3e518b82a6f05a5` |
| 41 | `theorem` | [trans_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/trans-bot.md) | 274 | `result-track:acf85754d2debff86875e71bffc258db07bbc801335eb3796f48dac104012bb8` |
| 42 | `theorem` | [bot_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/bot-trans.md) | 278 | `result-track:26601dab8624b0193c5fe86d94d9459ce45ea248a785161ac04cc63bbe475e04` |
| 43 | `theorem` | [isSome_symm_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/issome-symm-get.md) | 281 | `result-track:05fdb68f1a803378127b1142b8abd82a9be896fa818a8fb7e9afe75be2df2822` |
| 44 | `def` | [single](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/single.md) | 290 | `declaration-track:d3675e86436d50b42a6a47f402c92ccd52442299babd5681e4878ba0adff3f13` |
| 45 | `theorem` | [mem_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/mem-single.md) | 303 | `result-track:7753c98eba345827830f948c3ba98f1e906002908ea0554caeacf1534ce5c05b` |
| 46 | `theorem` | [mem_single_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/mem-single-iff.md) | 306 | `result-track:55ee992c3f14c731f66584d3fe44292d9a2f497338636c1018b91905ec0c620f` |
| 47 | `theorem` | [symm_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/symm-single.md) | 310 | `result-track:2b9aed7a42a8e146c142f4234ba374bbe98cbe14486268b6886a9796d9e9b4ad` |
| 48 | `theorem` | [single_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/single-apply.md) | 314 | `result-track:705d9e6ea319975e23acf9f758c2718a9d7965d3604b6f11282d6d73373d8b02` |
| 49 | `theorem` | [single_apply_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/single-apply-of-ne.md) | 317 | `result-track:1fa790707e82397aec2a7cc9ba66263cac70750443a1ed89798bcc6e672254f6` |
| 50 | `theorem` | [single_trans_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/single-trans-of-mem.md) | 320 | `result-track:75be8ef4d5790801c3619c18c8a9299cba32eef1096441bd48b5a0e51b46aecf` |
| 51 | `theorem` | [trans_single_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/trans-single-of-mem.md) | 326 | `result-track:8911ccc9d57e4c90fb380f2a5bbdbe2f628a0ff7f45963fd931eacd2919d1db9` |
| 52 | `theorem` | [single_trans_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/single-trans-single.md) | 331 | `result-track:e9f06160e1871bb2d88eed4479f563c8fdcdb51fc399d0a48e7b5a4085fe061f` |
| 53 | `theorem` | [single_subsingleton_eq_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/single-subsingleton-eq-refl.md) | 336 | `result-track:65fa41ccdd8a252e1c040cd3d21af276702ab490cdf1e8947d0e68aece2ef1cc` |
| 54 | `theorem` | [trans_single_of_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/trans-single-of-eq-none.md) | 341 | `result-track:a10bf3f3b9cd1ddc73259bbac38cc99ed9268b93fbc8655db5e2beff44a74d61` |
| 55 | `theorem` | [single_trans_of_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/single-trans-of-eq-none.md) | 350 | `result-track:49856ae56830cbf8ba89f943864eb111cd5150cdcce770ee79953fbeae04d0d4` |
| 56 | `theorem` | [single_trans_single_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/single-trans-single-of-ne.md) | 354 | `result-track:d1f3caca7f12bb20f059f21d3738da8850e077d0a41eb291c601c56c9983ceb2` |
| 57 | `instance` | [instPartialOrderPEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/instpartialorderpequiv.md) | 362 | `declaration-track:4c447dfe7f91330cd2b4f84118d909fd9835909aa171606465f2bfb7dc6486a3` |
| 58 | `theorem` | [le_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/le-def.md) | 374 | `result-track:7a2f4063ad967f69e57709ac95f79dbc99e20078f8bbc9473338bb182a472cbf` |
| 59 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/instance-source-edition-3.md) | 377 | `declaration-track:88e2297d9b5c43c0af5b0fe49259411c2a3aab75ac8ff697459e1195171cc9d6` |
| 60 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/instance-source-edition-2.md) | 380 | `declaration-track:24d207b6cff40a5eb6c809c7bf2b6307b95564efc9cd00f75ebb1ef2b4ba145d` |
| 61 | `def` | [toPEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/topequiv.md) | 418 | `declaration-track:7a7b19e6375f4bf199d5a8087d2a8c4ffe3504252e1b48d2537a737e7b7b00f2` |
| 62 | `theorem` | [toPEquiv_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/topequiv-refl.md) | 424 | `result-track:1bb455d71aa334cb0c58ab0a106849a3daa48afff3ebddb497705fdc35abd0ff` |
| 63 | `theorem` | [toPEquiv_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/topequiv-trans.md) | 427 | `result-track:0d4a5cca39a0ea18f965eba02e229cb9221e57e1b7ad8f271c742e9cb041730c` |
| 64 | `theorem` | [toPEquiv_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/topequiv-symm.md) | 431 | `result-track:bf7de19880aa5663fd4c195fe69dd756cc8ae4b14dc49ecb208661d6f5420f36` |
| 65 | `theorem` | [toPEquiv_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivSymmBijective.lean/declarations/topequiv-apply.md) | 435 | `result-track:09a710fca790c98d8f01a7ef73eb9e493e854787e78b980ab59b5cf000e743d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56d311a5c0d0ef3106cac8da45a53aca64bb181414b78ff1b5431fd3f72a9921 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantdf62ad2f1dbfbafbc350369a990bc2ca429b828fd3826bb99c71544af86006e9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantdf62ad2f1dbfbafbc350369a990bc2ca429b828fd3826bb99c71544af86006e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
