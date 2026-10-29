# Verification target: Endpoint Profile Attempt02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b31e144cc78cc4fb0f30be6dc04210d9529a15b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variant2dc299251fdae69c23b1dd944546a11a3b16bdda73a466a878b19604a2c31798.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b31e144cc78cc4fb0f30be6dc04210d9529a15b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variant2dc299251fdae69c23b1dd944546a11a3b16bdda73a466a878b19604a2c31798.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variant2dc299251fdae69c23b1dd944546a11a3b16bdda73a466a878b19604a2c31798.lean.json)

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
| 1 | `def` | [endpointInteriorPolynomial](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/declarations/endpointinteriorpolynomial.md) | 16 | `declaration-track:762be5538182900587ec8d7a0472d1ad186811fd7568ba8a476a28d5e9ff52d0` |
| 2 | `def` | [endpointLeadingSource](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/declarations/endpointleadingsource.md) | 20 | `declaration-track:5b3675a5d0f943e2b9a0fc672b65fd3f9141b9f72f49e2054501b9b0f7bdccf1` |
| 3 | `def` | [endpointLeadingCorrelation](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/declarations/endpointleadingcorrelation.md) | 22 | `declaration-track:431c6714b49e6ff62afc734a32d3acab2348fefd2fe57c6b55f0ffc984be6744` |
| 4 | `def` | [endpointLeadingSlope](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/declarations/endpointleadingslope.md) | 25 | `declaration-track:886bab6e95b6ac40d70b170ae2b4c06057cc70b4a82ca7326f7fa3494b7e2fbc` |
| 5 | `def` | [endpointLeadingCurvature](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/declarations/endpointleadingcurvature.md) | 28 | `declaration-track:d1f7c25aa980bfb8cd99d9d1c21d3ebf2f189eb5fa4dcda60c448b26eb702189` |
| 6 | `theorem` | [actual_interior_endpoint_polynomial](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/declarations/actual-interior-endpoint-polynomial.md) | 32 | `result-track:00789120cf2722764e5366945fbc3d887c280120f7a05d3f9c9442076cb0342d` |
| 7 | `theorem` | [actual_dilation_endpoint_polynomial](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/declarations/actual-dilation-endpoint-polynomial.md) | 42 | `result-track:4d6f06c1ccd83ecb4cd367080661bce3ac0acc1fbaa42bf83289aaad8ecab637` |
| 8 | `theorem` | [endpointInteriorPolynomial_at_zero](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/declarations/endpointinteriorpolynomial-at-zero.md) | 50 | `result-track:96f015bae6760898e5a740ad4044f1a02200b58f0723f3c590485fe5335d72ef` |
| 9 | `theorem` | [endpoint_leading_convolution](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/declarations/endpoint-leading-convolution.md) | 55 | `result-track:c3c9c643769b6df89927672044b6aaae0783ffac13f030da2eb0d6bb5dbf1da6` |
| 10 | `theorem` | [endpoint_leading_correlation_hasDerivAt](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/declarations/endpoint-leading-correlation-hasderivat.md) | 72 | `result-track:937f9a9938b6774a70fdc3f526055deb3b16d09e4c67790b339010f5185e30b9` |
| 11 | `theorem` | [endpoint_leading_slope_eq](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/declarations/endpoint-leading-slope-eq.md) | 80 | `result-track:bda089cd1b32ed54fa2e2bf025ae3d7d556daf520a16e4ec2557151c2905182e` |
| 12 | `theorem` | [endpoint_leading_slope_hasDerivAt](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/declarations/endpoint-leading-slope-hasderivat.md) | 86 | `result-track:fa4996f0362ee17665ecce67b7bd65a4f2a664f1b42eec8c22f2d967c61cf84a` |
| 13 | `theorem` | [endpoint_leading_slope_upper](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/declarations/endpoint-leading-slope-upper.md) | 98 | `result-track:0b7004bd8cf9680fb1b7b757aa2688a66caf8a474e6f14fb12abe95719a85c04` |
| 14 | `theorem` | [endpoint_leading_curvature_lower](../../../../MeasureAndIntegration/EndpointProfileAttempt02.lean/declarations/endpoint-leading-curvature-lower.md) | 107 | `result-track:80bd11cccfb7fa66a0222e0911c66f1fbd10f3b650ecddbb148ffe29a4280b93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=993d0e4476793ed82a27f5b266c128ada034458d7b6ac9a3fb6015d00551abac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variant2dc299251fdae69c23b1dd944546a11a3b16bdda73a466a878b19604a2c31798.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variant2dc299251fdae69c23b1dd944546a11a3b16bdda73a466a878b19604a2c31798.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
