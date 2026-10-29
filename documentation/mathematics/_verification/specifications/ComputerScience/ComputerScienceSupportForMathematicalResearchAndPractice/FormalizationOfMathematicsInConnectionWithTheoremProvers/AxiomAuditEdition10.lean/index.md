# Verification target: Axiom Audit Edition10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3a09eb8a6ee7312bd0c29847eb6f03fbf7e8615",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantff8ebd857d5945de192ad775b500c1935e8cee552267986c2ea13d5eb0646ef1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditEdition10.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditEdition10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3a09eb8a6ee7312bd0c29847eb6f03fbf7e8615`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantff8ebd857d5945de192ad775b500c1935e8cee552267986c2ea13d5eb0646ef1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantff8ebd857d5945de192ad775b500c1935e8cee552267986c2ea13d5eb0646ef1.lean.json)

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
| 1 | `def` | [octahedralPrefixCapChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditEdition10.lean/declarations/octahedralprefixcapchain.md) | 23 | `declaration-track:9b0c062f8a19a702550b3ae23934793f69756ff86ba5db8ba944de3aef588586` |
| 2 | `def` | [octahedralSuffixCapChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditEdition10.lean/declarations/octahedralsuffixcapchain.md) | 29 | `declaration-track:6076307b39201373d541a58d0037f9d0ed2cf5408ea4f03fbc86b936ebbd2f5f` |
| 3 | `def` | [octahedralPrefixCapBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditEdition10.lean/declarations/octahedralprefixcapboundary.md) | 34 | `declaration-track:c28837b3c7bf7384391e10a9e966e67340204448be2d19436b7f4d142d4e3a6d` |
| 4 | `def` | [octahedralSuffixCapBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditEdition10.lean/declarations/octahedralsuffixcapboundary.md) | 38 | `declaration-track:e78cfd4816383f957fe650fdb3b959db3a692ee58ffa86223ef4a90f043ceb4a` |
| 5 | `def` | [OctahedralCapSurgerySound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditEdition10.lean/declarations/octahedralcapsurgerysound.md) | 42 | `declaration-track:59c1eec8510a570449d363382309e376caf32dd7c78ad6b92b5020f3eb788105` |
| 6 | `theorem` | [octahedralCapSurgerySound_cut2_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditEdition10.lean/declarations/octahedralcapsurgerysound-cut2-reference.md) | 50 | `result-track:f935eb12556a7e167eaa7654073e7db8a3fade9b7ad382a258493a57f2ca7b2e` |
| 7 | `theorem` | [octahedralCapSurgerySound_cut4_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditEdition10.lean/declarations/octahedralcapsurgerysound-cut4-reference.md) | 60 | `result-track:9825bcde9a855ea930b9f229f1cc2e1ef69a23e0ab24149310a968597c01dc61` |
| 8 | `theorem` | [octahedralCapSurgerySound_cut6_reference](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditEdition10.lean/declarations/octahedralcapsurgerysound-cut6-reference.md) | 70 | `result-track:94251c1d3b48e9b85019f48ec654d19d5550b81d677c385272001bbc2a765c78` |
| 9 | `theorem` | [octahedralCapSurgerySound_cut2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditEdition10.lean/declarations/octahedralcapsurgerysound-cut2.md) | 81 | `result-track:ef1b9d51a2e05e6316a7f75c7ea73daf436e9573e794381e4369c227d0998ac9` |
| 10 | `theorem` | [octahedralCapSurgerySound_cut4](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditEdition10.lean/declarations/octahedralcapsurgerysound-cut4.md) | 86 | `result-track:fa8b83f997c0d24375d4031af85d87bbe4d04c790f9b57f91130540eed4f3d07` |
| 11 | `theorem` | [octahedralCapSurgerySound_cut6](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AxiomAuditEdition10.lean/declarations/octahedralcapsurgerysound-cut6.md) | 91 | `result-track:4796aef0f1e0792a68a2697bc4293afb514f7df5138e95ffd0e29720ec9c5c68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1f0a4a0400bb980c746f84fe603eaa5722286038c9009d36e8bfed256233100 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantff8ebd857d5945de192ad775b500c1935e8cee552267986c2ea13d5eb0646ef1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantff8ebd857d5945de192ad775b500c1935e8cee552267986c2ea13d5eb0646ef1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
