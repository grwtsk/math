# Verification target: EState TPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d05f339a1e8e3fb13e57b696deb3573cf31d4a18",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateT/Variant478631acbc499f2bfdc848bd8a9847ae6d528e081522debd5af2aa10570cdd17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d05f339a1e8e3fb13e57b696deb3573cf31d4a18`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateT/Variant478631acbc499f2bfdc848bd8a9847ae6d528e081522debd5af2aa10570cdd17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateT/Variant478631acbc499f2bfdc848bd8a9847ae6d528e081522debd5af2aa10570cdd17.lean.json)

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
| 1 | `inductive` | [EResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/eresult.md) | 19 | `declaration-track:53f67023af0bff24e991160fe33f098bcd47d30b7e031449dc352bb5bb9bd2db` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/instance.md) | 27 | `declaration-track:02d4081b34b2f1dfe1e7e24c841d429a9cab3537da05a86fd5cce2a82cf5e5c5` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/instance-source-edition-3.md) | 30 | `declaration-track:0cf5e91b25ab6e923486088e73f999fa80211508a879be3b7bd4258f0c89542f` |
| 4 | `def` | [state](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/state.md) | 34 | `declaration-track:e8e85d50a8a6ce1053d668c09558bd8023c53353a5c0a6725181c86c339269c6` |
| 5 | `def` | [modifyState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/modifystate.md) | 38 | `declaration-track:086a3486d904d8846a19812c949e710a3863f90d37d37282e73181e29d00370f` |
| 6 | `def` | [setState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/setstate.md) | 42 | `declaration-track:e54209ca3c9dacb9ceaadd321e0eb768274f2ba8b63c3377a60490dac66d3adc` |
| 7 | `def` | [toProd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/toprod.md) | 46 | `declaration-track:25bb7d78b11395e5443433324a08f841a976c708bb23dbe6a0af65fc4dc3a2c8` |
| 8 | `def` | [toProd?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/toprod-source-edition-2.md) | 51 | `declaration-track:655c724892b31f0500b4981916e844e318b7b137a3585ffa7b72844903248337` |
| 9 | `def` | [result?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/result.md) | 56 | `declaration-track:dc4bd524ed13c99cc7ff554e1ec38117cc4c96a2cb93fa4aa60b145c74a4a747` |
| 10 | `def` | [error?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/error.md) | 61 | `declaration-track:cee0212dee7097a3142c89760fb0977b2f51a689bb0fd91a3ce89d55e097c6b9` |
| 11 | `def` | [toExcept](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/toexcept.md) | 66 | `declaration-track:3acd369b93b29e520938162bd0fdb59d2a50788ba9a48e9e7107d2b74c4c9b99` |
| 12 | `def` | [map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/map.md) | 71 | `declaration-track:7f1d4d48834787b335c9eadebba82cda6f24d548bb4db593505452a81ab996d3` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/instance-source-edition-11.md) | 75 | `declaration-track:a05c5175a34e10b819b413c1e777129d6af186c6500168742967ec218e97fcae` |
| 14 | `def` | [toEStateMResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/toestatemresult.md) | 78 | `declaration-track:9c06f492bf2a9ac3bf3cc4aa0e08184e39b033d6a0dfb1577826b376a588af62` |
| 15 | `def` | [ofEStateMResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/ofestatemresult.md) | 82 | `declaration-track:b3e7da4f8fee362106654c4b14d45836f35f17f7d6cf81400dfe7a9192b5496d` |
| 16 | `def` | [EStateT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/estatet.md) | 92 | `declaration-track:e4d522f3e1128674ed310d4adbb4ef7c88640f1498e9575c75557562c010086e` |
| 17 | `def` | [mk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/mk.md) | 100 | `declaration-track:9214278ceb426fbaa2054ad11894494a6c537264d53a65be799a020375a55f3f` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/instance-source-edition-8.md) | 103 | `declaration-track:5090ff1ff3425d992fb7c76c9bee3832b2001d3120176d7417adb3c2a5f042c5` |
| 19 | `def` | [run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/run-source-edition-4.md) | 108 | `declaration-track:9c8b69c9ca351b7d6a651c2df1c2daef294c03f899fcdfdf11ce56d8c3e3fde3` |
| 20 | `def` | [run'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/run.md) | 116 | `declaration-track:22c2ef0a78935f0028dc0f9c4b55551da369224b21501d3598a9aed9d2a395d5` |
| 21 | `def` | [toStateT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/tostatet.md) | 120 | `declaration-track:36bdf1f76b6904a57f522862290ce039ab00d1ee4424dff8c711fb29ce2c76af` |
| 22 | `def` | [toStateT?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/tostatet-source-edition-2.md) | 124 | `declaration-track:70e6d8b8acec2acab170b37bede0fc6389c94df34eb7a2c63b77b0cd1154aa51` |
| 23 | `def` | [run?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/run-source-edition-3.md) | 132 | `declaration-track:62ac01000e6d09097c2d88099d5c889591adfbde22a1abd468ab7188a6f810c0` |
| 24 | `def` | [run?'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/run-source-edition-2.md) | 140 | `declaration-track:3a23d1b1510a681d5e60ade1e0f9b874e88d2c90eb4bde170ee11457d614cfbc` |
| 25 | `def` | [catchExceptions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/catchexceptions.md) | 143 | `declaration-track:4d10ff9a6ed02220ea6f4ce5162cb0d93ea70afffd8b2500925afd211597ea85` |
| 26 | `def` | [lift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/lift.md) | 152 | `declaration-track:6f284e3d1597c7dab6d538fa92e689463212045cf31cc5bdb768638ff0a56b7b` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/instance-source-edition-10.md) | 155 | `declaration-track:708c42d4153b147c34dcda27f3f97bcf8342f0aa2900b1c95e1c1c804e58cf2e` |
| 28 | `def` | [pure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/pure.md) | 159 | `declaration-track:41f8488d0986c69488b5e761aa530314ce5c3e782f42a8e13a1665a529b7cafa` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/instance-source-edition-12.md) | 162 | `declaration-track:c8aa53b0274dacee2c8d0ecc6deffdd03ad770cef67ea47f7afb846934715200` |
| 30 | `def` | [map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/map-source-edition-2.md) | 167 | `declaration-track:ba45da28bdddc18fc03fbf3bea307937c80cfba46afc7f544c3eb2e97c56245f` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/instance-source-edition-2.md) | 172 | `declaration-track:056c70ac5275bea0a02b8e25672c6a648d4b211500fdbeb9dc2ef3811364ea0d` |
| 32 | `def` | [bind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/bind.md) | 177 | `declaration-track:29e42e63b7706c91bef58feb6338f2d6a7507062786468eb00863ff6a06b3951` |
| 33 | `def` | [seqRight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/seqright.md) | 184 | `declaration-track:7cc4c6ad705d2d0305f473bbd6952a9fe0c9ce7a71f04ba1fd05b90faf755e59` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/instance-source-edition-9.md) | 190 | `declaration-track:57d1c882950262f4b482de8ea4d8fdc23f970d4693a19364b6573cfaa9a15ba6` |
| 35 | `def` | [set](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/set.md) | 196 | `declaration-track:fbfa59e4d81d2d90b25e45c5fa37e1b70096f823d064cd8c967218ecf4c49b62` |
| 36 | `def` | [get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/get.md) | 201 | `declaration-track:5192dec08320a61beee0b05e9c5903ac4d3ef8342c52e247bd1cf31435676eec` |
| 37 | `def` | [modifyGet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/modifyget.md) | 206 | `declaration-track:804bcddb847f1cc4e96c5d217f0837c4f8c9a6bef1724dcd56e13ef7e2f13641` |
| 38 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/instance-source-edition-7.md) | 209 | `declaration-track:294bbe7bb3e3861a50d971f288aea8288555dcdabeabebb5d908b76caa141530` |
| 39 | `def` | [throw](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/throw.md) | 216 | `declaration-track:c424608bc670bc9e67e3f79c18cb4fff13eefb0b1d37fedad73c40d8cede762a` |
| 40 | `def` | [tryCatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/trycatch.md) | 220 | `declaration-track:56e82c561933cb804a3d4eb53d4c1509a275fe2b10a45a0872afd06c27e60698` |
| 41 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/instance-source-edition-5.md) | 225 | `declaration-track:1b167d6d048f5c3ce4e4d3521c0616ee598772d826c293f7e664821cc932a6a9` |
| 42 | `def` | [orElse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/orelse.md) | 230 | `declaration-track:f4b2b3b29bfa9e042ed1758bf8b2bf6b1612f7cdd510d8b73141a07ceaffc806` |
| 43 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/instance-source-edition-4.md) | 235 | `declaration-track:10206ae178b0050ecba92d6fe4c5f3bbbf6764e43619a3b1d05981a21668c91e` |
| 44 | `def` | [adaptExcept](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/adaptexcept.md) | 240 | `declaration-track:034a277e7072d09e2f365947ffcc284a49d8067d7dfe52b82341f0ab08f409fd` |
| 45 | `def` | [tryFinally'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/tryfinally.md) | 246 | `declaration-track:af423c385717fc563cc54f2829ca9e48ec76ae5b20cc40131dd49aff066dff2f` |
| 46 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/instance-source-edition-6.md) | 259 | `declaration-track:28817334313c980c0d77cd6a939f81fc5d1dec538f61fb74a32a756aad4084f2` |
| 47 | `def` | [ofEStateM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/ofestatem.md) | 263 | `declaration-track:7919ce6b967fdae9569fa7f6b4a66c2821e77628efeee9e4096f2d82d04097e0` |
| 48 | `def` | [toEStateM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTPublic.lean/declarations/toestatem.md) | 267 | `declaration-track:b4318fe2c15ec00d76a30fd0127d511df46c4c3efc38f90ec3578be030b02d5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b32935082c24141141dcd01680a70be470daef8683b6110a6073963988027f2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateT/Variant478631acbc499f2bfdc848bd8a9847ae6d528e081522debd5af2aa10570cdd17.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateT/Variant478631acbc499f2bfdc848bd8a9847ae6d528e081522debd5af2aa10570cdd17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
