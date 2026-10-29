# Verification target: Parsing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f061197dafbaeaab72b2e0c0c7afcb722b180cd",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parsing/Varianta3bf5d59841b8bbef72a338cbfcb96457325a2e434a1ea7cf20feeaaf912cd08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f061197dafbaeaab72b2e0c0c7afcb722b180cd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parsing/Varianta3bf5d59841b8bbef72a338cbfcb96457325a2e434a1ea7cf20feeaaf912cd08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parsing/Varianta3bf5d59841b8bbef72a338cbfcb96457325a2e434a1ea7cf20feeaaf912cd08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.RBMap.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Datatypes` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [List.findDefeq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/list-finddefeq.md) | 44 | `declaration-track:08e517ba179cf50943dcc939af9aa8929f341158253976caab7e22ff8cc8c039` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/instance.md) | 56 | `declaration-track:17414f68aea4262b6f26f86b6c1100a9bf542a29a697701edc5bfd2b38df6bf8` |
| 3 | `abbrev` | [Map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/map.md) | 62 | `declaration-track:2dfd4a2e7ce771ac82f55018654d01403f38d147696b9381a9d8bfc17a927d90` |
| 4 | `def` | [Monom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/monom.md) | 67 | `declaration-track:e5897c268e1ed2a9c8de93b69e77940a4147941175931f357ef58c3489830e16` |
| 5 | `def` | [Monom.one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/monom-one.md) | 70 | `declaration-track:8825607f0ae8424ff05b3b0f5a87c4e5971724e171330c2cbb2b09e1f26fb35d` |
| 6 | `def` | [Monom.lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/monom-lt.md) | 73 | `declaration-track:873219b2b2022b5834a71fdc4d464e149c7139006d2c4ce9ddbb26398dcaa982` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/instance-source-edition-2.md) | 78 | `declaration-track:ea4e5bbbf68ffa424155399b51b856a08a3fdf31e4cd51278c92625dcb1a3501` |
| 8 | `def` | [Sum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/sum.md) | 82 | `declaration-track:e70b08c6a2af3ff6a339ea224a6d076bf49d8871c3639f08a4b8fa6032a23779` |
| 9 | `def` | [Sum.one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/sum-one.md) | 85 | `declaration-track:9c952fb231aed03facf44c0ce7c6e0b4699814734d45544a65e115275cb422bf` |
| 10 | `def` | [Sum.scaleByMonom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/sum-scalebymonom.md) | 88 | `declaration-track:86d4ed9e9e0be1af7a2a0ad9c9880507a5e54eb0f53f9c1eede6ff88adfe5224` |
| 11 | `def` | [Sum.mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/sum-mul.md) | 92 | `declaration-track:64adaad4d271e2d1054d51f704548d83c7cc15e9a9532f1af8393496ea79f87b` |
| 12 | `def` | [Sum.pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/sum-pow.md) | 97 | `declaration-track:0136fd543d393f438fbc0d645610248b385e70139ccee4349e6c5a5037f3bdaa` |
| 13 | `def` | [SumOfMonom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/sumofmonom.md) | 102 | `declaration-track:e0e82b951ff4d77137f7cbdcf4c8ac82469b7827a3c01bf84c6bde3b1b4ace27` |
| 14 | `def` | [one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/one.md) | 106 | `declaration-track:732625ce0a2b3cf852cfa6abcbfb25c50d18c178d146108c1ab09b7d015cac1f` |
| 15 | `def` | [scalar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/scalar.md) | 109 | `declaration-track:2f2992b994b0a3ac8ec4af65aedd7c510ae94156c753b94dc43cb076f6adae05` |
| 16 | `def` | [var](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/var.md) | 113 | `declaration-track:358ea52c752e1b450da717f8958b0cfc7e7fb5bf678af947c50abdf10d995333` |
| 17 | `abbrev` | [ExprMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/exprmap.md) | 127 | `declaration-track:909f0309ff60c9f3b9fd7a9e09e019b3e24772cb24d8d9b358ccc6eece6e8dc2` |
| 18 | `def` | [linearFormOfAtom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/linearformofatom.md) | 134 | `declaration-track:995f88c36ca6380de1f2f240e92137c534838160ebcff4a8e4240ecca981fdba` |
| 19 | `def` | [linearFormOfExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/linearformofexpr.md) | 153 | `declaration-track:00209d19af0ad02178929c7300f7164f3bce0050184ae34c4459cafa0cab2c98` |
| 20 | `def` | [elimMonom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/elimmonom.md) | 191 | `declaration-track:b1a89c7dcbe201853265f0720e5b86560e70ec9e08b94719494acdff6088c540` |
| 21 | `def` | [toComp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/tocomp.md) | 207 | `declaration-track:89a7d17f5afa0a8d0b055a5b40d076fcfa6d92336dc7d86d7b426f6cf638ab27` |
| 22 | `def` | [toCompFold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/tocompfold.md) | 219 | `declaration-track:0b6a94aae502a81c996f4f16ef7ac3923701afa64070a2222c1633a1075c3002` |
| 23 | `def` | [linearFormsAndMaxVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Parsing.lean/declarations/linearformsandmaxvar.md) | 234 | `declaration-track:377ef69a0e5c98517c5311d8137a80b7d32e752ab9c7e9390daa43821404ef0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52efc66830b18c2d67e9f7b8fdf42f78f7464515e27ec2b1eb8ad28e00458539 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parsing/Varianta3bf5d59841b8bbef72a338cbfcb96457325a2e434a1ea7cf20feeaaf912cd08.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parsing/Varianta3bf5d59841b8bbef72a338cbfcb96457325a2e434a1ea7cf20feeaaf912cd08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
