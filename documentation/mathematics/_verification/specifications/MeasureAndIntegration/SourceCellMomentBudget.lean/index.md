# Verification target: Source Cell Moment Budget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8707478c0344f536a2c54ddc155f7eab5577796",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variant6af8461f8e789ee9a4da633d88d5d0468619b55601c836decd42eda88f474e76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCellMomentBudget.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCellMomentBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8707478c0344f536a2c54ddc155f7eab5577796`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variant6af8461f8e789ee9a4da633d88d5d0468619b55601c836decd42eda88f474e76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variant6af8461f8e789ee9a4da633d88d5d0468619b55601c836decd42eda88f474e76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCellTransport` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [secondMomentMajorant](../../../../MeasureAndIntegration/SourceCellMomentBudget.lean/declarations/secondmomentmajorant.md) | 31 | `declaration-track:0aee67ae4b099b4936aba35ca139bc952fdb4231306065efc45f9ee330010d36` |
| 2 | `def` | [secondMomentPrimitive](../../../../MeasureAndIntegration/SourceCellMomentBudget.lean/declarations/secondmomentprimitive.md) | 34 | `declaration-track:c4aee81baa49da0699680ef8ced6fae5b286c372b3013d601ee11dd771c40a75` |
| 3 | `theorem` | [secondMomentPrimitive_hasDerivAt](../../../../MeasureAndIntegration/SourceCellMomentBudget.lean/declarations/secondmomentprimitive-hasderivat.md) | 36 | `result-track:2b7dba3b6b6c09dee247860c6e440a50993a705bf790e89fe7e29c13a938ed21` |
| 4 | `theorem` | [secondMomentMajorant_intervalIntegrable](../../../../MeasureAndIntegration/SourceCellMomentBudget.lean/declarations/secondmomentmajorant-intervalintegrable.md) | 45 | `result-track:8067990053f1b72a7d279bf369e9f417459249d4d9b5a8c556b12fdc88a7f1ef` |
| 5 | `theorem` | [secondMomentMajorant_integral_eq](../../../../MeasureAndIntegration/SourceCellMomentBudget.lean/declarations/secondmomentmajorant-integral-eq.md) | 55 | `result-track:35d7a1ab7f3737d09781e91e810dc75e4953560df782cde518b523e1651e2e0f` |
| 6 | `theorem` | [secondMomentMajorant_integral_le](../../../../MeasureAndIntegration/SourceCellMomentBudget.lean/declarations/secondmomentmajorant-integral-le.md) | 66 | `result-track:1c1dd21aaaf84aa218644f053f9ed7396035b1bffe2967303c5a219f4ea7fcb8` |
| 7 | `theorem` | [cellSecondMoment_le_majorant](../../../../MeasureAndIntegration/SourceCellMomentBudget.lean/declarations/cellsecondmoment-le-majorant.md) | 72 | `result-track:b00cebf7ec2bac86ccbbda1fc3a90dbf0d5a232c7614c6224196a328f4a30adc` |
| 8 | `theorem` | [sum_secondMomentMajorant_integrals](../../../../MeasureAndIntegration/SourceCellMomentBudget.lean/declarations/sum-secondmomentmajorant-integrals.md) | 97 | `result-track:9e12cd7c07b3627b74c882fa34279873cfd9ca8fecc451d62453d48780592634` |
| 9 | `theorem` | [sum_cellSecondMoment_le](../../../../MeasureAndIntegration/SourceCellMomentBudget.lean/declarations/sum-cellsecondmoment-le.md) | 111 | `result-track:b8af8647bc1f55fd6bad40a1c3025650c373380e2e4db00c8a51680bb588dd73` |
| 10 | `theorem` | [sum_cellTaylorRemainder_abs_le](../../../../MeasureAndIntegration/SourceCellMomentBudget.lean/declarations/sum-celltaylorremainder-abs-le.md) | 125 | `result-track:44763cc9eb5a1a68a0b7790138c88c2ed76e1b01e8e6914fbd3defae2f0a074f` |
| 11 | `theorem` | [compensated_cellCorrection_sum_abs_le](../../../../MeasureAndIntegration/SourceCellMomentBudget.lean/declarations/compensated-cellcorrection-sum-abs-le.md) | 138 | `result-track:a1ee3b69ef4b62477092176e172e516457ffd99df993b17f61f8b9e4e23167c4` |
| 12 | `theorem` | [all_real_cutoff_compensated_cell_price](../../../../MeasureAndIntegration/SourceCellMomentBudget.lean/declarations/all-real-cutoff-compensated-cell-price.md) | 155 | `result-track:221de701d4a0797206edf5225908fba9e3b637eda12062679e9c6a092d3d64a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c67fe0a33dfd4c4b808491bfd28e5e1a7b4dab3f15184345438e96b6901cccca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variant6af8461f8e789ee9a4da633d88d5d0468619b55601c836decd42eda88f474e76.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variant6af8461f8e789ee9a4da633d88d5d0468619b55601c836decd42eda88f474e76.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
