# Verification target: Evolution Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25c8a1aebd5f7fb639638fe5bbca0c03d44c97fe",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evolution/Variantfd1f2c3ff31e9aad9d1ba3d27a9960e5d8529adfd772795c1e1b35a25bdfa947.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EvolutionNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EvolutionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25c8a1aebd5f7fb639638fe5bbca0c03d44c97fe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evolution/Variantfd1f2c3ff31e9aad9d1ba3d27a9960e5d8529adfd772795c1e1b35a25bdfa947.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evolution/Variantfd1f2c3ff31e9aad9d1ba3d27a9960e5d8529adfd772795c1e1b35a25bdfa947.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.Topology` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EvolutionLaw](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EvolutionNamespaced.lean/declarations/evolutionlaw.md) | 27 | `declaration-track:f5e8033ced6620eb9163ef1b6d5c2e8ddcfad2aeb5cbb7434396b6f616c9055a` |
| 2 | `def` | [continuationSpace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EvolutionNamespaced.lean/declarations/continuationspace.md) | 33 | `declaration-track:bd3100ba18cd93c54206e58fe9933fd4abd3d7bebaf654da8f562ad6273db1b2` |
| 3 | `def` | [gatedContinuationSpace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EvolutionNamespaced.lean/declarations/gatedcontinuationspace.md) | 41 | `declaration-track:0f11b34917bf7f59745440e2b97824379dd795009641702304bd8e99d57e923e` |
| 4 | `structure` | [IntrinsicGate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EvolutionNamespaced.lean/declarations/intrinsicgate.md) | 53 | `declaration-track:b3f946500fc99b42af874447687dc1c1cc3d6d6b65cc87556eaa7bb93a6b81be` |
| 5 | `theorem` | [intrinsicGate_untruncated](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EvolutionNamespaced.lean/declarations/intrinsicgate-untruncated.md) | 67 | `result-track:60771b0abe4cf9953bc5b90b9d9fff385d78c7884c32a67619eead2ab0501776` |
| 6 | `def` | [IsAuthoritativeGate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EvolutionNamespaced.lean/declarations/isauthoritativegate.md) | 80 | `declaration-track:eb88a0d80f1d9d297fdddad5765b9130865f3e58ad7acb02a94b6e1516bc8294` |
| 7 | `theorem` | [truncatingGate_not_authoritative](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EvolutionNamespaced.lean/declarations/truncatinggate-not-authoritative.md) | 90 | `result-track:74ba99b89c24af4c5cc6be43b748c39cfe37cb18f4be16eb54211234829e779b` |
| 8 | `structure` | [CompleteDerivation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EvolutionNamespaced.lean/declarations/completederivation.md) | 107 | `declaration-track:1de4d61f3432fdcc8b72abe9ae46b5f8b6ef1d79e6dd126b710c1422c50fbe56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07933aab0c0c1924178d7facdf97626c0422a069e621ccfad5ec6c9e98b7c7b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evolution/Variantfd1f2c3ff31e9aad9d1ba3d27a9960e5d8529adfd772795c1e1b35a25bdfa947.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evolution/Variantfd1f2c3ff31e9aad9d1ba3d27a9960e5d8529adfd772795c1e1b35a25bdfa947.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
