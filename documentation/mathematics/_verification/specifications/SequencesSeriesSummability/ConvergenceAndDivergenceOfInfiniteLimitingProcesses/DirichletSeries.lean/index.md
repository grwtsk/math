# Verification target: Dirichlet Series

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e160a16d8d9e0c99f745e61e8dddbcaca9039f8f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/DirichletSeries/Variantea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DirichletSeries.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DirichletSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e160a16d8d9e0c99f745e61e8dddbcaca9039f8f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/DirichletSeries/Variantea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/DirichletSeries/Variantea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.SummabilityWeights` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Ring` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletTermRealCoeff](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DirichletSeries.lean/declarations/dirichlettermrealcoeff.md) | 17 | `declaration-track:9a1773c0e21adf34c76a09636bd9cc6a5fbd3769b1d088de21f73211a4448cd3` |
| 2 | `def` | [dirichletTermComplexCoeff](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DirichletSeries.lean/declarations/dirichlettermcomplexcoeff.md) | 23 | `declaration-track:789f120715bd232bbd9ff8903e67d64913ca4cb88a69ab376cf8a5a18a5820ad` |
| 3 | `def` | [DirichletAbsSummableReal](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DirichletSeries.lean/declarations/dirichletabssummablereal.md) | 29 | `declaration-track:7e24cd1b03a68c2843d3f51ef4678da2913eaac73a8db51204dd1a1fb731496a` |
| 4 | `def` | [DirichletAbsSummableComplex](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DirichletSeries.lean/declarations/dirichletabssummablecomplex.md) | 34 | `declaration-track:9e82ba54ffee714eae761eb7e0e8b7f0800659364a79c4a3917f08fcef3af743` |
| 5 | `def` | [dirichletSeriesReal](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DirichletSeries.lean/declarations/dirichletseriesreal.md) | 39 | `declaration-track:8c3a188b7a4fd4449c004adb35a08ae0fe77af29514ca6086217bbbad2dab21a` |
| 6 | `def` | [dirichletSeriesComplex](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DirichletSeries.lean/declarations/dirichletseriescomplex.md) | 44 | `declaration-track:f5301ff2102c505d3c4f12d2f873b468522f8039feb75a03d33a992a39577225` |
| 7 | `theorem` | [dirichletTermRealCoeff_zero](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DirichletSeries.lean/declarations/dirichlettermrealcoeff-zero.md) | 49 | `result-track:65391d35b6cebe03674d1498778be4a0d348ab3ecb4ea98e5b3d14405c901685` |
| 8 | `theorem` | [dirichletTermComplexCoeff_zero](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DirichletSeries.lean/declarations/dirichlettermcomplexcoeff-zero.md) | 55 | `result-track:c762989a56dae703bedb3ea1164e4c9acfd8d665a78d7545160fef529013d265` |
| 9 | `theorem` | [dirichletSeriesComplex_absSummable_of_bounded_coeff](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DirichletSeries.lean/declarations/dirichletseriescomplex-abssummable-of-bounded-coeff.md) | 61 | `result-track:0cd6b4308bd7a8020a4867489cf3f788a0a864995709b3538a689c8f8c2ebcad` |
| 10 | `theorem` | [dirichletSeriesComplex_add](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DirichletSeries.lean/declarations/dirichletseriescomplex-add.md) | 87 | `result-track:349866d41c59c86786299dc4e9795904a36b61240648431ec61525178627d0b0` |
| 11 | `theorem` | [dirichletSeriesComplex_smul](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DirichletSeries.lean/declarations/dirichletseriescomplex-smul.md) | 116 | `result-track:88caf875ef4b157469f040681d132a71678975b62248ffd48ea43b6f0ce3e64b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4ed66747fd381a7424a412b3ef7494b3d01bbb59502d8c81cce70ebd87e4a98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/DirichletSeries/Variantea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/DirichletSeries/Variantea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
