# Verification target: Float32 Namespaced Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a303332ad4b4f6746795003553ea6c5af3065c1a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float32/Variantdfeb46a25bc0dba5106c879fb8ce7691e0dde89c90e1681ad39afb6b267f4d0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32NamespacedPublicEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32NamespacedPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a303332ad4b4f6746795003553ea6c5af3065c1a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float32/Variantdfeb46a25bc0dba5106c879fb8ce7691e0dde89c90e1681ad39afb6b267f4d0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float32/Variantdfeb46a25bc0dba5106c879fb8ce7691e0dde89c90e1681ad39afb6b267f4d0d.lean.json)

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
| 1 | `opaque` | [Float32.toInt8](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32NamespacedPublicEdition1.lean/declarations/float32-toint8.md) | 33 | `declaration-track:0b527e160358c9e60d180ffd868002e0c1bec0058d4d787ba5aa0d4b9253caf3` |
| 2 | `opaque` | [Float32.toInt16](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32NamespacedPublicEdition1.lean/declarations/float32-toint16.md) | 44 | `declaration-track:c6a35cdd4cc466357cb0d107214e4d5d9b3f18f9218b079f3ffe7841c2d0f6d6` |
| 3 | `opaque` | [Float32.toInt32](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32NamespacedPublicEdition1.lean/declarations/float32-toint32.md) | 55 | `declaration-track:d2fd6dd58e14c1dc55e137e93d3a0409171e04a47456ac0e64ca192802ff7e21` |
| 4 | `opaque` | [Float32.toInt64](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32NamespacedPublicEdition1.lean/declarations/float32-toint64.md) | 66 | `declaration-track:7228b07b67c35d9b95df0eb55a4c357454e5e5db5f1c0e6c47d40b2bd82097b8` |
| 5 | `opaque` | [Float32.toISize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32NamespacedPublicEdition1.lean/declarations/float32-toisize.md) | 77 | `declaration-track:04a5215d8a699d4e7e85fd1cf6067b1321acb1a288b239f229c713ce1acd1268` |
| 6 | `opaque` | [Int8.toFloat32](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32NamespacedPublicEdition1.lean/declarations/int8-tofloat32.md) | 84 | `declaration-track:24a182f8232e292098d0c455e769a6566d73051c870cd08b45b54a616efa8231` |
| 7 | `opaque` | [Int16.toFloat32](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32NamespacedPublicEdition1.lean/declarations/int16-tofloat32.md) | 90 | `declaration-track:cc925ebac3036b73460ea00b7abf561fc0d9007a8f5ec243c42fc03cc2d824d8` |
| 8 | `opaque` | [Int32.toFloat32](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32NamespacedPublicEdition1.lean/declarations/int32-tofloat32.md) | 100 | `declaration-track:1ed47cad17ef9e2aa39cea4a9a9a6e77868b72080ca3ee94f7270d2305a40895` |
| 9 | `opaque` | [Int64.toFloat32](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32NamespacedPublicEdition1.lean/declarations/int64-tofloat32.md) | 110 | `declaration-track:19efaff9c88c1b8c5cfc405441d93770f8bddeefa59d5ff6e15e0c1112aae06d` |
| 10 | `opaque` | [ISize.toFloat32](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32NamespacedPublicEdition1.lean/declarations/isize-tofloat32.md) | 120 | `declaration-track:55692d80509e70e59fafe66e8f01dcae7b7ab029f0bfcced7f2f194a1e1786a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=583640f75a1821bd63366a080ead42d796c949525e2bc92b70fa3af1403ec6e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float32/Variantdfeb46a25bc0dba5106c879fb8ce7691e0dde89c90e1681ad39afb6b267f4d0d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float32/Variantdfeb46a25bc0dba5106c879fb8ce7691e0dde89c90e1681ad39afb6b267f4d0d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
