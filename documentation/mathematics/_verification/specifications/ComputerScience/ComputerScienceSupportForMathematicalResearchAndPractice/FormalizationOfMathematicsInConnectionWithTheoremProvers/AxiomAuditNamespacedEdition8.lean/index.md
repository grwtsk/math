# Verification target: Axiom Audit Namespaced Edition8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "490e36407814a1ce1afe8d934d8f548899d49638",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant74e1270106d5350ca4716064907f0371bfddb899cab5351d1a069f09f59f4164.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition8.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `490e36407814a1ce1afe8d934d8f548899d49638`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant74e1270106d5350ca4716064907f0371bfddb899cab5351d1a069f09f59f4164.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant74e1270106d5350ca4716064907f0371bfddb899cab5351d1a069f09f59f4164.lean.json)

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
| 1 | `def` | [octahedralPrefixCapChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition8.lean/declarations/octahedralprefixcapchain.md) | 31 | `declaration-track:ca257a3e4d1f68d8e25bf431c4bee2dbfd0dad05e3db58cf97a36d152b4c7685` |
| 2 | `def` | [octahedralSuffixCapChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition8.lean/declarations/octahedralsuffixcapchain.md) | 37 | `declaration-track:c24d26c3df7875be3343fb86581d07a88ab51c16b6a98032b3e99cc846a7356c` |
| 3 | `def` | [octahedralPrefixCapBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition8.lean/declarations/octahedralprefixcapboundary.md) | 42 | `declaration-track:ade9b2506883b9ec3eb8454885258ff3577c0bd001b5d3f9eeb590bd5a23efee` |
| 4 | `def` | [octahedralSuffixCapBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition8.lean/declarations/octahedralsuffixcapboundary.md) | 46 | `declaration-track:d64ca3b9ef87e1c715610c6ee8b8e3c2a99e9d1e373c75e281ff2b94ea5c92df` |
| 5 | `def` | [OctahedralCapSurgerySound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition8.lean/declarations/octahedralcapsurgerysound.md) | 50 | `declaration-track:447cf3ac449b2194bc6afa511b0d9e0bef54f7083339b06ad06684672956f565` |
| 6 | `theorem` | [octahedralCapSurgerySound_cut2_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition8.lean/declarations/octahedralcapsurgerysound-cut2-reference.md) | 58 | `result-track:5c1e76d9be60b25ca383767018438da00e5be32e2b3013e47e78cb5151204c20` |
| 7 | `theorem` | [octahedralCapSurgerySound_cut4_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition8.lean/declarations/octahedralcapsurgerysound-cut4-reference.md) | 68 | `result-track:e2d1b5771f0be95c964ff6003c3375b11b32db88633d3034c6a7a3d4bea9f074` |
| 8 | `theorem` | [octahedralCapSurgerySound_cut6_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition8.lean/declarations/octahedralcapsurgerysound-cut6-reference.md) | 78 | `result-track:2d3726c6ee244ab76100a5d4ef181b74366cfe3b580ccb94a3211f0d29df22d6` |
| 9 | `theorem` | [octahedralCapSurgerySound_cut2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition8.lean/declarations/octahedralcapsurgerysound-cut2.md) | 89 | `result-track:66fb2e5a00419eb2f7e03ae2093a6c762228ba8381decbfc18cbae4b0e420eb6` |
| 10 | `theorem` | [octahedralCapSurgerySound_cut4](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition8.lean/declarations/octahedralcapsurgerysound-cut4.md) | 94 | `result-track:80d9fea452d030c40897c4bcccc5ccdd29f579e2cf824216f7eed107944b2e0b` |
| 11 | `theorem` | [octahedralCapSurgerySound_cut6](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditNamespacedEdition8.lean/declarations/octahedralcapsurgerysound-cut6.md) | 99 | `result-track:b68d95a611312eae1484b2ebd739f0f9731c4dbb30abad2649563768abd20015` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a46a804e6a476323dad301f254199abbf048146cb7800d2619afc34b11a1f34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant74e1270106d5350ca4716064907f0371bfddb899cab5351d1a069f09f59f4164.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant74e1270106d5350ca4716064907f0371bfddb899cab5351d1a069f09f59f4164.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
