# Verification target: Transformer Test Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62b0c171242f882f7c883a05a97c1bafe4197214",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant4bd0b111712ed33c32845e14ed5b50591fd083efd7a3d63fe01408eed2182646.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62b0c171242f882f7c883a05a97c1bafe4197214`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant4bd0b111712ed33c32845e14ed5b50591fd083efd7a3d63fe01408eed2182646.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant4bd0b111712ed33c32845e14ed5b50591fd083efd7a3d63fe01408eed2182646.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Transformer` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intToFloat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/declarations/inttofloat.md) | 33 | `declaration-track:4bca9779aeb8686637ddc959b7586c8d10f2b3c4877555b443ea2980feb943fb` |
| 2 | `def` | [ratToFloat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/declarations/rattofloat.md) | 38 | `declaration-track:e34cff20515bd50e59ae3fdc91932e47ecc371dc8b3786baf8986f2ef6b9df11` |
| 3 | `def` | [showInterval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/declarations/showinterval.md) | 42 | `declaration-track:691efcace0692fb12560c155abfcb31a2c5133c2bae8b07718a2cba28acf7490` |
| 4 | `def` | [testInterval0](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/declarations/testinterval0.md) | 48 | `declaration-track:c5c41df501abd2e062bd93ae59a9628da2ae72904056f54ea5649fbc11373a5b` |
| 5 | `def` | [testIntervalPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/declarations/testintervalpos.md) | 52 | `declaration-track:74e86a62ed1246bd28f0a834b21dad65a2ba37cce233c940e8d8edeb1c5eed3d` |
| 6 | `def` | [testIntervalNeg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/declarations/testintervalneg.md) | 56 | `declaration-track:34564e2e315e5c0ad56e323500e6c12cbc9e63bc9b00ac895da5a1b308076a81` |
| 7 | `def` | [testLNParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/declarations/testlnparams.md) | 77 | `declaration-track:c9b6cff37a768ccd35e539353e1ee2e4fe635efecdee725a4613df7a8b39e0c6` |
| 8 | `def` | [testLNInput](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/declarations/testlninput.md) | 84 | `declaration-track:f87e1d2566e33c76278ade85010f15b4b557a32629bc9312a706aa3d9e677e62` |
| 9 | `def` | [testFFN](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/declarations/testffn.md) | 100 | `declaration-track:651b212e619b3e579063101ecddfe8df9a0ca61a182615b165734305476366de` |
| 10 | `def` | [testFFNInput](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/declarations/testffninput.md) | 112 | `declaration-track:5b2a6d7fc1ab778bfaef605cf455806b7b3ce69d0f6cd1d174c82c7db917dc00` |
| 11 | `def` | [testLN2D](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/declarations/testln2d.md) | 127 | `declaration-track:155b28557e5b4699a922565bc2a420ed50e7d583596bab6164932d36f7fe4103` |
| 12 | `def` | [testTransformerBlock](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/declarations/testtransformerblock.md) | 134 | `declaration-track:9c114f789cce9e2edbaa65c0bc162c89a6d4b32583b99bbe074a1322d36a8c42` |
| 13 | `def` | [testVec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TransformerTestNamespaced.lean/declarations/testvec.md) | 149 | `declaration-track:ddbac7d040ab379c529edd3aa5495b8865a46db24eb78bca1afacccf12056f0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b165d07884b243f1922debef7fda88c1b729028cbbe94bfe854367f336b5f70 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant4bd0b111712ed33c32845e14ed5b50591fd083efd7a3d63fe01408eed2182646.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant4bd0b111712ed33c32845e14ed5b50591fd083efd7a3d63fe01408eed2182646.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
