# Verification target: Boundary Witness Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30108980cd34dedbd94fe728afe650475ff8c853",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantdaa285081c2bd7f19e0bee6047b637229f2dc5b4b3d15ef1ea7bb8c77c6aabbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BoundaryWitnessNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BoundaryWitnessNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30108980cd34dedbd94fe728afe650475ff8c853`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantdaa285081c2bd7f19e0bee6047b637229f2dc5b4b3d15ef1ea7bb8c77c6aabbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantdaa285081c2bd7f19e0bee6047b637229f2dc5b4b3d15ef1ea7bb8c77c6aabbc.lean.json)

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
| 1 | `inductive` | [MemoryBoundaryRole](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BoundaryWitnessNamespaced.lean/declarations/memoryboundaryrole.md) | 13 | `declaration-track:9e3b9b5f102bc70a24a2b4003015bd2d71954aee1e3a820a1011de5ff2465cab` |
| 2 | `def` | [MemoryBoundaryRole.claimsTruth](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BoundaryWitnessNamespaced.lean/declarations/memoryboundaryrole-claimstruth.md) | 25 | `declaration-track:e96a08d4f08e4b37501e649e028135fe1ed0c05f7b0d07d1539705945df57764` |
| 3 | `def` | [MemoryBoundaryRole.canEmitResidue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BoundaryWitnessNamespaced.lean/declarations/memoryboundaryrole-canemitresidue.md) | 29 | `declaration-track:f38c14f6cf72fddf0e54933d15dee95dc2d966279c4ba5134c387b925f661956` |
| 4 | `theorem` | [memoryBoundary_claims_no_truth](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BoundaryWitnessNamespaced.lean/declarations/memoryboundary-claims-no-truth.md) | 33 | `result-track:d71fe8ffab0cd58d3eec626be6aa4756e720d10a3ed9c9d70e56db4d9d2600bd` |
| 5 | `theorem` | [memoryBoundary_can_emit_residue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BoundaryWitnessNamespaced.lean/declarations/memoryboundary-can-emit-residue.md) | 38 | `result-track:6fa340382adaa5b0b80117739e948351347b50f6f366e873c0a7f457c0cf9157` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5401309fa4997a9ca920aa7f53cfeb952ad12247339f485309a9e7be7807a5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantdaa285081c2bd7f19e0bee6047b637229f2dc5b4b3d15ef1ea7bb8c77c6aabbc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantdaa285081c2bd7f19e0bee6047b637229f2dc5b4b3d15ef1ea7bb8c77c6aabbc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
