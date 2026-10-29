# Verification target: Path Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9428659d26be33e4093781f8190a902787e27cae",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant4c790df2482a45e71bd5c042a64102c39f0a751e26419cdbf0c3d073946c0afa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9428659d26be33e4093781f8190a902787e27cae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant4c790df2482a45e71bd5c042a64102c39f0a751e26419cdbf0c3d073946c0afa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant4c790df2482a45e71bd5c042a64102c39f0a751e26419cdbf0c3d073946c0afa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Control.Do` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Name` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.String.TakeDrop` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.List.Monadic` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.Option.BasicAux` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Macro` — import line 25; external provider; requires a separately pinned dependency.
- `Init.Data.String.Length` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forEachModuleInDir](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/foreachmoduleindir.md) | 41 | `declaration-track:5070167e9530b74a102a03a042eb092b4f84399213272b6aa5cf1411e7225085` |
| 2 | `def` | [realPathNormalized](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/realpathnormalized.md) | 50 | `declaration-track:aafc64f1198f141abd35116e69d440979afd25984d9f452f18e7050e9e0c2486` |
| 3 | `def` | [modToFilePath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/modtofilepath.md) | 53 | `declaration-track:2c409283d1407b6f6ae0611a7388ca6233b3176bb3cfe4ba5ce5d54fc5a837f0` |
| 4 | `abbrev` | [SearchPath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/searchpath.md) | 62 | `declaration-track:57e316b08bfa189952f74c82cb96669ca5945b0923e82892003645c90b8b3beb` |
| 5 | `def` | [findWithExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/findwithext.md) | 69 | `declaration-track:5b5791945d66ea10672c36eb26b02c9e21477e76e75dca4fde6c3e30b50b23d3` |
| 6 | `def` | [findModuleWithExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/findmodulewithext.md) | 76 | `declaration-track:85d8e7dde59ada781ce3d8e62b858351305a110ab52088ad1b66f9330714e6fe` |
| 7 | `def` | [findAllWithExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/findallwithext.md) | 82 | `declaration-track:faef646147ff6835042d48819c5f0cc040eb182f95c45eec5afe6fe3486b0f0b` |
| 8 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/builtin-initialize.md) | 91 | `declaration-track:b1ea0c74508056437fd467c7ab1088fdf939c06b51c5be805c641059d16796db` |
| 9 | `def` | [getBuildDir](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/getbuilddir.md) | 93 | `declaration-track:15899349853cef0fb2a9392e910378689889f755e3daebdcfdb4cca1be021107` |
| 10 | `def` | [getLibDir](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/getlibdir.md) | 96 | `declaration-track:9604ff88ac2e533b31f2d7daba933d91d36b89e8546f583932bd7b280efde7fa` |
| 11 | `def` | [getBuiltinSearchPath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/getbuiltinsearchpath.md) | 103 | `declaration-track:7ffa017e56aef7072bdb68f00c0121e9d98d6d8b056b8e12db5f0af09b4241c4` |
| 12 | `def` | [addSearchPathFromEnv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/addsearchpathfromenv.md) | 106 | `declaration-track:ac53582b06479f6fd04611b10b3d00dd56e0bc4029079ced4b2f4b6ac30502d2` |
| 13 | `def` | [initSearchPath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/initsearchpath.md) | 116 | `declaration-track:2e7aa900b989b6f52668d79202af5eac3d77628da337abf6766329a16208bc0e` |
| 14 | `def` | [initSearchPathInternal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/initsearchpathinternal.md) | 121 | `declaration-track:638995882be215ff690a36ecf79f07886c7c64b014cb75606ebabdee37105434` |
| 15 | `def` | [findOLean](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/findolean.md) | 125 | `declaration-track:4daf72abe7fb6e945686bbe7f91a3f059eed0807c47029536aedd9b7f6b2043d` |
| 16 | `def` | [findLean](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/findlean.md) | 136 | `declaration-track:391857bfe049b7b56b194c9495f76fd157854eb8adc5fe09e40d65968e3ca684` |
| 17 | `def` | [getSrcSearchPath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/getsrcsearchpath.md) | 145 | `declaration-track:7d3c23b5954a1ed08e6362dc61728385c4421a838903788fd34fb5d81f72e9cb` |
| 18 | `def` | [moduleNameOfFileName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/modulenameoffilename.md) | 154 | `declaration-track:b088f284f177a0d29f0c2ecbb8d4e8943f2d685e4b62dfaae5762cd18d70d44a` |
| 19 | `def` | [searchModuleNameOfFileName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/searchmodulenameoffilename.md) | 170 | `declaration-track:8031b662bec00506662a09933c4558424a525d6f856257194b31a9f9efe5653c` |
| 20 | `def` | [findSysroot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathNamespacedPublic.lean/declarations/findsysroot.md) | 188 | `declaration-track:a52b46696fccba7227af339ac6116b45f1b7b189c583b19cb3f60776f2ff30bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e909cee8b96496a358d26038f71e9e8f778ef07ead7c847286c21bf06dcd6e30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant4c790df2482a45e71bd5c042a64102c39f0a751e26419cdbf0c3d073946c0afa.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant4c790df2482a45e71bd5c042a64102c39f0a751e26419cdbf0c3d073946c0afa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
