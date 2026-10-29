# Verification target: Util Export

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee0db3e6314712318d32174285619921f9411e6c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc73d5e18dbb2aa444ef84986dafac7fecca9fae784a02c95cc33b78414357283.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee0db3e6314712318d32174285619921f9411e6c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc73d5e18dbb2aa444ef84986dafac7fecca9fae784a02c95cc33b78414357283.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc73d5e18dbb2aa444ef84986dafac7fecca9fae784a02c95cc33b78414357283.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.CoreM` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [MethodsRefPointed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/methodsrefpointed.md) | 24 | `declaration-track:9cfe1644cde980376d34237c4b136d6793da9623db0b1c01b7608c636f8182fa` |
| 2 | `def` | [MethodsRef](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/methodsref.md) | 26 | `declaration-track:052289f0fcb58ad9a8604302f6d2caf99068d22edf681b278f3f16d3bdc23ac7` |
| 3 | `inductive` | [Entry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/entry.md) | 28 | `declaration-track:8c4306d2c4a44ac004e46ca129071d7cfa416e6c5268f20538f0655eb53c064d` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/instance-source-edition-2.md) | 35 | `declaration-track:50ef76b0e9a57e15d3af99fbbf55e40e642cbc3e73bf124d2b65db1f62a46469` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/instance.md) | 36 | `declaration-track:1edc7fd2123bfee985d8077cd4b48198e53833895d87821a918520b9812071c7` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/instance-source-edition-6.md) | 37 | `declaration-track:a5ea4e7de41c60351a816b7a24ebbb2df2ccb571bddef7d5e12f485538a0b242` |
| 7 | `structure` | [Alloc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/alloc.md) | 39 | `declaration-track:baadb953071cb01892d4c3c03bfe21af065fbec32bd76811fc42a6a0f7f0b3da` |
| 8 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/state.md) | 44 | `declaration-track:1d4f85a19fdd2fde52140599824b51e990ad2ba019617d392c52a5c68cc67d93` |
| 9 | `class` | [OfState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/ofstate.md) | 52 | `declaration-track:c442f0b40558cd0979af314b3c2c455b63bbb0d8bc0817e6564f6751a6963a24` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/instance-source-edition-4.md) | 56 | `declaration-track:95984169c88faee222e0c54ced89cbb1d0ad0cc152928f533ae90e5b7537565f` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/instance-source-edition-5.md) | 60 | `declaration-track:98563cdd6e8bf24608722c6eef236d0855c7cb43902bda0b2e15c82250c90255` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/instance-source-edition-3.md) | 64 | `declaration-track:52f3095d7de61750aa613e3028f25d5bf3cbeea795abd2cda1f08e959bcbcddd` |
| 13 | `abbrev` | [ExportM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/exportm.md) | 70 | `declaration-track:e26347d7c6342b3e787b291b3e689107ee6d07d5db99a6c49d62a7d6a2fc5998` |
| 14 | `def` | [alloc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/alloc-source-edition-2.md) | 74 | `declaration-track:be30ff6cbaf5cca5984dd780da889422eb1047cad2745146267b75053c83c6a8` |
| 15 | `def` | [exportName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/exportname.md) | 79 | `declaration-track:9a4a12f060b48f15d12fe179d2487bd1669799ab3bd0ec57683015ad9d71f0e1` |
| 16 | `def` | [exportLevel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/exportlevel.md) | 87 | `declaration-track:03b0724ce4fca5cf9e2a835b4bf75f8b46dcd82b9b3b69e5efabee9f9948d158` |
| 17 | `def` | [biStr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/bistr.md) | 102 | `declaration-track:4730bc53ad5d9d9fced078f09de492f42b70b9f143248700fed1defa631dd537` |
| 18 | `def` | [exportExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/exportexpr.md) | 111 | `declaration-track:1d6ef4ccb1cb3ab1ae4c4a1ee47ae378b63b541355830fa2457b2e2a02a9a1c7` |
| 19 | `def` | [exportDef](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/exportdef.md) | 142 | `declaration-track:6944f435d7bafc8686e6b4cb0cbfaf48ccc1e03866c999ca00366053866eba0b` |
| 20 | `def` | [runExportM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilExport.lean/declarations/runexportm.md) | 199 | `declaration-track:89bba4a67dd478728611cf2578d57193a98ef14656e3c8d17e06a77e70121f1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ee978d3f6a9c858e1c8d553fab6d3c43793cf70dfa623de44a04e3542ad8b83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc73d5e18dbb2aa444ef84986dafac7fecca9fae784a02c95cc33b78414357283.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc73d5e18dbb2aa444ef84986dafac7fecca9fae784a02c95cc33b78414357283.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
