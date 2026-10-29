# Verification target: Correlation Second Derivative Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bc3cba85472c191f42e577ee36bc861713d4df5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationSecondDerivative/Variant868e2e717d8e8a82d43db83f042f2fbe8c8db7aba344778b0f63864e92c5f3bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bc3cba85472c191f42e577ee36bc861713d4df5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationSecondDerivative/Variant868e2e717d8e8a82d43db83f042f2fbe8c8db7aba344778b0f63864e92c5f3bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationSecondDerivative/Variant868e2e717d8e8a82d43db83f042f2fbe8c8db7aba344778b0f63864e92c5f3bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DerivativeEnergy` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationDifferenceMoments` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalized_derivative_integrable](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/normalized-derivative-integrable.md) | 29 | `result-track:3a3f20a484c83b9b47fc077a73e5343a4d159265ec525c9dcb46f88396049c11` |
| 2 | `theorem` | [derivative_correlation_product_integrable](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/derivative-correlation-product-integrable.md) | 34 | `result-track:6c95138380df3eca42fb7260664b167b7a9238dd38cc94700fcf10b12f0399b2` |
| 3 | `theorem` | [sourceCorrelation_derivative_eq_convolution](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/sourcecorrelation-derivative-eq-convolution.md) | 41 | `result-track:786acd5d50135838dce79ed1c22f89293f0f766aea2a0d3de05e86397bb036cb` |
| 4 | `theorem` | [reflectedTest_derivative](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/reflectedtest-derivative.md) | 49 | `result-track:4dd46d3b817b8195ee48008d8bdfb4396831b0debbcdbf5658688a0e3fac5dd1` |
| 5 | `theorem` | [sourceCorrelation_derivative_hasDerivAt](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/sourcecorrelation-derivative-hasderivat.md) | 56 | `result-track:08696bdd89f321d907998e44e42764758a9bdf87241ec9a887fb828e736e9893` |
| 6 | `theorem` | [sourceCorrelation_second_derivative_eq](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/sourcecorrelation-second-derivative-eq.md) | 67 | `result-track:a1a014ec6183f1bedfbb2cac68305d945d6e73bb66e3714d9faeaa9cb00013db` |
| 7 | `theorem` | [sourceCorrelation_second_derivative_abs_le_energy](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/sourcecorrelation-second-derivative-abs-le-energy.md) | 73 | `result-track:94ccb393a1d398ae6fa728eda1db1865b05c15444fc0fc111aabf70f68dda596` |
| 8 | `theorem` | [sourceCorrelation_second_derivative_abs_le](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/sourcecorrelation-second-derivative-abs-le.md) | 96 | `result-track:980460282b88cc818c61364025aa8025f2455b732b1faa63a4432f0e480de2aa` |
| 9 | `theorem` | [sourceCorrelation_derivative_contDiff](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/sourcecorrelation-derivative-contdiff.md) | 101 | `result-track:bea2f59eafa7dd26e7f6f67ed7cf4a9eba23e50916495c70657fe61214c56acc` |
| 10 | `theorem` | [sourceCorrelation_second_derivative_continuous](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/sourcecorrelation-second-derivative-continuous.md) | 108 | `result-track:1cc945068ef2c8afd38dad4dfee40b18c7735068cb73ace0ecdfbce29a93798e` |
| 11 | `theorem` | [correlationDifference_contDiff](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/correlationdifference-contdiff.md) | 112 | `result-track:e1347865ce90497603a4663d316ef19b17eada1814bf64ab686a8ba18a808c65` |
| 12 | `theorem` | [correlationDifference_hasCompactSupport](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/correlationdifference-hascompactsupport.md) | 117 | `result-track:1a31ed8b152afe0fd5ce1f893af618c18896be08ff32becc6a34eb224c17cf33` |
| 13 | `theorem` | [correlationDifference_abs_le](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/correlationdifference-abs-le.md) | 129 | `result-track:a578ed7b36b2516ef59ed6430e74563b3f012f9153b82700678f0329d86e4b23` |
| 14 | `theorem` | [correlationDifference_hasDerivAt](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/correlationdifference-hasderivat.md) | 141 | `result-track:c4a9254a02b4d35ed4ee54bafccf0a38e1107b9e7a85572bade21160750ee008` |
| 15 | `theorem` | [correlationDifference_derivative_abs_le](../../../../MeasureAndIntegration/CorrelationSecondDerivativeNamespaced.lean/declarations/correlationdifference-derivative-abs-le.md) | 148 | `result-track:f491baf420074ee8d2e1831cf8b3800695d287018300a8ade3d02f25a064f7c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52fbb54df5e8bbda361a61cb8f7f4f01ad642cda1f41b1e23bb7fedc7200a63a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationSecondDerivative/Variant868e2e717d8e8a82d43db83f042f2fbe8c8db7aba344778b0f63864e92c5f3bd.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationSecondDerivative/Variant868e2e717d8e8a82d43db83f042f2fbe8c8db7aba344778b0f63864e92c5f3bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
