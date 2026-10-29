# Verification target: Endpoint Profile Attempt04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6c0fec34bd689f1babb3cf8718e51f9d46f6974",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt04/Variantcbd83a22a5b140524e07036046c1985f0fa0649434681e8c4bc98df93d1f5e13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6c0fec34bd689f1babb3cf8718e51f9d46f6974`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt04/Variantcbd83a22a5b140524e07036046c1985f0fa0649434681e8c4bc98df93d1f5e13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt04/Variantcbd83a22a5b140524e07036046c1985f0fa0649434681e8c4bc98df93d1f5e13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualPhaseCurvature` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointInteriorPolynomial](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/declarations/endpointinteriorpolynomial.md) | 16 | `declaration-track:9685d76c0ffa19300942e6545b15f47f022a31a11f6591b64a2e2c85fbb21cef` |
| 2 | `def` | [endpointLeadingSource](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/declarations/endpointleadingsource.md) | 20 | `declaration-track:f9def468210a8452cf05d13287e9afff6113bba55388622734ac3fcef4995c9e` |
| 3 | `def` | [endpointLeadingCorrelation](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/declarations/endpointleadingcorrelation.md) | 22 | `declaration-track:3bb173e17d9d6608b65919c190ba52b497ecd55ea9b5f98f197c55d624376d55` |
| 4 | `def` | [endpointLeadingSlope](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/declarations/endpointleadingslope.md) | 25 | `declaration-track:09683ad5868058f5e7bda5c537f19dca24ba733268851507e411a2c9de81af8c` |
| 5 | `def` | [endpointLeadingCurvature](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/declarations/endpointleadingcurvature.md) | 28 | `declaration-track:ad86ee558f28f7b28d8cf33a91ca73f8c6d7bbf07e296aeef0db7371459858ad` |
| 6 | `theorem` | [actual_interior_endpoint_polynomial](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/declarations/actual-interior-endpoint-polynomial.md) | 32 | `result-track:1cac6097c7e9190314ddd36028422b9575568185b9b145b5d3b456695014f9f3` |
| 7 | `theorem` | [actual_dilation_endpoint_polynomial](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/declarations/actual-dilation-endpoint-polynomial.md) | 42 | `result-track:0fba9d2b492ff68bd331e3ae3ddb39c52ef3f4aaf8f713266f1aeedc16708399` |
| 8 | `theorem` | [endpointInteriorPolynomial_at_zero](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/declarations/endpointinteriorpolynomial-at-zero.md) | 50 | `result-track:f7ad4f7120318e605f7daf7ce886cb99d3f7f41730331fa7e91081852e8b3dca` |
| 9 | `theorem` | [endpoint_leading_convolution](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/declarations/endpoint-leading-convolution.md) | 55 | `result-track:af004e621c32da8083920e8b1008d5f8367685de6c5ee8c9615508450886ffd3` |
| 10 | `theorem` | [endpoint_leading_correlation_hasDerivAt](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/declarations/endpoint-leading-correlation-hasderivat.md) | 72 | `result-track:73fe05c2e39d38c417bececf67c1d290ac4bda241599bb94078b0e48870a3a80` |
| 11 | `theorem` | [endpoint_leading_slope_eq](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/declarations/endpoint-leading-slope-eq.md) | 79 | `result-track:7cc75420febafcbf1c5f5bbf695ba720ceba01a2c836fba8d88490749aa7a755` |
| 12 | `theorem` | [endpoint_leading_slope_hasDerivAt](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/declarations/endpoint-leading-slope-hasderivat.md) | 85 | `result-track:27cf0360dddafdc6dda06a1d0b0ef2f5c6bb8fdbada11512b638eb8f7910a0fd` |
| 13 | `theorem` | [endpoint_leading_slope_upper](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/declarations/endpoint-leading-slope-upper.md) | 96 | `result-track:169422b5cb12ce7e88b6a5893507642a4e2fb49a50d0919fde3b98d0065617d4` |
| 14 | `theorem` | [endpoint_leading_curvature_lower](../../../../MeasureAndIntegration/EndpointProfileAttempt04.lean/declarations/endpoint-leading-curvature-lower.md) | 105 | `result-track:efcca589b5b3b87d2efd5459e08c839d81281f1d8c780ba0fa93f1f55d0f71a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fdd63352feb386fd46d082b6634305a16c2b69786cf1ce80c7f38ccb74dd0f0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt04/Variantcbd83a22a5b140524e07036046c1985f0fa0649434681e8c4bc98df93d1f5e13.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt04/Variantcbd83a22a5b140524e07036046c1985f0fa0649434681e8c4bc98df93d1f5e13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
