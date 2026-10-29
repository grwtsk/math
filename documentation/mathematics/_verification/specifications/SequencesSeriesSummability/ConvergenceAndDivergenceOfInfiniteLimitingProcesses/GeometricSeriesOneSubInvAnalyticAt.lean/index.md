# Verification target: Geometric Series One Sub Inv Analytic At

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f934bc7ecd3de8ccd42d89fc5d8c2042a1bfa82",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variant12a7d27099a82a832b1276c4dcb8744b313fba91a6f2b308469507af696bb094.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f934bc7ecd3de8ccd42d89fc5d8c2042a1bfa82`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variant12a7d27099a82a832b1276c4dcb8744b313fba91a6f2b308469507af696bb094.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/GeometricSeries/Variant12a7d27099a82a832b1276c4dcb8744b313fba91a6f2b308469507af696bb094.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.Mathlib.Certificate` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complex_geometric_series_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/declarations/complex-geometric-series-summable.md) | 29 | `result-track:9547bee0ea7735fdc1316cdd60055a2d7637073dbbd395e2c1c01bd9fa020f8d` |
| 2 | `theorem` | [complex_geometric_series_abs_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/declarations/complex-geometric-series-abs-summable.md) | 36 | `result-track:fea64fd5b375d814ee975e4e84375e1eda68fdfdd17d2bc89df0f3fdcd9f353d` |
| 3 | `theorem` | [complex_geometric_series_hasSum](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/declarations/complex-geometric-series-hassum.md) | 43 | `result-track:8874a1e9c4fdb1bf18442eb101f2fae48c653c920813d6352bc7c27a2d218fd8` |
| 4 | `theorem` | [one_sub_inv_analyticAt](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/declarations/one-sub-inv-analyticat.md) | 52 | `result-track:daf82902c84cda3d2205a01023a2f52aa92a9f8165edcd607473d0675a5382af` |
| 5 | `theorem` | [one_sub_inv_analyticOn_unitBall](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/declarations/one-sub-inv-analyticon-unitball.md) | 67 | `result-track:59b89dbd42bfbc9d24bbea6a454b4f2acb74255282404bdef35a9b5993f9dd50` |
| 6 | `def` | [geometricSeriesContext](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/declarations/geometricseriescontext.md) | 76 | `declaration-track:7fc8007216999f5238eb60ce6d8f4057cf25c44235cd8d3d7112fa0c39377756` |
| 7 | `def` | [geometricSeriesClaim](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/declarations/geometricseriesclaim.md) | 83 | `declaration-track:e6dfd9ce6a20c5f6dad17023a367a546782789457a4f976eb93e36617d8de305` |
| 8 | `def` | [geometricSeriesMathlibProofCertificate](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/declarations/geometricseriesmathlibproofcertificate.md) | 98 | `declaration-track:cbae6fa747d1c024878a5b56b72714fd76f684a597fdcc4752c79a68135dc5f8` |
| 9 | `def` | [geometricSeriesAnalyticCertificate](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/declarations/geometricseriesanalyticcertificate.md) | 116 | `declaration-track:492121ea99640171a88dfe35e0318fb6f6da83fde74f37d489341a6b83f6cb52` |
| 10 | `def` | [geometricSeriesAnalyticToken](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/declarations/geometricseriesanalytictoken.md) | 122 | `declaration-track:9dcd8bddaca120768eb07bd8ad0724df2145f56c56d021104b262300faa1add8` |
| 11 | `theorem` | [geometric_series_mathlib_certificate_sound](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/declarations/geometric-series-mathlib-certificate-sound.md) | 131 | `result-track:16ece7f2da14361d3045fe57c314ad45e61064f1966280216da758a1043330fc` |
| 12 | `theorem` | [geometric_series_through_boundary_calculus](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/declarations/geometric-series-through-boundary-calculus.md) | 143 | `result-track:a110a23a90c8ce6f79738ef8a92504dfed7b42d3e9a764c4ec0eb5614de2c8ee` |
| 13 | `theorem` | [geometric_series_no_direct_crossing](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesOneSubInvAnalyticAt.lean/declarations/geometric-series-no-direct-crossing.md) | 154 | `result-track:aaaa720587e3a1356eadd103bcfa45b76c5e2dc2abbaa64ddcbcfbd8a5d81ac3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b44b5045affaffbeaac476a047ea5d71c502b86d5ad6b642bc6eb9cd87eeeac6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variant12a7d27099a82a832b1276c4dcb8744b313fba91a6f2b308469507af696bb094.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/GeometricSeries/Variant12a7d27099a82a832b1276c4dcb8744b313fba91a6f2b308469507af696bb094.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
