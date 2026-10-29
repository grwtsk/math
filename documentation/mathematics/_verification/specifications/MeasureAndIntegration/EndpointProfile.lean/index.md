# Verification target: Endpoint Profile

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3be4ad673032b66791a74f2390b528e644d9353",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variant0e8bbe83ba7f9b061704013082748d53ece7d08b81b2192a7628e0c262ddd41e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EndpointProfile.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EndpointProfile.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3be4ad673032b66791a74f2390b528e644d9353`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variant0e8bbe83ba7f9b061704013082748d53ece7d08b81b2192a7628e0c262ddd41e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variant0e8bbe83ba7f9b061704013082748d53ece7d08b81b2192a7628e0c262ddd41e.lean.json)

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
| 1 | `def` | [endpointInteriorPolynomial](../../../../MeasureAndIntegration/EndpointProfile.lean/declarations/endpointinteriorpolynomial.md) | 16 | `declaration-track:d47ce6d81a399eb7064ffb972333eda3811c3681a2e9532703962a57c95ffa8e` |
| 2 | `def` | [endpointLeadingSource](../../../../MeasureAndIntegration/EndpointProfile.lean/declarations/endpointleadingsource.md) | 20 | `declaration-track:536af99dbd5e5d2be44f288b25a6fe611125b1b95bb8f1152d27a826427aaa3f` |
| 3 | `def` | [endpointLeadingCorrelation](../../../../MeasureAndIntegration/EndpointProfile.lean/declarations/endpointleadingcorrelation.md) | 22 | `declaration-track:eddc8313cde718bc7bddd4a7ba1378bcad15b392245163007cc27b50c2f2fea6` |
| 4 | `def` | [endpointLeadingSlope](../../../../MeasureAndIntegration/EndpointProfile.lean/declarations/endpointleadingslope.md) | 25 | `declaration-track:c2245d592b6270185b3b529babb21a55e6afae18a3ff315b2bba77510aa37717` |
| 5 | `def` | [endpointLeadingCurvature](../../../../MeasureAndIntegration/EndpointProfile.lean/declarations/endpointleadingcurvature.md) | 28 | `declaration-track:39753059c4dca7bd591a435893dc211ec26fd447fb905e986ed550ec6b72c28c` |
| 6 | `theorem` | [actual_interior_endpoint_polynomial](../../../../MeasureAndIntegration/EndpointProfile.lean/declarations/actual-interior-endpoint-polynomial.md) | 32 | `result-track:087cbd03fa2e5a54bd2e74a5c98cb8e4b4cf695b285dc4e7acd37567e75bdb3e` |
| 7 | `theorem` | [actual_dilation_endpoint_polynomial](../../../../MeasureAndIntegration/EndpointProfile.lean/declarations/actual-dilation-endpoint-polynomial.md) | 42 | `result-track:b015136189932ea6c7fbda317a9bbb5c6064919c8d18674295a57cd92d4dfbf7` |
| 8 | `theorem` | [endpointInteriorPolynomial_at_zero](../../../../MeasureAndIntegration/EndpointProfile.lean/declarations/endpointinteriorpolynomial-at-zero.md) | 50 | `result-track:130dc6dbb9d99156fd4aa1ff3f060cf3c4fca102852a663fbc4879c0abd131ba` |
| 9 | `theorem` | [endpoint_leading_convolution](../../../../MeasureAndIntegration/EndpointProfile.lean/declarations/endpoint-leading-convolution.md) | 55 | `result-track:07130915ba24b11ccc8a1313e62afcfa47401ee36bafa2b87466666d9d5c62fb` |
| 10 | `theorem` | [endpoint_leading_correlation_hasDerivAt](../../../../MeasureAndIntegration/EndpointProfile.lean/declarations/endpoint-leading-correlation-hasderivat.md) | 72 | `result-track:a236c6ac7834c7b04157619f9127b0661203b062d520425a2f0bd21d66645bd7` |
| 11 | `theorem` | [endpoint_leading_slope_eq](../../../../MeasureAndIntegration/EndpointProfile.lean/declarations/endpoint-leading-slope-eq.md) | 79 | `result-track:a0b1c4c925ec6f3be108588a5093d6133cf7770f94bf9b72515ff01e7c2b3035` |
| 12 | `theorem` | [endpoint_leading_slope_hasDerivAt](../../../../MeasureAndIntegration/EndpointProfile.lean/declarations/endpoint-leading-slope-hasderivat.md) | 85 | `result-track:383fdb750927b44db3ad1baa948c5f904c4c850c585259a7dd23aec5892de058` |
| 13 | `theorem` | [endpoint_leading_slope_upper](../../../../MeasureAndIntegration/EndpointProfile.lean/declarations/endpoint-leading-slope-upper.md) | 96 | `result-track:ae0d94ac13a4b56bafc68ea8081ae88f48bae7bf828ea772b4830db4e730d7a7` |
| 14 | `theorem` | [endpoint_leading_curvature_lower](../../../../MeasureAndIntegration/EndpointProfile.lean/declarations/endpoint-leading-curvature-lower.md) | 105 | `result-track:11cbf67f5d97753b4d862d026e37a46db28cd7491a650dd8110120aeaa3cb65f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4dff8dbd9e79542f712e51000d662c5e50dc511eb8f46de5941d239afe72062 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variant0e8bbe83ba7f9b061704013082748d53ece7d08b81b2192a7628e0c262ddd41e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variant0e8bbe83ba7f9b061704013082748d53ece7d08b81b2192a7628e0c262ddd41e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
