# Verification target: Trace Zero Control Distinguishes Rank One Inputs From General Operators Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52fa03fc8c047d612ac86df43320a901aec15b03",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RankOneTraceBoundary/Variant920891d7a9475f341ace1170dd9102420731835b043eb507d17b41b3db696d39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52fa03fc8c047d612ac86df43320a901aec15b03`.

Source path: `GRWTSK/Analysis/RankOneTraceBoundary/Variant920891d7a9475f341ace1170dd9102420731835b043eb507d17b41b3db696d39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RankOneTraceBoundary/Variant920891d7a9475f341ace1170dd9102420731835b043eb507d17b41b3db696d39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rankOneDetailEnergy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/rankonedetailenergy.md) | 31 | `declaration-track:db1af239b6979c4df7cae028064a45ce161d1a287771d32a396734a0da562889` |
| 2 | `theorem` | [rank_one_cauchy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/rank-one-cauchy.md) | 34 | `result-track:03c44b297d9734445a815b282e36256548c7867693edb6221af9e2e17ddcc15d` |
| 3 | `theorem` | [rank_one_detail_controls_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/rank-one-detail-controls-scalar.md) | 42 | `result-track:39de14f1312c9e79a7ce261eadca55990690e09b37df0c1742af2e1001238db7` |
| 4 | `theorem` | [rank_one_detail_controls_scalar_coefficient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/rank-one-detail-controls-scalar-coefficient.md) | 48 | `result-track:6048850c762ac00f265fd7dcaabdb61f0e41454246524aaccef8706c358d4fc9` |
| 5 | `theorem` | [rank_one_detail_controls_full_product](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/rank-one-detail-controls-full-product.md) | 53 | `result-track:db267f9bc11c984fe2b53b1b00e43b495ef90d0f1c82c0dd17e186aef4ac58ff` |
| 6 | `theorem` | [rank_one_detail_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/rank-one-detail-nonnegative.md) | 59 | `result-track:c74924f92993b6ed931e4a901fd74110766c586001a2accc46c54cc6f1fadb82` |
| 7 | `theorem` | [zero_rank_one_detail_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/zero-rank-one-detail-iff.md) | 63 | `result-track:7072627bfdd5c7b9df6ac039d68c7ccd1267b789e611fae61b22a0c397f5dfe2` |
| 8 | `theorem` | [exact_source_detail_budget_controls_readout](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/exact-source-detail-budget-controls-readout.md) | 77 | `result-track:5bdc176bd05b406890d10c4123769425b1c594196b375dd1b9df8f819e1de2cd` |
| 9 | `abbrev` | [Operator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/operator.md) | 84 | `declaration-track:6eb7b84b4d8507c58fa9406dc5a07363ee5e1a1f11039ac451c2871de17bea57` |
| 10 | `def` | [scalarMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/scalarmatrix.md) | 85 | `declaration-track:ede5e26ff492dffc53301ae76d885699a7b5c316b08adf542bc5fc1730f13778` |
| 11 | `def` | [scalarCoefficient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/scalarcoefficient.md) | 86 | `declaration-track:b8e71a5885e220b9260df2ed093710bc4a99764d6dfe3a7cc4735a2096f31057` |
| 12 | `def` | [tracelessPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/tracelesspart.md) | 87 | `declaration-track:468ad2c309435dc45b7cb742184ab3b4759da1764fc2ad70f6ef1843a75a0639` |
| 13 | `def` | [rankOneMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/rankonematrix.md) | 88 | `declaration-track:731e57c0930cce1e7cf860d4917f671798ae9bb104db8e56436923bc16f3f7e6` |
| 14 | `theorem` | [scalar_matrix_coefficient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/scalar-matrix-coefficient.md) | 90 | `result-track:a80fe84ac4e7623547f0cd366a5ed058a8247071f4fc5bf8b2c4862a69bc5b36` |
| 15 | `theorem` | [scalar_matrix_has_zero_traceless_part](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/scalar-matrix-has-zero-traceless-part.md) | 93 | `result-track:dce1fe1d66d459210103f6c56e4de23a858abd125ee017207a77fd1f43596fd8` |
| 16 | `theorem` | [general_operator_zero_detail_has_unbounded_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/general-operator-zero-detail-has-unbounded-scalar.md) | 96 | `result-track:b55815123eaf4fa3521f42c023f213ee730c890f35b7f235f6bd781144ea3fda` |
| 17 | `theorem` | [rank_one_scalar_matrix_forces_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceZeroControlDistinguishesRankOneInputsFromGeneralOperatorsEdition2.lean/declarations/rank-one-scalar-matrix-forces-zero.md) | 103 | `result-track:160ae340b69eb917c54b339a19e08faf7d2609911ce2dd3115501d6cfc4144ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2df6edbcc704ca95d9d32ebcc154c59c09ba19c59393949515cdd999172d17e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RankOneTraceBoundary/Variant920891d7a9475f341ace1170dd9102420731835b043eb507d17b41b3db696d39.lean","GRWTSK/_verification/specifications/Analysis/RankOneTraceBoundary/Variant920891d7a9475f341ace1170dd9102420731835b043eb507d17b41b3db696d39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
