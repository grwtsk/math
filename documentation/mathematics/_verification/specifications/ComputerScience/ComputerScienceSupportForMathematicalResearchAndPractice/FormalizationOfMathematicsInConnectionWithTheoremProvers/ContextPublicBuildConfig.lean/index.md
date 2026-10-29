# Verification target: Context Public Build Config

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c4522cf2f72cbfd3f5f2fcfea8d956c9c8bd3e5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant6ef3b48c7c40c00530f57eeab7c236fe70493294aef216dd703f2dfc5dc28a9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c4522cf2f72cbfd3f5f2fcfea8d956c9c8bd3e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant6ef3b48c7c40c00530f57eeab7c236fe70493294aef216dd703f2dfc5dc28a9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant6ef3b48c7c40c00530f57eeab7c236fe70493294aef216dd703f2dfc5dc28a9c.lean.json)

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
| 1 | `structure` | [BuildConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/buildconfig.md) | 17 | `declaration-track:6867e1c18b73a0bff8d4b94b23efe5feb95daea48a08ce3fddb27d7e520db04c` |
| 2 | `def` | [BuildConfig.showProgress](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/buildconfig-showprogress.md) | 48 | `declaration-track:f8406e530287cee281b55953339ca796ac8c96c69b600fa277254115f68e5007` |
| 3 | `def` | [JobQueue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/jobqueue.md) | 53 | `declaration-track:ae153af8d6c6d4e3530b642ae4b89d5b8d8fba630dc9a67dfe74967eb8465ff6` |
| 4 | `def` | [mkJobQueue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/mkjobqueue.md) | 56 | `declaration-track:e713eabdeb05dd3ba37360ef0f270295c84cfa1076563504f506cf2a2e1f0b23` |
| 5 | `structure` | [BuildContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/buildcontext.md) | 60 | `declaration-track:87b86f77c6ec626539e478495d4ff79aefd9772d32a9efcf74394ebf2df889b0` |
| 6 | `abbrev` | [BuildT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/buildt.md) | 70 | `declaration-track:ab18aa6bee885ad512802323b9817116c17f73192a5d7de8ca13d1d9ce0802b2` |
| 7 | `abbrev` | [MonadBuild](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/monadbuild.md) | 73 | `declaration-track:caf5cda1bb2eee4592a89116aef5c359e64af773c9bf99f9492b40e796b3157a` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/instance.md) | 76 | `declaration-track:769ff080abda1d35ac7170fb1b1b00f37fa734c336ba49ff2bc93f2d085525f6` |
| 9 | `def` | [getBuildContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/getbuildcontext.md) | 79 | `declaration-track:ce808163fc8abb62197e547ca0e8d3b40bda209e6a04f5b0a7bcbc481f68ac5d` |
| 10 | `def` | [getLeanTrace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/getleantrace.md) | 82 | `declaration-track:36fbebb3276b8cb8f303980c8a6cc33841d613a2900e0c01a724bcf13b3c277a` |
| 11 | `def` | [getBuildConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/getbuildconfig.md) | 85 | `declaration-track:b61c1f7613bfa46f33ce280163b41fa8a69a4350fc356080e16a8d257ba4c507` |
| 12 | `def` | [getIsOldMode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/getisoldmode.md) | 88 | `declaration-track:de0cb4899f3f64cdb8d40f7c1cd6503dd132b43ae47e61565dc95fa81516fbe9` |
| 13 | `def` | [getTrustHash](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/gettrusthash.md) | 91 | `declaration-track:8774f376b114a091b53208e47e24b731ff579e26120cca5f8248878969179444` |
| 14 | `def` | [getNoBuild](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/getnobuild.md) | 94 | `declaration-track:fa5e254789fc7e7ade8b5b82bdde14ddd23c4dbbaf683ae6cb998a7241b485d1` |
| 15 | `def` | [getVerbosity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/getverbosity.md) | 97 | `declaration-track:7705f20c9099f079697cf6249ce7be002fd3996b4d093a5cdf50f240e13e7fdd` |
| 16 | `def` | [getIsVerbose](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/getisverbose.md) | 100 | `declaration-track:334c14f99533d08fb069c45521650cf45808be7173b70484ea33303a4abda0fd` |
| 17 | `def` | [getIsQuiet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/getisquiet.md) | 103 | `declaration-track:23243a40aa134b3b278570bb7d041e6e88b604cdd07fa4c10927e31cdc9e76cd` |
| 18 | `def` | [getLeanOptOverrides](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextPublicBuildConfig.lean/declarations/getleanoptoverrides.md) | 106 | `declaration-track:f4a5d4231fbd14da8bd704adbe75eea3c0cc1f4e8856b7db27acb80d46bb5674` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12ea01f9ea177fc9c309cdc8bcebb048fc39c992946bbfeec673a50d91d7231d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant6ef3b48c7c40c00530f57eeab7c236fe70493294aef216dd703f2dfc5dc28a9c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant6ef3b48c7c40c00530f57eeab7c236fe70493294aef216dd703f2dfc5dc28a9c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
