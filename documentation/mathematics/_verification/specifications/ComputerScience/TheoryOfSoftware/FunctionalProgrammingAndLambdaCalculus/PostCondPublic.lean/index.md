# Verification target: Post Cond Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e601c2c488cb97512b5f1b013414a9e4b2c1496",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variantb5adda49e12f20f2657b65e057da506234506dd6dcbea1528e5a7a27141ffa9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e601c2c488cb97512b5f1b013414a9e4b2c1496`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variantb5adda49e12f20f2657b65e057da506234506dd6dcbea1528e5a7a27141ffa9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variantb5adda49e12f20f2657b65e057da506234506dd6dcbea1528e5a7a27141ffa9a.lean.json)

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
| 1 | `inductive` | [PostShape](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postshape.md) | 54 | `declaration-track:62dedd0dfde4f1fd368dc33fc9c045ea70d3ff813c0219a75e6821c0a1db9843` |
| 2 | `abbrev` | [PostShape.args](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postshape-args.md) | 75 | `declaration-track:bdf740a5c045e0d581ad10d839a2ddfd52aaf1ff2731f52fbb4152d8f19bd8ae` |
| 3 | `abbrev` | [Assertion](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/assertion.md) | 93 | `declaration-track:a83ff050023bedf196d26b5b0015964d99a8e74701c5d06dac21c50dd4c1f981` |
| 4 | `def` | [ExceptConds](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds.md) | 107 | `declaration-track:9df5a051f545c7ea2069fdc9322751586b2610b6ba63bc507b051b2acbaecca1` |
| 5 | `def` | [ExceptConds.const](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-const.md) | 116 | `declaration-track:2a4954daee5a436debc4d2078db8f097c3e09388720f41b8cefc0116d530d297` |
| 6 | `def` | [ExceptConds.true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-true.md) | 124 | `declaration-track:e3b805b1620829db031bf55bb4c49bfb5cbf06a20a9209421401f44eaff702af` |
| 7 | `def` | [ExceptConds.false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-false.md) | 129 | `declaration-track:97ec5330e4484e0ef617ab9101c7a8e58edfded04e995ca49cff54dcb565d45e` |
| 8 | `theorem` | [ExceptConds.fst_const](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-fst-const.md) | 132 | `result-track:99ec401d9b1056fd3c6fd446bccb99878bd87f8912bbe57ce6f331b3dfd0fe30` |
| 9 | `theorem` | [ExceptConds.snd_const](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-snd-const.md) | 136 | `result-track:b5534b63991edc51c22cd732aa8fc3748896b08d076e9bf046d217e4a7d48a72` |
| 10 | `theorem` | [ExceptConds.fst_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-fst-true.md) | 140 | `result-track:76b9c5a7ef778f5fb75deada61419b0aec26fcf9e9adde16eeb674e3e6311f38` |
| 11 | `theorem` | [ExceptConds.snd_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-snd-true.md) | 144 | `result-track:71945e5f5101553551b993342196153d56e80a389d968e072ebd8a9bf40cd31e` |
| 12 | `theorem` | [ExceptConds.fst_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-fst-false.md) | 148 | `result-track:3d132054b36d703e7294d06fd9ea88c90d99f2d18d40a47721a142e96819a963` |
| 13 | `theorem` | [ExceptConds.snd_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-snd-false.md) | 152 | `result-track:c3ef3649ceb6e1292db28d93011de90ed3d2cbef3601af0c29909a4d888a1f27` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/instance-source-edition-2.md) | 155 | `declaration-track:799c77ef9b6311e2a404135ac9f3904c757e7af2d6a78aa2ae8c1b1bc07317f4` |
| 15 | `def` | [ExceptConds.entails](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-entails.md) | 165 | `declaration-track:6aa90c7d9dfa228506e2d0726e7e2e0c693ff56d5ef13264389c78b5bbdf8d8a` |
| 16 | `theorem` | [ExceptConds.entails.refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-entails-refl.md) | 175 | `result-track:ca2937b7e6491ea79fe37ed1437cd3174bc0815a2d79b1ee39245020b3ea7593` |
| 17 | `theorem` | [ExceptConds.entails.rfl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-entails-rfl.md) | 178 | `result-track:cd844b68e6f82927165dc36c607a9b3d84eae3a9fcf4a2f9bb6b91fbad8a89b3` |
| 18 | `theorem` | [ExceptConds.entails.pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-entails-pure.md) | 180 | `result-track:7f02214dae844cfff246591ce8a6209a86fdb881026e375056019618ffb099c0` |
| 19 | `theorem` | [ExceptConds.entails.trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-entails-trans.md) | 182 | `result-track:2af4191dcd11cd0669ec78a117fefc1f3701ca260e7473500193ca12db4ef7fc` |
| 20 | `theorem` | [ExceptConds.entails_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-entails-false.md) | 189 | `result-track:d24ace61e2a1f952c0c99cb5611aa002e2f1c788b57bb68815697428be8f54d9` |
| 21 | `theorem` | [ExceptConds.entails_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-entails-true.md) | 193 | `result-track:2d6f13ca024e0cfd1d83fc642cd6c4911713fbc6f09c8a197995371a85a5b977` |
| 22 | `def` | [ExceptConds.and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-and.md) | 200 | `declaration-track:6f03bf66453a2f1f6ec9aed8ea9c1d6b15b980aac34bb611d706f31636733287` |
| 23 | `theorem` | [ExceptConds.fst_and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-fst-and.md) | 210 | `result-track:073180ebe8c6dd286b392eefbad4c2d41f11192efafb0e88a31ecf5992e8f262` |
| 24 | `theorem` | [ExceptConds.snd_and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-snd-and.md) | 213 | `result-track:17047221e523082b9d15bdfc4c14aec43e1b99371b91cf8b2f8ce384a1f85619` |
| 25 | `theorem` | [ExceptConds.and_elim_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-and-elim-left.md) | 215 | `result-track:2997517c3fcb2cd488a945f68e71fbed3b7a67de451c91712abae6edcbf9fe02` |
| 26 | `theorem` | [ExceptConds.and_elim_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-and-elim-right.md) | 222 | `result-track:b144560843220b26b3a485d4455cc9d409ef510114860bb446d4b578903c3fa4` |
| 27 | `theorem` | [ExceptConds.and_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-and-true.md) | 229 | `result-track:a7ad7b50629bf4a946cc70070a71162b2a645a212604d0e639b8a3210ad5b0b4` |
| 28 | `theorem` | [ExceptConds.true_and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-true-and.md) | 231 | `result-track:1584370e5e7edda6cbbd89a19d57a543737eedbc1dbc7c7b26ce32b3a01207be` |
| 29 | `theorem` | [ExceptConds.and_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-and-false.md) | 233 | `result-track:587901df284db35e94db3c40809c41e74f468f2098f70a8f895311de4b8c0f04` |
| 30 | `theorem` | [ExceptConds.false_and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-false-and.md) | 235 | `result-track:78d447ece198854af051e1c7a8ff5e52eda7b8848d6597f4671b6fe99e2fe447` |
| 31 | `theorem` | [ExceptConds.and_eq_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-and-eq-left.md) | 238 | `result-track:24c5722d3da8a6e1e163f0fad08e67802aab8d761912488ec736a01048c47d29` |
| 32 | `def` | [ExceptConds.imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-imp.md) | 256 | `declaration-track:ed5209d1079afd4d3935f4fca975c0a6e0d9d1a1787d0d2e9da16b9f12272824` |
| 33 | `theorem` | [ExceptConds.fst_imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-fst-imp.md) | 266 | `result-track:a0899bb8bd09c95e69bc5bd3433ff87bb8ab598811b8fc5f4824e049c03e8c18` |
| 34 | `theorem` | [ExceptConds.snd_imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-snd-imp.md) | 269 | `result-track:46a9761697290c63d4f9f994c63a28665ee1cb756e7af7e02dd51fe429019a7e` |
| 35 | `theorem` | [ExceptConds.imp_intro](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-imp-intro.md) | 271 | `result-track:139ddb8e371ecd472ef6ea9c62386ecb7f2203894611278f153e52c5182fbf61` |
| 36 | `theorem` | [ExceptConds.imp_elim](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-imp-elim.md) | 277 | `result-track:2c1c0982c8bfcb00cf8048584258a8ef655716e73b9c5f0d9a986565784b2eb4` |
| 37 | `theorem` | [ExceptConds.true_imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-true-imp.md) | 284 | `result-track:c3a4c7ecc5a3e6048015d9691196427fdfcb135d73aa249324139f86c5c1abd8` |
| 38 | `theorem` | [ExceptConds.false_imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-false-imp.md) | 293 | `result-track:4a1cce45282b6c81336319e4cc094b84171cb2a58bbb647ef52a3ab7b2fed5d5` |
| 39 | `theorem` | [ExceptConds.and_imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/exceptconds-and-imp.md) | 300 | `result-track:0833163c668ae124264c178f137a6dcb5134c59c657356eddb0ed5487afd3c26` |
| 40 | `abbrev` | [PostCond](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postcond.md) | 317 | `declaration-track:279eb65effb2029f51e636d230eccafac3209aa4a83eb353ea0229940d770bfa` |
| 41 | `abbrev` | [PostCond.noThrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postcond-nothrow.md) | 331 | `declaration-track:6b2cbd4aecd8ebb3bcb7eec83d807401e7b3fd6558c7ed4580f5e94e8efee198` |
| 42 | `abbrev` | [PostCond.mayThrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postcond-maythrow.md) | 344 | `declaration-track:bbd1984923b20a15291e12674c79a26bccd4ee416aade5093d41947226d7b2dd` |
| 43 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/instance.md) | 351 | `declaration-track:57d053d8037021e37f93c8aefa45a102a7aab7a983dae10ebac990f50fa047bb` |
| 44 | `def` | [PostCond.entails](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postcond-entails.md) | 365 | `declaration-track:1bab26dc96228be42a3fd96ea55cdf01a291c897192e8d1dc383959e55426871` |
| 45 | `theorem` | [PostCond.entails.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postcond-entails-mk.md) | 371 | `result-track:95becd08af0d732c13c8a4d3d403392b8ac6d2e2c61ae02a360fb40247aafdd0` |
| 46 | `theorem` | [PostCond.entails.refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postcond-entails-refl.md) | 375 | `result-track:ef8245c7141c77175f1056c67b61dbe6fe6c885eef16c095e8384ea59e485a85` |
| 47 | `theorem` | [PostCond.entails.rfl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postcond-entails-rfl.md) | 376 | `result-track:bb9d542a3ae6297adf71dab022104f8ee53965124a5f158df98be7582a19686f` |
| 48 | `theorem` | [PostCond.entails.trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postcond-entails-trans.md) | 378 | `result-track:0dcf976d89033eae053dc18f4da82b331a365aeb94ef2336e4488985d1158061` |
| 49 | `theorem` | [PostCond.entails_noThrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postcond-entails-nothrow.md) | 382 | `result-track:11fc036d12db77bf79f7e1f636416b72bc6b78a785c63b13f1490243428ff801` |
| 50 | `theorem` | [PostCond.entails_mayThrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postcond-entails-maythrow.md) | 386 | `result-track:6b0fdb6bd2cce6a93e8c04c2f2f984c2cec7fd423ed1cd1a20ae06a0180c71e8` |
| 51 | `abbrev` | [PostCond.and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postcond-and.md) | 395 | `declaration-track:b0d3056d792e9da003859f3333ef6afa9ad69eb8decbc972bd3f8e32810e744e` |
| 52 | `abbrev` | [PostCond.imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postcond-imp.md) | 410 | `declaration-track:192bb5ab067000fe66f593677311a454886f92b53d101a09117ec13c503e2798` |
| 53 | `theorem` | [PostCond.and_imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postcond-and-imp.md) | 416 | `result-track:dd8af3609ac002cb4e394ee862c303094c127f069403cba36073cba10ceeb5b7` |
| 54 | `theorem` | [PostCond.and_left_of_entails](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondPublic.lean/declarations/postcond-and-left-of-entails.md) | 419 | `result-track:39b37cdaa9a19fa1e08ceb0c539782d75e082d49150d1e7792070c1182dfd55e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03d5bae93cb10c641aa08d233134878f5faa2d802e3f750a8e90554378d61317 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variantb5adda49e12f20f2657b65e057da506234506dd6dcbea1528e5a7a27141ffa9a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variantb5adda49e12f20f2657b65e057da506234506dd6dcbea1528e5a7a27141ffa9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
