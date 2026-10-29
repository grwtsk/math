# Verification target: AFinite Second Moment Budget For The Actual Source Cells

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65e18f1d491c96715ad5b59315239f5d495fb15b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variantd53cf57a3103f8e0d82d6a74eeff71ef65021d392f22819f382ef9fa5574f302.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/AFiniteSecondMomentBudgetForTheActualSourceCells.lean/index.md) · [Full source](../../../../MeasureAndIntegration/AFiniteSecondMomentBudgetForTheActualSourceCells.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65e18f1d491c96715ad5b59315239f5d495fb15b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variantd53cf57a3103f8e0d82d6a74eeff71ef65021d392f22819f382ef9fa5574f302.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variantd53cf57a3103f8e0d82d6a74eeff71ef65021d392f22819f382ef9fa5574f302.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCellTransport` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [secondMomentMajorant](../../../../MeasureAndIntegration/AFiniteSecondMomentBudgetForTheActualSourceCells.lean/declarations/secondmomentmajorant.md) | 23 | `declaration-track:7f1057c887b971c73574abd3835d67a9e7d85d85a792d20642c2a30a3982e26c` |
| 2 | `def` | [secondMomentPrimitive](../../../../MeasureAndIntegration/AFiniteSecondMomentBudgetForTheActualSourceCells.lean/declarations/secondmomentprimitive.md) | 26 | `declaration-track:65ce3c06e58dc49524713dfd74926d25480d5b4ad7c7377e50f8ec2f29d9d907` |
| 3 | `theorem` | [secondMomentPrimitive_hasDerivAt](../../../../MeasureAndIntegration/AFiniteSecondMomentBudgetForTheActualSourceCells.lean/declarations/secondmomentprimitive-hasderivat.md) | 28 | `result-track:9f887aff1717672539cfb9ac364d5fb13ac110354167520ea5d071448283286e` |
| 4 | `theorem` | [secondMomentMajorant_intervalIntegrable](../../../../MeasureAndIntegration/AFiniteSecondMomentBudgetForTheActualSourceCells.lean/declarations/secondmomentmajorant-intervalintegrable.md) | 37 | `result-track:025ce29eb12d21dc27f054cee9e31cd8e2ea1725615b6b0fa440026d415213bd` |
| 5 | `theorem` | [secondMomentMajorant_integral_eq](../../../../MeasureAndIntegration/AFiniteSecondMomentBudgetForTheActualSourceCells.lean/declarations/secondmomentmajorant-integral-eq.md) | 47 | `result-track:b36c805fa297f93d8f264d4dd7cdc7f46d36ab276e1ed848ac1094b57cbefead` |
| 6 | `theorem` | [secondMomentMajorant_integral_le](../../../../MeasureAndIntegration/AFiniteSecondMomentBudgetForTheActualSourceCells.lean/declarations/secondmomentmajorant-integral-le.md) | 58 | `result-track:ebb93f1fd8f05ba85848214e4ff6e28c00d308291b14a154cf5e1081d3eaaa68` |
| 7 | `theorem` | [cellSecondMoment_le_majorant](../../../../MeasureAndIntegration/AFiniteSecondMomentBudgetForTheActualSourceCells.lean/declarations/cellsecondmoment-le-majorant.md) | 64 | `result-track:69f97ba98929cc7459fb10014dcbc52ef4e5989f83a21990095040b79ec69628` |
| 8 | `theorem` | [sum_secondMomentMajorant_integrals](../../../../MeasureAndIntegration/AFiniteSecondMomentBudgetForTheActualSourceCells.lean/declarations/sum-secondmomentmajorant-integrals.md) | 89 | `result-track:53a29f9dc80d2575a57e15788cf14f11348d90b02eece2e29d33a11d906f3127` |
| 9 | `theorem` | [sum_cellSecondMoment_le](../../../../MeasureAndIntegration/AFiniteSecondMomentBudgetForTheActualSourceCells.lean/declarations/sum-cellsecondmoment-le.md) | 103 | `result-track:1f8dbbd7def2733b73b50a1acc7acc1ee301195264e966272ba221805f49d16a` |
| 10 | `theorem` | [sum_cellTaylorRemainder_abs_le](../../../../MeasureAndIntegration/AFiniteSecondMomentBudgetForTheActualSourceCells.lean/declarations/sum-celltaylorremainder-abs-le.md) | 117 | `result-track:f9f362cc920f2e18ad8a38a4074ee370aa71a9e4a11cc6e1f92fcf156e16bb55` |
| 11 | `theorem` | [compensated_cellCorrection_sum_abs_le](../../../../MeasureAndIntegration/AFiniteSecondMomentBudgetForTheActualSourceCells.lean/declarations/compensated-cellcorrection-sum-abs-le.md) | 130 | `result-track:ec3f9f43d9e1b9d1675c7834e6d8edb2057dbf12971ec15648c86d763ce873a4` |
| 12 | `theorem` | [all_real_cutoff_compensated_cell_price](../../../../MeasureAndIntegration/AFiniteSecondMomentBudgetForTheActualSourceCells.lean/declarations/all-real-cutoff-compensated-cell-price.md) | 147 | `result-track:b5500060ec8e8b03f3d2898e7719489f42cf5462c73e279c3722d4855cecacb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ee5b5bbd08828b158b31dfc0c44b65d7fd432ca3cd76efecdb41c1c2a4ada09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variantd53cf57a3103f8e0d82d6a74eeff71ef65021d392f22819f382ef9fa5574f302.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variantd53cf57a3103f8e0d82d6a74eeff71ef65021d392f22819f382ef9fa5574f302.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
