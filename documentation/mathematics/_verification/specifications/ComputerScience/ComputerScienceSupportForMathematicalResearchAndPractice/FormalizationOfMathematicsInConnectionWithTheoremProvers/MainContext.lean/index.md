# Verification target: Main Context

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8560511ff73fbcd48e8d1abba2c22a976c52c393",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantbb97e3e56d35431cfc7fbef9153935f85e82cde8cc0fc588ceb0119022646cec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8560511ff73fbcd48e8d1abba2c22a976c52c393`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantbb97e3e56d35431cfc7fbef9153935f85e82cde8cc0fc588ceb0119022646cec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantbb97e3e56d35431cfc7fbef9153935f85e82cde8cc0fc588ceb0119022646cec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Comparator` — import line 7; external provider; requires a separately pinned dependency.
- `Export.Parse` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/context.md) | 12 | `declaration-track:adf22f00505dc03f06d2acba34a69a3052e47bca3577f89b9e8e28f5890d1d1f` |
| 2 | `abbrev` | [M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/m.md) | 25 | `declaration-track:71c351eb6e08a8bda48cf32483d81fe5fd28eebdd0e8173a927f4738dadcceeb` |
| 3 | `structure` | [LandrunArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/landrunargs.md) | 27 | `declaration-track:27fbf42ecb6176400cae70fe1d1d2cd8f6a87aed06e908ead022c1b88f22dbab` |
| 4 | `def` | [getExternalKernels](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/getexternalkernels.md) | 37 | `declaration-track:15b09f2a800c265acc4a02e77bab26a26717b3b0661002e0ee625d919e3875f7` |
| 5 | `def` | [getTheoremNames](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/gettheoremnames.md) | 40 | `declaration-track:d1903d7936f5ef779325a5a2ec29614c376a9de3214c24b1718df514697e6fc3` |
| 6 | `def` | [getDefinitionNames](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/getdefinitionnames.md) | 43 | `declaration-track:f0520d859a01a47a33b9e0024e8d758058975341f11f44d1486806101d393fc0` |
| 7 | `def` | [getProjectDir](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/getprojectdir.md) | 46 | `declaration-track:c498fa6196fb503a418725f961e23c8de57f99634184108b06a54c1eca1cc3a6` |
| 8 | `def` | [getChallengeModule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/getchallengemodule.md) | 49 | `declaration-track:2a5fed5ba407599a780847b2043d4fc7f290ee5104aa1c1cb96f8e2403b462bf` |
| 9 | `def` | [getSolutionModule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/getsolutionmodule.md) | 52 | `declaration-track:af7f2dfeab799cb29bcb851f2385d5004f5bae9fa69b75aca21ccd5b81dafabf` |
| 10 | `def` | [getLegalAxioms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/getlegalaxioms.md) | 55 | `declaration-track:d9e7b54fea364deadc96592511cb38f26d2348145117e4532a91cdc565f41b39` |
| 11 | `def` | [getLeanPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/getleanprefix.md) | 58 | `declaration-track:1f15f76916c92a9392659fa40e67f55a61387832d53838d01bdc798da2e24d66` |
| 12 | `def` | [getGitLocation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/getgitlocation.md) | 61 | `declaration-track:e038d2384af9d57799a83fe32f888303b18939e9baae9f25ce62df4848900552` |
| 13 | `def` | [queryGitLocation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/querygitlocation.md) | 63 | `declaration-track:b438573969badefda50acbcd86adce76f0a1431c88547f1cd645cee96c0cb2b0` |
| 14 | `def` | [queryLeanPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/queryleanprefix.md) | 71 | `declaration-track:f3d65d1169dfbc4a59ee26c3a4e4f271c71dc7507dda744f5b2a74d73f17fa17` |
| 15 | `def` | [buildLandrunArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/buildlandrunargs.md) | 80 | `declaration-track:179c762ed96d3e6c9c2fd7a9546a738775602eb580595b18a25cfb4f6568aa9a` |
| 16 | `def` | [runSandBoxedWithStdout](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/runsandboxedwithstdout.md) | 88 | `declaration-track:0e159689c23e24934f4add592acb3841a29e5e97bafe99807635e585171f9380` |
| 17 | `def` | [runSandBoxed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/runsandboxed.md) | 102 | `declaration-track:bb0f4d0e918fa50fc9849fd276c2e404533a7547694f37057fdd640cd948ca77` |
| 18 | `def` | [safeLakeBuild](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/safelakebuild.md) | 114 | `declaration-track:2a1d4d7fc2138a53beec3f92da49bec4519f4d60b612c6c1128d4c3bb284d000` |
| 19 | `def` | [safeExport](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/safeexport.md) | 134 | `declaration-track:a0b397ec1b0c2a3e4a8bb9ddfa6297dfd50aa1e0e38ce12da52c04b4bc34a9ec` |
| 20 | `def` | [runExternalKernel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/runexternalkernel.md) | 152 | `declaration-track:1ce647700feebf90b0ab8b8a4a8d2747234970c577170cafd0085d3892eca877` |
| 21 | `def` | [runBuiltinKernel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/runbuiltinkernel.md) | 212 | `declaration-track:b38392102f9532fec8081231eb9049029557d7c5bb35c177188319a39d8c5f28` |
| 22 | `def` | [primitiveTargets](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/primitivetargets.md) | 241 | `declaration-track:cbe3193bff576e9db75f594e52fdfe19c45fa0034b78559adfe2eb39f30fbabd` |
| 23 | `def` | [builtinTargets](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/builtintargets.md) | 276 | `declaration-track:933e9fbab8678bbaf41cbf01712517c2f7bb8d4fb1433f899cbef27b1cd43ba6` |
| 24 | `def` | [stringStream](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/stringstream.md) | 282 | `declaration-track:5fa281c8ede5d8ebf776efb2760b429466d99a8c7d97eef9571d14b21af63f95` |
| 25 | `def` | [verifyMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/verifymatch.md) | 288 | `declaration-track:f6e59ab1b2e6f76f5a9b7cc79bd2a3a4fbced95cc111bbf6c33ba5f9d4e569c2` |
| 26 | `def` | [compareIt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/compareit.md) | 304 | `declaration-track:9481b269887fa496f40f0737a0667ede48246c754cb7f5ce5fdf77efd03c6958` |
| 27 | `structure` | [Config](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/config.md) | 320 | `declaration-track:e71eb480acd2df276c710b2caf1cc0ff6f8458fc97193c5207e17aa86fc58fe3` |
| 28 | `def` | [M.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/m-run.md) | 330 | `declaration-track:1811a91a2214dabe2d723d8190346cc9d450b73c35dbadbc3334257e6d86ccda` |
| 29 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainContext.lean/declarations/main.md) | 369 | `declaration-track:d5ce3c2cd7637c5134b45a81c980ed44427b95bf08d9f56cb45d2efc65dcfda3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8360a8b520b8db4f86d969c97be668e97a1ec78c3943d6962b674dd20f95d107 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantbb97e3e56d35431cfc7fbef9153935f85e82cde8cc0fc588ceb0119022646cec.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantbb97e3e56d35431cfc7fbef9153935f85e82cde8cc0fc588ceb0119022646cec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
