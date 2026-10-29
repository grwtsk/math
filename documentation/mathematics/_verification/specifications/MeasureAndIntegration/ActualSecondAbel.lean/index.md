# Verification target: Actual Second Abel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c42ebda07aa3ba96ce180b900b8d148cbb8cfbf6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variant11d61e8206925133f15b38ab302c569141a8af31d47bfb5e969e18b349289625.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualSecondAbel.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualSecondAbel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c42ebda07aa3ba96ce180b900b8d148cbb8cfbf6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variant11d61e8206925133f15b38ab302c569141a8af31d47bfb5e969e18b349289625.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variant11d61e8206925133f15b38ab302c569141a8af31d47bfb5e969e18b349289625.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.MulAction` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_contDiff_two](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/criticalprimetest-contdiff-two.md) | 27 | `result-track:ed3bbe6165f3ed9f794e394015bef56d1614ede50f1073292c90358ae6cc903d` |
| 2 | `theorem` | [criticalPrimeTest_deriv_lipschitz](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/criticalprimetest-deriv-lipschitz.md) | 33 | `result-track:140bd19c6276ca560c218474821d2d1a3a26907eb85edc1ba730d455e8fad0b1` |
| 3 | `theorem` | [actual_slope_phases_lipschitz](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/actual-slope-phases-lipschitz.md) | 42 | `result-track:279172fd1942d44298775fa3953e2b36225cc77b9af7339ac2cf470838994a42` |
| 4 | `theorem` | [pairedTailTest_deriv_lipschitz](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/pairedtailtest-deriv-lipschitz.md) | 49 | `result-track:d613973f4fe7b7690190841bc94f7e05683ccb139ac881fa7f2d73e21413258a` |
| 5 | `theorem` | [pairedTailTest_deriv_absolutelyContinuous](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/pairedtailtest-deriv-absolutelycontinuous.md) | 65 | `result-track:78e3f25d9530085686f62977df9cc55c2401a51cd07dc2b9d5171c8407f9ccc9` |
| 6 | `def` | [pairedTailCurvature](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/pairedtailcurvature.md) | 80 | `declaration-track:da344575eb2ead343f540a7b88d576bdcbaa83bc752d51f04e80b833c30b4a76` |
| 7 | `theorem` | [pairedTailCurvature_intervalIntegrable](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/pairedtailcurvature-intervalintegrable.md) | 82 | `result-track:4e177bea60923fd488ee71549c015902586ad082dfdbfec218a5b96c0bb7e5ea` |
| 8 | `theorem` | [pairedTailCurvature_ae_hasDerivAt](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/pairedtailcurvature-ae-hasderivat.md) | 86 | `result-track:196fee154fc9fcbbfaf9c41df8bb46d4b83679d0d1ae56abf1a604c8e647a629` |
| 9 | `theorem` | [pairedTailTest_deriv_integral_zero](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/pairedtailtest-deriv-integral-zero.md) | 94 | `result-track:5b4845a802908db615b29b0237cdade9828daa300d138f1931552c888c7db1ac` |
| 10 | `theorem` | [actual_delta_pairing_intervalIntegrable](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/actual-delta-pairing-intervalintegrable.md) | 102 | `result-track:b9fee81809a2c9dfa0a0c253d111ca073b2946325e3058d97eab94c199d1e1a2` |
| 11 | `theorem` | [actual_first_Abel](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/actual-first-abel.md) | 110 | `result-track:ec9d7e72c44e7cdce9a091c87e2fbd8fe6d9a0646df3300d09eb761c5e738eb3` |
| 12 | `theorem` | [actual_bridge_curvature_intervalIntegrable](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/actual-bridge-curvature-intervalintegrable.md) | 147 | `result-track:4477b64ce480f8242353a4c04ac42a1926963cbf3d15be88180080725455dc02` |
| 13 | `theorem` | [actual_second_Abel](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/actual-second-abel.md) | 155 | `result-track:0ad500ab0fff50d246e54a50a8c645b0f6aa789cac2b6f2ea962d6c66b1f8f45` |
| 14 | `def` | [negativeCurvatureWork](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/negativecurvaturework.md) | 182 | `declaration-track:2bffb0c4b3577d6129f5faca49bd334ae5c03c82a940498042559790c442c84f` |
| 15 | `theorem` | [negativeCurvatureWork_integrand_intervalIntegrable](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/negativecurvaturework-integrand-intervalintegrable.md) | 185 | `result-track:5cc8d74082c9828e796a05511c3be33b1ccbee0d04c80ddf69bed3e9ac1cfef8` |
| 16 | `theorem` | [negativeCurvatureWork_nonneg](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/negativecurvaturework-nonneg.md) | 200 | `result-track:dbaaad93e1979c8c63a8bdc09cc9d3e61f22318e0f28a7e27a7445b6f60ece21` |
| 17 | `theorem` | [actual_work_ge_negativeCurvatureWork](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/actual-work-ge-negativecurvaturework.md) | 205 | `result-track:c914d6d675bc7c3b0be69159bb0912f4934145bb15348204b008d6eaf5f60bff` |
| 18 | `def` | [NegativeCurvatureTailBudget](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/negativecurvaturetailbudget.md) | 221 | `declaration-track:d08f76e03d5913635dafd9f8115f5ef938dfa7c547e074094479870d5775f291` |
| 19 | `theorem` | [actual_tail_of_negativeCurvature_budget](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/actual-tail-of-negativecurvature-budget.md) | 224 | `result-track:5bbcdf3ec41413894c8d5ed29cc05629f23fe06588f04b11aad62e73262a4e89` |
| 20 | `theorem` | [actual_estimate_of_negativeCurvature_budget](../../../../MeasureAndIntegration/ActualSecondAbel.lean/declarations/actual-estimate-of-negativecurvature-budget.md) | 232 | `result-track:4c1db6c59b9c868cb97ced2b525a4e1fd2ae908bf71df248b6d5d2dfd11c3c11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a371dccddbd51ded1467b5771b22dfe427b40d2e17995aac578b9de4abd794bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variant11d61e8206925133f15b38ab302c569141a8af31d47bfb5e969e18b349289625.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variant11d61e8206925133f15b38ab302c569141a8af31d47bfb5e969e18b349289625.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
