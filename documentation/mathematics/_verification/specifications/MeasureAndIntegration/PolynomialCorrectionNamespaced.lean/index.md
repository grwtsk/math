# Verification target: Polynomial Correction Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6bec6e97654bd19ff20e363f60a9616f8c53c6f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant2d7c012078e8afeef45112d507583f18d77e10cacfd8c33d8ec51c1ee3412f0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6bec6e97654bd19ff20e363f60a9616f8c53c6f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant2d7c012078e8afeef45112d507583f18d77e10cacfd8c33d8ec51c1ee3412f0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant2d7c012078e8afeef45112d507583f18d77e10cacfd8c33d8ec51c1ee3412f0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Landau.Correction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizationPolynomial](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/normalizationpolynomial.md) | 39 | `declaration-track:e59f0f6a42aaf390257eafd60fcafce3844895064a52d9caa3e2619ef4422979` |
| 2 | `theorem` | [normalizationPolynomial_eq](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/normalizationpolynomial-eq.md) | 45 | `result-track:16e772cab4b2be995c234a884f06b959dfd4037df70fe5fe113cbfafa57ad06c` |
| 3 | `theorem` | [normalizationPolynomial_zero](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/normalizationpolynomial-zero.md) | 55 | `result-track:fde9ffa99a7698b7b9b52690e394351aaf48b961075d49e89ee36ce80a07ed5d` |
| 4 | `def` | [correctedSource](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/correctedsource.md) | 60 | `declaration-track:1819d4f9b8c5ae2ab7af3ae7b715ab9fe34cf62f9ad31ed95d2dde45c666a82e` |
| 5 | `theorem` | [correctedSource_zero](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/correctedsource-zero.md) | 65 | `result-track:26e0e1aa65f05656707010559059f80b0d22ebf6cce7bbdb7a21d83c0d968a4d` |
| 6 | `theorem` | [corrected_source_eq](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/corrected-source-eq.md) | 70 | `result-track:0a8982f9276e8d085b53a87e1306c4ed5c5f42521007a863bdd6faa0412f22cc` |
| 7 | `theorem` | [nonnegative_corrected_source_of_lower](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/nonnegative-corrected-source-of-lower.md) | 77 | `result-track:607140a8eaa8689c775518ff0bb41e28bed4dd7f60c6d7d34454986e5d8ef044` |
| 8 | `def` | [correctionKernel](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/correctionkernel.md) | 87 | `declaration-track:00fc728d954d8d9b8e2d6d28b56371f72a814720b472465e211f2ab1e9d7ce4f` |
| 9 | `theorem` | [correctionKernel_zero](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/correctionkernel-zero.md) | 93 | `result-track:0f25dc6926252439a068ca80442ba6ba6f4d84b620f849ce683358774b20776b` |
| 10 | `theorem` | [weighted_correction_eq](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/weighted-correction-eq.md) | 98 | `result-track:bcd61619fa384b2189e783ac9ed2590382a5722a79cd2be3d872600bc42286dc` |
| 11 | `theorem` | [correction_integrable](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/correction-integrable.md) | 108 | `result-track:03ae027e10f813253a3628ba082043caca7a766cba4c612ef5dbee590d286934` |
| 12 | `theorem` | [integral_correction](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/integral-correction.md) | 118 | `result-track:28b72067546f71790e06f53a05f49b5eb6c2d883cc30a407847ee9f2ed26eb75` |
| 13 | `theorem` | [correctionKernel_analytic](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/correctionkernel-analytic.md) | 140 | `result-track:ac27980e16085be7b50294a66b2d34c0f6eed2da6e27e5b205cbbf4ae845ba9d` |
| 14 | `def` | [correctedTransform](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/correctedtransform.md) | 148 | `declaration-track:63f92b799d5a232b2422a787cb850db47f608edc305ac3bd31d635298e973285` |
| 15 | `theorem` | [correctedTransform_zero](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/correctedtransform-zero.md) | 152 | `result-track:6dd0226fda6d4048be20af565a958f39928e0f353e1d0eb2a880dd007710c453` |
| 16 | `theorem` | [weighted_corrected_source_eq](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/weighted-corrected-source-eq.md) | 157 | `result-track:1cc26157f6239510c6421ec5d8c43457fdb47e6e184515e1b8d08c71510451c5` |
| 17 | `theorem` | [corrected_source_integrable](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/corrected-source-integrable.md) | 166 | `result-track:f055b885aac1c651ee401f78e061bac5f982023f7ae53ebb2e4b577c4cc90c17` |
| 18 | `theorem` | [integral_corrected_source](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/integral-corrected-source.md) | 175 | `result-track:a3ab4b132a4d71136122709c9ca2894e09022614b47db3a67d39f35ec29bcddd` |
| 19 | `theorem` | [correctedTransform_analytic_on_domain](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/correctedtransform-analytic-on-domain.md) | 186 | `result-track:7f164d44f6516a193c1db09dbfff9f12165ec43a9814a8d6d632bdfe95d224e2` |
| 20 | `theorem` | [correctedTransform_meromorphic](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/correctedtransform-meromorphic.md) | 194 | `result-track:711d2b53335a4bf49e74563ff1e2880ff73c099c76b8706ea6e830eae32c9f0a` |
| 21 | `theorem` | [correctedTransform_analytic_positive_real](../../../../MeasureAndIntegration/PolynomialCorrectionNamespaced.lean/declarations/correctedtransform-analytic-positive-real.md) | 204 | `result-track:4321a300f059f10d9b3bb0647df744a805fe5b419826d7686846d8f5ca8173fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8de86b8b57b55cf3add02190ab95e55f494acdb4b04ccb8da28981b2ef4e6752 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant2d7c012078e8afeef45112d507583f18d77e10cacfd8c33d8ec51c1ee3412f0d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant2d7c012078e8afeef45112d507583f18d77e10cacfd8c33d8ec51c1ee3412f0d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
