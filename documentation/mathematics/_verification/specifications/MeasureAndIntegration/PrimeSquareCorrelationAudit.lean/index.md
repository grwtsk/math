# Verification target: Prime Square Correlation Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "044516ce67f9c525f20bb9ce878d0cf28752d8bb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationAudit/Variant958f6caee853c3f717e4bb86c97836e3fb32ea84214b00cf94dcf3356dca37cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `044516ce67f9c525f20bb9ce878d0cf28752d8bb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationAudit/Variant958f6caee853c3f717e4bb86c97836e3fb32ea84214b00cf94dcf3356dca37cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationAudit/Variant958f6caee853c3f717e4bb86c97836e3fb32ea84214b00cf94dcf3356dca37cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondDerivative` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceCorrelation_derivative_zero](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/declarations/sourcecorrelation-derivative-zero.md) | 15 | `result-track:e288d875c7db151a4c4ecd5edaa903a0582eeb51395f703e0492c79b3c6537d1` |
| 2 | `theorem` | [sourceCorrelation_derivative_linear_bound](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/declarations/sourcecorrelation-derivative-linear-bound.md) | 30 | `result-track:875114474b33478ba076769f4508699c3f8c3e3f32d5a09142501f38ac36beb1` |
| 3 | `theorem` | [sourceCorrelation_double_hasDerivAt](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/declarations/sourcecorrelation-double-hasderivat.md) | 43 | `result-track:c1167b9bda925f2a47d8a67b409a57fce3667e5a988e1c2542ed95d4bc44d582` |
| 4 | `theorem` | [sourceCorrelation_double_derivative_abs_le](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/declarations/sourcecorrelation-double-derivative-abs-le.md) | 51 | `result-track:8fe13977c94722dd2afce9d2a3db96b458cd2f46b833b96c40dddca346cec69b` |
| 5 | `def` | [bumpPrimitive](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/declarations/bumpprimitive.md) | 63 | `declaration-track:26ab616fa61e55f020d67e2f61b45bbc05d7f192c875a0361babb39f48a28ce8` |
| 6 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/declarations/bumpprimitive-hasderivat.md) | 67 | `result-track:87558ca07e6db92bff64c2e1f613efbe34497c210352f894d610adc87c313864` |
| 7 | `theorem` | [bumpInterior_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/declarations/bumpinterior-integral.md) | 79 | `result-track:72b10023c269932f9150f7e3303564df06f833b0b2b69ba920719759e5814f3a` |
| 8 | `theorem` | [explicitSecondDerivative_integral_zero](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/declarations/explicitsecondderivative-integral-zero.md) | 88 | `result-track:6c93f4457105f0fefaa580f497bab159dfa4698277451b3357d1e04a47f8f3e5` |
| 9 | `theorem` | [scaledBump_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/declarations/scaledbump-integral.md) | 97 | `result-track:17aefd9ac499493ab019008e25779cffc5534e04e2737afc9f4922317a6b47b6` |
| 10 | `theorem` | [dilationTest_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/declarations/dilationtest-integral.md) | 102 | `result-track:d37f6520460ced4d358ae27988b646f96d35fe45dfc283eaa945c8bcc777c40d` |
| 11 | `theorem` | [normalizedTest_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/declarations/normalizedtest-integral.md) | 111 | `result-track:e9fcc8312bc19e55b272788ce2cf5c136c28ff9ff6266acc6659ff38ee0e6bb8` |
| 12 | `theorem` | [sourceCorrelation_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/declarations/sourcecorrelation-integral.md) | 118 | `result-track:b1d96b6a8601097560f290ca6ce532317d1f98a4518df1cd9c2b39419fa39a29` |
| 13 | `theorem` | [sourceCorrelation_full_eq_four_half](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/declarations/sourcecorrelation-full-eq-four-half.md) | 140 | `result-track:9343ddb782c2363991670297346929ae6c71053a45c9814686e6cc92238d9cb3` |
| 14 | `theorem` | [sourceCorrelation_double_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelationAudit.lean/declarations/sourcecorrelation-double-integral.md) | 176 | `result-track:91853d1171cdee379549fe54caad251ca06d1df51ed3dd38f5e4fa764c693c30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9db4ad5b0436f2e725c0edd82157568afdc2d2ded3819ff289965f2c7e2ab7d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationAudit/Variant958f6caee853c3f717e4bb86c97836e3fb32ea84214b00cf94dcf3356dca37cf.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationAudit/Variant958f6caee853c3f717e4bb86c97836e3fb32ea84214b00cf94dcf3356dca37cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
