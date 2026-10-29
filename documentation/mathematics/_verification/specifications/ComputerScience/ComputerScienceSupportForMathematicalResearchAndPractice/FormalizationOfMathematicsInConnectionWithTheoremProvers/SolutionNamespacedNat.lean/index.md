# Verification target: Solution Namespaced Nat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c89857e4c82f3e62ba483775574ece1395e5080c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solution/Variant1cbf1d075ed092354300d54811554ddea2904b2b76c7f0133c940fc18fd7eb55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNamespacedNat.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNamespacedNat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c89857e4c82f3e62ba483775574ece1395e5080c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solution/Variant1cbf1d075ed092354300d54811554ddea2904b2b76c7f0133c940fc18fd7eb55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solution/Variant1cbf1d075ed092354300d54811554ddea2904b2b76c7f0133c940fc18fd7eb55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Prelude` — import line 7; external provider; requires a separately pinned dependency.
- `Init.Core` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nat.gcd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNamespacedNat.lean/declarations/nat-gcd.md) | 13 | `declaration-track:b2a5641a7b9c929d8733e6d554c841027f5894fe965b9e3f450792b2135cc9b9` |
| 2 | `theorem` | [thm1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNamespacedNat.lean/declarations/thm1.md) | 15 | `result-track:c3e5dfd52a064a9de02c0b73d425118d544c8987b582e0d9affa849173d8cc06` |
| 3 | `theorem` | [thm2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNamespacedNat.lean/declarations/thm2.md) | 19 | `result-track:ce3c393f82186a63430c05bae165a9bbb7ed64c4d677ab2af777c1081840ee7c` |
| 4 | `theorem` | [boom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNamespacedNat.lean/declarations/boom.md) | 21 | `result-track:36eb99edfe272f9c6678bc65a4ac67235c1953cc4a35b9a80be657ae65486c2c` |
| 5 | `def` | [Nat.land](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNamespacedNat.lean/declarations/nat-land.md) | 25 | `declaration-track:dffecaebdd4cdfa5f5974de02e952fd70910584ec09e416bf292c1fdd7dfd86d` |
| 6 | `def` | [Nat.lor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNamespacedNat.lean/declarations/nat-lor.md) | 26 | `declaration-track:f4dca1fc50d4cbe02c844e1852d89894b2175af3ff1680ac71e8036980799d19` |
| 7 | `def` | [Nat.xor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNamespacedNat.lean/declarations/nat-xor.md) | 27 | `declaration-track:18b108df3c166ab8ac1e98c08ed9768263a84c65935d240373ea675aaad599a4` |
| 8 | `def` | [Nat.shiftRight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNamespacedNat.lean/declarations/nat-shiftright.md) | 28 | `declaration-track:0b7db158dd9917dca1272483e126894cee202b00edcc46224c1d6dbc6481dd7f` |
| 9 | `def` | [Nat.shiftLeft](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNamespacedNat.lean/declarations/nat-shiftleft.md) | 29 | `declaration-track:42537684124cd0b6ade48d4587f8ab4fd4299a02b05f93165be885c384e88a9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6a99bb64061dbefc165612ee6321dd463dc2cc1e0e42181d59e183859bb1061 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solution/Variant1cbf1d075ed092354300d54811554ddea2904b2b76c7f0133c940fc18fd7eb55.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solution/Variant1cbf1d075ed092354300d54811554ddea2904b2b76c7f0133c940fc18fd7eb55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
