# Verification target: Pass Manager Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e915b579881a9b54c9c3b2fec617fdef20a1590",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant4ebd001f4a2e512e2066999357d0c6244b17fe0ea8de269aaf9777f779bdd8ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e915b579881a9b54c9c3b2fec617fdef20a1590`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant4ebd001f4a2e512e2066999357d0c6244b17fe0ea8de269aaf9777f779bdd8ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant4ebd001f4a2e512e2066999357d0c6244b17fe0ea8de269aaf9777f779bdd8ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Phase.toNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/phase-tonat.md) | 17 | `declaration-track:fc33546abe38a32551abb3f4415b1a3a0bef8714ce60f6dbaed7f1b25832ab7f` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/instance-source-edition-4.md) | 22 | `declaration-track:951ee005d58c7a1f434fe4585a0683f0bf4712128e546fd465f476504183b06a` |
| 3 | `def` | [Phase.withPurityCheck](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/phase-withpuritycheck.md) | 28 | `declaration-track:f82a0b759539239dbc7651ea0685f4160865ac639cb3186ca795a9a19d2fb104` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/instance.md) | 35 | `declaration-track:077d88d06063e84b63498ebf3b7618535c93aaadff220d302218b8e6efc1cc95` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/instance-source-edition-2.md) | 38 | `declaration-track:1bbf2755f2fc5c9de1055b57201721ff33a8160d3f3a451cacf138e387b6a728` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/instance-source-edition-6.md) | 41 | `declaration-track:fff8c7f1f97af346672f4fb5e736e19dd76239224030a1f75ae17bdff62ce987` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/instance-source-edition-3.md) | 42 | `declaration-track:69c54d544503aea8a0b89295378375e177cc1a154ad0aa08594a9d5cb369b63e` |
| 8 | `theorem` | [Phase.le_refl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/phase-le-refl.md) | 44 | `result-track:d5222a56f175ed6121010157d7d28637f873ed0eb76f88662fe8227ca1d228f3` |
| 9 | `structure` | [Pass](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/pass.md) | 51 | `declaration-track:5cc4aeecba691ac88e6352789246ff8b33b173a60b83037761b925766d74816c` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/instance-source-edition-5.md) | 81 | `declaration-track:f79462d25b6bcb6d4258adec46aa9e55d8df55ec06d374e9c01ada3436dc8443` |
| 11 | `structure` | [PassInstaller](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/passinstaller.md) | 88 | `declaration-track:59a4b294dc37c89a908d62084d0d9b76eb0d706cd25859f178bedd90ec92e7a2` |
| 12 | `structure` | [PassManager](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/passmanager.md) | 103 | `declaration-track:8bafd3ee262253d4d90a800c4ba5618a76c8ef1598396f06bb6c5a13e239c696` |
| 13 | `def` | [mkPerDeclaration](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/mkperdeclaration.md) | 119 | `declaration-track:3064fdf9522388875afef5747bcc57f15012006a0aa68922198125210d44cb0a` |
| 14 | `def` | [validatePasses](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/validatepasses.md) | 130 | `declaration-track:6d6271f923ff8e91e27c408be200717a347538196c7b94e48158c98e013336b7` |
| 15 | `def` | [validate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/validate.md) | 135 | `declaration-track:edaf5c8a518adb39a3edcb7ce995352a0c0d95f05f5404fde5ec4e2810be854b` |
| 16 | `def` | [findOccurrenceBounds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/findoccurrencebounds.md) | 140 | `declaration-track:db60bd9444b47322bd57bbbe524514ad4a7d5cf31d22e1618e90dd204d0c1d7d` |
| 17 | `def` | [installAtEnd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/installatend.md) | 154 | `declaration-track:65b0c71ebb40101ea7484585c96fdbfb331cea8e4649abb18b691f5514fc4eef` |
| 18 | `def` | [append](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/append.md) | 158 | `declaration-track:6de847a5954f390de1e1f43a01457d074b7121fb2e3cf60bce846ecd2436d346` |
| 19 | `def` | [withEachOccurrence](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/witheachoccurrence.md) | 162 | `declaration-track:bc34f77056a3046435f10c17c7d1b49d298e49540a712044693aeed13e368af2` |
| 20 | `def` | [installAfter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/installafter.md) | 174 | `declaration-track:f11479ac059a1db5b19f4fd1bd0fd4ffec57c681ff35b105bd3108b288932f2e` |
| 21 | `def` | [installAfterEach](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/installaftereach.md) | 183 | `declaration-track:be3bf0f1da9cbf5d8985b6d9c7310e73ab641bfdc7e4cdc89d300283935aa190` |
| 22 | `def` | [installBefore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/installbefore.md) | 186 | `declaration-track:89b7aa22501ead3d80ffbb2211f2048939bc30926d30c4862c24bad03ebbadd7` |
| 23 | `def` | [installBeforeEachOccurrence](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/installbeforeeachoccurrence.md) | 195 | `declaration-track:d806c6005824f9ae77fd08d7c9ac1f1e9ecdb6026664fc9fa7f581b4b3c80aa1` |
| 24 | `def` | [replacePass](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/replacepass.md) | 198 | `declaration-track:19e0acc08bece2325543ede4a35ac9e2775a04aeb893c8538b766c6456cdb6bd` |
| 25 | `def` | [replaceEachOccurrence](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/replaceeachoccurrence.md) | 204 | `declaration-track:7a6bb5ede8aa43e85593e8fdf629e9788a8e5ef352d948ecb5c944db10112a74` |
| 26 | `def` | [run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/run.md) | 207 | `declaration-track:7709ed156f345e238c712d648b7036516a45a3310e09ea6d1c10f117b30198a0` |
| 27 | `def` | [getPassInstallerUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/getpassinstallerunsafe.md) | 216 | `declaration-track:5cdc7fb6b22e48ac30d5bc1e431113658ce5c5f1885895689c7b588e8db26f54` |
| 28 | `opaque` | [getPassInstaller](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/getpassinstaller.md) | 220 | `declaration-track:ff13fba198c51e4b99402f8116884f512473783fdde24f452b4cebe7747ac3c6` |
| 29 | `def` | [runFromDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassManagerPublic.lean/declarations/runfromdecl.md) | 222 | `declaration-track:079e1608fc12a1d7f02e3becca32aeaf1f998d6912d8247b653a721e7d0d8992` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=889dc3417a58b4691214fd1fb5dd0fe2cbc036bb9ebb05fdbf7d0bc87a54080e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant4ebd001f4a2e512e2066999357d0c6244b17fe0ea8de269aaf9777f779bdd8ee.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant4ebd001f4a2e512e2066999357d0c6244b17fe0ea8de269aaf9777f779bdd8ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
