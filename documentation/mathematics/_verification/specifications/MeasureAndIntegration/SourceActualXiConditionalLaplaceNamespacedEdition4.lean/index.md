# Verification target: Source Actual Xi Conditional Laplace Namespaced Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a92e38d2073b79fcc0d7c13611a7516f172009ec",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta958b5d8e51206e62321969d719de6e0f9bb6f10d5515248e4b2557c96b30439.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a92e38d2073b79fcc0d7c13611a7516f172009ec`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta958b5d8e51206e62321969d719de6e0f9bb6f10d5515248e4b2557c96b30439.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta958b5d8e51206e62321969d719de6e0f9bb6f10d5515248e4b2557c96b30439.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiExponentialEnvelope` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiAbsoluteCumulative](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actualxiabsolutecumulative.md) | 28 | `declaration-track:b7c30956562cec8226bac7c722a9d37606f78102137d1462678cee0e0827bcb9` |
| 2 | `def` | [actualXiConditionalLaplaceBudget](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actualxiconditionallaplacebudget.md) | 32 | `declaration-track:a4513f9e0596657f14c402547a46ab8947ac35b7e603aae0427d574e8204f3d8` |
| 3 | `theorem` | [lower_nonneg](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/lower-nonneg.md) | 35 | `result-track:552509d0b9c2d7cd261bc37a3618f29b71bdf58dc241ac24d3a12eeab1a3f346` |
| 4 | `theorem` | [actual_abs_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actual-abs-intervalintegrable.md) | 37 | `result-track:feb183df37fd18e5403bd6f293fc28e01f1fe740d836602429d2983fdd3cce1b` |
| 5 | `theorem` | [actualXiAbsoluteCumulative_at_lower](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actualxiabsolutecumulative-at-lower.md) | 42 | `result-track:ba506f0b1835bac950cd75e77fccc1416dc6e2c65262431b792441e1c916371c` |
| 6 | `theorem` | [actualXiAbsoluteCumulative_nonneg](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actualxiabsolutecumulative-nonneg.md) | 47 | `result-track:07f80a6f0d2873906d9b27f6911dc882b529dd312b0095fa20c9b03715dc3d55` |
| 7 | `theorem` | [actualXiAbsoluteCumulative_absolutelyContinuous](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actualxiabsolutecumulative-absolutelycontinuous.md) | 52 | `result-track:87983847c58d0094053c05cc21ddfb520f1a4413274010891b5e1ab6d11c13e6` |
| 8 | `theorem` | [actualXiAbsoluteCumulative_ae_hasDerivAt](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actualxiabsolutecumulative-ae-hasderivat.md) | 58 | `result-track:fb09945570bde98b7e917aca6cf605c3f6a1d4099f16bacf058bbb7fdd2d202b` |
| 9 | `theorem` | [cumulative_weight_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/cumulative-weight-intervalintegrable.md) | 64 | `result-track:f4ee240655bd2dfa807a3912e207da3fab80846194ac2985bae406a9b99d6a02` |
| 10 | `theorem` | [absolute_weight_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/absolute-weight-intervalintegrable.md) | 71 | `result-track:4f158c0b822b63f95fc1dda6a3a2490154727e5229a840d72e9a4d8ffbcde82e` |
| 11 | `theorem` | [actualXiLaplace_finite_abel](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actualxilaplace-finite-abel.md) | 78 | `result-track:43008135c4ab3fb4b076fcabbd86b78e1950d9e0d5997d3820a680336831efd0` |
| 12 | `theorem` | [actualXiAbsoluteCumulative_le_future_envelope](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actualxiabsolutecumulative-le-future-envelope.md) | 112 | `result-track:ff920f9bf4b2042b9207c0d419d0d5092107683897c86dd0424042952310054f` |
| 13 | `theorem` | [polynomial_exponential_bound](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/polynomial-exponential-bound.md) | 125 | `result-track:4581e6f890d67fdd3f5fc9d74a5da36a644adce2efa84f78318ea923385b8f9d` |
| 14 | `theorem` | [cumulative_weight_norm_bound](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/cumulative-weight-norm-bound.md) | 151 | `result-track:a3e8cec9218b922cfe875cd067a6e1b122ba6d89de652bbccfd1a3c862fdfbc9` |
| 15 | `theorem` | [actualXiCumulativeLaplace_integrableOn](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actualxicumulativelaplace-integrableon.md) | 171 | `result-track:09a10c9c2d7d3d24ec823ffe0d8a065fd74dc17d3ca947ab54461a03ccc12d80` |
| 16 | `theorem` | [actualXiCumulativeLaplace_tendsto_zero](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actualxicumulativelaplace-tendsto-zero.md) | 188 | `result-track:7358f82b5dd287ddd1c2836cc96b28271eaace4bee2ba774944fa3698d72c739` |
| 17 | `theorem` | [absolute_laplace_finite_tendsto](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/absolute-laplace-finite-tendsto.md) | 202 | `result-track:a2e21fe1dc3100ada4ee3179f83d3ad88fb200440c4ceda8ada768a301e9da87` |
| 18 | `theorem` | [actualXiLaplace_integrableOn_of_future_average](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actualxilaplace-integrableon-of-future-average.md) | 219 | `result-track:ed44f8b820970105b84095ecfedf81440d5fc2765137def37bd8964700c0759d` |
| 19 | `theorem` | [actualXiLaplace_integral_norm_eq](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actualxilaplace-integral-norm-eq.md) | 237 | `result-track:a900b9debc4bb7fa3faeea986902cc388c02ee31a4f883d84074ea33f0549135` |
| 20 | `theorem` | [actualXiLaplace_integral_norm_le](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actualxilaplace-integral-norm-le.md) | 248 | `result-track:2aeed9702ed999e9d212e8ae07d56e6fb562d96140c11186c68ce0416706d67c` |
| 21 | `theorem` | [actualXiLaplace_norm_le](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceNamespacedEdition4.lean/declarations/actualxilaplace-norm-le.md) | 278 | `result-track:8bc4b5705c5098bede8df286eae2c1d84a4d5186815361e382545c8fa284364b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93400a24b149985105c1f54a4b26540711a3fa27bf4639561c936a96e261864d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta958b5d8e51206e62321969d719de6e0f9bb6f10d5515248e4b2557c96b30439.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta958b5d8e51206e62321969d719de6e0f9bb6f10d5515248e4b2557c96b30439.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
