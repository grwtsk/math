# Verification target: Meta Congr Theorems Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9690694fe098f0833dbcd836d4799e96302a3af0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2361df2bb6076ae7b4184526e06e0ea38096bbdcc13d3af5882c9fdc2455df4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9690694fe098f0833dbcd836d4799e96302a3af0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2361df2bb6076ae7b4184526e06e0ea38096bbdcc13d3af5882c9fdc2455df4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2361df2bb6076ae7b4184526e06e0ea38096bbdcc13d3af5882c9fdc2455df4c.lean.json)

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
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/initialize.md) | 22 | `declaration-track:de884673542c6d79c9a7c0ea869655405d13ae532504a053e9ed18f684752d77` |
| 2 | `def` | [mkHCongrWithArity'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/mkhcongrwitharity.md) | 36 | `declaration-track:307f7e31358bb5ab0678f5b016a17ff6ab022d27e26f1cb7f7d9fd9ac518ebab` |
| 3 | `class` | [FastSubsingleton](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/fastsubsingleton.md) | 103 | `declaration-track:0d7d8d7ab6b6c79768c2743f0f9bdd8aca009113eb7e4b129c5e7f1f13f255c4` |
| 4 | `class` | [FastIsEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/fastisempty.md) | 108 | `declaration-track:1eb244997b0cf5bfa3334931fef1a721f8b5424dbcce562f00c5170ca888dd15` |
| 5 | `theorem` | [FastSubsingleton.elim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/fastsubsingleton-elim.md) | 111 | `result-track:6f1a22d8a51a0ac48da84864a94859076826b45161912a3be6d8a6066ad37c54` |
| 6 | `theorem` | [FastSubsingleton.helim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/fastsubsingleton-helim.md) | 114 | `result-track:871e653b982435045329a3be37a610f648b86bf2d5dfa09f9bc0f22d15295fd3` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/instance-source-edition-2.md) | 119 | `declaration-track:29eb8a015cfb262bf89250b3c23b0ce1d39fdeca6858dcb3a8e7fe63cefdc473` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/instance-source-edition-5.md) | 122 | `declaration-track:8149a8be317a665d3a629a36c4a3cb7f7d599c817a707c427a8747f9270f8594` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/instance-source-edition-6.md) | 124 | `declaration-track:a451188d61ff8cb429821359acd6d5a289fe4c4a5dd25bdf0066486cd0b19f38` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/instance-source-edition-10.md) | 126 | `declaration-track:fadeadfc07bcb5e41702f2f3f8df5541d794371dfaa7fd91114994bc8d7c2025` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/instance-source-edition-4.md) | 128 | `declaration-track:800c9769fb92fc03a55bf85458664fd3f46fe9407149f5b46e25bcadceb0ab31` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/instance-source-edition-7.md) | 130 | `declaration-track:e88487f671950f24e687bb139c01288cbc90bc83e513a5e475ec83cd66819779` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/instance.md) | 132 | `declaration-track:0a46601f99841036cafef9bc3533753332018d58c56611195dd8c2953ce1c9dc` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/instance-source-edition-3.md) | 134 | `declaration-track:57934d2c8d4859ab0912c3190afbb005b8c5e7805eae8c9bacc8df81828485d9` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/instance-source-edition-9.md) | 136 | `declaration-track:fabb9533a473f9e67e330a6d2638e9648ea307cffc263c804f55b5f8961de841` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/instance-source-edition-8.md) | 140 | `declaration-track:f57af2875f2b676457552b55f714950a8aeca1754c65cae17e38fb6c44870b00` |
| 17 | `def` | [withSubsingletonAsFast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/withsubsingletonasfast.md) | 150 | `declaration-track:68580a2365864d7d4d3189cd0e94368ddf76afb373b0564d4e2d73cd45dbc93c` |
| 18 | `def` | [fastSubsingletonElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/fastsubsingletonelim.md) | 165 | `declaration-track:b62759d8a238e13a3e1929a2d41d78a1328d40db15900b3f47bf36aa65ee24b4` |
| 19 | `def` | [mkRichHCongr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MetaCongrTheoremsPublic.lean/declarations/mkrichhcongr.md) | 220 | `declaration-track:c516d39676b989fabe6a3b01451d4a8287a5466272a3fdcdd5e6569775e00277` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2263c7bde16a47d4cb5c2c26415b8d7cebacdd9d6592ec1fc5c72a6fe777f3b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2361df2bb6076ae7b4184526e06e0ea38096bbdcc13d3af5882c9fdc2455df4c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2361df2bb6076ae7b4184526e06e0ea38096bbdcc13d3af5882c9fdc2455df4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
