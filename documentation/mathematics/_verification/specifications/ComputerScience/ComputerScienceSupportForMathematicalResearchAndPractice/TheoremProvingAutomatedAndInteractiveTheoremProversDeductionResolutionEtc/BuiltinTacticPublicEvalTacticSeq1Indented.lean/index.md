# Verification target: Builtin Tactic Public Eval Tactic Seq1 Indented

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ac72035c41bb6175b7b6f262220e570d44586cd",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ac72035c41bb6175b7b6f262220e570d44586cd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Replace` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.RenameInaccessibles` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalWithAnnotateState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalwithannotatestate.md) | 23 | `declaration-track:fefef62673f0ee91a945a7ab9433d7c5f2df63694ed8aac2b78b119fa0b4bea2` |
| 2 | `def` | [evalDone](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evaldone.md) | 28 | `declaration-track:1ea07674550b3d3f7fa369bd0ad44cfe8b7eab0113025a98d10a8b618284af7a` |
| 3 | `def` | [evalSepTactics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalseptactics.md) | 36 | `declaration-track:127dd726a56a689bf97ab0afa10c0278c55de676349c06255f6565e3e36124c4` |
| 4 | `def` | [evalSeq1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalseq1.md) | 152 | `declaration-track:9c1584434b6d5eeb0070fadc848206ba8dfdda703ffb087fbc0161499fde6370` |
| 5 | `def` | [evalParen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalparen.md) | 155 | `declaration-track:6c5f0383898fa59b4b6b615961addb4e87980b69f9e0a0db8e08d8f2a91f8d99` |
| 6 | `def` | [evalTacticSeq1Indented](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evaltacticseq1indented.md) | 159 | `declaration-track:2026124cb79d17240affcbeb865b7d326d8c3ca20f6a661ac5a425ecc1469c8c` |
| 7 | `def` | [evalTacticSeqBracketed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evaltacticseqbracketed.md) | 163 | `declaration-track:b70f2f9de4aa9f4930034412660d261930f8435308863d91ecb60f9d88d37161` |
| 8 | `def` | [evalTacticCDot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evaltacticcdot.md) | 171 | `declaration-track:723be5295add0e6c6c5333a616682921f38b43bf02dec695fb5931dc2024c056` |
| 9 | `def` | [evalFocus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalfocus.md) | 182 | `declaration-track:05933825f8e5ebbc7ebe459dcb803027e747dc3b5908861aa64740339a0580a7` |
| 10 | `def` | [getOptRotation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/getoptrotation.md) | 189 | `declaration-track:1b69a0fc059d5a7a86af7c5c800a5be505bfebce7ae935909517bac4fd2f97c5` |
| 11 | `def` | [evalRotateLeft](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalrotateleft.md) | 192 | `declaration-track:8336bd1e1822a9ab3c6d0173b80fe30a5cbe2868f5b3c280a097e1f36ca13750` |
| 12 | `def` | [evalRotateRight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalrotateright.md) | 196 | `declaration-track:7b3356b6057254d0b8ce06da72de09820c6331924067c281b02f335b09b25e77` |
| 13 | `def` | [evalOpen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalopen.md) | 200 | `declaration-track:15d404823133e0289edc1ab198efba7c737c35ff89fa9752822eaa9b9c41aefd` |
| 14 | `def` | [elabSetOption](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/elabsetoption.md) | 210 | `declaration-track:78e966c0d9e870fa1be51d3fee9eab5257d4f8865dac1c1b116efe88b01b2344` |
| 15 | `def` | [evalAllGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalallgoals.md) | 220 | `declaration-track:e0163e645b108c4fa57d19830646cdc2364c32ad07a32404cd6ab4dd28fbeae0` |
| 16 | `def` | [evalAnyGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalanygoals.md) | 247 | `declaration-track:c41c3dd8fffc3ec50db50096b8ee0bc7c34e8a59e373b07d2ad26af1984dee86` |
| 17 | `def` | [evalTacticSeq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evaltacticseq.md) | 265 | `declaration-track:21f8d61c378b4fdab01dd765137a9aef332f1ca11a49d582efda9884a3510051` |
| 18 | `def` | [evalChoiceAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalchoiceaux.md) | 268 | `declaration-track:23e712bd2615d026dcc580643b95679c5a6cf70e00ba7e7ee2ff6bc0ef0e149d` |
| 19 | `def` | [evalChoice](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalchoice.md) | 277 | `declaration-track:14d3c3f4bff8ea477044325855c60d5b319d556d1583e484aeae9f7c409db3c1` |
| 20 | `def` | [evalSkip](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalskip.md) | 280 | `declaration-track:a74971b6e9bce04f08e3ee9413bf9f913cda957c702a251577884b118fe75329` |
| 21 | `def` | [evalUnknown](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalunknown.md) | 282 | `declaration-track:ab4342f183c3001f9a70f117a3d7d74145d8eb5929c3dfeb768bea399d3018b8` |
| 22 | `def` | [evalFailIfSuccess](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalfailifsuccess.md) | 285 | `declaration-track:d551172567f98ad6e6c0529a4ea9351205894db0b513c9a3fa029a9cd6ce7894` |
| 23 | `def` | [evalTraceState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evaltracestate.md) | 291 | `declaration-track:36ed995f02af6f4983a066163b0a2783dc30010ec58f5df328eb49b23967ecea` |
| 24 | `def` | [evalTraceMessage](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evaltracemessage.md) | 295 | `declaration-track:fce5db9e99cff4b4eebbd1c0225ceeff57f760c64ed9cd2bf3ef1fe88213ea84` |
| 25 | `def` | [evalAssumption](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalassumption.md) | 300 | `declaration-track:20a41c90092b9694464d4b34abf4223bd45424e0d7f4dad87aa3ceff7a9d5b7c` |
| 26 | `def` | [evalContradiction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalcontradiction.md) | 306 | `declaration-track:d363b166024bfa6b16e162cca7b9264c80cec6b6f1946863f4a5c44926e544ba` |
| 27 | `def` | [evalRefl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalrefl.md) | 309 | `declaration-track:c06c53a69d9d4b0118d0c24cb5c55b015043692a3dcde347c1247a40384e0e81` |
| 28 | `def` | [evalIntro](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalintro.md) | 313 | `declaration-track:c254feb83d61b078edad39de6d5a3357ec9ae0bed76e836525085b4fa5b4d422` |
| 29 | `def` | [evalIntroMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalintromatch.md) | 382 | `declaration-track:2929778e34945acdd074c54ea53c483680044b3049436f5448aa361c09021caf` |
| 30 | `def` | [evalIntros](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalintros.md) | 387 | `declaration-track:aa7dfc21de3e7811c2b121de28d3e2c397fab658b815b2af658f8bb28ec02db1` |
| 31 | `def` | [evalRevert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalrevert.md) | 401 | `declaration-track:f272b3b0d9ca7b6a8403f9f32f785162e80e4135fc871dbf56e3e97643d1948e` |
| 32 | `def` | [evalClear](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalclear.md) | 408 | `declaration-track:709a69963fa75c92df7bcc3aa59048e3cc95004b7e21f53d4dcf419fdb67ef29` |
| 33 | `def` | [evalClearValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalclearvalue.md) | 419 | `declaration-track:b667bd869a02c04e8bcfda34b543286192b14837d5a81fb5b4862545f2ab6270` |
| 34 | `def` | [forEachVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/foreachvar.md) | 484 | `declaration-track:3534beda3b17aca8f0dd7e6992234d44fe71914309a7313c0bee72cc5977785f` |
| 35 | `def` | [evalSubst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalsubst.md) | 491 | `declaration-track:0efd182ce3d3cf5941821b444241e6f0aff20d773647ecbfcb0e001b43f1de72` |
| 36 | `def` | [evalSubstVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalsubstvars.md) | 509 | `declaration-track:36b9314a03bb1fd77aafcda8d2f552a9006e0084163c61590d26814bd634f46e` |
| 37 | `def` | [evalSubstEqs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalsubsteqs.md) | 512 | `declaration-track:7a00b06e59c1c276251f20b80f7456e36704cdfdbaa31286bac4105127b9cd6e` |
| 38 | `def` | [findTag?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/findtag.md) | 526 | `declaration-track:6989d8ac81414bfdd3a5ea80c3aeceaf2d01618e4e56746ccac0b9e7227954b1` |
| 39 | `def` | [getCaseGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/getcasegoals.md) | 534 | `declaration-track:a5f92f307250c23bfcba57ca6580ed4561852013f6678f48a7c5c3e71600329b` |
| 40 | `def` | [evalCase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalcase.md) | 587 | `declaration-track:3fcb2e0032c44eb90ebecbc90067092d487ecc7c2a70fb78cb74b60f68c665b3` |
| 41 | `def` | [evalCase'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalcase-source-edition-2.md) | 601 | `declaration-track:5e7b053b97ccb3b52179dd4d9f590fbc1be1438d8a8611c4c77c800d6fec167e` |
| 42 | `def` | [evalRenameInaccessibles](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalrenameinaccessibles.md) | 618 | `declaration-track:d9ff8583a1cc43ba9b9fbd6bdb447c824ff3c81a165d99850fd672c1be578578` |
| 43 | `def` | [evalFirst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalfirst.md) | 622 | `declaration-track:29700c062c4a8789e943f5d23752963e8ff658c1d875510a1849257cc95a46f2` |
| 44 | `def` | [evalFail](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalfail.md) | 633 | `declaration-track:0e609ad48b43df50b628987be51efe88e28a42c94f5599085e6a9c6e3192268f` |
| 45 | `def` | [evalDbgTrace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evaldbgtrace.md) | 641 | `declaration-track:d1f4008b3ecb51e1a4f10ec35f0f0ce24923546cb92c02f8913d82eb9b7a1b60` |
| 46 | `def` | [evalSleep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalsleep.md) | 646 | `declaration-track:e2c1dd70211da07f033f7f4f0601d2ddf85451fe412856d3253b7e69385bebef` |
| 47 | `def` | [evalLeft](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalleft.md) | 651 | `declaration-track:cd6a653884f1a16626cca8284352c17622c1e4466113624071c494f9f31e0c34` |
| 48 | `def` | [evalRight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalright.md) | 654 | `declaration-track:dfa48163abaa0e769744a8b2a9e7bce7d29e3ad55f47091a796ae86cd8980bcd` |
| 49 | `def` | [evalReplace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalreplace.md) | 657 | `declaration-track:50bfb750513f6b78c11c16de881328be60852b33e1afb7ca9c0f25a0ae4c53d7` |
| 50 | `def` | [evalRunTac](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinTacticPublicEvalTacticSeq1Indented.lean/declarations/evalruntac.md) | 671 | `declaration-track:af762cf1b305d603a71f3dd2f2b3493fa6fae9c89dfa274458c4b8d0cc500115` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5b29a4dba3dd61160c1f48dfd6d53f38f8bb76505cc425987fea53e41ef8ab7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
