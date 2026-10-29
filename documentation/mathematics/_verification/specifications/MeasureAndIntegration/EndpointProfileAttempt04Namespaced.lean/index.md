# Verification target: Endpoint Profile Attempt04 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6ff6a10a0f7b777239b81263286843d34f68636",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt04/Variant52a202f34c6c1c5061010f8fdd00625df31b6500284a493bff972075a20ec279.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6ff6a10a0f7b777239b81263286843d34f68636`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt04/Variant52a202f34c6c1c5061010f8fdd00625df31b6500284a493bff972075a20ec279.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt04/Variant52a202f34c6c1c5061010f8fdd00625df31b6500284a493bff972075a20ec279.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualPhaseCurvature` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointInteriorPolynomial](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/declarations/endpointinteriorpolynomial.md) | 24 | `declaration-track:51cc5e0da03ecd0112df326f39778476c5558a69db132d6c7ecc1b6501d193f5` |
| 2 | `def` | [endpointLeadingSource](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/declarations/endpointleadingsource.md) | 28 | `declaration-track:3e04e2e5ee98aa86049af8be8399de0e4196c41ecb1d7b0c5ec73171e40fc8b8` |
| 3 | `def` | [endpointLeadingCorrelation](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/declarations/endpointleadingcorrelation.md) | 30 | `declaration-track:f54d53b4e0791b09ad611886b40cb568c49324e5d78e3c864c15f76eb6beef9c` |
| 4 | `def` | [endpointLeadingSlope](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/declarations/endpointleadingslope.md) | 33 | `declaration-track:0a2cd0a337233eec0042d8cd99dc81c36403c25c3cc2e5f5e7ebe16cc789bac0` |
| 5 | `def` | [endpointLeadingCurvature](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/declarations/endpointleadingcurvature.md) | 36 | `declaration-track:0e9560b4bd5d23a1cf83668db048b87532a484575c2ead82921b3ac690973fea` |
| 6 | `theorem` | [actual_interior_endpoint_polynomial](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/declarations/actual-interior-endpoint-polynomial.md) | 40 | `result-track:c1ca9db08cb8f053cc50214af62e09b1103857c749a5baae7d0588c5ed6ff3eb` |
| 7 | `theorem` | [actual_dilation_endpoint_polynomial](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/declarations/actual-dilation-endpoint-polynomial.md) | 50 | `result-track:18f4337146e6998bb9a56983c278eebb9d58ff5dc10d65156aeffe64bda4c01c` |
| 8 | `theorem` | [endpointInteriorPolynomial_at_zero](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/declarations/endpointinteriorpolynomial-at-zero.md) | 58 | `result-track:6355db209f4459852c229fae36651afe01226047f6d5fc65c3dd55fd6f0a1d51` |
| 9 | `theorem` | [endpoint_leading_convolution](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/declarations/endpoint-leading-convolution.md) | 63 | `result-track:e267f9edb5a676ab751b19a3078e1cd399fdbc75369da0134aa51ea952f9352c` |
| 10 | `theorem` | [endpoint_leading_correlation_hasDerivAt](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/declarations/endpoint-leading-correlation-hasderivat.md) | 80 | `result-track:33537fca8b1328bc37fa46bc408b28255982a7ccd65fdba4a966a81a1198110e` |
| 11 | `theorem` | [endpoint_leading_slope_eq](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/declarations/endpoint-leading-slope-eq.md) | 87 | `result-track:0b90c419789ff567d677cd93804180ba307388769ff544c57068599302fdb5db` |
| 12 | `theorem` | [endpoint_leading_slope_hasDerivAt](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/declarations/endpoint-leading-slope-hasderivat.md) | 93 | `result-track:254035660713c347ff217a6df97d0c258d01ec11867f874036a35bcd0ce43e26` |
| 13 | `theorem` | [endpoint_leading_slope_upper](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/declarations/endpoint-leading-slope-upper.md) | 104 | `result-track:d09c68a331e911a7387e2cfad1d7225e8d526d896c654434ec72e85c0b760c87` |
| 14 | `theorem` | [endpoint_leading_curvature_lower](../../../../MeasureAndIntegration/EndpointProfileAttempt04Namespaced.lean/declarations/endpoint-leading-curvature-lower.md) | 113 | `result-track:0c86fb88873ee3ccdd4920d5070e74eb8b83f13f19b869239f64076585607625` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a9dfd026ba48b4b88a1543e52d3edb5d216209d1e0a251409bf48eb32f9d582 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt04/Variant52a202f34c6c1c5061010f8fdd00625df31b6500284a493bff972075a20ec279.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt04/Variant52a202f34c6c1c5061010f8fdd00625df31b6500284a493bff972075a20ec279.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
