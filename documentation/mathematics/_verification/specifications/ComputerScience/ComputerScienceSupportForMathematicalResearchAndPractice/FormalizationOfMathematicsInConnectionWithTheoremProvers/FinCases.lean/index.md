# Verification target: Fin Cases

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78b5dfa7c9b2c0d85502b7c9e89f20ec7def1709",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinCases/Variantde46d8dd62e0a406c304755c42effe2d3660197bdb023bc15d211d3eec45fd43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FinCases.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FinCases.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78b5dfa7c9b2c0d85502b7c9e89f20ec7def1709`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinCases/Variantde46d8dd62e0a406c304755c42effe2d3660197bdb023bc15d211d3eec45fd43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinCases/Variantde46d8dd62e0a406c304755c42effe2d3660197bdb023bc15d211d3eec45fd43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FinCases` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FinCases.lean/declarations/example-source-edition-8.md) | 5 | `declaration-track:b6de78f3ea9d4c8ad70cbed4def7c515d3682b83701680f3f42563b43b221c16` |
| 2 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FinCases.lean/declarations/example.md) | 9 | `declaration-track:105779211adf0552b245cafcc16b22a603e78062035638ef52b0e7fc2093d8a0` |
| 3 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FinCases.lean/declarations/example-source-edition-9.md) | 13 | `declaration-track:bb6de4c0997fbf18aa11a93073210c91769fbb9f25055d68fafc0eec8fe59a15` |
| 4 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FinCases.lean/declarations/example-source-edition-4.md) | 17 | `declaration-track:7a8a92c9c793b68fe8ad1baf0a74d1dd0bb941d963bf2872e6dbe79861670781` |
| 5 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FinCases.lean/declarations/example-source-edition-7.md) | 21 | `declaration-track:a8a5c0f79b800a5606ec2de9a78465e9385c882f0f777076b754c703c93c1254` |
| 6 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FinCases.lean/declarations/example-source-edition-10.md) | 26 | `declaration-track:f4cc4cf0eed813e66b39cb048c721092714e564efeea8cc1529c93da35a1efb0` |
| 7 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FinCases.lean/declarations/example-source-edition-3.md) | 29 | `declaration-track:510e1d0895505d5e24865cd03b4ca7ff644c53743223aa52a524add831521d12` |
| 8 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FinCases.lean/declarations/example-source-edition-5.md) | 34 | `declaration-track:838c85d1358ffea8ab0fef24ea6fad3e93d3c5fc246584236443502e3ff773af` |
| 9 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FinCases.lean/declarations/example-source-edition-6.md) | 56 | `declaration-track:884644ecad00476b611c25ea775637eb56f560bf296ddd4cea11c3860375d855` |
| 10 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FinCases.lean/declarations/example-source-edition-2.md) | 65 | `declaration-track:496068edbf1c7bb171ecde8b9c79f6a8eb01b626dd30ae86ce0f12c0b789d89d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9a693c17d33a9ff3356aa41993cb32b18927624231b9476af6e6a4d0ad5ccde -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinCases/Variantde46d8dd62e0a406c304755c42effe2d3660197bdb023bc15d211d3eec45fd43.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinCases/Variantde46d8dd62e0a406c304755c42effe2d3660197bdb023bc15d211d3eec45fd43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
