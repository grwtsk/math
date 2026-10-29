# Verification target: Geometric Series Namespaced Geometric Series Certificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a8bf4cad1248047a66c08139b1ee0987245a766",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a8bf4cad1248047a66c08139b1ee0987245a766`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNumber.BoundaryCalculus` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complex_geometric_series_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/declarations/complex-geometric-series-summable.md) | 44 | `result-track:c7c66cff0e953af288202066fae04d3acaac1e8cb8befa3699217b0aa96d4c45` |
| 2 | `theorem` | [complex_geometric_series_abs_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/declarations/complex-geometric-series-abs-summable.md) | 51 | `result-track:24352814b99d6f726c39fb5ff6e4e75eb007b5ac7130debac020df4dc6fc65bf` |
| 3 | `theorem` | [complex_geometric_series_hasSum](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/declarations/complex-geometric-series-hassum.md) | 58 | `result-track:d919b978b329cc6fb1b14c68bd979c0627653c3d59c8cab55d2e737fa92efebc` |
| 4 | `def` | [geometricSeriesContext](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/declarations/geometricseriescontext.md) | 65 | `declaration-track:19552c21028ce45a3f56f27842166f0007e160031b5bce89a9bb3e036442219f` |
| 5 | `def` | [geometricSeriesClaim](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/declarations/geometricseriesclaim.md) | 71 | `declaration-track:add37343b9cfcbf0489ca524d389021d5c270c0b94815f00fa78c1f489c9571a` |
| 6 | `def` | [geometricSeriesCertificate](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/declarations/geometricseriescertificate.md) | 84 | `declaration-track:7873a1d67ff71b6b1bb62eeb6a41c1b5153177639de056181281826f02493bc5` |
| 7 | `def` | [geometricSeriesToken](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/declarations/geometricseriestoken.md) | 97 | `declaration-track:fc11520d0db2382c4b021e2f9a8a3cb352a0e425748a94eb6bbcf106824ffeeb` |
| 8 | `theorem` | [geometric_series_through_boundary_calculus](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/declarations/geometric-series-through-boundary-calculus.md) | 114 | `result-track:5a2769ebd06612dd06b98e262ff30d7bb77d7e4ab9c2836001107c03e0beb5f8` |
| 9 | `theorem` | [geometric_series_no_direct_crossing](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/declarations/geometric-series-no-direct-crossing.md) | 125 | `result-track:382bdf85e4d1e916e3991586fb132879ea63b8ede031d9aee04b1130d45f344e` |
| 10 | `theorem` | [finite_partial_geometric_sum_tends_to_inverse](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/declarations/finite-partial-geometric-sum-tends-to-inverse.md) | 142 | `result-track:abeea8ec9dc13a959a57e87fd44b82923d814a02021ac51db816708143dbd0f4` |
| 11 | `def` | [partialSumClaim](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/declarations/partialsumclaim.md) | 151 | `declaration-track:a6756f142653283235bec4da0497877fd69c954aa2cfeb840c950974b9816af4` |
| 12 | `def` | [partialSumCertificate](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/declarations/partialsumcertificate.md) | 164 | `declaration-track:d2dc2ae890672bcfebba840ca9c23641d1a683a034c39ac8196c6b1c420b5457` |
| 13 | `def` | [partialSumToken](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/declarations/partialsumtoken.md) | 175 | `declaration-track:59cba4c0c649a1bfceb62bdf15e565dcb376c041c5818efae290929d4c9c8a48` |
| 14 | `theorem` | [partial_sums_through_boundary_calculus](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GeometricSeriesNamespacedGeometricSeriesCertificate.lean/declarations/partial-sums-through-boundary-calculus.md) | 187 | `result-track:436302eba24ba455d27c0bb6a9581720320c7a643ee7865559091e88027d4a06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2bb8eb76f521e9c5b567de8cc5f150d428377d29d87b990331f64fa25fbccee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
