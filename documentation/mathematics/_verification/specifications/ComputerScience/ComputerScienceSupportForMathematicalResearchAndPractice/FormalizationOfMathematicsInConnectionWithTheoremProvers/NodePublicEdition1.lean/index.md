# Verification target: Node Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7508f57fd10889143d4634c2b42aa724565a123",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Node/Variant4ca1aea8ff2077f502d01de54d1236c5dc4714c2da52a0a38eee022494bd7996.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7508f57fd10889143d4634c2b42aa724565a123`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Node/Variant4ca1aea8ff2077f502d01de54d1236c5dc4714c2da52a0a38eee022494bd7996.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Node/Variant4ca1aea8ff2077f502d01de54d1236c5dc4714c2da52a0a38eee022494bd7996.lean.json)

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
| 1 | `structure` | [SyntaxNodeId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/syntaxnodeid.md) | 14 | `declaration-track:47f91f9e23c3ff847421aaad0949def8399e44a2813c51ea11090ae41188b046` |
| 2 | `structure` | [StableSemanticAnchorId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/stablesemanticanchorid.md) | 19 | `declaration-track:86fdfdc3b5a583dc8af538421041b0b4f8cae5d63120755debde7db8e5496ce0` |
| 3 | `inductive` | [NormalizedNodeKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/normalizednodekind.md) | 24 | `declaration-track:b8b0f2bde1e251a9b518b73c6faec39acc6e73a51785e52df85168044dadc40c` |
| 4 | `structure` | [NodeRecord](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/noderecord.md) | 44 | `declaration-track:0745dd0d1349bd66bea898e38d201d20d99c58ef8e675dd6b9b67b9f5d4aa550` |
| 5 | `def` | [NodeRecord.RuntimeFieldsFit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/noderecord-runtimefieldsfit.md) | 59 | `declaration-track:a13a48a3f9b28ecdf50a42377e2d6ef8abf1034a9f2cbc1b409d6cbfa9e80d54` |
| 6 | `def` | [NodeRecord.IndicesValid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/noderecord-indicesvalid.md) | 67 | `declaration-track:b8dd5348daaabb131d79841c9c8063f9bb2a15500f9c7939e7cb2c3f20b44d32` |
| 7 | `inductive` | [OrderedSyntaxTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/orderedsyntaxtree.md) | 79 | `declaration-track:330855fdfd454b180f97d801f27556a9783b0b86d804217d278e5b183f269d5c` |
| 8 | `def` | [OrderedSyntaxTree.preorderIndices](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/orderedsyntaxtree-preorderindices.md) | 83 | `declaration-track:6161c3cc40895bbe11ba3add2192ae0f3ba05d5e253f83d25953bac32265044e` |
| 9 | `def` | [orderedForestPreorderIndices](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/orderedforestpreorderindices.md) | 87 | `declaration-track:4e35580aea1bf103ba235c12efc43546d169792ea0875c811a87116c18904e1e` |
| 10 | `def` | [OrderedSyntaxTree.nodeCount](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/orderedsyntaxtree-nodecount.md) | 90 | `declaration-track:9583a53c5bf55869f0215246d930ad6da699ea6d344957056528f4b4d776aa97` |
| 11 | `def` | [orderedForestNodeCount](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/orderedforestnodecount.md) | 93 | `declaration-track:16a2ef8788fefd5f2c998109a2b0cedbaa43ade659a98b1f278e94ad1f6c6cd1` |
| 12 | `def` | [parentRelation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/parentrelation.md) | 96 | `declaration-track:fde0906c301c16ed109688b241a2bc78d9261e040590828adda28d4a5dd19e0e` |
| 13 | `def` | [ParentRelationAcyclic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/parentrelationacyclic.md) | 99 | `declaration-track:f6db550e30bcea105dcdf28dc342d6c840121c4adc911761f580dfc7783b9f21` |
| 14 | `inductive` | [CorrespondenceBasis](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/correspondencebasis.md) | 103 | `declaration-track:3cb5eb6c48794294e59052d60e4e0ff18223dbe83a497ec86ecc3549dcb3ee48` |
| 15 | `structure` | [NodeCorrespondence](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NodePublicEdition1.lean/declarations/nodecorrespondence.md) | 113 | `declaration-track:110f0fc43f4cce24b849ddfa6518dd9c243743723a74c21cda9f2b2cea69a149` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2bf9bcf77be15467fd26542d90e0837480e5a33ef921955aec24f523c70ba663 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Node/Variant4ca1aea8ff2077f502d01de54d1236c5dc4714c2da52a0a38eee022494bd7996.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Node/Variant4ca1aea8ff2077f502d01de54d1236c5dc4714c2da52a0a38eee022494bd7996.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
