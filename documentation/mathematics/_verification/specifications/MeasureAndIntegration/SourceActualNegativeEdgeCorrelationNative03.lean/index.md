# Verification target: Source Actual Negative Edge Correlation Native03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d35bad449175517153c07342cd23c0a62ee9ea7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1118e2a9e31349e8156f04c4453e4ba423633b935b3e01c5d278beb674b2e7e9SourceActualNega/Variant3dcaea97c56b237dc953c3d54a09c915c7bacade3dac41a2e672b0a7d133410b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualNegativeEdgeCorrelationNative03.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualNegativeEdgeCorrelationNative03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d35bad449175517153c07342cd23c0a62ee9ea7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1118e2a9e31349e8156f04c4453e4ba423633b935b3e01c5d278beb674b2e7e9SourceActualNega/Variant3dcaea97c56b237dc953c3d54a09c915c7bacade3dac41a2e672b0a7d133410b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1118e2a9e31349e8156f04c4453e4ba423633b935b3e01c5d278beb674b2e7e9SourceActualNega/Variant3dcaea97c56b237dc953c3d54a09c915c7bacade3dac41a2e672b0a7d133410b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEdgeLeadingLimit` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leadingAntiderivative](../../../../MeasureAndIntegration/SourceActualNegativeEdgeCorrelationNative03.lean/declarations/leadingantiderivative.md) | 26 | `declaration-track:26037cb365ec961ed893b3268943c3afcda31096f2bb4e5c095678fe4b6ba6fa` |
| 2 | `theorem` | [actualLeadingEdgeConvolution_eq](../../../../MeasureAndIntegration/SourceActualNegativeEdgeCorrelationNative03.lean/declarations/actualleadingedgeconvolution-eq.md) | 34 | `result-track:dd9a6577c7cef5f95469c723b43318623ff793c665fdc6206faac43b15d4925c` |
| 3 | `theorem` | [actualLeadingEdgeConvolution_le_neg_hundred](../../../../MeasureAndIntegration/SourceActualNegativeEdgeCorrelationNative03.lean/declarations/actualleadingedgeconvolution-le-neg-hundred.md) | 56 | `result-track:13a75392dc0b42ca50d2d9285dc007fa731f40cd06f46550184e8ee38b59cec6` |
| 4 | `theorem` | [normalization_le_forty_one](../../../../MeasureAndIntegration/SourceActualNegativeEdgeCorrelationNative03.lean/declarations/normalization-le-forty-one.md) | 67 | `result-track:885b75829553d373a3a45d62be6904018936bb1a45e7746e255ca67884d1ee88` |
| 5 | `theorem` | [endpoint_error](../../../../MeasureAndIntegration/SourceActualNegativeEdgeCorrelationNative03.lean/declarations/endpoint-error.md) | 80 | `result-track:04f80babf5a9bc786c15473788dd6d12c1f721de238738664bec2c3089a86e3b` |
| 6 | `theorem` | [endpointProduct_integral_uniform_error](../../../../MeasureAndIntegration/SourceActualNegativeEdgeCorrelationNative03.lean/declarations/endpointproduct-integral-uniform-error.md) | 141 | `result-track:b823c763033d82558f489e0dbc3c62231425539d8fbf943e84aa9ca74b0f3f2b` |
| 7 | `theorem` | [actualCorrelation_negative_edge](../../../../MeasureAndIntegration/SourceActualNegativeEdgeCorrelationNative03.lean/declarations/actualcorrelation-negative-edge.md) | 203 | `result-track:e8a742e622ed0e6b9d3d6a383ab180e8cf97d5e3df08bf7b66dcb5c8ed928517` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c2a1787e87a6e19f8ec0826028827e0daa3a43b3b4c70777e3c66ed0ce6db9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1118e2a9e31349e8156f04c4453e4ba423633b935b3e01c5d278beb674b2e7e9SourceActualNega/Variant3dcaea97c56b237dc953c3d54a09c915c7bacade3dac41a2e672b0a7d133410b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1118e2a9e31349e8156f04c4453e4ba423633b935b3e01c5d278beb674b2e7e9SourceActualNega/Variant3dcaea97c56b237dc953c3d54a09c915c7bacade3dac41a2e672b0a7d133410b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
