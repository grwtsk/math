# Verification target: Take Namespaced Public Iterators

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af12b055c54f8bcfdbdfd1e2a6e84f5efe69f018",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af12b055c54f8bcfdbdfd1e2a6e84f5efe69f018`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Iterators.Types.Take](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/declarations/iterators-types-take.md) | 36 | `declaration-track:3730616a0a1aca6482800356bed62cd6c161f3ab4e893271de928bc6ca7b90d0` |
| 2 | `def` | [IterM.take](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/declarations/iterm-take.md) | 77 | `declaration-track:f6d15d50d63277ad3ae4836463f0373303ad2c5fa2d7652f0999f4f7978336be` |
| 3 | `def` | [IterM.toTake](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/declarations/iterm-totake.md) | 103 | `declaration-track:ca427d87128cef6e6a2a321c21acc9cdfd52a09c5a03894519002746ef3192ad` |
| 4 | `theorem` | [IterM.take.surjective_of_zero_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/declarations/iterm-take-surjective-of-zero-lt.md) | 106 | `result-track:92c39496f22ad15c638de0b09a354df06a367e85532a127c6fb284d57f91b9d1` |
| 5 | `inductive` | [Take.PlausibleStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/declarations/take-plausiblestep.md) | 114 | `declaration-track:f8d8415809950494ee212a8ea1d75d985096e52b44b118cf4e0d1718ba1de14e` |
| 6 | `instance` | [Take.instIterator](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/declarations/take-institerator.md) | 125 | `declaration-track:0c7e1c9ac110c09f5771f14539e73b9b1f2cdde5256d5c8209a47a7e0bec0b42` |
| 7 | `def` | [Take.Rel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/declarations/take-rel.md) | 137 | `declaration-track:4b889837903a9a8e38f8275a08f7573e85b19c6bfe1667ebf89910b81f6b17dd` |
| 8 | `theorem` | [Take.rel_of_countdown](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/declarations/take-rel-of-countdown.md) | 147 | `result-track:2fbf6b48ded39f86e6f06fcabc6225b606b0b20b42ed7fd308ffad0a4354d937` |
| 9 | `theorem` | [Take.rel_of_inner](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/declarations/take-rel-of-inner.md) | 153 | `result-track:575d85b0b7df8e2377a58071b5838e0366d455f12270cff712487609ba5a9ac1` |
| 10 | `theorem` | [Take.rel_of_zero_of_inner](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/declarations/take-rel-of-zero-of-inner.md) | 162 | `result-track:07957363b5e379a8e9c6f489423462fe1b0974aa88db8287fe03471fcadfe2e6` |
| 11 | `def` | [Take.instFinitenessRelation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/declarations/take-instfinitenessrelation.md) | 172 | `declaration-track:bfeede4a96cbecb84c3bcbe2ad1f39115569301d08308603524d7aaf8606b26c` |
| 12 | `instance` | [Take.instFinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/declarations/take-instfinite.md) | 214 | `declaration-track:1e48a522a2a6d009b5beb2311ec9e6120581ea7ae8e09f3109439d205eae8ecd` |
| 13 | `instance` | [Take.instIteratorLoop](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TakeNamespacedPublicIterators.lean/declarations/take-institeratorloop.md) | 218 | `declaration-track:1bbb3bc20d3517e7aa97999678d5bf5a396df69a61327c8222872702c63d3ff2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e1cb78138202c60d8fa27ebfca454d19559a54d62bb46e43c78b0e8c7d04d68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
