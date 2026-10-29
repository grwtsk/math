# Verification target: Topology Surgery Fixture Namespaced Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b24da411f67cebd1fd820a534759209b2146bb83",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryFixture/Variant3c253230588d18c5cb931d497138629b8da499d12996e3b6f35153d9e77a9dfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureNamespacedEdition3.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureNamespacedEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b24da411f67cebd1fd820a534759209b2146bb83`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryFixture/Variant3c253230588d18c5cb931d497138629b8da499d12996e3b6f35153d9e77a9dfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryFixture/Variant3c253230588d18c5cb931d497138629b8da499d12996e3b6f35153d9e77a9dfb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.Classification` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Cube.PrismaticGeometry.OctahedralSphere` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octahedralPrefixCapChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureNamespacedEdition3.lean/declarations/octahedralprefixcapchain.md) | 31 | `declaration-track:b7b18f6a1248620f8326a44cec6dea785a97410f71f1bf4923dc76873eb03375` |
| 2 | `def` | [octahedralSuffixCapChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureNamespacedEdition3.lean/declarations/octahedralsuffixcapchain.md) | 37 | `declaration-track:446322521d5e13730b6b889a5abc9e81bc554058a69f581e4322d2daa22840d8` |
| 3 | `def` | [octahedralPrefixCapBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureNamespacedEdition3.lean/declarations/octahedralprefixcapboundary.md) | 42 | `declaration-track:144ae47e5c365888b87ee61b2c544d9f32e798a16303645dc4d2ed6ce1a98c3d` |
| 4 | `def` | [octahedralSuffixCapBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureNamespacedEdition3.lean/declarations/octahedralsuffixcapboundary.md) | 46 | `declaration-track:86a6941c777baac2968c26086d689435493237ce5fa13c49d5594b7edd0763d0` |
| 5 | `def` | [OctahedralCapSurgerySound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureNamespacedEdition3.lean/declarations/octahedralcapsurgerysound.md) | 50 | `declaration-track:25cd6668e8c20c1ab59271191f68d3cc7554ac49ae71bfc4b8412b365796affb` |
| 6 | `theorem` | [octahedralCapSurgerySound_cut2_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureNamespacedEdition3.lean/declarations/octahedralcapsurgerysound-cut2-reference.md) | 58 | `result-track:ffbeae6c98210c441511e61d68782191bcf81d7df42f26d6dc85d6429384b710` |
| 7 | `theorem` | [octahedralCapSurgerySound_cut4_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureNamespacedEdition3.lean/declarations/octahedralcapsurgerysound-cut4-reference.md) | 68 | `result-track:906ce06c650d309fc3a221b0ed4086e58bba6da5cba419a762ac9091ae36f63c` |
| 8 | `theorem` | [octahedralCapSurgerySound_cut6_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureNamespacedEdition3.lean/declarations/octahedralcapsurgerysound-cut6-reference.md) | 78 | `result-track:15b303a3afbbecccb45e378c7e32d2f9c94b407dac770e82ace8dc0d04928d36` |
| 9 | `theorem` | [octahedralCapSurgerySound_cut2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureNamespacedEdition3.lean/declarations/octahedralcapsurgerysound-cut2.md) | 89 | `result-track:02833815fbb34bd9b0e8056ee1a8c9bf8bcc9ed221d44ce61b806e525b3627aa` |
| 10 | `theorem` | [octahedralCapSurgerySound_cut4](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureNamespacedEdition3.lean/declarations/octahedralcapsurgerysound-cut4.md) | 94 | `result-track:a30d1efb968ac5ac1bbf3d79722fdc346763037bae6bad55001a3fb874ce821e` |
| 11 | `theorem` | [octahedralCapSurgerySound_cut6](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TopologySurgeryFixtureNamespacedEdition3.lean/declarations/octahedralcapsurgerysound-cut6.md) | 99 | `result-track:784f7690b98eeb53d77d0fd676cb46487a214c4130aaa3fadc1435fd753cd74c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6a1f1570c775671466f7d51aa17be39cfc41ea08ca8c6a70c70ce8b69f56c0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryFixture/Variant3c253230588d18c5cb931d497138629b8da499d12996e3b6f35153d9e77a9dfb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryFixture/Variant3c253230588d18c5cb931d497138629b8da499d12996e3b6f35153d9e77a9dfb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
