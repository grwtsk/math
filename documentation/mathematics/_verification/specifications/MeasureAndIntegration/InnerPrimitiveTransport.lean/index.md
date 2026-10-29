# Verification target: Inner Primitive Transport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f8a69bf45f2e7edc71e63ec9ea50b9c8447b5b0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/InnerPrimitiveTransport/Variant40b0bb55d6954eb53042e7579c67ed87eebd2b06a99d4fc5e57a8f30fe07e448.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/index.md) · [Full source](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f8a69bf45f2e7edc71e63ec9ea50b9c8447b5b0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/InnerPrimitiveTransport/Variant40b0bb55d6954eb53042e7579c67ed87eebd2b06a99d4fc5e57a8f30fe07e448.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/InnerPrimitiveTransport/Variant40b0bb55d6954eb53042e7579c67ed87eebd2b06a99d4fc5e57a8f30fe07e448.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationPrimitive` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceSamplingDerivative` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_shift_Ioi](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/declarations/integral-shift-ioi.md) | 17 | `result-track:751c6c33bfc8e52406f63bcd7a9dcc246f64ad9577970fd338e0334a52272707` |
| 2 | `theorem` | [correlation_tail_eq_neg_primitive](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/declarations/correlation-tail-eq-neg-primitive.md) | 26 | `result-track:89328fac478246e430696994e9d715fbc5cbc34847880726b0ecd8cead7512d1` |
| 3 | `def` | [rootWeight](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/declarations/rootweight.md) | 61 | `declaration-track:f1b7c6ca54130dabd834c1fc1103f1b7402b8f50a9086ae5eec43a257435b700` |
| 4 | `theorem` | [rootWeight_exp_substitution](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/declarations/rootweight-exp-substitution.md) | 64 | `result-track:c235911e81e819493affe4d53d422a4aaf266b3ae98361a78f85dbcceef3360e` |
| 5 | `theorem` | [rootWeight_integrable](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/declarations/rootweight-integrable.md) | 75 | `result-track:eef50deb0306ad8f89fbb7c9958152311c639940f3f4a322cf671d8ea92ef86b` |
| 6 | `theorem` | [rootWeight_source_integral](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/declarations/rootweight-source-integral.md) | 90 | `result-track:a360f215c403a91bccbe537c36f3078115e00bbfbd9bf139bb1b8f001f27f698` |
| 7 | `def` | [innerTerm](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/declarations/innerterm.md) | 100 | `declaration-track:0ca7b854e2aef74ee92c69dff9c25ae9f112e4f2c306d6b57f799e77aa5f46e7` |
| 8 | `theorem` | [innerTerm_eq](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/declarations/innerterm-eq.md) | 104 | `result-track:87c5d3011ca14614c0495fc3efcef929e5ff2317af47bd25396601768f9845b2` |
| 9 | `theorem` | [innerTerm_integrable](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/declarations/innerterm-integrable.md) | 112 | `result-track:5cb18e91189aa2e370e9996124bf2f6a4e3c4cd00b6a939d2ca95da8457dfce2` |
| 10 | `theorem` | [innerTerm_integral](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/declarations/innerterm-integral.md) | 125 | `result-track:5173390eb189054b88baebe459ad0097ca30e589a255ab2af604927ccd3cf76a` |
| 11 | `theorem` | [sourceKernel_eq_inner_sum](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/declarations/sourcekernel-eq-inner-sum.md) | 140 | `result-track:13cf3e1b915808116952ff1dc9dc07fc5c76cd0c3ceca59825ac1c3268ecb2ac` |
| 12 | `theorem` | [sourceKernel_rescaled_integrable](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/declarations/sourcekernel-rescaled-integrable.md) | 151 | `result-track:23729dfed5a9688c34b90996523bcbfbda5a7fd20e02525b8db5fc8ab5bb52a1` |
| 13 | `theorem` | [sourceKernel_integral_eq_primitive_sum](../../../../MeasureAndIntegration/InnerPrimitiveTransport.lean/declarations/sourcekernel-integral-eq-primitive-sum.md) | 161 | `result-track:15d0e4b251258b0ec936aa4db6c12e5b31351451a40fb3f1de81d9fa1b608230` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=237faa02542bad5e72d4ac645d0dba8dac86752b97f2d8033ea4cd6bf5c30a7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/InnerPrimitiveTransport/Variant40b0bb55d6954eb53042e7579c67ed87eebd2b06a99d4fc5e57a8f30fe07e448.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/InnerPrimitiveTransport/Variant40b0bb55d6954eb53042e7579c67ed87eebd2b06a99d4fc5e57a8f30fe07e448.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
