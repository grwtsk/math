# Verification target: Topology Surgery Game

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dd4c6e43ed9159bf0eeb3d83209bab5f9419d67",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variantbd01b63456b41f93999bff197eb031865f728847c66a60480339f74e6d7a8051.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGame.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGame.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dd4c6e43ed9159bf0eeb3d83209bab5f9419d67`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variantbd01b63456b41f93999bff197eb031865f728847c66a60480339f74e6d7a8051.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variantbd01b63456b41f93999bff197eb031865f728847c66a60480339f74e6d7a8051.lean.json)

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
| 1 | `def` | [octahedralPrefixCapChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGame.lean/declarations/octahedralprefixcapchain.md) | 23 | `declaration-track:fdd6aeed48ce34c6da82a62732a882032743001335c06759d05084d036408b53` |
| 2 | `def` | [octahedralSuffixCapChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGame.lean/declarations/octahedralsuffixcapchain.md) | 29 | `declaration-track:93470e8cd7c81f3be34c509ccdc3b703ed1b737371cbf6b2bc6e8e7b739912ec` |
| 3 | `def` | [octahedralPrefixCapBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGame.lean/declarations/octahedralprefixcapboundary.md) | 34 | `declaration-track:2a796566f02d287256f5c2ff692bb88b4b8fc842a8a36a3dee3078544c9a007f` |
| 4 | `def` | [octahedralSuffixCapBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGame.lean/declarations/octahedralsuffixcapboundary.md) | 38 | `declaration-track:d460870fa77b81ce4bc366a80fe1bbb8585506f44c0864fb6c19f6d545bcaa53` |
| 5 | `def` | [OctahedralCapSurgerySound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGame.lean/declarations/octahedralcapsurgerysound.md) | 42 | `declaration-track:7ae280daec086842a560f4bef503f8ae53646e9b4d18d756e406b8ba4489bbd0` |
| 6 | `theorem` | [octahedralCapSurgerySound_cut2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGame.lean/declarations/octahedralcapsurgerysound-cut2.md) | 51 | `result-track:c33da9505ed36b1caed6877ce39697aea46c9e90b5be6f2f9137abb538ae95ad` |
| 7 | `theorem` | [octahedralCapSurgerySound_cut4](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGame.lean/declarations/octahedralcapsurgerysound-cut4.md) | 61 | `result-track:aa89fd54d578b8df6a528d0018203ffb79db6829b0e1ec3f5be5eaf393c4205a` |
| 8 | `theorem` | [octahedralCapSurgerySound_cut6](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryGame.lean/declarations/octahedralcapsurgerysound-cut6.md) | 71 | `result-track:ac5fa763a1d93abc13a3a7de02cccb2021ea9d7e22ede731abd1712601d4423f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a76e72aa241e03181d97cee2806ad1eb6cae5d36243d858c24744bd88314d8e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variantbd01b63456b41f93999bff197eb031865f728847c66a60480339f74e6d7a8051.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variantbd01b63456b41f93999bff197eb031865f728847c66a60480339f74e6d7a8051.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
