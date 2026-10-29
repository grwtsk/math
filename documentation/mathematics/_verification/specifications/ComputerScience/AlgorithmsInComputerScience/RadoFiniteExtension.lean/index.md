# Verification target: Rado Finite Extension

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9235d32dfe6f966ec96e0d4119831c2f3464aad1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variantd7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtension.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtension.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9235d32dfe6f966ec96e0d4119831c2f3464aad1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variantd7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variantd7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.M4b65726e656c2f5468656f72656d732f42617369632e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Graph](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtension.lean/declarations/graph.md) | 12 | `declaration-track:1c294b90f2a0a138a6d88a86047ba9863a8c46e826e37035b9db17997f496d4d` |
| 2 | `def` | [DisjointLists](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtension.lean/declarations/disjointlists.md) | 15 | `declaration-track:e1ae90c2e3190f64a84554183d4191dfd93c6871d2f0978f5958f42077e62a24` |
| 3 | `def` | [Realizes](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtension.lean/declarations/realizes.md) | 18 | `declaration-track:ed3a3a8b3d412584b1cdd25fa7a32d43d8580fc6bcc554ed8f793d49b0954aa4` |
| 4 | `def` | [ExtensionProperty](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtension.lean/declarations/extensionproperty.md) | 23 | `declaration-track:fd63e6ca9f942576e89c69b64395cc18dbe59644f86e49b0d3dbbd88f2a7da4d` |
| 5 | `theorem` | [extension_property_produces_realizer](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtension.lean/declarations/extension-property-produces-realizer.md) | 27 | `result-track:c6a89eb0e07095aac9bd892f4c5b80965553d8210b7bd4b9afffbbab2cadf0ef` |
| 6 | `theorem` | [realizer_adjacent_to_left](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtension.lean/declarations/realizer-adjacent-to-left.md) | 35 | `result-track:bbacde57fdfe38ed778ba0eda94f554995c00f41c1336b91783bbb2422b3e1c0` |
| 7 | `theorem` | [realizer_avoids_right](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtension.lean/declarations/realizer-avoids-right.md) | 43 | `result-track:d81f78e980b1a375df09b9c9d9ea9e7eaf9b6ff2677f04f51d9260a45f341a7b` |
| 8 | `def` | [extensionStatement](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtension.lean/declarations/extensionstatement.md) | 51 | `declaration-track:6f87ecb3b068ea5844d3cdfb05fb6874e5f76a4786c23694aa6306ba0d6894f5` |
| 9 | `def` | [extensionFormalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtension.lean/declarations/extensionformaltheorem.md) | 57 | `declaration-track:3c884f2d2901ddf42e8c79d1abe7e60cf846f497035d65f81fb6a21c8a17ad3b` |
| 10 | `theorem` | [extensionFormalTheorem_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtension.lean/declarations/extensionformaltheorem-complete.md) | 67 | `result-track:d35dd1fead6614cb78c88bfe1a0fcdb91b318a888b1d58734387e5875475b4f3` |
| 11 | `theorem` | [extensionFormalTheorem_has_no_residue](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtension.lean/declarations/extensionformaltheorem-has-no-residue.md) | 72 | `result-track:912f79750cfa95ad535b37af97bef398c9a93afd2461fa1acca9ab006106448c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=840ab27b39c7d7ddf6277eb5a0a2aac6fb01625055dc8dfaaa8537b14ef267df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variantd7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variantd7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
