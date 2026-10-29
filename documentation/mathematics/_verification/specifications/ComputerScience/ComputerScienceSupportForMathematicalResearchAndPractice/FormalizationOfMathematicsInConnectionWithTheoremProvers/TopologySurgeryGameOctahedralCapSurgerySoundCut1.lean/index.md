# Verification target: Topology Surgery Game Octahedral Cap Surgery Sound Cut1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abe265ce3d91f319a0b9e5f25156e0e2e3614266",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant75e6f75ea20464dd127a9a9484a398d09d33b1b9dba6f35293e1a6f38b040ccb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGameOctahedralCapSurgerySoundCut1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGameOctahedralCapSurgerySoundCut1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abe265ce3d91f319a0b9e5f25156e0e2e3614266`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant75e6f75ea20464dd127a9a9484a398d09d33b1b9dba6f35293e1a6f38b040ccb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant75e6f75ea20464dd127a9a9484a398d09d33b1b9dba6f35293e1a6f38b040ccb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.Classification` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Cube.PrismaticGeometry.OctahedralSphere` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octahedralPrefixCapChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGameOctahedralCapSurgerySoundCut1.lean/declarations/octahedralprefixcapchain.md) | 23 | `declaration-track:511648c2ee1bc98645c679b2a1f5f79445f1f74a31b37d6b36169d37ae30a999` |
| 2 | `def` | [octahedralSuffixCapChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGameOctahedralCapSurgerySoundCut1.lean/declarations/octahedralsuffixcapchain.md) | 29 | `declaration-track:defe8f48cc835ba54d062870bc9ab01f82e5fa9f9c7eb816997d2d9a29c0ff5f` |
| 3 | `def` | [octahedralPrefixCapBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGameOctahedralCapSurgerySoundCut1.lean/declarations/octahedralprefixcapboundary.md) | 34 | `declaration-track:2ef3544b14e183c5c1fd494dcc4c2c17aee543f794ff44e51e4373a1746c99dd` |
| 4 | `def` | [octahedralSuffixCapBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGameOctahedralCapSurgerySoundCut1.lean/declarations/octahedralsuffixcapboundary.md) | 38 | `declaration-track:ed83985a767b360c5080bbf5ced77bd5e1a5b36406e95915d4c14b560755ef6f` |
| 5 | `def` | [OctahedralCapSurgerySound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGameOctahedralCapSurgerySoundCut1.lean/declarations/octahedralcapsurgerysound.md) | 42 | `declaration-track:3b404f5cf0fa9afff56a46d5cc8e79ec1dbe6e3becfea9571144ef6ae0e9f085` |
| 6 | `theorem` | [octahedralCapSurgerySound_cut1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGameOctahedralCapSurgerySoundCut1.lean/declarations/octahedralcapsurgerysound-cut1.md) | 51 | `result-track:1a75c115bba1662d0a3a2e0b2d73a47fa60f5f535b2ba21e19f34a812dd1c022` |
| 7 | `theorem` | [octahedralCapSurgerySound_cut2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGameOctahedralCapSurgerySoundCut1.lean/declarations/octahedralcapsurgerysound-cut2.md) | 61 | `result-track:7a6593e1e56731d3f3fda019bead9c7f003dd3af70e95f127ae41463d9f2d051` |
| 8 | `theorem` | [octahedralCapSurgerySound_cut3](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGameOctahedralCapSurgerySoundCut1.lean/declarations/octahedralcapsurgerysound-cut3.md) | 71 | `result-track:41b3fd66e7cb65410427d13eaaa853825af30526fe99e08f1499654d4d20158c` |
| 9 | `theorem` | [octahedralCapSurgerySound_cut4](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGameOctahedralCapSurgerySoundCut1.lean/declarations/octahedralcapsurgerysound-cut4.md) | 81 | `result-track:af4349b8c8f516cfb1d645f3453148d4957925c19c399725c13a11aa4a2a804d` |
| 10 | `theorem` | [octahedralCapSurgerySound_cut5](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGameOctahedralCapSurgerySoundCut1.lean/declarations/octahedralcapsurgerysound-cut5.md) | 91 | `result-track:b02fb786977b8690793697089a7aa57648c370ebb421253e168d165f6799bb12` |
| 11 | `theorem` | [octahedralCapSurgerySound_cut6](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGameOctahedralCapSurgerySoundCut1.lean/declarations/octahedralcapsurgerysound-cut6.md) | 101 | `result-track:7909f1040cd1806e185fda567316b0fdc54f67c10eabb3b5977493dfd7976d16` |
| 12 | `theorem` | [octahedralCapSurgerySound_cut7](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGameOctahedralCapSurgerySoundCut1.lean/declarations/octahedralcapsurgerysound-cut7.md) | 111 | `result-track:8c5e4502c71ad318fd6da2dc9a6267e50363d68dd9d691dfb505f9c8d8d33449` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d3d5694e724e4d2a4617c011e8cc6850f2d57c998a60f8c376710ca1adbf670 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant75e6f75ea20464dd127a9a9484a398d09d33b1b9dba6f35293e1a6f38b040ccb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant75e6f75ea20464dd127a9a9484a398d09d33b1b9dba6f35293e1a6f38b040ccb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
