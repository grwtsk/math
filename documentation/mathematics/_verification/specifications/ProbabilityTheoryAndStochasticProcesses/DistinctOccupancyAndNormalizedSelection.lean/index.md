# Verification target: Distinct Occupancy And Normalized Selection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59ed7f932a56ba67e5e775070278d7eaa709d6eb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteBooleanMaskWeights/Variant03d73452c99c6fd3/DistinctOccupancyAndNormalizedSelection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59ed7f932a56ba67e5e775070278d7eaa709d6eb`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteBooleanMaskWeights/Variant03d73452c99c6fd3/DistinctOccupancyAndNormalizedSelection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteBooleanMaskWeights/Variant03d73452c99c6fd3/DistinctOccupancyAndNormalizedSelection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.BitDocument` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.GridCell` — import line 22; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.Stroke` — import line 23; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical.Core` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [OccupancyMask](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/occupancymask.md) | 43 | `declaration-track:6a6eec821e99131c1413f34d8f73a4eea29383deecab02b137c812699731d79d` |
| 2 | `abbrev` | [Claimant](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/claimant.md) | 46 | `declaration-track:2dd4acb370451b417f62d6ce7e01acd865de4cd7d2bcccbc749e9719f9c43808` |
| 3 | `structure` | [OwnershipSelectionMask](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/ownershipselectionmask.md) | 50 | `declaration-track:6ea5ea8dbb30a7f20e83740cef35f4758d5c35119a8b72b840ca3a8e5da0a702` |
| 4 | `instance` | [ownershipSelectionMaskCoeFun](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/ownershipselectionmaskcoefun.md) | 53 | `declaration-track:8bd481e80a0594476734eda63db40009beeebc8b4107d76b14a6d8a24ae0d02c` |
| 5 | `abbrev` | [Owner](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/owner.md) | 59 | `declaration-track:01c95f5c08f4d7ad5896ba7df281f946ab23d2ecbba7bfc59091f788824a44a1` |
| 6 | `def` | [selectedOwnerCount](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/selectedownercount.md) | 63 | `declaration-track:709c83e662ac46763d3559b2b3a6334318182140e3e1109c73c2e08bf7f03008` |
| 7 | `def` | [ownershipWeight](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/ownershipweight.md) | 68 | `declaration-track:a018f9aac9a1647a054c72480149c61ba11b4d11a7aed6522d26d6cc87c08b82` |
| 8 | `theorem` | [ownershipWeight_unselected](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/ownershipweight-unselected.md) | 72 | `result-track:367f1aaa7c307bd17464884d2433066586ebc746e747f2e0f4cc1abe7199a868` |
| 9 | `theorem` | [ownershipWeight_selected](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/ownershipweight-selected.md) | 77 | `result-track:74655cab45695585b2244c6c71ea1dc65f739f3157c8318da33f86076aa48ce9` |
| 10 | `theorem` | [ownershipWeight_sum](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/ownershipweight-sum.md) | 84 | `result-track:7f739c7664a6d0a00c0ceb0adc28ad47d1e904d1b0495392d746a7df764b03a5` |
| 11 | `def` | [PureOwnership](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/pureownership.md) | 105 | `declaration-track:ff05b4277a6445da55f335ed6b9d09c5d97592995b42106d46c82101bd0b4f0c` |
| 12 | `def` | [MixedOwnership](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/mixedownership.md) | 109 | `declaration-track:f4988a51a4fc60fe5c70654c4b4392b5f444ebaa4f830e23069046085c1badba` |
| 13 | `structure` | [OccupancyState](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/occupancystate.md) | 114 | `declaration-track:f1530306877e16dadc18dd4fa2ac83f7f89da181f86df26601938e1982bac792` |
| 14 | `structure` | [OwnershipState](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/ownershipstate.md) | 119 | `declaration-track:068e38c4d20089e63e8067379a558216857c9f16c7ef119dc7a2a1e52c08feb2` |
| 15 | `def` | [weightedBitEvaluation](../../../../ProbabilityTheoryAndStochasticProcesses/DistinctOccupancyAndNormalizedSelection.lean/declarations/weightedbitevaluation.md) | 124 | `declaration-track:d4e5bc32a09ccaa4f4c3b88f11dbdafe10a906f8a0aa8f29e84f141054541c75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d77cc137acead97a51cad7dd98592584d7209603b94a1ce7ee92449f2e8e308d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteBooleanMaskWeights/Variant03d73452c99c6fd3/DistinctOccupancyAndNormalizedSelection.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteBooleanMaskWeights/Variant03d73452c99c6fd3/DistinctOccupancyAndNormalizedSelection.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
