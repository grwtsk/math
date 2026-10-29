# Verification target: Context Namespaced Public Build Config

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3e562a3911103d8515b9e5f766fc79a3fcefda5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianta9b8660d5cb93a2aa5c5df32a3fb9f302eaf3edd218e18ad65eb7b1de1b08639.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3e562a3911103d8515b9e5f766fc79a3fcefda5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianta9b8660d5cb93a2aa5c5df32a3fb9f302eaf3edd218e18ad65eb7b1de1b08639.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianta9b8660d5cb93a2aa5c5df32a3fb9f302eaf3edd218e18ad65eb7b1de1b08639.lean.json)

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
| 1 | `structure` | [BuildConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/buildconfig.md) | 25 | `declaration-track:dca07abfef69adbff13ab66eeaeabf732bbe087e5e8ab4f650d660507abefbe5` |
| 2 | `def` | [BuildConfig.showProgress](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/buildconfig-showprogress.md) | 56 | `declaration-track:7fe1efc77b23df368eda001f3658e523bfdfeda50bdbaf614fcb613d33355a3f` |
| 3 | `def` | [JobQueue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/jobqueue.md) | 61 | `declaration-track:55715625e2d3a715e7c9f3a9e5ee0cd121c00f506b2335fdca11238d2d849187` |
| 4 | `def` | [mkJobQueue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/mkjobqueue.md) | 64 | `declaration-track:a7750b4b8c1ab9ba8f08acb40e109efbe14c8b6349f2595f33ce0ec29e651489` |
| 5 | `structure` | [BuildContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/buildcontext.md) | 68 | `declaration-track:68107de0968296fff54bcfce3c4d2c008bf66043dbfa6878808b374cab9ed6b7` |
| 6 | `abbrev` | [BuildT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/buildt.md) | 78 | `declaration-track:93af55aa22d008a1218dab1fef246668e44f6c79eb07c1d8c317dc238f2087ba` |
| 7 | `abbrev` | [MonadBuild](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/monadbuild.md) | 81 | `declaration-track:b4db0d4eea1a8a5f69a4aab0f6f525cf59b0c8a946bd3824382bd51cc425b636` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/instance.md) | 84 | `declaration-track:c5f94dd7daca962121b868489cea6b6eb59415c62987b0082eaafa75e74506b8` |
| 9 | `def` | [getBuildContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/getbuildcontext.md) | 87 | `declaration-track:89e0f8002eedc2b7e72cb4334a6bc1520ef4261b50735d263739233377d57948` |
| 10 | `def` | [getLeanTrace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/getleantrace.md) | 90 | `declaration-track:4a3afe95eab6a59a3227c298e8c0ee194d0292c99d20a12bd2a5ef13d54607f2` |
| 11 | `def` | [getBuildConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/getbuildconfig.md) | 93 | `declaration-track:309489361c514a36720be337ed5602ddcdcdc43dad460a8e945a94137e7b24dc` |
| 12 | `def` | [getIsOldMode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/getisoldmode.md) | 96 | `declaration-track:4f3ad70b4412752b3e7467b67325ea62466afe569209220619c49d11a1a70010` |
| 13 | `def` | [getTrustHash](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/gettrusthash.md) | 99 | `declaration-track:019b97d41a5bd54e69fc1bdd8460c7586c1b9004134e15ddd5987a7b7af5bfd9` |
| 14 | `def` | [getNoBuild](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/getnobuild.md) | 102 | `declaration-track:8d8e438a8305b3ef2357eb50d447ebbff231ec0aa78f9532819a07f399b5ccbf` |
| 15 | `def` | [getVerbosity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/getverbosity.md) | 105 | `declaration-track:a6bee0a5ee08f61b418e4dcd7930db71c476fd73b67bde39e725f8f2cfd76076` |
| 16 | `def` | [getIsVerbose](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/getisverbose.md) | 108 | `declaration-track:f7e890edcaf84bad44cc084d301decac4ea2a4ef03afcad0e2a19a1d8aaa1c6a` |
| 17 | `def` | [getIsQuiet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/getisquiet.md) | 111 | `declaration-track:9ee020eafa5c6ea8986b1c1e6d705ba252cf384d67635579bb733dda2acb87de` |
| 18 | `def` | [getLeanOptOverrides](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContextNamespacedPublicBuildConfig.lean/declarations/getleanoptoverrides.md) | 114 | `declaration-track:825e7fb20a63d6c47b90523b2724fddea6f62fd473ccd035b5c03dc6e1dd7053` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6eb68bf215475c6ef672ac5183fa6956c26b26dd05e6432446e3380bdf0a65d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianta9b8660d5cb93a2aa5c5df32a3fb9f302eaf3edd218e18ad65eb7b1de1b08639.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianta9b8660d5cb93a2aa5c5df32a3fb9f302eaf3edd218e18ad65eb7b1de1b08639.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
