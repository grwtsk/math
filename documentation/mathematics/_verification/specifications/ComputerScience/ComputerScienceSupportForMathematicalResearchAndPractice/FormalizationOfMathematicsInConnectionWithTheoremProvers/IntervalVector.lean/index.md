# Verification target: Interval Vector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3c08c9945bce291eec6f112c073bcd1fcfb9a8b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Variant5a1da30442f7c401548647bfc133b36f2f340281eb28c4cbf94bf2f103fac267.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalVector.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalVector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3c08c9945bce291eec6f112c073bcd1fcfb9a8b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Variant5a1da30442f7c401548647bfc133b36f2f340281eb28c4cbf94bf2f103fac267.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Variant5a1da30442f7c401548647bfc133b36f2f340281eb28c4cbf94bf2f103fac267.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalVector` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [relu](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalVector.lean/declarations/relu.md) | 61 | `declaration-track:dfafa4c6bf89db56eea8d8868db530d576a6fa6b70f7838143a3fd971040f5df` |
| 2 | `theorem` | [mem_relu](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalVector.lean/declarations/mem-relu.md) | 69 | `result-track:d48a78d9e4f184241ad2b54ae7a71a12456ca13dc53587701433d62437e278bc` |
| 3 | `def` | [reluVector](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalVector.lean/declarations/reluvector.md) | 88 | `declaration-track:c61772416820905a74543199bf77ffee0be4b64f7f3596b1f0d0bf2d0d2e0730` |
| 4 | `theorem` | [mem_reluVector_component](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalVector.lean/declarations/mem-reluvector-component.md) | 92 | `result-track:522b617da3db27edd993ceef7b4e0b07f29bc59a5791cb430a2fd962dc1465be` |
| 5 | `def` | [sigmoid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalVector.lean/declarations/sigmoid.md) | 100 | `declaration-track:a3e9787dd6649036ec54387536d0e9bce85cffe7193149410f6756feb0c3df0d` |
| 6 | `def` | [Real.sigmoid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalVector.lean/declarations/real-sigmoid.md) | 106 | `declaration-track:2354e9b8d48e51d7e4a217ff3f5e51cc46d467fd1734cbb1b46cef8bf25892df` |
| 7 | `theorem` | [Real.sigmoid_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalVector.lean/declarations/real-sigmoid-pos.md) | 109 | `result-track:d8f155950c09d801003f5aa7f299fdc20bdcba5cb815a5abb7debddd7cccc8fa` |
| 8 | `theorem` | [Real.sigmoid_lt_one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalVector.lean/declarations/real-sigmoid-lt-one.md) | 114 | `result-track:b1ca8bcaede7cdc292d7f73d2c6393217a74fc8f6efba80e96b9289ea57e3ef0` |
| 9 | `theorem` | [mem_sigmoid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalVector.lean/declarations/mem-sigmoid.md) | 120 | `result-track:d9a8294bcf0029d767955fa957be8407c240c41c8d61e8b0423a63a5f782c5cd` |
| 10 | `def` | [sigmoidVector](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalVector.lean/declarations/sigmoidvector.md) | 127 | `declaration-track:0794212644d0b4f05d37ae6fa2df9152f9bb31f33eff9833aec3717ce0f6bf41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc7fb5d8d1a2e85b9de63c77dfb66434ff9b2619da6b2bb323364fb10a54e0b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Variant5a1da30442f7c401548647bfc133b36f2f340281eb28c4cbf94bf2f103fac267.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Variant5a1da30442f7c401548647bfc133b36f2f340281eb28c4cbf94bf2f103fac267.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
