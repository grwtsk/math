# Verification target: Axiom Audit Namespaced Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f342fde665c21f92174a013b99fdcd76b047114",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2b5a55ab9d6d11b1626c692a58e3c0c39b58644c5dae4d25f772eb3112daafc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition3.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f342fde665c21f92174a013b99fdcd76b047114`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2b5a55ab9d6d11b1626c692a58e3c0c39b58644c5dae4d25f772eb3112daafc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2b5a55ab9d6d11b1626c692a58e3c0c39b58644c5dae4d25f772eb3112daafc9.lean.json)

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
| 1 | `def` | [octahedralPrefixCapChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition3.lean/declarations/octahedralprefixcapchain.md) | 31 | `declaration-track:75b1aaf21cf8e9a86738645cef801a6186aa729aa3958060572b9df3bc9941a4` |
| 2 | `def` | [octahedralSuffixCapChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition3.lean/declarations/octahedralsuffixcapchain.md) | 37 | `declaration-track:36d9cf45c1dd21ca6147f7d0dd40e4353745e215e7fd4e41d1cc7d7f8a72cdbb` |
| 3 | `def` | [octahedralPrefixCapBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition3.lean/declarations/octahedralprefixcapboundary.md) | 42 | `declaration-track:1eda0b4431e4f801413b504501715e5dce673c577f0bb8323b60debda874cd2e` |
| 4 | `def` | [octahedralSuffixCapBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition3.lean/declarations/octahedralsuffixcapboundary.md) | 46 | `declaration-track:6532e7808404ac34aaaa33e2ac0ce4defaeaf9cb6766e5400e092f43b9c1d6a5` |
| 5 | `def` | [OctahedralCapSurgerySound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition3.lean/declarations/octahedralcapsurgerysound.md) | 50 | `declaration-track:3caf93a72278b440d819e3bf1780673729ce2245e7452a2db2dd7606e78b8d48` |
| 6 | `theorem` | [octahedralCapSurgerySound_cut2_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition3.lean/declarations/octahedralcapsurgerysound-cut2-reference.md) | 58 | `result-track:22c7eadcfc235490d9f8cd11c1c325debb7266f03d817a3490b377b79fe08cea` |
| 7 | `theorem` | [octahedralCapSurgerySound_cut4_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition3.lean/declarations/octahedralcapsurgerysound-cut4-reference.md) | 68 | `result-track:88f113b7821017764003e27aa16c56766d4d215452ec7546134130c1da20c333` |
| 8 | `theorem` | [octahedralCapSurgerySound_cut6_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition3.lean/declarations/octahedralcapsurgerysound-cut6-reference.md) | 78 | `result-track:d45a9dbb525b85231290b03bf799c49d7890ead8302dcb2045a657be7ec8c668` |
| 9 | `theorem` | [octahedralCapSurgerySound_cut2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition3.lean/declarations/octahedralcapsurgerysound-cut2.md) | 89 | `result-track:5b841880b92dcdeca7d3d05b48f032db42a9de2b123537e1af8643974b5d9e2b` |
| 10 | `theorem` | [octahedralCapSurgerySound_cut4](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition3.lean/declarations/octahedralcapsurgerysound-cut4.md) | 94 | `result-track:efbc6bde1f465a391c63e82add879ab2ab3e6880ed889aa940230ec1281fae2d` |
| 11 | `theorem` | [octahedralCapSurgerySound_cut6](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition3.lean/declarations/octahedralcapsurgerysound-cut6.md) | 99 | `result-track:78a2667bc92622489200bdbb293a0aed00e5de11ca7223d51497a4f34c608944` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=989b89d0880ae9c16e463f276fb51659a013c3d027cb3008dbe65943a6329db8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2b5a55ab9d6d11b1626c692a58e3c0c39b58644c5dae4d25f772eb3112daafc9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2b5a55ab9d6d11b1626c692a58e3c0c39b58644c5dae4d25f772eb3112daafc9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
