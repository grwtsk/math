# Verification target: Spine Foundation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ad38de01d7f3195acd5a7c79d512b8fae3c6359",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f5370696e65466f756e646174696f6e2e6c65616e/Variant60e631f3680bad68dfbe9a1b3fccdb0d1de0017309161bb14f7742b3e591f180.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ad38de01d7f3195acd5a7c79d512b8fae3c6359`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f5370696e65466f756e646174696f6e2e6c65616e/Variant60e631f3680bad68dfbe9a1b3fccdb0d1de0017309161bb14f7742b3e591f180.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f5370696e65466f756e646174696f6e2e6c65616e/Variant60e631f3680bad68dfbe9a1b3fccdb0d1de0017309161bb14f7742b3e591f180.lean.json)

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
| 1 | `inductive` | [SpineStage](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/spinestage.md) | 7 | `declaration-track:82af0d96cc0c5b3e30b001a09a370304667f0c924b1bae0f8c622ec344f917a7` |
| 2 | `def` | [stageRank](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/stagerank.md) | 18 | `declaration-track:ed18fadb1d05c41fdf635e062e640173d0807fdc36d9d0273ae68b7134fec54d` |
| 3 | `inductive` | [TheoremLevel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/theoremlevel.md) | 28 | `declaration-track:6b3ba747183418d7e9b18934ad8274b08c006d42e1d8349969d9393701513b2f` |
| 4 | `def` | [theoremLevelRank](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/theoremlevelrank.md) | 38 | `declaration-track:c39e045084c365da08cd15721c330c53f8f0e9d655512a59c546dff6f0b0f2f6` |
| 5 | `def` | [isStructuralLevel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/isstructurallevel.md) | 47 | `declaration-track:b355ada364d29e49a9a7ca0b3dd2b8bd9805f5f30678b0bc3ef7a440d586f43a` |
| 6 | `theorem` | [example_level_is_not_structural](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/example-level-is-not-structural.md) | 52 | `result-track:b552232c723b6817341771562bc86aba1db95409a416def79096807706a6ce13` |
| 7 | `theorem` | [functorial_level_is_structural](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/functorial-level-is-structural.md) | 55 | `result-track:6eff4d47c4ede95a6f3dfde34f6e000b404c183d312b412f2427cef483e17887` |
| 8 | `structure` | [ThinkStructure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/thinkstructure.md) | 58 | `declaration-track:b73a1219f6962246deedf5e593d0b8fd29d20e03ca1a97501308fd527d0d78d5` |
| 9 | `structure` | [ThinkMorphism](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/thinkmorphism.md) | 65 | `declaration-track:c487b8d18344e0f476bfcde6890c077d5cc0d492c42d2852437774c1a5b5bcc5` |
| 10 | `structure` | [CategoryObligations](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/categoryobligations.md) | 72 | `declaration-track:aa8b8fffc0622e4b03638a4c57780b8f6f038eff35a6a4e92cc275426855b3c4` |
| 11 | `def` | [CategoryReady](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/categoryready.md) | 80 | `declaration-track:3b9ad27a0f1a8491d1a8d6f2dbc856c63e2fcf35575d39d7cda568e9d1b80eb8` |
| 12 | `theorem` | [category_ready_requires_morphisms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/category-ready-requires-morphisms.md) | 88 | `result-track:bfaea81e0a7982c531d45a8cacc8860192bb000b98e72c6618e1c8b5d942ca11` |
| 13 | `theorem` | [category_ready_requires_composition_laws](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/category-ready-requires-composition-laws.md) | 94 | `result-track:c4fd0c40bb25800d5ec9f2235a9bd039885af5171383489429b63e6825b086c8` |
| 14 | `structure` | [ClaimSpineRecord](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/claimspinerecord.md) | 100 | `declaration-track:d407e6847b775169d42d344d66a10be5d572097026f589f2de20a098d8e8b275` |
| 15 | `def` | [SpineReady](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/spineready.md) | 110 | `declaration-track:dc7a831b676aebeb012dc113cb35edb47b32cbd80d6ca7ece23cab60607c16e1` |
| 16 | `theorem` | [spine_ready_requires_ambient_category](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/spine-ready-requires-ambient-category.md) | 120 | `result-track:849e89236c3aa91d70b8af4cb4ea8f0b144082561053923e9c5abd2f82159167` |
| 17 | `theorem` | [spine_ready_requires_reusable_mechanism](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/spine-ready-requires-reusable-mechanism.md) | 126 | `result-track:cd3df7ab8fa03b5dc96021efd9ec3e6efd39da422e02946fbd295f1d11fa185a` |
| 18 | `theorem` | [spine_ready_requires_authority_status](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SpineFoundation.lean/declarations/spine-ready-requires-authority-status.md) | 132 | `result-track:00ade1890f97bb5aba234386afac8fb559b94e703b7d5279e58726bf6aadc98f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31cdda68f46ae06a79e9453e9cdcfaa642656959fc08fa9ce78849abae564ac1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f5370696e65466f756e646174696f6e2e6c65616e/Variant60e631f3680bad68dfbe9a1b3fccdb0d1de0017309161bb14f7742b3e591f180.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f5370696e65466f756e646174696f6e2e6c65616e/Variant60e631f3680bad68dfbe9a1b3fccdb0d1de0017309161bb14f7742b3e591f180.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
