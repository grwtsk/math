# Verification target: Transformer Test

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d4a5a0bc1c6e839b9cee57de8564309266eece8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant761711878d00248d3e1269aea81a827fac93987e6774e72daec2ee8d0be2871d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d4a5a0bc1c6e839b9cee57de8564309266eece8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant761711878d00248d3e1269aea81a827fac93987e6774e72daec2ee8d0be2871d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant761711878d00248d3e1269aea81a827fac93987e6774e72daec2ee8d0be2871d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Transformer` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intToFloat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/declarations/inttofloat.md) | 25 | `declaration-track:d289ed266ef5b54470820bcf30800c8d4d5832a9b44e940f7e1e6679d8e4138c` |
| 2 | `def` | [ratToFloat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/declarations/rattofloat.md) | 30 | `declaration-track:096327e27979c61df7fa57ac7101df4b0952f1b2f3a06a5d529ac25d29a5dc17` |
| 3 | `def` | [showInterval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/declarations/showinterval.md) | 34 | `declaration-track:e61cae6be7d19e436a234652e6cd7e98d7eab2834e1f461b622e39d91e4de69c` |
| 4 | `def` | [testInterval0](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/declarations/testinterval0.md) | 40 | `declaration-track:7d9c4bb21e636004fe111b9ec3ad51af5d50589c6ac0cf39a60dacf7336d1d0f` |
| 5 | `def` | [testIntervalPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/declarations/testintervalpos.md) | 44 | `declaration-track:fd663a8ce091be40eaeaac984c36f625f990a6b3be3852f5435016bd7a7995b9` |
| 6 | `def` | [testIntervalNeg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/declarations/testintervalneg.md) | 48 | `declaration-track:4262dcf6d88f05252c3bd6d54c4ed246bf6d0304bb5f80b92cea9f365118c904` |
| 7 | `def` | [testLNParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/declarations/testlnparams.md) | 69 | `declaration-track:00d3431deb15c547601a8c6b58a59d0688fa0ebf2914e2b3861ffcc816bbc29a` |
| 8 | `def` | [testLNInput](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/declarations/testlninput.md) | 76 | `declaration-track:8586bfc7e6d1c52eb5f82f9d6a7bac41c2031e0c9342e4cc55151bf050ae25c0` |
| 9 | `def` | [testFFN](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/declarations/testffn.md) | 92 | `declaration-track:fed6c9ad0d7829105217bd0590886f4a05e92ee6fd71b5eec61f7ffddca50998` |
| 10 | `def` | [testFFNInput](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/declarations/testffninput.md) | 104 | `declaration-track:c52376659ebcb5461738776dd37515f498cb92337fe36b27987d9af1b5ee450c` |
| 11 | `def` | [testLN2D](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/declarations/testln2d.md) | 119 | `declaration-track:113274872a7408e7cb25a847247d3820d4175cb31cb8550bf53d598dee0edac4` |
| 12 | `def` | [testTransformerBlock](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/declarations/testtransformerblock.md) | 126 | `declaration-track:b7126f95eae81c479b10e447a915bc4564c93d3baaa895511df3a98788901c0b` |
| 13 | `def` | [testVec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTest.lean/declarations/testvec.md) | 141 | `declaration-track:009f9de80bb852513f0e8816ea4309de1ffe18562cd9330610e4bec45197aeea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d08cef8ef62e612e14eb7194c941ceffc8a21554d9bae7addf0ad5a84e442f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant761711878d00248d3e1269aea81a827fac93987e6774e72daec2ee8d0be2871d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant761711878d00248d3e1269aea81a827fac93987e6774e72daec2ee8d0be2871d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
