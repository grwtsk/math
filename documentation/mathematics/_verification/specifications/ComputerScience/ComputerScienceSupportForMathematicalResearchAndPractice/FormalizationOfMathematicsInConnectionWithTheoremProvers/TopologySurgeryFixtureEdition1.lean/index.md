# Verification target: Topology Surgery Fixture Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d8363ea0f555f74452cf79342eba9d55ef792d3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryFixture/Variant219e8fbd3547f68d5c1c2d49d9401397a42b296fc333b7b0dde798cf52efe8af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d8363ea0f555f74452cf79342eba9d55ef792d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryFixture/Variant219e8fbd3547f68d5c1c2d49d9401397a42b296fc333b7b0dde798cf52efe8af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryFixture/Variant219e8fbd3547f68d5c1c2d49d9401397a42b296fc333b7b0dde798cf52efe8af.lean.json)

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
| 1 | `def` | [octahedralPrefixCapChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureEdition1.lean/declarations/octahedralprefixcapchain.md) | 23 | `declaration-track:47250d9a92350d238ea11e804f1ed65ec603178b1c98b028b354cbf3d65f9e20` |
| 2 | `def` | [octahedralSuffixCapChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureEdition1.lean/declarations/octahedralsuffixcapchain.md) | 29 | `declaration-track:492360bbff3891782de32fdc626dd6f966600cd6257fff9206e9604209647793` |
| 3 | `def` | [octahedralPrefixCapBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureEdition1.lean/declarations/octahedralprefixcapboundary.md) | 34 | `declaration-track:cc4622daaa1e52681144dff981cdef970920cb945dbb84bd746b9ff9bd50aabb` |
| 4 | `def` | [octahedralSuffixCapBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureEdition1.lean/declarations/octahedralsuffixcapboundary.md) | 38 | `declaration-track:9ee79be3c7be03cfedd9f5fa466f68dcc99df9c3b526eab930e4767355d5fe6f` |
| 5 | `def` | [OctahedralCapSurgerySound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureEdition1.lean/declarations/octahedralcapsurgerysound.md) | 42 | `declaration-track:057cb3eb8bf2a366818d8609deb37416752f5481aa9f36cd2d7790b1b0e41b31` |
| 6 | `theorem` | [octahedralCapSurgerySound_cut2_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureEdition1.lean/declarations/octahedralcapsurgerysound-cut2-reference.md) | 50 | `result-track:fddb78ab62635be2f2c08c07deef808f98d838fe2ece0c2860bf906046db3b1b` |
| 7 | `theorem` | [octahedralCapSurgerySound_cut4_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureEdition1.lean/declarations/octahedralcapsurgerysound-cut4-reference.md) | 60 | `result-track:ca3b3d62d9907ef3589bbbd17bf696cc1325030d1063d5b10385156762857368` |
| 8 | `theorem` | [octahedralCapSurgerySound_cut6_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureEdition1.lean/declarations/octahedralcapsurgerysound-cut6-reference.md) | 70 | `result-track:4e56140aab01dde1fe2c5acc834d1cfb5911345fc23c0ada74389d191223abbd` |
| 9 | `theorem` | [octahedralCapSurgerySound_cut2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureEdition1.lean/declarations/octahedralcapsurgerysound-cut2.md) | 81 | `result-track:6b579babb47fb0669e38b7ea17d45a0b05578977aff30cc29063a2c16e67f144` |
| 10 | `theorem` | [octahedralCapSurgerySound_cut4](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureEdition1.lean/declarations/octahedralcapsurgerysound-cut4.md) | 86 | `result-track:f55b467e38250d5be4d97737584ea741887dcdbdea615832fc85369ec72390b2` |
| 11 | `theorem` | [octahedralCapSurgerySound_cut6](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureEdition1.lean/declarations/octahedralcapsurgerysound-cut6.md) | 91 | `result-track:6e037888ef04fdd47dd1756f1f07552b95147d5a5bd84c01acb3dc8c77e65eb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c8668cf962da20c4fe4c563bea4c75c250c8d3c2235b98028b84aa63d607b39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryFixture/Variant219e8fbd3547f68d5c1c2d49d9401397a42b296fc333b7b0dde798cf52efe8af.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryFixture/Variant219e8fbd3547f68d5c1c2d49d9401397a42b296fc333b7b0dde798cf52efe8af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
