# Verification target: Size Of Public Is Inductive Hypothesis

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0faca0128fc0bcfc46156f3d678ddc6618e6ec7a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0faca0128fc0bcfc46156f3d678ddc6618e6ec7a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.WHNF` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkLocalInstances](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mklocalinstances.md) | 16 | `declaration-track:89e94bc15b2b29919bcb67c86447654db741d3a982ad33c4c1d6e14488b3645b` |
| 2 | `def` | [isInductiveHypothesis?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/isinductivehypothesis-source-edition-2.md) | 44 | `declaration-track:6cdd625ca888b803a42b5e0a8cb2db3f5dafc1e0e37ccc0d9be1d4820e5794b8` |
| 3 | `def` | [isInductiveHypothesis](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/isinductivehypothesis.md) | 51 | `declaration-track:41e174809a1ce9c0faddb6cc2290f736c2c7a0e2991fb2f7b8a09077cf8e653e` |
| 4 | `def` | [isRecField?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/isrecfield.md) | 58 | `declaration-track:9b356803f8e9360f84870d0df3d6cbb87a0fdc02b3093695aa2197d2669fc998` |
| 5 | `def` | [mkSizeOfMotives](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mksizeofmotives.md) | 67 | `declaration-track:52fb32a61f37638db7fb18f625a82d6e66481f615f16347cf899714625dcdafc` |
| 6 | `def` | [ignoreFieldType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/ignorefieldtype.md) | 80 | `declaration-track:349d92a321e966c87d10416d915bd857d16e6a05064643be1ce33a0a72d65eb9` |
| 7 | `def` | [ignoreField](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/ignorefield.md) | 91 | `declaration-track:badf4f4722deddab1adb22587949c99b66b9f0afbbd84772a301d8a19bba1067` |
| 8 | `def` | [mkSizeOfRecFieldFormIH](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mksizeofrecfieldformih.md) | 96 | `declaration-track:a544f8ec6aefda98d90d91069092ff51c96394a4245f89e3d122c3366394137d` |
| 9 | `def` | [mkSizeOfMinors](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mksizeofminors.md) | 102 | `declaration-track:bd3ac0c36424f27f801b0a505f93c8ab4a5068bb4947c87199b53eb160ebfe5a` |
| 10 | `def` | [mkSizeOfFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mksizeoffn.md) | 126 | `declaration-track:83fdb17054d558f9345e6ab93bf97a743eec0fe02ecdeae326a78a2435f7a088` |
| 11 | `def` | [mkSizeOfFns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mksizeoffns.md) | 167 | `declaration-track:75acb8fbf9376e5460e200e88df3928919d695415270181942c5109f7886d34e` |
| 12 | `def` | [mkSizeOfSpecLemmaName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mksizeofspeclemmaname.md) | 189 | `declaration-track:2f141067cf3feaeea7dd527e00f5bb6a28045116c4d061d8c80527c549f52907` |
| 13 | `def` | [mkSizeOfSpecLemmaInstance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mksizeofspeclemmainstance.md) | 192 | `declaration-track:721a99981663d226999c60300b9dd49a5aa9a66e5e2a938fe37f80fc0eea2e5c` |
| 14 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/context.md) | 208 | `declaration-track:95cd394b4fc2d83a972ab5984400a1c01200c7f0d352a11e567d3792f3b65fba` |
| 15 | `abbrev` | [M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/m.md) | 216 | `declaration-track:6eb36b4cd2d2f7b595b3fa3af45f401d4f90f05371d7a5bad1177bb3720a2517` |
| 16 | `def` | [throwUnexpected](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/throwunexpected.md) | 218 | `declaration-track:9acbeee988b11c294979702239e6094787bc07e5aa9cc4aee8f473f79ab28641` |
| 17 | `def` | [throwFailed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/throwfailed.md) | 221 | `declaration-track:48d42d1268089cdd79c769fa0c7331e1c594893d901a2dd2e6aefe8a6db9a581` |
| 18 | `def` | [recToSizeOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/rectosizeof.md) | 225 | `declaration-track:93162c154e599abd4d2680363aebf418c3fc58e6df7a261da523d6107445ee4d` |
| 19 | `def` | [mkMinorProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mkminorproof.md) | 237 | `declaration-track:ffec5f0efa6cbf6acbdd9ca29a9169e7f297b1f084afb13b1781abb7400a7adc` |
| 20 | `def` | [mkMinorProofStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mkminorproofstep.md) | 256 | `declaration-track:86080cb2e97d3655c0876c7063de073f34e4e4f0f126d2089df44e82bf719f81` |
| 21 | `def` | [mkSizeOfAuxLemmaProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mksizeofauxlemmaproof.md) | 269 | `declaration-track:3e1c61662e541644afce7778a7a11e9249098baf3000302e43cdba48b84a8e39` |
| 22 | `def` | [mkSizeOfAuxLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mksizeofauxlemma.md) | 350 | `declaration-track:55256f74437d67db8a0735d841418a3419a42fb35e31961e04c80a3a7ebfc023` |
| 23 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/main.md) | 393 | `declaration-track:fc3b80902efa5eb64f8fbdbe32c354f0b3eec23938c3db3e24d36ce41d5c1b37` |
| 24 | `def` | [mkSizeOfSpecTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mksizeofspectheorem.md) | 424 | `declaration-track:2413499b13f137b32842775feef25c2e78e694d561d46dede078dd5c49322d9c` |
| 25 | `def` | [mkSizeOfSpecTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mksizeofspectheorems.md) | 475 | `declaration-track:b1ccb2aeddf2c84b4cd4ffc12d19ef7409d6d90813d911996ff9240615d5cddc` |
| 26 | `def` | [mkSizeOfInstances](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/mksizeofinstances.md) | 492 | `declaration-track:90f90d087d7219486f554646fd7922db3ff6dbfce047eb2a3db75c5fea9f058f` |
| 27 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SizeOfPublicIsInductiveHypothesis.lean/declarations/builtin-initialize.md) | 532 | `declaration-track:4ce86dab8792804411d673b3fadfd100d4b33b0856654ae5116eacb8cea0978b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10f9b33c00c5a2cf8eafa2ae03c48ff376f8c6fa736a58fb5ffe2d6c10cd4165 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
