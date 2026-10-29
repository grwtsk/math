# Verification target: Materialize Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25453738b4395e586ca7d246d82ed76a70cdc1ce",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25453738b4395e586ca7d246d82ed76a70cdc1ce`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.Git` — import line 12; external provider; requires a separately pinned dependency.
- `Lake.Util.IO` — import line 13; external provider; requires a separately pinned dependency.
- `Lake.Reservoir` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [updateGitPkg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/updategitpkg.md) | 32 | `declaration-track:55c74478c9f6b704b741bce6b22413b01adc8cae19cbc6a7c0a7a48ad2a09305` |
| 2 | `def` | [cloneGitPkg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/clonegitpkg.md) | 49 | `declaration-track:419cc157e6f65623bafd51b05ed128cf5ffc8d93ea70403cf5cb0c232af9a1ff` |
| 3 | `def` | [updateGitRepo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/updategitrepo.md) | 64 | `declaration-track:13baf118f90a74df12d5e785e2bb1178be2ead6517ba9f4d19da1faafb997600` |
| 4 | `def` | [materializeGitRepo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/materializegitrepo.md) | 88 | `declaration-track:c0195215bd5022601a76c0e73ec7731c90088cd15c763fc8849c6dfb1ef8b2c6` |
| 5 | `structure` | [MaterializedDep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/materializeddep.md) | 96 | `declaration-track:ea652715a398cd9d2085e6277ad18016c9536200fbf6a9f394d00ff02170a465` |
| 6 | `def` | [name](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/name.md) | 114 | `declaration-track:3e321531409066e599a345cb34c0778139ea55711ca6dc7f56040e1634edab35` |
| 7 | `def` | [prettyName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/prettyname.md) | 117 | `declaration-track:3bf3bf30e79246f7dadead996866a9c2fb9d7089c03e4a9d49bc8f5791fb7303` |
| 8 | `def` | [scope](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/scope.md) | 120 | `declaration-track:7712abb86c91791dd901d553824c9250016706da5875641ec659d6c6883f6c32` |
| 9 | `def` | [relManifestFile?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/relmanifestfile-source-edition-2.md) | 124 | `declaration-track:6b2477b02ca19cf43e36f5e59195e9a2dc5762954b7f5667c6051a72e35436d6` |
| 10 | `def` | [relManifestFile](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/relmanifestfile.md) | 128 | `declaration-track:2ad40d8f881b7bb969959d96684cecba433451e94a51faf3145873627d50ea7b` |
| 11 | `def` | [manifestFile](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/manifestfile.md) | 132 | `declaration-track:570d5dae77026a39f64d9ef3f048317e5c7b1e2449e8d34719d102296bd49ff8` |
| 12 | `def` | [relConfigFile](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/relconfigfile.md) | 136 | `declaration-track:dcac558fd1888ada60c6fcff9f385079530af6880a6308e869a9dc717b8ffd4e` |
| 13 | `def` | [configFile](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/configfile.md) | 140 | `declaration-track:30459d66e0bb7c35416d8a33df1bd9dbd963621853a9e7ff2605e187a63c22e4` |
| 14 | `def` | [fixedToolchain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/fixedtoolchain.md) | 143 | `declaration-track:0250072d53ef92e4b132905abd7df51e591e834b4501c48af9304c3ba4ae2847` |
| 15 | `def` | [pkgNotIndexed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/pkgnotindexed.md) | 150 | `declaration-track:f494fba4c4f28ef768b95a83a71d96366004f726bab86b8c3f9b6e0414e1ae9a` |
| 16 | `def` | [Dependency.materialize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/dependency-materialize.md) | 174 | `declaration-track:f5f4a733f146066723a33a85c9c1c35d4b2eb54cc61e0723917a066ed4467c3d` |
| 17 | `def` | [PackageEntry.materialize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializePublic.lean/declarations/packageentry-materialize.md) | 237 | `declaration-track:47bf4c98e16274bdc432fbefad1947963250add649149b6512cd8935e6fde333` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c03da8e09b884974285d74ad9eb6cd78dcd975ce7fdbeb91b4202660e5a61ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
